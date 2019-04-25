package com.qianfeng.maitaole.bean;


import java.util.List;

public class BasicSituation {

  private long id;
  private String attribute;
  private long mobileId;
  private List<BasicSituationInfo> basicSituationInfoList;

  public List<BasicSituationInfo> getBasicSituationInfoList() {
    return basicSituationInfoList;
  }

  public void setBasicSituationInfoList(List<BasicSituationInfo> basicSituationInfoList) {
    this.basicSituationInfoList = basicSituationInfoList;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getAttribute() {
    return attribute;
  }

  public void setAttribute(String attribute) {
    this.attribute = attribute;
  }


  public long getMobileId() {
    return mobileId;
  }

  public void setMobileId(long mobileId) {
    this.mobileId = mobileId;
  }

}
