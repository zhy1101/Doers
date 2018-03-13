package com.doers.Service;

import com.doers.domain.Contract;
import com.doers.domain.Order;

public interface ContractService {

	void addANewContract(Contract contract);

	Contract getContractById(Long cId);

	Contract getContractByOrder(Order order);

}
