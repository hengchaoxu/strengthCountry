package xyz.zrxjuly.service;

import xyz.zrxjuly.pojo.News;

import java.util.List;

/**
 * @Classname INewsService
 * @Description TODO
 * @PackageName xyz.zrxjuly.service
 * @Version 1.0.0
 * @Date 2023/11/9 20:13
 * @Created by HE YU
 */

public interface INewsService {

    void addNews(News news);

    void deleteNews(String news_id);

    void editNews(News news);

    void cancelNews(String news_id);

    void publishNews(String news_id);

    News getNewsById(String news_id);

    News getNewsByTitle(String news_title);

    List<News> getAllNewsList();

    List<News> getPublishedNewsList();

    List<News> getNotPublishedNewsList();

}
