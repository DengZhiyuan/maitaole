package com.qianfeng.maitaole.bean;


import java.util.List;

public class TbType {

  private long typeId;
  private String typeName;
  private List<TbBrand> tbBrands;

  public long getTypeId() {
    return typeId;
  }

  public void setTypeId(long typeId) {
    this.typeId = typeId;
  }


  public String getTypeName() {
    return typeName;
  }

  public void setTypeName(String typeName) {
    this.typeName = typeName;
  }

  public List<TbBrand> getTbBrands() {
    return tbBrands;
  }

  public void setTbBrands(List<TbBrand> tbBrands) {
    this.tbBrands = tbBrands;
  }

  @Override
  public String toString() {
    return "TbType{" +
            "typeId=" + typeId +
            ", typeName='" + typeName + '\'' +
            ", tbBrands=" + tbBrands +
            '}';
  }
}
