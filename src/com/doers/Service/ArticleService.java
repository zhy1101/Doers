package com.doers.Service;

import java.util.List;

import com.doers.domain.Article;
import com.doers.domain.User;

public interface ArticleService {

	void addNewArticle(Article article);

	List<Article> getUserArticleList(User u);

	Article getArticleById(String articleId);

	List<Article> getHotArticle();

	List<Article> getRelativeArticlesByWord(String word);

	void deleteArcById(Long aid);

}
