package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.ArticleDao;
import com.doers.domain.Article;
import com.doers.domain.Production;
import com.doers.domain.User;

public class ArticleDaoImpl extends BaseDaoImpl<Article>  implements ArticleDao {

	@Override
	public void addNewArticle(Article article) {
		super.save(article);
	}

	@Override
	public List<Article> getUserArticleList(User u) {
		String hqlString = "from Article where user.uid=?";
		return (List<Article>) getHibernateTemplate().find(hqlString, u.getUid());	
	}

	@Override
	public Article getArticleById(String articleId) {
		return super.getById(articleId);
	}

}
