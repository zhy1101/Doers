package com.doers.Action;

import com.doers.Service.ArticleService;
import com.doers.Service.UserService;
import com.doers.domain.Article;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import com.sun.org.apache.bcel.internal.generic.NEW;

public class AddArticleAction extends ActionSupport implements ModelDriven<Article> {
	
	private Article article = new Article();
	private File cover;
	private ArticleService articleService;
	private UserService userService;
	private String word1;
	private String word2;
	private String word3;
	
	
	@Override
	public Article getModel() {
		return this.article;
	}

	public File getCover() {
		return cover;
	}

	public void setCover(File cover) {
		this.cover = cover;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getWord1() {
		return word1;
	}

	public void setWord1(String word1) {
		this.word1 = word1;
	}

	public String getWord2() {
		return word2;
	}

	public void setWord2(String word2) {
		this.word2 = word2;
	}

	public String getWord3() {
		return word3;
	}

	public void setWord3(String word3) {
		this.word3 = word3;
	}
	
	public String addNewArticle() throws Exception{
		User user = (User) ActionContext.getContext().getSession().get("user");
	    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String pdate = format.format(new Date());
	    this.article.setTime(pdate);
	    String uuid=UUID.randomUUID().toString();
	    this.cover.renameTo(new File("D:/DoersWorks/ProductionCoverPage/" +"art_"+ uuid));
	    this.article.setCoverURL("/productionCovers/" +"art_"+ uuid );
	    this.article.setUser(user);
	    this.articleService.addNewArticle(this.article);
	    return "handInSuccess";
	}
	public void addActionError(String anErrorMessage) {
	    String s = anErrorMessage;
	    System.out.println(s);
	  }
	  public void addActionMessage(String aMessage) {
	    String s = aMessage;
	    System.out.println(s);
	  }

	  public void addFieldError(String fieldName, String errorMessage) {
	    String s = errorMessage;
	    String f = fieldName;
	    System.out.println(s);
	    System.out.println(f);
	  }
	
}
