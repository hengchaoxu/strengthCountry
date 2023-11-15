package xyz.zrxjuly.service.impl;

import org.springframework.stereotype.Service;
import xyz.zrxjuly.dao.IBookDao;
import xyz.zrxjuly.dao.IChildrenDao;
import xyz.zrxjuly.pojo.Book;
import xyz.zrxjuly.pojo.Children;
import xyz.zrxjuly.service.IChildrenService;

import javax.annotation.Resource;
import java.util.List;
import xyz.zrxjuly.utils.DateUtil;
import xyz.zrxjuly.dao.ChildrenEntityMapper; // Change the import statement
import xyz.zrxjuly.dao.entity.ChildrenEntity; // Change the import statement
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Map;

@Service("childrenService")
public class ChildrenServiceImpl implements IChildrenService {
    @Resource
    private IChildrenDao childrenDao;

    @Override
    public List<Children> adminGetChildren() {
        return childrenDao.adminGetChildren();
    }

    @Autowired
    private ChildrenEntityMapper childrenEntityMapper; // Change the field name

    /**
     * 添加儿童
     * @param childrenEntity // Change the parameter name
     * @return
     */
    public int addChildrenInfo(ChildrenEntity childrenEntity) { // Change the method name
        Date date = DateUtil.getCreateTime();
        childrenEntity.setChildren_creation_date(date);
        childrenEntity.setChildren_identity("Children"); // Change the identity
        childrenEntityMapper.insertSelective(childrenEntity);
        return 0;
    }

    /**
     * 删除儿童
     * @param childrenEntity // Change the parameter name
     * @return
     */
    public int deleteChildrenByAccount(ChildrenEntity childrenEntity) { // Change the method name
        int count = childrenEntityMapper.deleteChildrenByAccount(childrenEntity.getChildren_account());
        return count;
    }

    /**
     * 查询儿童列表
     * @param childrenEntity // Change the parameter name
     * @return
     */
    public List<ChildrenEntity> queryChildrenList(ChildrenEntity childrenEntity) { // Change the method name
        List<ChildrenEntity> resultList = childrenEntityMapper.queryChildrenList(childrenEntity);
        return resultList;
    }

    /**
     * 查询全部儿童的名字接口
     * @return
     */
    public List<Map<String,Object>> queryAllProjectName() {
        return null;
    }

    /**
     * 根据儿童用户名精准查询是否存在
     * @param childrenEntity // Change the parameter name
     * @return
     */
    public boolean queryChildrenEntityIsExit(ChildrenEntity childrenEntity) { // Change the method name
        ChildrenEntity childrenEntity2 = childrenEntityMapper.queryChildrenEntity(childrenEntity);
        return childrenEntity2 != null;
    }

    /**
     * 根据用户名查询儿童
     * @param childrenEntity // Change the parameter name
     * @return
     */
    public ChildrenEntity queryChildrenEntity(ChildrenEntity childrenEntity) { // Change the method name
        return childrenEntityMapper.queryChildrenEntity(childrenEntity);
    }

    /**
     * 根据儿童用户名修改儿童信息
     * @param childrenEntity // Change the parameter name
     * @return
     */
    public int updateChildrenByAccount(ChildrenEntity childrenEntity) { // Change the method name
        int count = childrenEntityMapper.updateChildrenByAccount(childrenEntity);
        return count;
    }
}
