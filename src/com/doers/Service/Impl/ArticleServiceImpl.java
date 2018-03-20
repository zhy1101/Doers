package com.doers.Service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ArticleDao;
import com.doers.Service.ArticleService;
import com.doers.domain.Article;
import com.doers.domain.User;
@Transactional
public class ArticleServiceImpl implements ArticleService {
	
	private ArticleDao articleDao;

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	@Override
	public void addNewArticle(Article article) {
		
		this.articleDao.addNewArticle(article);

	}

	@Override
	public List<Article> getUserArticleList(User u) {
		return this.articleDao.getUserArticleList(u);
	}

	@Override
	public Article getArticleById(String articleId) {
		return this.articleDao.getArticleById(articleId);
	}

	@Override
	public List<Article> getHotArticle() {
		return this.articleDao.getHotArticle();
	}

	@Override
	public List<Article> getRelativeArticlesByWord(String word) {
		return articleDao.getRelativeArticlesByWord(word);
	}

	@Override
	public void deleteArcById(Long aid) {
		articleDao.delete(aid);
	}

	@Override
	public List<Article> getNewArticle() {
		// TODO Auto-generated method stub
		return articleDao.getNewArticle();
	}

}
