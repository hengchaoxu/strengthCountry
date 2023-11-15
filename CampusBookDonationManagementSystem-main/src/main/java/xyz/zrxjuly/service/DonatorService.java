package xyz.zrxjuly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.zrxjuly.dao.DonatorEntityMapper;
import xyz.zrxjuly.dao.entity.DonatorEntity;
import xyz.zrxjuly.utils.DateUtil;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class DonatorService {

    @Autowired
    private DonatorEntityMapper donatorEntityMapper; // 将 "VolunteerEntityMapper" 替换为 "DonatorEntityMapper"

    /**
     * 添加捐赠者
     * @param donatorEntity // 将 "VolunteerEntity" 替换为 "DonatorEntity"
     * @return
     */
    public int addDonatorInfo(DonatorEntity donatorEntity) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        Date date = DateUtil.getCreateTime();
        donatorEntity.setDonator_creation_date(date); // 将 "volunteer" 替换为 "donator"
        donatorEntity.setDonator_identity("Donator"); // 将 "volunteer" 替换为 "donator"
        donatorEntityMapper.insertSelective(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        return 0;
    }

    /**
     * 删除捐赠者
     * @param donatorEntity // 将 "VolunteerEntity" 替换为 "DonatorEntity"
     * @return
     */
    public int deleteDonatorByAccount(DonatorEntity donatorEntity) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        int count = donatorEntityMapper.deleteDonatorByAccount(donatorEntity.getDonator_account()); // 将 "volunteer" 替换为 "donator"
        return count;
    }

    /**
     * 查询捐赠者列表
     * @param donatorEntity // 将 "VolunteerEntity" 替换为 "DonatorEntity"
     * @return
     */
    public List<DonatorEntity> queryDonatorList(DonatorEntity donatorEntity) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        List<DonatorEntity> resultList = donatorEntityMapper.queryDonatorList(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        return resultList;
    }

    /**
     * 查询全部捐赠者的名字接口
     * @return
     */
    public List<Map<String, Object>> queryAllProjectName() {
        return null;
    }

    /**
     * 根据捐赠者用户名精准查询是否存在
     * @param donatorEntity // 将 "VolunteerEntity" 替换为 "DonatorEntity"
     * @return
     */
    public boolean queryDonatorEntityIsExit(DonatorEntity donatorEntity) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        DonatorEntity donatorEntity2 = donatorEntityMapper.queryDonatorEntity(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        return donatorEntity2 != null;
    }

    /**
     * 根据用户名查询捐赠者
     * @param donatorEntity // 将 "VolunteerEntity" 替换为 "DonatorEntity"
     * @return
     */
    public DonatorEntity queryDonatorEntity(DonatorEntity donatorEntity) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        System.out.println(donatorEntity);
        return donatorEntityMapper.queryDonatorEntity(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
    }

    /**
     * 根据捐赠者用户名修改捐赠者信息
     * @param donatorEntity // 将 "VolunteerEntity" 替换为 "DonatorEntity"
     * @return
     */
    public int updateDonatorByAccount(DonatorEntity donatorEntity) { // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        int count = donatorEntityMapper.updateDonatorByAccount(donatorEntity); // 将 "VolunteerEntity" 替换为 "DonatorEntity"
        return count;
    }








}
