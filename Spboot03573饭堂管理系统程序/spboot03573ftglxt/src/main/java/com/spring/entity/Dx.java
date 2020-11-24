package com.spring.entity;

import javax.persistence.*;
import java.io.Serializable;
/**
 * 实体类
 */
@Table(name = "dx")
public class Dx implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    private String leibie;

    private String addtime;

    private String content;

    private static final long serialVersionUID = 1L;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return leibie
     */
    public String getLeibie() {
        return leibie;
    }

    /**
     * @param leibie
     */
    public void setLeibie(String leibie) {
        this.leibie = leibie == null ? null : leibie.trim();
    }

    /**
     * @return addtime
     */
    public String getAddtime() {
        return addtime;
    }

    /**
     * @param addtime
     */
    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    /**
     * @return content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}