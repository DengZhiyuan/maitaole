package com.qianfeng.maitaole.service.impl;


import com.qianfeng.maitaole.bean.TbBrand;
import com.qianfeng.maitaole.mapper.TbBrandMapper;
import com.qianfeng.maitaole.service.TbBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TbBrandSeviceImpl implements TbBrandService {
    @Autowired
    private TbBrandMapper tbBrandMapper;
    @Override
    public List<TbBrand> queryTbBrandListById(Integer id) throws Exception {
        if(id == null){
            throw new NullPointerException();
        }
        List<TbBrand> tbBrands = tbBrandMapper.queryTbBrandListById(id);
        return tbBrands;
    }



}
