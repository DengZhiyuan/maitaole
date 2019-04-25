package com.qianfeng.maitaole.service.impl;


import com.qianfeng.maitaole.bean.MobilePhone;
import com.qianfeng.maitaole.common.PageSize;
import com.qianfeng.maitaole.mapper.MobilePhoneMapper;
import com.qianfeng.maitaole.service.MobilePhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MobilePhoneServiceImpl implements MobilePhoneService {
    @Autowired
    private  MobilePhoneMapper mobilePhoneMapper;

    @Override
    public MobilePhone findById(Integer id) {
        return mobilePhoneMapper.findById(id);
    }



    @Override
    public List<MobilePhone> queryAllMobilePhone() {
        List<MobilePhone> list = mobilePhoneMapper.queryAllMobilePhone();
        return list;
    }

    @Override
    public Integer queryMobilePhoneCount(String phoneName) {
        Integer count = mobilePhoneMapper.queryMobilePhoneCount(phoneName);
        Integer page = getTotalPage(count);
        return page;
    }
    /**
     * 总页数
     *
     * @param count
     * @return
     */
    public Integer getTotalPage(Integer count) {
        if (count % PageSize.MobilePhone.PAGE_SIZE == 0) {
            return count / PageSize.MobilePhone.PAGE_SIZE;
        } else {
            return count / PageSize.MobilePhone.PAGE_SIZE + 1;
        }
    }
}