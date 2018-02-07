package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Service.Impl.PushDao;
import com.doers.domain.Production;
import com.doers.domain.Push;
import com.doers.domain.User;
import com.doers.domain.Zan;

public class PushDaoImpl extends BaseDaoImpl<Push> implements PushDao {

	@Override
	public Push findPushByCondition(Long uid, Long aid) {
		String hqlString = "from Push where push_article.articleId=? and push_user.uid=?";
		List<Push> find = (List<Push>) this.getHibernateTemplate().find(hqlString,new Long[]{aid,uid});
		return find.get(0);	
	}

	@Override
	public List<Production> getMyPushArt(User u) {
		String hqlString = "from Article a inner join fetch a.pushlist z where z.push_user.uid=?";
		List<Production> find = (List<Production>) this.getHibernateTemplate().find(hqlString,u.getUid());
		return find;
	}

}
