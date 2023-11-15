package xyz.zrxjuly.dao;

import org.apache.ibatis.annotations.MapKey;
import org.springframework.stereotype.Repository;
import xyz.zrxjuly.dao.entity.ChildrenEntity;

import java.util.List;

@Repository
public interface ChildrenEntityMapper {


    int insertSelective(ChildrenEntity record);

    int deleteChildrenByAccount(String children_account);
    @MapKey("children_account")
    List<ChildrenEntity> queryChildrenList(ChildrenEntity childrenEntity);


    ChildrenEntity queryChildrenEntity(ChildrenEntity childrenEntity);
    int updateChildrenByAccount(ChildrenEntity childrenEntity);

}
