package xyz.zrxjuly.service.impl;

import org.springframework.stereotype.Service;
import xyz.zrxjuly.dao.INewsDao;
import xyz.zrxjuly.pojo.News;
import xyz.zrxjuly.service.INewsService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Classname NewsServiceImpl
 * @Description TODO
 * @PackageName xyz.zrxjuly.service.impl
 * @Version 1.0.0
 * @Date 2023/11/9 20:13
 * @Created by HE YU
 */
@Service("newsService")
public class NewsServiceImpl implements INewsService {

    @Resource
    private INewsDao newsDao;

    @Override
    public void addNews(News news){newsDao.addNews(news);};

    @Override
    public void deleteNews(String news_id){
        newsDao.deleteNews(news_id);
    }

    @Override
    public void editNews(News news) {newsDao.editNews(news);}

    @Override
    public void cancelNews(String news_id) {newsDao.cancelNews(news_id);}

    @Override
    public void publishNews(String news_id) {newsDao.publishNews(news_id);}

    @Override
    public News getNewsById(String news_id){return newsDao.getNewsById(news_id);};

    @Override
    public News getNewsByTitle(String news_title){return newsDao.getNewsByTitle(news_title);}

    @Override
    public List<News> getAllNewsList(){return newsDao.getAllNewsList();};

    @Override
    public List<News> getPublishedNewsList(){return newsDao.getPublishedNewsList();};

    @Override
    public List<News> getNotPublishedNewsList(){return newsDao.getNotPublishedNewsList();};
}
