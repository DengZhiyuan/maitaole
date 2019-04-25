package com.qianfeng.maitaole.service;


import com.qianfeng.maitaole.bean.TbBrand;

import java.util.List;

public interface TbBrandService {
    List<TbBrand> queryTbBrandListById(Integer id)throws Exception;
}
