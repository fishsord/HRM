package com.hr_Dao;

import java.util.List;

import com.hr_pojo.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(Integer id);
    
    int deleteById(Integer id);
    
    int deleteByHetong(Integer id);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Message record);
 
    
    int deleteByDangan(Integer id);
    
    
    int updateByDangan(Message m);
    
    int updateByPrimaryKey(Message m);
    
    int updateByStaff(Message m);
    /**
     *  对部门进行分页查询
     */
    List<Message> selectStudentByPage(Message m);
    /**
     *  对档案进行查询
     * @param m
     * @return
     */
    List<Message> selectDanganByPage(Message m);
    /**
     *  数据统计
     */
    int Selectcount();
    /**
     *  对某个员工的详细信息进行查询
     *  @param i
     *  @return
     */
    List<Message> StaffAll(Integer i);
}