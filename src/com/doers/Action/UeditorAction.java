package com.doers.Action;

import com.doers.domain.Production;
import com.doers.Service.ProductionService;
import com.doers.Service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UeditorAction extends ActionSupport
  implements ModelDriven<Production>
{
  private Production p = new Production();
  private File cover;
  private String coverFileName;
  private String uid;
  private ProductionService productionService;
  private UserService userService;

  public String getUid()
  {
    return this.uid;
  }
  public void setUid(String uid) {
    this.uid = uid;
  }
  public void setUserService(UserService userService) {
    this.userService = userService;
  }
  public void setProductionService(ProductionService productionService) {
    this.productionService = productionService;
  }
  public File getCover() {
    return this.cover;
  }
  public void setCover(File cover) {
    this.cover = cover;
  }
  public String getCoverFileName() {
    return this.coverFileName;
  }
  public void setCoverFileName(String coverFileName) {
    this.coverFileName = coverFileName;
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

  public String addNewProduction() throws Exception
  {
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String pdate = format.format(new Date());
    this.p.setTime(pdate);
    this.cover.renameTo(new File("D:/DoersWorks/ProductionCoverPage/" + this.p.getProductionTitle() + "_" + this.coverFileName));
    this.p.setCoverURL("D:/DoersWorks/ProductionCoverPage/" + this.p.getProductionTitle() + "_" + this.coverFileName);
    this.p.setUser(this.userService.getUserById(this.uid));
    this.productionService.addNewProduction(this.p);
    return "handInSuccess";
  }

  public Production getModel() {
    return this.p;
  }
}
