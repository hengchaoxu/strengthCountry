package xyz.zrxjuly.service;

import java.util.List;

import xyz.zrxjuly.pojo.Book;
import xyz.zrxjuly.pojo.assignment;

public interface IBookService {

	int selectBookCheck_0(String u_id);

	int selectBookCheck_1(String u_id);

	int selectBookCheck_2(String u_id);

	int selectBookCheck_3(String u_id);

	Book selectBookDonateSuccess(String u_id);

	int addBook(Book book);

	List<Book> getDonationBookByUserId(String u_id);

	List<Book> getBookCheck_0(String u_id);

	List<Book> getBookCheck_1(String u_id);

	List<Book> getBookCheck_2(String u_id);

	void deleteCheck0(String b_id);

	Book getBookCheck0(String b_id);

	void editBookInfo(Book book);

	List<Book> adminGetBookCheck_0();

	List<Book> adminGetBookCheck_1();

	List<Book> adminGetBookCheck_2();

	void adminCheck_0Success(String b_id);

	void adminCheck_3Success(String b_id);

	void adminCheckNo(String b_id);

	List<Book> getDonationBook();

	/**分配物资后扣除相应数量**/
	void deleteMaterials(int quantity,String b_name);

	/**增加分配信息**/
	void addMaterialsInfor(int quantity,String b_name,String childrenAccount);

	/**得到分配信息**/
	List<assignment> getAssignment();

	List<Book> getDonationBook1(String key);

}
