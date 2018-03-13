package com.doers.Dao;

import com.doers.domain.Contract;
import com.doers.domain.Order;

public interface ContractDao extends BaseDao<Contract> {

	Contract getContractByOrder(Order order);

}
