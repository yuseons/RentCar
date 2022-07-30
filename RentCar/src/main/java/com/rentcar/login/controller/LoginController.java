package com.rentcar.login.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.rentcar.login.model.LoginDTO;
import com.rentcar.login.service.LoginService;
import com.rentcar.utility.UploadLicense;
import com.rentcar.utility.Utility;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginController {
  private static final Logger log = LoggerFactory.getLogger(LoginController.class);

  @Autowired
  @Qualifier("com.rentcar.login.service.LoginServiceImpl")
  private LoginService service;



@PostMapping("/user/update")
  public String update(LoginDTO dto, Model model, RedirectAttributes ra){
    int cnt = service.update(dto);

    if (cnt == 1) {
      model.addAttribute("id", dto.getId());

      return "redirect:/member/mypage";
    }else{
      return "error";
    }
  }

  @GetMapping("/user/update")
    public String update(String id, HttpSession session, Model model) {

      if (id == null) {
        id = (String) session.getAttribute("id");
      }

      LoginDTO dto = service.read(id);

      model.addAttribute("dto", dto);

      return "/user/update";
  }


  @GetMapping("/lic")
  public String licInfo() {

    return "/lic";
  }



  @GetMapping("/user/pwfind")
  public String pwfind() {

    return "/user/pwfind";
  }

  @GetMapping("/user/idfind")
  public String idfind() {

    return "/user/idfind";
  }

  @PostMapping("/user/create")
  public String create(LoginDTO dto, HttpServletRequest request) throws IOException {

    log.info("dto: "+dto);
      if (service.create(dto) > 0) {
      return "redirect:/";
    } else {
      return "error";
    }

  }

  @PostMapping("/user/createForm")
  public String create() {

    return "/user/create";
  }

  @GetMapping("/user/agree")
  public String agree() {

    return "/user/agree";
  }

  @GetMapping("/user/logout")
  public String logout(HttpSession session) {
    session.invalidate();

    return "redirect:/";
  }

  @PostMapping("/user/login")
  public String login(@RequestParam Map<String, String> map, HttpSession session, HttpServletRequest request,
      HttpServletResponse response, Model model) {

    int cnt = service.loginCheck(map);

    if (cnt > 0) {// 회원일경우
      Map gmap = service.getGrade(map.get("id"));
      session.setAttribute("id", map.get("id"));
      session.setAttribute("grade", gmap.get("grade"));
      session.setAttribute("mname", gmap.get("mname"));

      // 쿠키 저장, 아이디 저장 체크
      Cookie cookie = null;
      String c_id = request.getParameter("c_id");
      if (c_id != null) {
        cookie = new Cookie("c_id", c_id); // c_id=> Y
        cookie.setMaxAge(60 * 60 * 24 * 365);// 1년
        response.addCookie(cookie);// client 컴퓨터에 쿠키 저장

        cookie = new Cookie("c_id_val", map.get("id"));
        cookie.setMaxAge(60 * 60 * 24 * 365);
        response.addCookie(cookie);
      } else {
        cookie = new Cookie("c_id", ""); // 쿠키 삭제
        cookie.setMaxAge(0);
        response.addCookie(cookie);

        cookie = new Cookie("c_id_val", "");// 쿠키 삭제
        cookie.setMaxAge(0);
        response.addCookie(cookie);
      }
    }

    if (cnt == 0 || cnt < 0) {

      model.addAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");

      return "/login/errorMsg";
    }
    return "redirect:/";
  }

  @GetMapping("/user/login")
  public String login(HttpServletRequest request) {

    // 쿠키 설정 시작
    String c_id = ""; // c_id: 아이디 저장 여부 (Y)
    String c_id_val = ""; // 아이디 값

    Cookie[] cookies = request.getCookies();
    Cookie cookie = null;

    if (cookies != null) {
      for (int i = 0; i < cookies.length; i++) {
        cookie = cookies[i];

        if (cookie.getName().equals("c_id")) {
          c_id = cookie.getValue(); // Y
        } else if (cookie.getName().equals("c_id_val")) {
          c_id_val = cookie.getValue(); // 아이디값
        }
      }
    }

    request.setAttribute("c_id", c_id);
    request.setAttribute("c_id_val", c_id_val);

    return "/user/login";
  }

  @GetMapping("/")
  public String home() {

    return "/home";
  }
}
