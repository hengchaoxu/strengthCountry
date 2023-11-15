package xyz.zrxjuly.controller;


import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.zrxjuly.dao.entity.ChildrenEntity;
import xyz.zrxjuly.service.impl.ChildrenServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller("ChildrenController")
@RequestMapping("/admin")
public class ChildrenController {

    private final Logger logger = LoggerFactory.getLogger(ChildrenController.class); // Change the class name

    @Autowired
    private ChildrenServiceImpl childrenService;

    @RequestMapping("queryChildrenList")
    public String queryChildrenList(@RequestBody(required = false) ChildrenEntity childrenEntity, Model model) { // Change the parameter name
        List<ChildrenEntity> childrenList = childrenService.queryChildrenList(childrenEntity); // Change the service method name
        model.addAttribute("childrenList", childrenList); // Change the attribute name
        return "admin/children"; // Change the view name
    }

    @GetMapping("showChildrenInfo")
    public String showChildrenInfo(ChildrenEntity childrenEntity, Model model) {
        List<ChildrenEntity> childrenList = childrenService.queryChildrenList(childrenEntity);
        if (!childrenList.isEmpty()) {
            model.addAttribute("childrenList", childrenList.get(0));
        }

        return "admin/childrenInfo"; // Change the view name
    }

    /** 管理员删除用户 **/
    @RequestMapping("deleteChildrenByAccount") // Change the method name
    @ResponseBody
    public JSONObject deleteChildrenByAccount(String children_account) { // Change the parameter name
        JSONObject json = new JSONObject();
        ChildrenEntity childrenEntity = new ChildrenEntity(); // Change the entity name
        childrenEntity.setChildren_account(children_account); // Change the field name
        try {
            int result = childrenService.deleteChildrenByAccount(childrenEntity); // Change the service method name
            if(result != 0) {
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

    /** 转到编辑儿童页面 **/
    @RequestMapping("toModifyChildren") // Change the method name
    public String toModifyChildren(String children_account, Model model) { // Change the parameter name
        ChildrenEntity childrenEntity = new ChildrenEntity(); // Change the entity name
        childrenEntity.setChildren_account(children_account); // Change the field name
        List<ChildrenEntity> childrenList = childrenService.queryChildrenList(childrenEntity); // Change the service method name
        model.addAttribute("childrenList", childrenList.get(0)); // Change the attribute name
        return "admin/editChildren"; // Change the view name
    }

    /** 转到新增儿童页面 **/
    @RequestMapping("toCreateChildren")
    public String toCreateChildren() {
        return "admin/createChildren";
    }

    /**
     * 添加儿童 // Change the comment
     * @param childrenEntity // Change the parameter name
     * @return
     */
    @RequestMapping("/addChildrenInfo") // Change the method name
    @ResponseBody
    public JSONObject addChildrenInfo(@RequestBody(required = false) ChildrenEntity childrenEntity) { // Change the parameter name
        JSONObject json = new JSONObject();
        boolean flag = childrenService.queryChildrenEntityIsExit(childrenEntity); // Change the service method name
        if (flag) {
            json.put("msg", "error");
        } else {
            childrenService.addChildrenInfo(childrenEntity); // Change the service method name
            json.put("msg", "success");
            System.out.println("新增成功");
        }
        return json;
    }

    /**
     * 根据儿童用户名修改儿童信息 // Change the comment
     * @param childrenEntity // Change the parameter name
     * @return
     */
    @RequestMapping("/modifyChildrenInfo")
    @ResponseBody
    public JSONObject modifyChildrenInfo(@RequestBody(required = false) ChildrenEntity childrenEntity) { // Change the parameter name
        JSONObject json = new JSONObject();
        ChildrenEntity searchProject = childrenService.queryChildrenEntity(childrenEntity); // Change the service method name
        if (searchProject == null) {
            json.put("msg", "error");
            System.out.println("修改失败");
        } else if (searchProject.getChildren_account().equals(childrenEntity.getChildren_account())) { // Change the field name
            childrenService.updateChildrenByAccount(childrenEntity); // Change the service method name
            json.put("msg", "success");
            System.out.println("修改成功");
        } else {
            json.put("msg", "error");
        }

        return json;
    }

    @RequestMapping("findChildren")
    public void findChildren(HttpServletRequest request, HttpServletResponse response) throws SecurityException, IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        String key=request.getParameter("key");
        ChildrenEntity childrenEntity = new ChildrenEntity();
        childrenEntity.setChildren_account(key);
        List<ChildrenEntity> childrenList = childrenService.queryChildrenList(childrenEntity);
        request.setAttribute("childrenList", childrenList);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/children.jsp").forward(request, response);
    }

}
