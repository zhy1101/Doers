package com.doers.Service.Impl;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ContractDao;
import com.doers.Service.ContractService;
import com.doers.domain.Contract;
@Transactional
public class ContractServiceImpl implements ContractService {
	private ContractDao contractDao;
	@Override
	public void addANewContract(Contract contract) {
		contractDao.save(contract);
	}

}
