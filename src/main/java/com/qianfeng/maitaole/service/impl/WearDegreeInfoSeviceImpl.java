package com.qianfeng.maitaole.service.impl;


import com.qianfeng.maitaole.bean.WearDegreeInfo;
import com.qianfeng.maitaole.mapper.WearDegreeInfoMapper;
import com.qianfeng.maitaole.service.WearDegreeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

;

@Service
public class WearDegreeInfoSeviceImpl implements WearDegreeInfoService {
    @Autowired
    private WearDegreeInfoMapper wearDegreeInfoMapper;

    @Override
    public WearDegreeInfo findById(Integer id)  {
        return wearDegreeInfoMapper.findById(id);
    }

    @Override
    public WearDegreeInfo findAllByAttributeId(Integer id) {
        return wearDegreeInfoMapper.findAllByAttributeId(id);
    }
}
