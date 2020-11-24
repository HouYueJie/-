package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "caipinxinxi")
public class Caipinxinxi implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "caipinbianhao")
    private String caipinbianhao;
    @Column(name = "caipinmingcheng")
    private String caipinmingcheng;
    @Column(name = "fenlei")
    private String fenlei;
    @Column(name = "caipinzhutu")
    private String caipinzhutu;
    @Column(name = "xijiexiangtu")
    private String xijiexiangtu;
    @Column(name = "jiage")
    private Double jiage;
    @Column(name = "zhekoujia")
    private Double zhekoujia;
    @Column(name = "kucun")
    private Integer kucun;
    @Column(name = "shoumaichuangkou")
    private String shoumaichuangkou;
    @Column(name = "shifouxinpin")
    private String shifouxinpin;
    @Column(name = "caipincailiao")
    private String caipincailiao;
    @Column(name = "caipinjianjie")
    private String caipinjianjie;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCaipinbianhao() {
        return caipinbianhao;
    }
    public void setCaipinbianhao(String caipinbianhao) {
        this.caipinbianhao = caipinbianhao == null ? "" : caipinbianhao.trim();
    }

    public String getCaipinmingcheng() {
        return caipinmingcheng;
    }
    public void setCaipinmingcheng(String caipinmingcheng) {
        this.caipinmingcheng = caipinmingcheng == null ? "" : caipinmingcheng.trim();
    }

    public String getFenlei() {
        return fenlei;
    }
    public void setFenlei(String fenlei) {
        this.fenlei = fenlei == null ? "" : fenlei.trim();
    }

    public String getCaipinzhutu() {
        return caipinzhutu;
    }
    public void setCaipinzhutu(String caipinzhutu) {
        this.caipinzhutu = caipinzhutu == null ? "" : caipinzhutu.trim();
    }

    public String getXijiexiangtu() {
        return xijiexiangtu;
    }
    public void setXijiexiangtu(String xijiexiangtu) {
        this.xijiexiangtu = xijiexiangtu == null ? "" : xijiexiangtu.trim();
    }

    public Double getJiage() {
        return jiage;
    }
    public void setJiage(Double jiage) {
        this.jiage = jiage == null ? 0.0f : jiage;
    }

    public Double getZhekoujia() {
        return zhekoujia;
    }
    public void setZhekoujia(Double zhekoujia) {
        this.zhekoujia = zhekoujia == null ? 0.0f : zhekoujia;
    }

    public Integer getKucun() {
        return kucun;
    }
    public void setKucun(Integer kucun) {
        this.kucun = kucun == null ? 0 : kucun;
    }

    public String getShoumaichuangkou() {
        return shoumaichuangkou;
    }
    public void setShoumaichuangkou(String shoumaichuangkou) {
        this.shoumaichuangkou = shoumaichuangkou == null ? "" : shoumaichuangkou.trim();
    }

    public String getShifouxinpin() {
        return shifouxinpin;
    }
    public void setShifouxinpin(String shifouxinpin) {
        this.shifouxinpin = shifouxinpin == null ? "" : shifouxinpin.trim();
    }

    public String getCaipincailiao() {
        return caipincailiao;
    }
    public void setCaipincailiao(String caipincailiao) {
        this.caipincailiao = caipincailiao == null ? "" : caipincailiao.trim();
    }

    public String getCaipinjianjie() {
        return caipinjianjie;
    }
    public void setCaipinjianjie(String caipinjianjie) {
        this.caipinjianjie = caipinjianjie == null ? "" : caipinjianjie.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
