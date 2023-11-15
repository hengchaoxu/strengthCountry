package xyz.zrxjuly.pojo;

public class assignment {
    private String b_name;
    private String quantity;
    private String children_account;
    private String a_date;

    public String getB_name() {
        return b_name;
    }

    public String getA_date() {
        return a_date;
    }

    public void setA_date(String a_date) {
        this.a_date = a_date;
    }

    public void setB_name(String b_name) {
        this.b_name = b_name;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getChildren_account() {
        return children_account;
    }

    public void setChildren_account(String children_account) {
        this.children_account = children_account;
    }

    @Override
    public String toString() {
        return "assignment{" +
                "b_name='" + b_name + '\'' +
                ", quantity='" + quantity + '\'' +
                ", children_account='" + children_account + '\'' +
                ", a_date='" + a_date + '\'' +
                '}';
    }
}
