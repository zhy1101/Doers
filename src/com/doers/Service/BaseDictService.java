package com.doers.Service;

import java.util.List;

import com.doers.domain.BaseDict;

public interface BaseDictService {

	List<BaseDict> getListByTypeCode(String dict_type_code);

	BaseDict getByItemCode(String string);

}
