package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeRepository employeeRepository;
	@Override
	public String EmployeeRegistration(Employee e) {
		employeeRepository.save(e);
		return "Employee Registered successfully";
	}
	@Override
	public Employee checkemployeelogin(String email, String password) {
		
		return employeeRepository.checkemplogin(email,password);
	}
	@Override
	public Employee displayEmployeeByID(int eid) {
		return employeeRepository.findById(eid)	.get();
	}
	@Override
	public String UpdateEmployeeProfile() {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'UpdateEmployeeProfile'");
	}
	@Override
	public List<Employee> displayEmployeeByDept(String dept) {
		
		return employeeRepository.findByDepartment(dept);
	}

}
