package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.ArticleDao;
import com.doers.domain.AccountOperate;
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
		return super.getById(Long.valueOf(articleId));
	}

	@Override
	public List<Article> getHotArticle() {
		String hqlString = "from Article order by push desc";
		return (List<Article>) getHibernateTemplate().find(hqlString);	
	}

	@Override
	public List<Article> getRelativeArticlesByWord(String word) {
		String hqiString = "from Article where articleTitle like? or word1 like ? or word2 like ? or word3 like ?";
		return (List<Article>) getHibernateTemplate().find(hqiString,"%" + word + "%","%" + word + "%","%" + word + "%","%" + word + "%");
	}

	@Override
	public List<Article> getNewArticle() {
		String hqiString ="from Article order by articleId desc ";
		getHibernateTemplate().setMaxResults(4);
		List<Article> list = (List<Article>) getHibernateTemplate().find(hqiString);
		getHibernateTemplate().setMaxResults(0);
		return list;
	}

}
