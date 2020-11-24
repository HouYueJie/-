package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "caijishuju")
public class Caijishuju implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "xueshengxinxi")
    private Integer xueshengxinxi;
    @Column(name = "xuehao")
    private String xuehao;
    @Column(name = "xingming")
    private String xingming;
    @Column(name = "tiwen")
    private String tiwen;
    @Column(name = "shifoufashao")
    private String shifoufashao;
    @Column(name = "caijishijian")
    private String caijishijian;
    @Column(name = "caijididian")
    private String caijididian;
    @Column(name = "huanjingrenshu")
    private Integer huanjingrenshu;
    @Column(name = "shiwaiwendu")
    private String shiwaiwendu;
    @Column(name = "shidu")
    private String shidu;
    @Column(name = "beizhu")
    private String beizhu;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getXueshengxinxi() {
        return xueshengxinxi;
    }
    public void setXueshengxinxi(Integer xueshengxinxi) {
        this.xueshengxinxi = xueshengxinxi == null ? 0 : xueshengxinxi;
    }

    public String getXuehao() {
        return xuehao;
    }
    public void setXuehao(String xuehao) {
        this.xuehao = xuehao == null ? "" : xuehao.trim();
    }

    public String getXingming() {
        return xingming;
    }
    public void setXingming(String xingming) {
        this.xingming = xingming == null ? "" : xingming.trim();
    }

    public String getTiwen() {
        return tiwen;
    }
    public void setTiwen(String tiwen) {
        this.tiwen = tiwen == null ? "" : tiwen.trim();
    }

    public String getShifoufashao() {
        return shifoufashao;
    }
    public void setShifoufashao(String shifoufashao) {
        this.shifoufashao = shifoufashao == null ? "" : shifoufashao.trim();
    }

    public String getCaijishijian() {
        return caijishijian;
    }
    public void setCaijishijian(String caijishijian) {
        this.caijishijian = caijishijian == null ? "" : caijishijian.trim();
    }

    public String getCaijididian() {
        return caijididian;
    }
    public void setCaijididian(String caijididian) {
        this.caijididian = caijididian == null ? "" : caijididian.trim();
    }

    public Integer getHuanjingrenshu() {
        return huanjingrenshu;
    }
    public void setHuanjingrenshu(Integer huanjingrenshu) {
        this.huanjingrenshu = huanjingrenshu == null ? 0 : huanjingrenshu;
    }

    public String getShiwaiwendu() {
        return shiwaiwendu;
    }
    public void setShiwaiwendu(String shiwaiwendu) {
        this.shiwaiwendu = shiwaiwendu == null ? "" : shiwaiwendu.trim();
    }

    public String getShidu() {
        return shidu;
    }
    public void setShidu(String shidu) {
        this.shidu = shidu == null ? "" : shidu.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
