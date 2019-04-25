package com.qianfeng.maitaole.controller;


import com.qianfeng.maitaole.bean.*;
import com.qianfeng.maitaole.common.JsonResult;
import com.qianfeng.maitaole.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@CrossOrigin
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private TbTypeService tbTypeService;
    @Autowired
    private TbBrandService tbBrandService;
    @Autowired
    private MobilePhoneService mobilePhoneService;
    @Autowired
    private BasicSituationService basicSituationService;
    @Autowired
    private BasicSituationInfoService basicSituationInfoService;
    @Autowired
    private FunctionalSituationService functionalSituationService;
    @Autowired
    private WearDegreeService wearDegreeService;
    @Autowired
    private WearDegreeInfoService wearDegreeInfoService;

    @RequestMapping(value ="/queryTbTypeList" ,method = RequestMethod.GET)
    @ResponseBody
    public JsonResult QueryTbTypeList() throws Exception{
        JsonResult jsonResult = new JsonResult();
        List<TbType> tbTypes = tbTypeService.queryTbTypeList();
        jsonResult.setCode(0);
        jsonResult.setObj(tbTypes);
        return jsonResult;
    }

    @RequestMapping(value = "/queryBrandById/{id}" ,method = RequestMethod.GET)
    @ResponseBody
    public JsonResult queryTbBrandListById(@PathVariable("id") Integer id)throws  Exception{
       JsonResult jsonResult = new JsonResult();
       List<TbBrand> tbBrands = tbBrandService.queryTbBrandListById(id);
       jsonResult.setCode(0);
       jsonResult.setObj(tbBrands);
       return jsonResult;

    }
    @RequestMapping(value = "/phone")
    public String queryAllMobilePhone(String phoneName, Integer pageNo, Model model){
        List<MobilePhone> phones = mobilePhoneService.queryAllMobilePhone();
        Integer page = mobilePhoneService.queryMobilePhoneCount(phoneName);
        model.addAttribute("phoneName",phoneName);
        model.addAttribute("phonePage",page);
        model.addAttribute("phones",phones);
        model.addAttribute("pageNo",pageNo);
        return  "index";
    }
    @RequestMapping(value = "/page")
    public String queryPage(String typeName,Model model){

        return "index";
    }
    @RequestMapping("/info/{id}")
    public String info(@PathVariable("id") Integer id, Model model){
        List<BasicSituation> list = basicSituationService.findAllByMobileId(id);
        model.addAttribute("list", list);
        List<FunctionalSituation> functionalSituationList = functionalSituationService.findByMobileId(id);
        model.addAttribute("functionalSituationList", functionalSituationList);
        List<WearDegree> degreeList = wearDegreeService.findAll();
        model.addAttribute("degreeList", degreeList);
        MobilePhone  mobilePhoneList= mobilePhoneService.findById(id);
        model.addAttribute("mobilePhoneList",mobilePhoneList);
        return "info";
    }

}
