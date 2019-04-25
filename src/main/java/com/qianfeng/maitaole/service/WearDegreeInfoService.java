package com.qianfeng.maitaole.service;


import com.qianfeng.maitaole.bean.WearDegreeInfo;

public interface WearDegreeInfoService {
    WearDegreeInfo findById(Integer id);
    WearDegreeInfo findAllByAttributeId(Integer id);
}
