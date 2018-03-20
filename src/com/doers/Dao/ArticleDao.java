package com.doers.Dao;

import java.util.List;

import com.doers.domain.Article;
import com.doers.domain.User;

public interface ArticleDao extends BaseDao<Article> {

	void addNewArticle(Article article);

	List<Article> getUserArticleList(User u);

	Article getArticleById(String articleId);

	List<Article> getHotArticle();

	List<Article> getRelativeArticlesByWord(String word);

	List<Article> getNewArticle();

}
