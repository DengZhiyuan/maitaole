package com.qianfeng.maitaole.mapper;

import com.qianfeng.maitaole.bean.BasicSituationInfo;
import org.springframework.web.bind.annotation.PathVariable;

public interface BasicSituationInfoMapper {
    BasicSituationInfo findById(@PathVariable("id") Integer id);
}
