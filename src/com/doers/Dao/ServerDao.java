package com.doers.Dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;

import com.doers.domain.Production;
import com.doers.domain.Server;
import com.doers.domain.User;
import com.doers.domain.Zan;

public interface ServerDao extends BaseDao<Server>{

	List<Server> getServersByUser(User uid);

	int getCount();

	List<Server> findProductByPage(int index, int currentCount) throws Exception;

	List<Server> getServerByWord(String serWord);

	int getCountByWord(String serWord);

	List<Server> findProductByPageAndWord(int index, int currentCount, String serWord) throws HibernateException, SQLException;
}
