package com.doers.Service;

import com.doers.domain.Contract;

public interface ContractService {

	void addANewContract(Contract contract);

	Contract getContractById(Long cId);

}
