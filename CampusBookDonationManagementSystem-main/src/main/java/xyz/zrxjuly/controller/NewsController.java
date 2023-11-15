package xyz.zrxjuly.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.zrxjuly.pojo.News;
import xyz.zrxjuly.service.INewsService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Classname NewsController
 * @Description TODO
 * @PackageName xyz.zrxjuly.controller
 * @Version 1.0.0
 * @Date 2023/11/10 15:31
 * @Created by HE YU
 */
@Controller("newsController")
@RequestMapping("/news")
public class NewsController {
    @Resource
    private INewsService newsService;

    /** 已发布的新闻列表 **/
    @RequestMapping("PublishedNewsList")
    public String getPublishedNewsList(Model model) {
        List<News> publishedNewsList = newsService.getPublishedNewsList();
        model.addAttribute("publishedNewsList", publishedNewsList);
        return "admin/published_news";
    }

    /** 未发布的新闻列表 **/
    @RequestMapping("NotPublishedNewsList")
    public String getNotPublishedNewsList(Model model) {
        List<News> notPublishedNewsList = newsService.getNotPublishedNewsList();
        model.addAttribute("notPublishedNewsList", notPublishedNewsList);
        return "admin/not_published_news";
    }

    /** 管理员-增加新闻 **/
    @RequestMapping("addNews")
    @ResponseBody
    public JSONObject addNews(News news) {
        JSONObject json = new JSONObject();
        if (news != null) {
            newsService.addNews(news);
            json.put("msg", "success");
        } else {
            json.put("msg", "error");
        }
        return json;
    }

    /** 管理员-删除新闻 **/
    @RequestMapping("deleteNews")
    @ResponseBody
    public JSONObject deleteNews(String news_id) {
        JSONObject json = new JSONObject();
        if (news_id != null) {
            newsService.deleteNews(news_id);
            json.put("msg", "success");
        } else {
            json.put("msg", "error");
        }
        return json;
    }

    /** 管理员-修改新闻 **/
    @RequestMapping("editNews")
    @ResponseBody
    public JSONObject editNews(News news) {
        JSONObject json = new JSONObject();
        if (news != null) {
            newsService.editNews(news);
            json.put("msg", "success");
        } else {
            json.put("msg", "error");
        }
        return json;
    }

    /** 管理员-取消发布新闻 **/
    @RequestMapping("cancelNews")
    @ResponseBody
    public JSONObject cancelNews(String news_id) {
        JSONObject json = new JSONObject();
        if (news_id != null) {
            newsService.cancelNews(news_id);
            json.put("msg", "success");
        } else {
            json.put("msg", "error");
        }
        return json;
    }

    /** 管理员-发布新闻 **/
    @RequestMapping("publishNews")
    @ResponseBody
    public JSONObject publishNews(String news_id) {
        JSONObject json = new JSONObject();
        if (news_id != null) {
            newsService.publishNews(news_id);
            json.put("msg", "success");
        } else {
            json.put("msg", "error");
        }
        return json;
    }

    /** 查看新闻主页 **/
    @RequestMapping("showNews")
    public String showNews(Model model) {
        List<News> newsList = newsService.getPublishedNewsList();
        model.addAttribute("newsList", newsList);
        return "admin/news_admin";
    }

    /** 查看新闻 **/
    @RequestMapping("readNews")
    public String readNews(String news_id, Model model) {
        News news = newsService.getNewsById(news_id);
        model.addAttribute("news", news);
        return "admin/news_page";
    }
}
