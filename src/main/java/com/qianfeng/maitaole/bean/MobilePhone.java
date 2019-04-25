package com.qianfeng.maitaole.bean;


public class MobilePhone {

  private long id;
  private String creator;
  private java.sql.Timestamp endTime;
  private String img;
  private String mobileName;
  private String modifier;
  private java.sql.Timestamp startTime;
  private long mobileTypeId;
  private long price;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getCreator() {
    return creator;
  }

  public void setCreator(String creator) {
    this.creator = creator;
  }


  public java.sql.Timestamp getEndTime() {
    return endTime;
  }

  public void setEndTime(java.sql.Timestamp endTime) {
    this.endTime = endTime;
  }


  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }


  public String getMobileName() {
    return mobileName;
  }

  public void setMobileName(String mobileName) {
    this.mobileName = mobileName;
  }


  public String getModifier() {
    return modifier;
  }

  public void setModifier(String modifier) {
    this.modifier = modifier;
  }


  public java.sql.Timestamp getStartTime() {
    return startTime;
  }

  public void setStartTime(java.sql.Timestamp startTime) {
    this.startTime = startTime;
  }


  public long getMobileTypeId() {
    return mobileTypeId;
  }

  public void setMobileTypeId(long mobileTypeId) {
    this.mobileTypeId = mobileTypeId;
  }


  public long getPrice() {
    return price;
  }

  public void setPrice(long price) {
    this.price = price;
  }

}
