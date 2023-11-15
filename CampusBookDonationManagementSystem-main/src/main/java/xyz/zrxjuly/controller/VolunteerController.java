
package xyz.zrxjuly.controller;


import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import xyz.zrxjuly.dao.entity.VolunteerEntity;
import xyz.zrxjuly.service.VolunteerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Controller("VolunteerController")
@RequestMapping("/admin")
public class VolunteerController {

    private final Logger logger = LoggerFactory.getLogger(VolunteerController.class);

    @Autowired
    private VolunteerService volunteerService;


    @RequestMapping("queryVolunteerList")
    public String queryVolunteerList(@RequestBody(required = false) VolunteerEntity volunteerEntity,Model model) {
        List<VolunteerEntity> volunteerList = volunteerService.queryVolunteerList(volunteerEntity);
        model.addAttribute("volunteerList", volunteerList);
        return "admin/volunteer";
    }

    @GetMapping("showVolunteerInfo")
    public String showVolunteerInfo(VolunteerEntity volunteerEntity,Model model) {
        List<VolunteerEntity> volunteerList = volunteerService.queryVolunteerList(volunteerEntity);
        if (!volunteerList.isEmpty()) {
            model.addAttribute("volunteerList", volunteerList.get(0));
        }

        return "admin/volunteerInfo";
    }


    /** 管理员删除用户 **/
    @RequestMapping("deleteVolunteerByAccount")
    @ResponseBody
    public JSONObject deleteVolunteerByAccount(String  volunteer_account) {
        JSONObject json = new JSONObject();
        VolunteerEntity volunteerEntity = new VolunteerEntity();
        volunteerEntity.setVolunteer_account(volunteer_account);
        try {
            int result = volunteerService.deleteVolunteerByAccount(volunteerEntity);
            if(result != 0) {
                json.put("msg", "success");
                System.out.println("删除成功");
            }else{
                json.put("msg", "error");
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return json;
    }
    /** 转到编辑志愿者页面 **/
    @RequestMapping("toModifyVolunteer")
    public String toModifyVolunteer(String volunteer_account, Model model) {
        VolunteerEntity volunteerEntity = new VolunteerEntity();
        volunteerEntity.setVolunteer_account(volunteer_account);
        List<VolunteerEntity> volunteerList = volunteerService.queryVolunteerList(volunteerEntity);
        model.addAttribute("volunteerList", volunteerList.get(0));
        return "admin/editVolunteer";
    }
    /** 转到新增志愿者页面 **/
    @RequestMapping("toCreateVolunteer")
    public String toCreateVolunteer() {
        return "admin/createVolunteer";
    }

    /**
     * 添加志愿者
     * @param volunteerEntity
     * @return
     */

    @RequestMapping( "/addVolunteerInfo")
    @ResponseBody
    public JSONObject addVolunteerInfo(@RequestBody(required = false)VolunteerEntity volunteerEntity) {
        JSONObject json = new JSONObject();
        boolean flag = volunteerService.queryVolunteerEntityIsExit(volunteerEntity);
        if(flag) {
            json.put("msg", "error");
        }
        else {
            volunteerService.addVolunteerInfo(volunteerEntity);
            json.put("msg", "success");
            System.out.println("新增成功");
        }
        return json;
    }


/**
     * 根据志愿者用户名修改志愿者信息
     * @param volunteerEntity
     * @return
     */

    @PostMapping( "/modifyVolunteerInfo")
    @ResponseBody
    public JSONObject modifyVolunteerInfo(@RequestBody(required = false)VolunteerEntity volunteerEntity) {
        JSONObject json = new JSONObject();
        VolunteerEntity searchProject = volunteerService.queryVolunteerEntity(volunteerEntity);
        if(searchProject == null) {
            json.put("msg", "error");
            System.out.println("修改失败");
        }
        else if(searchProject.getVolunteer_account().equals(volunteerEntity.getVolunteer_account())) {
            volunteerService.updateVolunteerByAccount(volunteerEntity);
            json.put("msg", "success");
            System.out.println("修改成功");
        }
        else {
            json.put("msg", "error");
        }
        return json;
    }

    @RequestMapping("findVolunteer")
    public void findVolunteer(HttpServletRequest request, HttpServletResponse response) throws SecurityException, IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        String key=request.getParameter("key");
        VolunteerEntity volunteerEntity = new VolunteerEntity();
        volunteerEntity.setVolunteer_account(key);
        List<VolunteerEntity> volunteerList = volunteerService.queryVolunteerList(volunteerEntity);
        request.setAttribute("volunteerList", volunteerList);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/volunteer.jsp").forward(request, response);
    }




}
