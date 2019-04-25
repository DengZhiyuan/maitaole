package com.qianfeng.maitaole.service.impl;


import com.qianfeng.maitaole.bean.WearDegree;
import com.qianfeng.maitaole.mapper.WearDegreeMapper;
import com.qianfeng.maitaole.service.WearDegreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WearDegreeSeviceImpl implements WearDegreeService {
    @Autowired
    private WearDegreeMapper wearDegreeMapper;



//    @Override
//    public List<BasicSituation> findAllByMobileId(Integer id) throws Exception {
//        if(id == null){
//            throw new NullPointerException();
//        }
//        List<BasicSituation> list = basicSituationDAO.findAllByMobileId(id);
//        return list;
//    }

    @Override
    public List<WearDegree> findAll(){
        List<WearDegree> list = wearDegreeMapper.findAll();
        return list;
    }
}
