package xyz.zrxjuly.dao;

import org.apache.ibatis.annotations.MapKey;
import org.springframework.stereotype.Repository;
import xyz.zrxjuly.dao.entity.DonatorEntity;

import java.util.List;

@Repository
public interface DonatorEntityMapper {
    int insertSelective(DonatorEntity record);
    int deleteDonatorByAccount(String donator_account); // 将 "volunteer_account" 替换为 "donator_account"
    @MapKey("donator_account") // 将 "volunteer_account" 替换为 "donator_account"
    List<DonatorEntity> queryDonatorList(DonatorEntity donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"

    DonatorEntity queryDonatorEntity(DonatorEntity donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
    int updateDonatorByAccount(DonatorEntity donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"

}
