package com.pack.dao;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pack.model.Debtor;


@Component
public class DebtorDao {
	
	@Autowired 
	private DataSource dataSource;
	 
	
	
		 
		public int insert(Debtor e) {
		 	
			JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i=insert.update("insert into debtor(name,address1,email,phone)  values(?,?,?,?)", e.getName(),e.getAddress1(),e.getEmail(),e.getPhone());
			
			return i; 
		} 
		
		
		public List<Debtor> viewAll()
		{
			JdbcTemplate insert = new JdbcTemplate(dataSource);
			String sql = "SELECT * from debtor";
			
			List<Debtor> debtors  = insert.query(sql,new BeanPropertyRowMapper<Debtor>(Debtor.class));
			return debtors;

       }
		
		
		public Debtor getDebById(int id){    
			JdbcTemplate obj = new JdbcTemplate(dataSource);
		    String sql="select * from debtor where id=?";    
		    Debtor deb= obj.queryForObject(sql, new BeanPropertyRowMapper<Debtor>(Debtor.class), new Object[]{id});  
		    return deb;
		  
		    
		} 
		
		public int  modify(Debtor u) {
			   	 	
			JdbcTemplate insert = new JdbcTemplate(dataSource);
			int i=	insert.update("update debtor set name='"+u.getName()+"',address1='"+u.getAddress1() +"', email='"+u.getEmail()+"', phone='"+u.getPhone() +"' where id= "+u.getId());
		    return i;	
				} 
		
		
		public int delete(int id) {
						 	   	 	
			JdbcTemplate insert = new JdbcTemplate(dataSource);
			int i=insert.update("delete from debtor where id="+id);
			return i;
			 
		} 
}


