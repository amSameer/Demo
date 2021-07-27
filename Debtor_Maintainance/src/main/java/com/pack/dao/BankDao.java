package com.pack.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pack.model.Bank;
import com.pack.model.Debtor;
@Component
public class BankDao {
	
	@Autowired
	private DataSource dataSource;
	 
	public  int insert(Bank e) {
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i=insert.update("insert into bank(id, accountnumber, bankname, address)  values(?,?,?,?)", e.getId(),e.getAccountnumber(),e.getBankname(),e.getAddress());
		return i; 
		
	}

	public List<Bank> viewAll() {
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		String sql = "SELECT * from bank";
		List<Bank> details= insert.query(sql, new BeanPropertyRowMapper<Bank>(Bank.class));
		
		return details;
	}

	public Bank getBankById(int id) {
		JdbcTemplate obj = new JdbcTemplate(dataSource);
	    String sql="select * from bank where id=?";    
	    Bank acc= obj.queryForObject(sql, new BeanPropertyRowMapper<Bank>(Bank.class), new Object[]{id});  
	    return acc;
		
		// TODO Auto-generated method stub
		
	}

	public int modify(Bank u) {
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i=	insert.update("update bank set id='"+u.getId()+"',accountnumber='"+u.getAccountnumber() +"', bankname='"+u.getBankname()+"', address='"+u.getAddress() +"' where id= "+u.getId());
		// TODO Auto-generated method stub
		return i;
	}

	public int delete(int id) {
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i=insert.update("delete from bank where id="+id);
		return i;
		// TODO Auto-generated method stub
		
	} 

}
