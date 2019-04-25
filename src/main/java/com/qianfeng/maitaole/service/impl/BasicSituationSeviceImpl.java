package com.qianfeng.maitaole.service.impl;


import com.qianfeng.maitaole.bean.BasicSituation;
import com.qianfeng.maitaole.mapper.BasicSituationMapper;
import com.qianfeng.maitaole.service.BasicSituationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BasicSituationSeviceImpl implements BasicSituationService {
    @Autowired
    private BasicSituationMapper basicSituationMapper;

    @Override
    public List<BasicSituation> findAllByMobileId(Integer id) {
        if(id == null){
            throw new NullPointerException();
        }
        List<BasicSituation> list = basicSituationMapper.findAllByMobileId(id);
        return list;
    }
}
