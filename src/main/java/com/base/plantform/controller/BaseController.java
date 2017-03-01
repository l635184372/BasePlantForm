package com.base.plantform.controller;

import com.base.plantform.entity.PinBoard;
import com.base.plantform.entity.SysUser;
import com.base.plantform.entity.VersionControl;
import com.base.plantform.service.BaseService;
import com.base.plantform.util.JsonMapper;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 类名: BaseController </br>
 * 描述:  </br>
 * 开发人员： Liangqx </br>
 * 创建时间： 2017/2/15 </br>
 * 发布版本：V1.0  </br>
 */
@Controller
@RequestMapping(value = "/sys/")
public class BaseController {

    private Logger logger = Logger.getLogger(BaseController.class);

    @Resource
    private BaseService baseService;

    @RequestMapping(value = "login")
    public String toLogin(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/login";
    }

    @RequestMapping(value = "toRegister")
    public String toRegister(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/register";
    }

    @RequestMapping(value = "register")
    public String register(SysUser sysUser,HttpServletRequest request, HttpServletResponse response, Model model) {
        logger.info("开始进行用户新增操作....");
        SysUser user = baseService.saveSysUser(sysUser);
        if(user != null){
            request.getSession().setAttribute("SYS_USER",user);
            return "plantform/index";
        }else {
            return "plantform/register";
        }
    }
    @ResponseBody
    @RequestMapping(value = {"checkUserName"})
    public String posterDelete(HttpServletRequest request, HttpServletResponse response) {
        String userName = request.getParameter("userName");
        int flag = 0;
        SysUser sysUser = baseService.findUserByUserName(userName);
        if(sysUser != null){
            flag = 1;
        }
        return JsonMapper.getInstance().toJson(flag);
    }


    @RequestMapping(value = "index")
    public String toIndex(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/index";
    }

    @RequestMapping(value = "index_v1")
    public String toIndex_V1(HttpServletRequest request, HttpServletResponse response, Model model) {
        logger.info("开始获取全部版本信息...");
        List<VersionControl> versionList = baseService.getVersionControlList();
        model.addAttribute("versionList",versionList);
        logger.info("版本信息获取成功！");
        return "plantform/index_v1";
    }

    @RequestMapping(value = "index_v5")
    public String toIndex_V5(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/index_v5";
    }

    @RequestMapping(value = "layouts")
    public String toLayouts(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/layouts";
    }

    @RequestMapping(value = "contacts")
    public String toContacts(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "plantform/contacts";
    }

    /**
     * 跳转到标签墙页面
     * @param request
     * @param response
     * @param model
     * @return
     */
    @RequestMapping(value = "pin_board")
    public String toPin_board(HttpServletRequest request, HttpServletResponse response, Model model){
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy年MM月dd日(EEEE) HH时mm分");
        logger.info("当前系统时间为："+df.format(date));
        List<PinBoard> pinBoardList = baseService.findPinBoardList();
        model.addAttribute("pinBoardList",pinBoardList);
        return "plantform/pin_board";
    }
}