package xyz.zrxjuly.dao;

import xyz.zrxjuly.pojo.News;

import java.util.List;

/**
 * @Classname INewsDao
 * @Description TODO
 * @PackageName xyz.zrxjuly.dao
 * @Version 1.0.0
 * @Date 2023/11/8 20:44
 * @Created by HE YU
 */
public interface INewsDao {
    /** 查询新闻信息 **/
    News selectNews(News news);

    /** 根据id获取新闻 **/
    News getNewsById(String news_id);

    /** 根据标题获取新闻 **/
    News getNewsByTitle(String title);

    /** 管理员-获取所有新闻 **/
    List<News> getAllNewsList();

    /** 获取所有已发布新闻 **/
    List<News> getPublishedNewsList();

    /** 管理员-获取所有未发布新闻 **/
    List<News> getNotPublishedNewsList();

    /** 管理员-增加新闻 **/
    void addNews(News news);

    /** 管理员-修改新闻信息 **/
    void editNews(News news);

    /** 管理员-根据id删除新闻信息 **/
    void deleteNews(String news_id);

    /** 管理员-根据id取消发布新闻 **/
    void cancelNews(String news_id);

    /** 管理员-根据id发布新闻 **/
    void publishNews(String news_id);
}
