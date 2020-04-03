package com.cbb.controller;

import com.cbb.bean.Department;
import com.cbb.bean.Employee;
import com.cbb.mapper.deptement.DeptMappger;
import com.cbb.mapper.employee.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class DeptController {
    @Autowired
   DeptMappger deptMappger;

    @Autowired
    EmployeeMapper empMapper;

    @RequestMapping("/dept/{id}")
    public Department getDept( @PathVariable Integer id){
      return   deptMappger.getDeptById(id);
    }

    @RequestMapping("/dept")
    public int insertDept(Department department){
        return deptMappger.insertOne(department);
    }

    @RequestMapping("/deptList")
    public List<Map<Object,Object>> getList(){
        return deptMappger.getList();
    }
    @RequestMapping("/deptOne")
    public Map<Object,Object> deptOne(){
        return deptMappger.getOne();
    }

    @RequestMapping("/emp/{id}")
    public Employee getEmp( @PathVariable Integer id){
        return empMapper.getEmpById(id);
    }
    @RequestMapping("/emp")
    public int insertEmp(Employee employee){
        return empMapper.insertEmp(employee);
    }
}
