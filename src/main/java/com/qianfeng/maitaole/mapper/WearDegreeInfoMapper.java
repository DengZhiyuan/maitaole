package com.qianfeng.maitaole.mapper;


import com.qianfeng.maitaole.bean.WearDegreeInfo;
import org.springframework.web.bind.annotation.PathVariable;

public interface WearDegreeInfoMapper {
    WearDegreeInfo findById(@PathVariable("id") Integer id);
    WearDegreeInfo findAllByAttributeId(@PathVariable("id") Integer id);
}
