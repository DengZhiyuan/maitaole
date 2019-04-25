package com.qianfeng.maitaole.mapper;


import com.qianfeng.maitaole.bean.MobilePhone;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
@Repository
@Mapper
public interface MobilePhoneMapper {
    MobilePhone findById(@PathVariable("id") Integer id);

    List<MobilePhone> queryAllMobilePhone();

    Integer queryMobilePhoneCount(@PathVariable("phoneName") String phoneName);
}
