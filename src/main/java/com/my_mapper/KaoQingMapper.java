package com.my_mapper;

import java.util.List;

import com.hr_pojo.KaoQing;
import com.hr_pojo.TrainPerson;

public interface KaoQingMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(KaoQing record);

    int insertSelective(KaoQing record);

    KaoQing selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(KaoQing record);

    int updateByPrimaryKey(KaoQing record);
    
    /**
     * 分页查询
     * @return
     */
    List<KaoQing> selectKaoQingByPage(KaoQing k);
    /**
     * 总条数
     * @return
     */
    int selectCount();
    /**
     * 删除数据
     * @param t
     * @return
     */
    int deleteKaoQingByPage(Integer id);
    /**
     * 添加数据
     * @param t
     * @return
     */
    int addKaoQingByPage(KaoQing k);
    /**
     * 修改培训信息
     */
    int updateKaoQingByPage(KaoQing k);
    
    
    List<KaoQing> selectJf(Integer userid);
    
}