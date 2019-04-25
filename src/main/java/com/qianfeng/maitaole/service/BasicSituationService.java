package com.qianfeng.maitaole.service;


import com.qianfeng.maitaole.bean.BasicSituation;

import java.util.List;

public interface BasicSituationService {
    List<BasicSituation> findAllByMobileId(Integer id);
}
