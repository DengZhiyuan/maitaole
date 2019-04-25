package com.qianfeng.maitaole.bean;


import java.util.List;

public class WearDegree {

  private long id;
  private String attribute;
  private List<WearDegreeInfo> wearDegreeInfoList;

  public List<WearDegreeInfo> getWearDegreeInfoList() {
    return wearDegreeInfoList;
  }

  public void setWearDegreeInfoList(List<WearDegreeInfo> wearDegreeInfoList) {
    this.wearDegreeInfoList = wearDegreeInfoList;
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

}
