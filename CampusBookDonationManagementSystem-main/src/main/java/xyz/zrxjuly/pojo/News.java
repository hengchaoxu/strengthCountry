package xyz.zrxjuly.pojo;

import java.util.Date;

/**
 * @Classname News
 * @Description TODO
 * @PackageName xyz.zrxjuly.pojo
 * @Version 1.0.0
 * @Date 2023/11/8 20:44
 * @Created by HE YU
 */
public class News {
    /** 新闻序号 **/
    private String news_id;

    /** 新闻标题 **/
    private String news_title;

    /** 新闻关键字 **/
    private String news_keyword;

    /** 新闻栏目 **/
    private String news_column;

    /** 新闻修改时间 **/
    private Date news_updated_time;

    /** 新闻是否发布 0-不发布 1-发布 **/
    private boolean news_is_published;

    /** 新闻内容 **/
    private String news_content;

    /** 新闻作者 **/
    private String news_author;

    public String getNews_column() {
        return news_column;
    }

    public void setNews_column(String news_column) {
        this.news_column = news_column;
    }

    public String getNews_author() {
        return news_author;
    }

    public void setNews_author(String news_author) {
        this.news_author = news_author;
    }

    public String getNews_keyword() {
        return news_keyword;
    }

    public void setNews_keyword(String news_keyword) {
        this.news_keyword = news_keyword;
    }
    public String getNews_id() {
        return news_id;
    }

    public void setNews_id(String news_id) {
        this.news_id = news_id;
    }

    public String getNews_title() {
        return news_title;
    }

    public void setNews_title(String news_title) {
        this.news_title = news_title;
    }

    public Date getNews_updated_time() {
        return news_updated_time;
    }

    public void setNews_updated_time(Date news_updated_time) {
        this.news_updated_time = news_updated_time;
    }

    public boolean isNews_is_published() {
        return news_is_published;
    }

    public void setNews_is_published(boolean news_is_published) {
        this.news_is_published = news_is_published;
    }

    public String getNews_content() {
        return news_content;
    }

    public void setNews_content(String news_content) {
        this.news_content = news_content;
    }

    @Override
    public String toString() {
        return "News{" +
                "news_id=" + news_id +
                ", news_title='" + news_title + '\'' +
                ", news_updated_time=" + news_updated_time +
                ", news_is_published=" + news_is_published +
                ", news_content='" + news_content + '\'' +
                '}';
    }
}
