package com.qianfeng.maitaole.service.impl;


import com.qianfeng.maitaole.bean.TbType;
import com.qianfeng.maitaole.mapper.TbTypeMapper;
import com.qianfeng.maitaole.service.TbTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TbTypeServiceImpl implements TbTypeService {
    @Autowired
    private TbTypeMapper tbTypeMapper;
    @Override
    public List<TbType> queryTbTypeList() throws Exception {
        List<TbType> tbTypes = tbTypeMapper.queryTbTypeList();
        return tbTypes;
    }
}
