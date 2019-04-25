package com.qianfeng.maitaole.mapper;


import com.qianfeng.maitaole.bean.TbBrand;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Mapper
public interface TbBrandMapper {
    List<TbBrand> queryTbBrandListById(@PathVariable("id") Integer id)throws Exception;
}
