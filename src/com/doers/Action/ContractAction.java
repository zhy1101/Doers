package com.doers.Action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.omg.CORBA.PRIVATE_MEMBER;

import com.doers.Service.BaseDictService;
import com.doers.Service.ContractService;
import com.doers.Service.OrderService;
import com.doers.domain.BaseDict;
import com.doers.domain.Contract;
import com.doers.domain.Order;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import com.sun.org.apache.bcel.internal.generic.NEW;

public class ContractAction extends ActionSupport implements ModelDriven<Contract> {
	
	private Contract contract = new Contract();
	private String orderId;
	private ContractService contractService;
	private OrderService orderService;
	private File file;
	private String predict_year;
	private String predict_month;
	private String predict_day;
	private BaseDictService baseDictService;
	private Long cId;
	
	
	public Long getcId() {
		return cId;
	}

	public void setcId(Long cId) {
		this.cId = cId;
	}

	public void setBaseDictService(BaseDictService baseDictService) {
		this.baseDictService = baseDictService;
	}

	public String getPredict_year() {
		return predict_year;
	}

	public void setPredict_year(String predict_year) {
		this.predict_year = predict_year;
	}

	public String getPredict_month() {
		return predict_month;
	}

	public void setPredict_month(String predict_month) {
		this.predict_month = predict_month;
	}

	public String getPredict_day() {
		return predict_day;
	}

	public void setPredict_day(String predict_day) {
		this.predict_day = predict_day;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public void setContractService(ContractService contractService) {
		this.contractService = contractService;
	}

	public Contract getContract() {
		return contract;
	}

	public void setContract(Contract contract) {
		this.contract = contract;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String openABlankContract(){
		Order order = orderService.getOrderById(orderId);
		ActionContext.getContext().put("order", order);
		return "toContractPage";
	}
	@Override
	public Contract getModel() {
		return this.contract;
	}
	public String uploadContract() throws Exception{
		String pdateString = predict_day +"年"+predict_month+"月"+predict_day+"日";
		SimpleDateFormat format =new SimpleDateFormat("yyyy年 MM月dd日");
		String startTime = format.format(new Date());
		contract.setServerTimeStart(startTime);
		contract.setServerTimeEnd(pdateString);
		Order order = orderService.getOrderById(orderId);
		contract.setBelongToOder(order);
		BaseDict state = baseDictService.getByItemCode("51");
		order.setOrderState(state);
		order.getOrderState().setDict_id("51");
		if(file!=null){
		String typeString = this.file.getName();
	    typeString = typeString.substring(typeString.indexOf("."));
	    this.file.renameTo(new File("D:\\DoersWorks" +"\\"+"con_"+ orderId+"."+typeString));
	    this.contract.setAddFileURL("/savePath/" +"con_"+ orderId +"."+typeString);}
	    contractService.addANewContract(contract);
	    order.setOrderContract(contract);
	    return "toMyServeringList";
	}
	public String checkContract(){
		Order order = orderService.getOrderById(orderId);
		Contract c = contractService.getContractByOrder(order);
		ActionContext.getContext().put("c", c);
		return "showContract";
	}

}
