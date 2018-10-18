package com.hr_mapper;

import java.util.List;	
import com.hr_pojo.Xincou;

public interface XincouMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Xincou record);

    int insertSelective(Xincou record);

    Xincou selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Xincou record);

    int updateByPrimaryKey(Xincou record);
    
   
    /**
     * 分页查询
     * @return
     */
    List<Xincou> selectXincouByPage(Xincou x);
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
    int deleteXincouByPage(Integer id);
    /**
     * 添加数据
     * @param t
     * @return
     */
    void addXincouByPage(Xincou x);
    /**
     * 修改信息
     */
    int updateXincouByPage(Xincou x);
    
    int updateXincouByPage1(Xincou x);
    /**
     * 
     */
    List<Xincou> selectuserid(Integer userid);
    
    Float selectPrice(Integer userid);
  
}