package com.cbb.mapper.employee;

import com.cbb.bean.Employee;

//@Mapper或者@MapperScan将接口扫描装配到容器中
public interface EmployeeMapper {

    public Employee getEmpById(Integer id);

    public int insertEmp(Employee employee);
}
