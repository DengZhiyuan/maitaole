package com.qianfeng.maitaole.mapper;


import com.qianfeng.maitaole.bean.TbType;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface TbTypeMapper {
    List<TbType> queryTbTypeList()throws Exception;
}
