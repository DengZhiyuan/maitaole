package com.qianfeng.maitaole.mapper;


import com.qianfeng.maitaole.bean.FunctionalSituation;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface FunctionalSituationMapper {
    List<FunctionalSituation> findByMobileId(@PathVariable("id") Integer id);
    FunctionalSituation findById(@PathVariable("id") Integer id);

}
