package com.rentcar.carinfo.controller;

import com.rentcar.carinfo.model.CarinfoDTO;
import com.rentcar.carinfo.model.CaroptionDTO;
import com.rentcar.carinfo.service.CarinfoService;
import com.rentcar.carinfo.service.CaroptionService;
import com.rentcar.utility.UploadCon;
import com.rentcar.utility.Utility;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/carinfo")
public class CarinfoCarcontroller {
    private static final Logger log = LoggerFactory.getLogger(CarinfoCarcontroller.class);
    @Autowired
    @Qualifier("com.rentcar.carinfo.service.CarinfoServiceImpl")
    private CarinfoService service;

    @Autowired
    @Qualifier("com.rentcar.carinfo.service.CaroptionServiceImpl")
    private CaroptionService cservice;

    @PostMapping("/updateFile")
    public String updateFile(MultipartFile filenameMF, String oldfile, String carnumber)throws IOException{

        String basePath = UploadCon.getUploadDir();
        if(oldfile != null && !oldfile.equals("default.jpg")){
            Utility.deleteFile(basePath, oldfile);
        }

        Map map = new HashMap();
        map.put("carnumber", carnumber);
        map.put("carimage", Utility.saveFileSpring(filenameMF, basePath));

        int cnt = service.updateFile(map);
        if(cnt == 1){
            return "redirect:/carinfo/list";
        }else {
            return "error";
        }
    }

    @GetMapping("/updateFile/{carnumber}/{oldfile}")
    public String updateFileForm(@PathVariable("carnumber") String carnumber,
                                 @PathVariable("oldfile") String oldfile,
                                 Model model){
        model.addAttribute("carnumber", carnumber);
        model.addAttribute("oldfile", oldfile);
        return "/carinfo/updateFile";
    }


    @GetMapping("/delete/{carnumber}")
    public String delete(@PathVariable String carnumber){
        int flag = service.delete(carnumber);
        if(flag != 1) return "error";
        else return "redirect:/carinfo/list";
    }

    @PostMapping("/update")
    public String update(CarinfoDTO dto){
        int cnt = service.update(dto);
        if(cnt == 1){
            return "redirect:./list";
        }else{
            return "error";
        }
    }
    @GetMapping("/update/{carnumber}")
    public String update(@PathVariable("carnumber") String carnumber, Model model){
        CarinfoDTO dto = service.read(carnumber);
        model.addAttribute("dto", dto);
        return "/carinfo/update";
    }

    @GetMapping("/read/{carnumber}")
    public String read(@PathVariable("carnumber") String carnumber,Model model){
        CarinfoDTO dto = service.read(carnumber);
        model.addAttribute("dto", dto);
        return "/carinfo/read";
    }

    @PostMapping("/create")
    public String crate(CarinfoDTO dto, CaroptionDTO cdto, HttpServletRequest request)throws IOException{


        String upDir = UploadCon.getUploadDir();
        String fname = Utility.saveFileSpring(dto.getFilenameMF(), upDir);
        int size = (int)dto.getFilenameMF().getSize();
        if(size > 0){
            dto.setCarimage(fname);
        }else{
            dto.setCarimage("default.jpg");
        }
        log.info("Carinfo;" + dto);
        log.info("Caroption;" + cdto);

        if(service.create(dto) > 0 && cservice.create(cdto) > 0){
            return "redirect:/carinfo/list";
        }else{
            return "error";
        }
    }
    @GetMapping("/create")
    public String create(){
        return
                "/carinfo/create";
    }

    @RequestMapping("/list")
    public String list(HttpServletRequest request){
        // 검색관련------------------------
        String col = Utility.checkNull(request.getParameter("col"));
        String word = Utility.checkNull(request.getParameter("word"));

        if (col.equals("total")) {
            word = "";
        }
        int nowPage = 1;
        if(request.getParameter("nowPage") !=null){
            nowPage = Integer.parseInt(request.getParameter("nowPage"));
        }
        int recordPerPage = 5;
        int sno = (nowPage - 1) * recordPerPage;
        int eno = recordPerPage;

        Map map = new HashMap();
        map.put("col", col);
        map.put("word", word);
        map.put("sno", sno);
        map.put("eno",eno);

        int total = service.total(map);
        List<CarinfoDTO> list = service.list(map);
        String paging = Utility.paging(total, nowPage, recordPerPage,col, word);

        request.setAttribute("list", list);
        request.setAttribute("nowPage", nowPage);
        request.setAttribute("col", col);
        request.setAttribute("word", word);
        request.setAttribute("paging", paging);

        return "/carinfo/list";
    }

}
