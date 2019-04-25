package com.qianfeng.maitaole.service;


import com.qianfeng.maitaole.bean.FunctionalSituation;

import java.util.List;

public interface FunctionalSituationService {
    List<FunctionalSituation> findByMobileId(Integer id);
    FunctionalSituation findById(Integer id);
}
