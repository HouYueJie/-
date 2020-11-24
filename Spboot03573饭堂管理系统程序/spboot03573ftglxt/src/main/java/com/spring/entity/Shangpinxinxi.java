package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "shangpinxinxi")
public class Shangpinxinxi implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "shangpinbianhao")
    private String shangpinbianhao;
    @Column(name = "shangpinmingcheng")
    private String shangpinmingcheng;
    @Column(name = "shangpinbiaoti")
    private String shangpinbiaoti;
    @Column(name = "leimu")
    private String leimu;
    @Column(name = "shangpinzhutu")
    private String shangpinzhutu;
    @Column(name = "shangpinxiangce")
    private String shangpinxiangce;
    @Column(name = "shichangjia")
    private Double shichangjia;
    @Column(name = "shoujia")
    private Double shoujia;
    @Column(name = "gonghuojia")
    private Double gonghuojia;
    @Column(name = "chanpinxinghao")
    private String chanpinxinghao;
    @Column(name = "chanpinguige")
    private String chanpinguige;
    @Column(name = "baozhiqi")
    private String baozhiqi;
    @Column(name = "shangpinkucun")
    private Integer shangpinkucun;
    @Column(name = "shangpinzhuangtai")
    private String shangpinzhuangtai;
    @Column(name = "shangpincanshu")
    private String shangpincanshu;
    @Column(name = "shangpinxiangqing")
    private String shangpinxiangqing;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getShangpinbianhao() {
        return shangpinbianhao;
    }
    public void setShangpinbianhao(String shangpinbianhao) {
        this.shangpinbianhao = shangpinbianhao == null ? "" : shangpinbianhao.trim();
    }

    public String getShangpinmingcheng() {
        return shangpinmingcheng;
    }
    public void setShangpinmingcheng(String shangpinmingcheng) {
        this.shangpinmingcheng = shangpinmingcheng == null ? "" : shangpinmingcheng.trim();
    }

    public String getShangpinbiaoti() {
        return shangpinbiaoti;
    }
    public void setShangpinbiaoti(String shangpinbiaoti) {
        this.shangpinbiaoti = shangpinbiaoti == null ? "" : shangpinbiaoti.trim();
    }

    public String getLeimu() {
        return leimu;
    }
    public void setLeimu(String leimu) {
        this.leimu = leimu == null ? "" : leimu.trim();
    }

    public String getShangpinzhutu() {
        return shangpinzhutu;
    }
    public void setShangpinzhutu(String shangpinzhutu) {
        this.shangpinzhutu = shangpinzhutu == null ? "" : shangpinzhutu.trim();
    }

    public String getShangpinxiangce() {
        return shangpinxiangce;
    }
    public void setShangpinxiangce(String shangpinxiangce) {
        this.shangpinxiangce = shangpinxiangce == null ? "" : shangpinxiangce.trim();
    }

    public Double getShichangjia() {
        return shichangjia;
    }
    public void setShichangjia(Double shichangjia) {
        this.shichangjia = shichangjia == null ? 0.0f : shichangjia;
    }

    public Double getShoujia() {
        return shoujia;
    }
    public void setShoujia(Double shoujia) {
        this.shoujia = shoujia == null ? 0.0f : shoujia;
    }

    public Double getGonghuojia() {
        return gonghuojia;
    }
    public void setGonghuojia(Double gonghuojia) {
        this.gonghuojia = gonghuojia == null ? 0.0f : gonghuojia;
    }

    public String getChanpinxinghao() {
        return chanpinxinghao;
    }
    public void setChanpinxinghao(String chanpinxinghao) {
        this.chanpinxinghao = chanpinxinghao == null ? "" : chanpinxinghao.trim();
    }

    public String getChanpinguige() {
        return chanpinguige;
    }
    public void setChanpinguige(String chanpinguige) {
        this.chanpinguige = chanpinguige == null ? "" : chanpinguige.trim();
    }

    public String getBaozhiqi() {
        return baozhiqi;
    }
    public void setBaozhiqi(String baozhiqi) {
        this.baozhiqi = baozhiqi == null ? "" : baozhiqi.trim();
    }

    public Integer getShangpinkucun() {
        return shangpinkucun;
    }
    public void setShangpinkucun(Integer shangpinkucun) {
        this.shangpinkucun = shangpinkucun == null ? 0 : shangpinkucun;
    }

    public String getShangpinzhuangtai() {
        return shangpinzhuangtai;
    }
    public void setShangpinzhuangtai(String shangpinzhuangtai) {
        this.shangpinzhuangtai = shangpinzhuangtai == null ? "" : shangpinzhuangtai.trim();
    }

    public String getShangpincanshu() {
        return shangpincanshu;
    }
    public void setShangpincanshu(String shangpincanshu) {
        this.shangpincanshu = shangpincanshu == null ? "" : shangpincanshu.trim();
    }

    public String getShangpinxiangqing() {
        return shangpinxiangqing;
    }
    public void setShangpinxiangqing(String shangpinxiangqing) {
        this.shangpinxiangqing = shangpinxiangqing == null ? "" : shangpinxiangqing.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
