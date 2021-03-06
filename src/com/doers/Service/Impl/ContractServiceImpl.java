package com.doers.Service.Impl;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ContractDao;
import com.doers.Service.ContractService;
import com.doers.domain.Contract;
import com.doers.domain.Order;
@Transactional
public class ContractServiceImpl implements ContractService {
	private ContractDao contractDao;
	
	public void setContractDao(ContractDao contractDao) {
		this.contractDao = contractDao;
	}
	@Override
	public void addANewContract(Contract contract) {
		contractDao.save(contract);
	}
	@Override
	public Contract getContractById(Long cId) {
		return contractDao.getById(cId);
	}
	@Override
	public Contract getContractByOrder(Order order) {
		return contractDao.getContractByOrder( order);
	}

}
