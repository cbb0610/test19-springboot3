package com.cbb.mapper.deptement;

import com.cbb.bean.Department;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface DeptMappger {

    @Select("select * from department where id = #{id}")
    public Department getDeptById(Integer id);

    @Delete("delete from department where id = #{id}")
    public int deleteById(Integer id);

    @Options(useGeneratedKeys = true,keyProperty = "id")
    @Insert("insert into department(departmentName)values(#{departmentName})")
    public int insertOne(Department department);

    @Select("select * from department")
    public List<Map<Object,Object>> getList();

    @Select("select * from department")
    public Map<Object,Object> getOne();
}
