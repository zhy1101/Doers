package com.doers.Service;

import java.util.List;

import com.doers.domain.Article;
import com.doers.domain.User;

public interface ArticleService {

	void addNewArticle(Article article);

	List<Article> getUserArticleList(User u);

}
