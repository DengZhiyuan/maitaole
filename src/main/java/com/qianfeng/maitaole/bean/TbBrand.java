package com.qianfeng.maitaole.bean;


public class TbBrand {

  private long id;
  private String brandName;
  private long typeId;
  private TbType tbType;

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getBrandName() {
    return brandName;
  }

  public void setBrandName(String brandName) {
    this.brandName = brandName;
  }


  public long getTypeId() {
    return typeId;
  }

  public void setTypeId(long typeId) {
    this.typeId = typeId;
  }

  public TbType getTbType() {
    return tbType;
  }

  public void setTbType(TbType tbType) {
    this.tbType = tbType;
  }

  @Override
  public String toString() {
    return "TbBrand{" +
            "id=" + id +
            ", brandName='" + brandName + '\'' +
            ", typeId=" + typeId +
            ", tbType=" + tbType +
            '}';
  }
}
