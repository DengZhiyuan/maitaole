package com.qianfeng.maitaole.service.impl;


import com.qianfeng.maitaole.bean.BasicSituationInfo;
import com.qianfeng.maitaole.mapper.BasicSituationInfoMapper;
import com.qianfeng.maitaole.service.BasicSituationInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BasicSituationInfoSeviceImpl implements BasicSituationInfoService {
    @Autowired
    private BasicSituationInfoMapper basicSituationInfoMapper;

    @Override
    public BasicSituationInfo findById(Integer id)  {

        return basicSituationInfoMapper.findById(id);
    }
}
