package com.qianfeng.maitaole.service;


import com.qianfeng.maitaole.bean.MobilePhone;

import java.util.List;


public interface MobilePhoneService {
    MobilePhone findById(Integer id);

    List<MobilePhone> queryAllMobilePhone();

    Integer queryMobilePhoneCount(String phoneName);
}
