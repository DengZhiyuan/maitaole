package com.qianfeng.maitaole.service.impl;


import com.qianfeng.maitaole.bean.FunctionalSituation;
import com.qianfeng.maitaole.mapper.FunctionalSituationMapper;
import com.qianfeng.maitaole.service.FunctionalSituationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FunctionalSituationSeviceImpl implements FunctionalSituationService {
    @Autowired
    private FunctionalSituationMapper functionalSituationMapper;

    @Override
    public List<FunctionalSituation> findByMobileId(Integer id) {
        if(id == null){
            throw new NullPointerException();
        }
        List<FunctionalSituation> list = functionalSituationMapper.findByMobileId(id);
        return list;
    }

    @Override
    public FunctionalSituation findById(Integer id) {
        return functionalSituationMapper.findById(id);
    }
}
