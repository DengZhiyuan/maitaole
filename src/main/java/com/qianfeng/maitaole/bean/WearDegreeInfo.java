package com.qianfeng.maitaole.bean;


public class WearDegreeInfo {

  private long id;
  private String describes;
  private String detailed;
  private long attributeId;
  private long weights;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getDescribes() {
    return describes;
  }

  public void setDescribes(String describes) {
    this.describes = describes;
  }


  public String getDetailed() {
    return detailed;
  }

  public void setDetailed(String detailed) {
    this.detailed = detailed;
  }


  public long getAttributeId() {
    return attributeId;
  }

  public void setAttributeId(long attributeId) {
    this.attributeId = attributeId;
  }


  public long getWeights() {
    return weights;
  }

  public void setWeights(long weights) {
    this.weights = weights;
  }

}
