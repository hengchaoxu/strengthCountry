package xyz.zrxjuly.controller;


import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import xyz.zrxjuly.dao.entity.DonatorEntity;
import xyz.zrxjuly.service.DonatorService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Controller("DonatorController")
@RequestMapping("/admin")
public class DonatorController {


    private final Logger logger = LoggerFactory.getLogger(DonatorController.class); // 将 "VolunteerController" 替换为 "DonatorController"

    @Autowired
    private DonatorService donatorService; // 将 "VolunteerService" 替换为 "DonatorService"

    @RequestMapping("queryDonatorList") // 将 "queryVolunteerList" 替换为 "queryDonatorList"
    public String queryDonatorList(@RequestBody(required = false) DonatorEntity donatorEntity, Model model) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        List<DonatorEntity> donatorList = donatorService.queryDonatorList(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        model.addAttribute("donatorList", donatorList); // 将 "volunteerList" 替换为 "donatorList"
        return "admin/donator"; // 将 "volunteer" 替换为 "donator"
    }

    @GetMapping("showDonatorInfo") // 将 "showVolunteerInfo" 替换为 "showDonatorInfo"
    public String showDonatorInfo(DonatorEntity donatorEntity, Model model) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        List<DonatorEntity> donatorList = donatorService.queryDonatorList(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        if (!donatorList.isEmpty()) { // 将 "volunteerList" 替换为 "donatorList"
            model.addAttribute("donatorList", donatorList.get(0)); // 将 "volunteerList" 替换为 "donatorList"
        }

        return "admin/donatorInfo"; // 将 "volunteerInfo" 替换为 "donatorInfo"
    }

    /**
     * 管理员删除用户
     **/
    @RequestMapping("deleteDonatorByAccount") // 将 "deleteVolunteerByAccount" 替换为 "deleteDonatorByAccount"
    @ResponseBody
    public JSONObject deleteDonatorByAccount(String donator_account) { // 将 "volunteer_account" 替换为 "donator_account"
        JSONObject json = new JSONObject();
        DonatorEntity donatorEntity = new DonatorEntity(); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        donatorEntity.setDonator_account(donator_account); // 将 "volunteer_account" 替换为 "donator_account"
        try {
            int result = donatorService.deleteDonatorByAccount(donatorEntity); // 将 "deleteVolunteerByAccount" 替换为 "deleteDonatorByAccount"
            if (result != 0) {
                json.put("msg", "success");
                System.out.println("删除成功");
            } else {
                json.put("msg", "error");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return json;
    }

    /**
     * 转到编辑捐赠者页面
     **/
    @RequestMapping("toModifyDonator") // 将 "toModifyVolunteer" 替换为 "toModifyDonator"
    public String toModifyDonator(String donator_account, Model model) { // 将 "volunteer_account" 替换为 "donator_account"
        DonatorEntity donatorEntity = new DonatorEntity(); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        donatorEntity.setDonator_account(donator_account); // 将 "volunteer_account" 替换为 "donator_account"
        List<DonatorEntity> donatorList = donatorService.queryDonatorList(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        model.addAttribute("donatorList", donatorList.get(0)); // 将 "volunteerList" 替换为 "donatorList"
        return "admin/editDonator"; // 将 "editVolunteer" 替换为 "editDonator"
    }

    /**
     * 转到新增捐赠者页面
     **/
    @RequestMapping("toCreateDonator") // 将 "toCreateVolunteer" 替换为 "toCreateDonator"
    public String toCreateDonator() { // 将 "toCreateVolunteer" 替换为 "toCreateDonator"
        return "admin/createDonator"; // 将 "createVolunteer" 替换为 "createDonator"
    }

    /**
     * 添加捐赠者
     *
     * @param donatorEntity // 将 "VolunteerEntity" 替换为 "DonatorEntity"
     * @return
     */
    @RequestMapping("/addDonatorInfo") // 将 "addVolunteerInfo" 替换为 "addDonatorInfo"
    @ResponseBody
    public JSONObject addDonatorInfo(@RequestBody(required = false) DonatorEntity donatorEntity) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        JSONObject json = new JSONObject();
        boolean flag = donatorService.queryDonatorEntityIsExit(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        if (flag) {
            json.put("msg", "error");
        } else {
            donatorService.addDonatorInfo(donatorEntity); // 将 "addVolunteerInfo" 替换为 "addDonatorInfo"
            json.put("msg", "success");
            System.out.println("新增成功");
        }
        return json;
    }

    @PostMapping("/modifyDonatorInfo") // 将 "modifyVolunteerInfo" 替换为 "modifyDonatorInfo"
    @ResponseBody
    public JSONObject modifyDonatorInfo(@RequestBody(required = false) DonatorEntity donatorEntity) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        JSONObject json = new JSONObject();
        DonatorEntity searchProject = donatorService.queryDonatorEntity(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        if (searchProject == null) {
            json.put("msg", "error");
            System.out.println("修改失败");
        } else if (searchProject.getDonator_account().equals(donatorEntity.getDonator_account())) { // 将 "volunteer_account" 替换为 "donator_account"
            donatorService.updateDonatorByAccount(donatorEntity); // 将 "updateVolunteerByAccount" 替换为 "updateDonatorByAccount"
            json.put("msg", "success");
            System.out.println("修改成功");
        } else {
            json.put("msg", "error");
        }
        return json;
    }

    @RequestMapping("findDonator")
    public void findVolunteer(HttpServletRequest request, HttpServletResponse response) throws SecurityException, IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        String key=request.getParameter("key");
        DonatorEntity donatorEntity = new DonatorEntity();
        donatorEntity.setDonator_account(key);
        List<DonatorEntity> donatorList = donatorService.queryDonatorList(donatorEntity);
        request.setAttribute("donatorList", donatorList);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/donator.jsp").forward(request, response);
    }
}