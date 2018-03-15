package com.doers.Action;

import java.util.List;

import com.doers.Service.ArticleService;
import com.doers.Service.ProductionService;
import com.doers.Service.ServerService;
import com.doers.Service.UserService;
import com.doers.domain.Article;
import com.doers.domain.Production;
import com.doers.domain.Server;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {
	private String word;
	private UserService userService;
	private ProductionService productionService;
	private ArticleService articleService;
	
	
	public void setProductionService(ProductionService productionService) {
		this.productionService = productionService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}
	

	public String searchInSite(){
		List<User> userList = userService.getRelativeUsersByWord(word);
		List<Production> productionList = productionService.getRelativeProductionsByWord(word);
		List<Article> articleList = articleService.getRelativeArticlesByWord(word);
		ActionContext.getContext().put("userList", userList);
		ActionContext.getContext().put("productionList", productionList);
		ActionContext.getContext().put("articleList", articleList);
		return "toSearchResult";
	}

}
