package com.rentcar.carinfo.controller;

import com.rentcar.carinfo.model.CaroptionDTO;
import com.rentcar.carinfo.service.CarinfoService;
import com.rentcar.carinfo.service.CaroptionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@RestController
//@RequestMapping("/carinfo")
public class CaroptionController {
    private static final Logger log = LoggerFactory.getLogger(CarinfoCarcontroller.class);
    @Autowired
    @Qualifier("com.rentcar.carinfo.service.CaroptionServiceImpl")
    private CaroptionService service;

    @Qualifier("com.rentcar.carinfo.service.CarinfoServiceImpl")
    private CarinfoService cservice;

    @PostMapping("/carinfo/optcreate")
    public String create(CaroptionDTO dto, HttpServletRequest request)throws IOException {
        log.info("dto: "+ dto);

       if(service.create(dto) == 1 ){
            return "null";
        }else{
            return "error";
        }
    }




    @PostMapping("/carinfo/optupdate")
    public String update(CaroptionDTO dto) {
        int cnt = service.update(dto);
        log.info("cnt: " + cnt);
        if (cnt == 1) {
            return "null";
        } else {
            return "error";
        }
    }

}
