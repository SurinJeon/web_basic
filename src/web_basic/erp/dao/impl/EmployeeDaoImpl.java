package web_basic.erp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web_basic.erp.dao.EmployeeDao;
import web_basic.erp.dto.Department;
import web_basic.erp.dto.Employee;
import web_basic.erp.dto.Title;

public class EmployeeDaoImpl implements EmployeeDao {

	private static EmployeeDaoImpl instance = new EmployeeDaoImpl();
	private Connection con;
	
	public void setCon(Connection con) {
		this.con = con;
	}

	private EmployeeDaoImpl() {
		
	}

	public static EmployeeDaoImpl getInstance() {
		if(instance == null) {
			instance = new EmployeeDaoImpl();
		}
		return instance;
	}
	// singleton
	// 기존에 하던거랑 조금 다름
	
	
	// view로 다 바꾸기
	
	@Override
	public List<Employee> selectEmployeeByAll() {
//		String sql = " select * from vw_full_emp"; 
		String sql = "select empno, empname, title_no, title_name, manager_no, manager_name, salary, deptNo, deptname, floor"
				    + " from vw_full_emp";
		try( PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();) {
			if (rs.next()) {
				List<Employee> list = new ArrayList<Employee>();
				do {
					list.add(getEmployee(rs));
				} while (rs.next());
				return list;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	private Employee getEmployee(ResultSet rs) throws SQLException {
		int empNo = rs.getInt("empno");
		String empName = rs.getString("empname");
		Title title = new Title(rs.getInt("title_no"));
		Employee manager = new Employee(rs.getInt("manager_no"));
		int salary = rs.getInt("salary");
		Department dept = new Department(rs.getInt("deptNo"));
		
		// join 때문에 들어간 부분
		// 각각 try-catch문으로 다 묶어주는 것이 좋음
		try {
			title.setName(rs.getString("title_name"));
		} catch (SQLException e) {}
		try {
			manager.setEmpName(rs.getString("manager_name"));
		} catch (SQLException e) {}

		try {
			dept.setDeptname(rs.getString("deptname"));
		} catch (SQLException e) {}

		try {
			dept.setFloor(rs.getInt("floor"));
		} catch (SQLException e) {}
		
		
		return new Employee(empNo, empName, title, manager, salary, dept);
	}

	// 번호로 검색은 해당 열만 보이게 할 것
	@Override
	public Employee selectEmployeeByNo(Employee employee) {
		String sql = "select empno, empname, title as title_no, manager as manager_no, salary, dept as deptNo"
			    	+ " from employee"
			    	+ " where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, employee.getEmpNo());
			try (ResultSet rs = pstmt.executeQuery();) {
				if(rs.next()) {
					return getEmployee(rs); 
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}
	
	// insert update delete는 view로 안됨!

	@Override
	public int insertEmployee(Employee employee) {
		String sql = "insert"
			    	+ " into employee"
			    	+ " values (?, ?, ?, ?, ?, ?)";
		try (PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, employee.getEmpNo());
			pstmt.setString(2, employee.getEmpName());
			pstmt.setInt(3, employee.getTitle().getNo());
			pstmt.setInt(4, employee.getManager().getEmpNo());
			pstmt.setInt(5, employee.getSalary());
			pstmt.setInt(6, employee.getDept().getDeptno());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int updateEmployee(Employee employee) {
		String sql = "update employee"
			       	+ " set empname = ?, title = ?, manager = ?, salary = ?, dept = ?"
			       	+ " where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, employee.getEmpName());
			pstmt.setInt(2, employee.getTitle().getNo());
			pstmt.setInt(3, employee.getManager().getEmpNo());
			pstmt.setInt(4, employee.getSalary());
			pstmt.setInt(5, employee.getDept().getDeptno());;
			pstmt.setInt(6, employee.getEmpNo());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteEmployee(Employee employee) {
		String sql = "delete"
				    + " from employee"
				    + " where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, employee.getEmpNo());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}


}
