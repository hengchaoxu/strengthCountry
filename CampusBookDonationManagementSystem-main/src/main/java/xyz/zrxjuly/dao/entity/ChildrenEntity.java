package xyz.zrxjuly.dao.entity;

import java.util.Date;


public class ChildrenEntity {
    private String children_account; // 儿童用户名
    private String children_password; // 密码
    private String children_name; // 姓名
    private String children_gender; // 性别
    private String children_email; // 邮箱
    private Date children_creation_date; // 创建日期
    private Date children_birthday; // 生日
    private String children_age; // 年龄
    private String children_picture; // 头像
    private String children_description; // 个人描述
    private String children_school; // 学校
    private String children_address; // 地址
    private String children_identity; // 身份
    private String children_created_by; // 管理员创建

    public String getChildren_created_by() {
        return children_created_by;
    }

    public void setChildren_created_by(String children_created_by) {
        this.children_created_by = children_created_by;
    }

    public String getChildren_account() {
        return children_account;
    }

    public void setChildren_account(String children_account) {
        this.children_account = children_account;
    }

    public String getChildren_password() {
        return children_password;
    }

    public void setChildren_password(String children_password) {
        this.children_password = children_password;
    }

    public String getChildren_name() {
        return children_name;
    }

    public void setChildren_name(String children_name) {
        this.children_name = children_name;
    }

    public String getChildren_gender() {
        return children_gender;
    }

    public void setChildren_gender(String children_gender) {
        this.children_gender = children_gender;
    }

    public String getChildren_email() {
        return children_email;
    }

    public void setChildren_email(String children_email) {
        this.children_email = children_email;
    }

    public Date getChildren_creation_date() {
        return children_creation_date;
    }

    public void setChildren_creation_date(Date children_creation_date) {
        this.children_creation_date = children_creation_date;
    }

    public Date getChildren_birthday() {
        return children_birthday;
    }

    public void setChildren_birthday(Date children_birthday) {
        this.children_birthday = children_birthday;
    }

    public String getChildren_age() {
        return children_age;
    }

    public void setChildren_age(String children_age) {
        this.children_age = children_age;
    }

    public String getChildren_picture() {
        return children_picture;
    }

    public void setChildren_picture(String children_picture) {
        this.children_picture = children_picture;
    }

    public String getChildren_description() {
        return children_description;
    }

    public void setChildren_description(String children_description) {
        this.children_description = children_description;
    }

    public String getChildren_school() {
        return children_school;
    }

    public void setChildren_school(String children_school) {
        this.children_school = children_school;
    }

    public String getChildren_address() {
        return children_address;
    }

    public void setChildren_address(String children_address) {
        this.children_address = children_address;
    }

    public String getChildren_identity() {
        return children_identity;
    }

    public void setChildren_identity(String children_identity) {
        this.children_identity = children_identity;
    }

    @Override
    public String toString() {
        return "ChildrenEntity{" +
                "children_account='" + children_account + '\'' +
                ", children_password='" + children_password + '\'' +
                ", children_name='" + children_name + '\'' +
                ", children_gender='" + children_gender + '\'' +
                ", children_email='" + children_email + '\'' +
                ", children_creation_date=" + children_creation_date +
                ", children_birthday=" + children_birthday +
                ", children_age='" + children_age + '\'' +
                ", children_picture='" + children_picture + '\'' +
                ", children_description='" + children_description + '\'' +
                ", children_school='" + children_school + '\'' +
                ", children_address='" + children_address + '\'' +
                ", children_identity='" + children_identity + '\'' +
                ", children_created_by='" + children_created_by + '\'' +
                '}';
    }
}

