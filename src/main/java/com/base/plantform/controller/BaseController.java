package com.base.plantform.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 类名: BaseController </br>
 * 描述:  </br>
 * 开发人员： Liangqx </br>
 * 创建时间： 2017/2/15 </br>
 * 发布版本：V1.0  </br>
 */
@Controller
@RequestMapping(value = "/base/")
public class BaseController {

    private Logger logger = Logger.getLogger(BaseController.class);

    @RequestMapping(value = "index")
    public String toIndex(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "jsp/index";
    }

    @RequestMapping(value = "dashboard_1")
    public String dashboard_1(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "jsp/dashboard_1";
    }

    @RequestMapping(value = "dashboard_2")
    public String toDashboard_2(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "jsp/dashboard_2";
    }
    @RequestMapping(value = "dashboard_3")
    public String toDashboard_3(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "jsp/dashboard_3";
    }
    @RequestMapping(value = "dashboard_4")
    public String toDashboard_4(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "jsp/dashboard_4";
    }
    @RequestMapping(value = "dashboard_5")
    public String toDashboard_5(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "jsp/dashboard_5";
    }
    @RequestMapping(value = "layouts")
    public String toLayouts(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "jsp/layouts";
    }

    @RequestMapping(value = "sysIndex")
    public String toSysIndex(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/index";
    }
    @RequestMapping(value = "menu/menu")
    public String toMenu(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/menu/menu";
    }
    @RequestMapping(value = "menu/menuAdd")
    public String toMenuAdd(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/menu/menuAdd";
    }
}