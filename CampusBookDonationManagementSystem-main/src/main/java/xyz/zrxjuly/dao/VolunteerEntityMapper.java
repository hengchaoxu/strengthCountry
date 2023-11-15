package xyz.zrxjuly.dao;

import org.apache.ibatis.annotations.MapKey;
import org.springframework.stereotype.Repository;
import xyz.zrxjuly.dao.entity.VolunteerEntity;

import java.util.List;

@Repository
public interface VolunteerEntityMapper {


    int insertSelective(VolunteerEntity record);
    int deleteVolunteerByAccount(String volunteer_account);
    @MapKey("volunteer_account")
    List<VolunteerEntity> queryVolunteerList(VolunteerEntity volunteerEntity);


    VolunteerEntity queryVolunteerEntity(VolunteerEntity volunteerEntity);
    int updateVolunteerByAccount(VolunteerEntity volunteerEntity);


}