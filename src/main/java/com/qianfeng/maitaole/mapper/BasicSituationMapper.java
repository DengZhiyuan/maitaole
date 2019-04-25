package com.qianfeng.maitaole.mapper;


import com.qianfeng.maitaole.bean.BasicSituation;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface BasicSituationMapper {
    List<BasicSituation> findAllByMobileId(@PathVariable("id") Integer id);

}
