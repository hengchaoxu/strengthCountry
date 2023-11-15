package xyz.zrxjuly.dao.entity;

import java.util.Date;

public class DonatorEntity {
    private String donator_account; // 捐赠者用户名
    private String donator_password; // 密码
    private String donator_name; // 姓名
    private String donator_gender; // 性别
    private String donator_email; // 邮箱
    private Date donator_creation_date; // 创建日期
    private Date donator_birthday; // 生日
    private String donator_age; // 年龄
    private String donator_picture; // 头像
    private String donator_description; // 个人描述
    private String donator_address; // 地址
    private String donator_identity; // 身份
    private String donator_created_by; // 管理员创建

    public String getDonator_created_by() {
        return donator_created_by;
    }

    public void setDonator_created_by(String donator_created_by) {
        this.donator_created_by = donator_created_by;
    }

    public String getDonator_account() {
        return donator_account;
    }

    public void setDonator_account(String donator_account) {
        this.donator_account = donator_account;
    }

    public String getDonator_password() {
        return donator_password;
    }

    public void setDonator_password(String donator_password) {
        this.donator_password = donator_password;
    }

    public String getDonator_name() {
        return donator_name;
    }

    public void setDonator_name(String donator_name) {
        this.donator_name = donator_name;
    }

    public String getDonator_gender() {
        return donator_gender;
    }

    public void setDonator_gender(String donator_gender) {
        this.donator_gender = donator_gender;
    }

    public String getDonator_email() {
        return donator_email;
    }

    public void setDonator_email(String donator_email) {
        this.donator_email = donator_email;
    }

    public Date getDonator_creation_date() {
        return donator_creation_date;
    }

    public void setDonator_creation_date(Date donator_creation_date) {
        this.donator_creation_date = donator_creation_date;
    }

    public Date getDonator_birthday() {
        return donator_birthday;
    }

    public void setDonator_birthday(Date donator_birthday) {
        this.donator_birthday = donator_birthday;
    }

    public String getDonator_age() {
        return donator_age;
    }

    public void setDonator_age(String donator_age) {
        this.donator_age = donator_age;
    }

    public String getDonator_picture() {
        return donator_picture;
    }

    public void setDonator_picture(String donator_picture) {
        this.donator_picture = donator_picture;
    }

    public String getDonator_description() {
        return donator_description;
    }

    public void setDonator_description(String donator_description) {
        this.donator_description = donator_description;
    }

    public String getDonator_address() {
        return donator_address;
    }

    public void setDonator_address(String donator_address) {
        this.donator_address = donator_address;
    }

    public String getDonator_identity() {
        return donator_identity;
    }

    public void setDonator_identity(String donator_identity) {
        this.donator_identity = donator_identity;
    }

    @Override
    public String toString() {
        return "DonatorEntity{" +
                "donator_account='" + donator_account + '\'' +
                ", donator_password='" + donator_password + '\'' +
                ", donator_name='" + donator_name + '\'' +
                ", donator_gender='" + donator_gender + '\'' +
                ", donator_email='" + donator_email + '\'' +
                ", donator_creation_date=" + donator_creation_date +
                ", donator_birthday=" + donator_birthday +
                ", donator_age='" + donator_age + '\'' +
                ", donator_picture='" + donator_picture + '\'' +
                ", donator_description='" + donator_description + '\'' +
                ", donator_address='" + donator_address + '\'' +
                ", donator_identity='" + donator_identity + '\'' +
                ", donator_created_by='" + donator_created_by + '\'' +
                '}';
    }

}

