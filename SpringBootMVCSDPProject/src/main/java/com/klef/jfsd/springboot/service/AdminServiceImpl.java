package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	@Override
	public List<Employee> ViewAllEmployees() {
		return employeeRepository.findAll();
		
	}

	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public String deleteemp(int eid) {
		
		 employeeRepository.deleteById(eid);
		 return "Employee Deleted";
	}

	@Override
	public Employee displayempbyid(int eid) {
		return employeeRepository.findById(eid).get();
	}

	@Override
	public long empcount() {
		// TODO Auto-generated method stub
		return employeeRepository.count();
	}

	@Override
	public String updateempstatus(String status, int eid) {
		employeeRepository.updateempstatus(status, eid);
		return "Employee Status updated successfully";
		
	}

}
