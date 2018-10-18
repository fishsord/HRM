package com.hr_mapper;

import java.util.List;	

import com.hr_pojo.TrainPerson;

public interface TrainPersonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TrainPerson record);

    int insertSelective(TrainPerson record);

    TrainPerson selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TrainPerson record);

    int updateByPrimaryKey(TrainPerson record);
    
    List<TrainPerson> selectAll();
    
    /**
     * 分页查询
     * @return
     */
    List<TrainPerson> selectTrainPersonByPage(TrainPerson t);
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
    int deleteTrainPersonByPage(Integer id);
    /**
     * 添加数据
     * @param t
     * @return
     */
    void addTrainPersonByPage(TrainPerson t);
    /**
     * 修改培训信息
     */
    int updateTrainPersonByPage(TrainPerson t);
}