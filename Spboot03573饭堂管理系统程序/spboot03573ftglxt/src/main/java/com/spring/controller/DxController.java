package com.spring.controller;

import com.spring.dao.DxMapper;
import com.spring.entity.Dx;
import com.spring.service.DxService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import util.Info;
import util.Request;

import javax.annotation.Resource;

/**
 * 单页内容编辑和前台显示
 */
@Controller
public class DxController extends BaseController {
    @Resource
    private DxMapper dxMapper;
    @Resource
    private DxService dxService;

    /**
     * 编辑单页信息，如系统简介
     * @return
     */
    @RequestMapping("/dx")
    public String index()
    {
        String lb = Request.get("lb");
        Dx dx = new Dx();
        dx.setLeibie(lb);
        System.err.println(lb);
        Dx row = dxMapper.selectOne(dx);
        if(row == null){
            row = new Dx();
            row.setLeibie(lb);
            row.setAddtime(Info.getDateStr());
            row.setContent(lb);
            dxService.insert(row);
        }
        assign("map" , row);
        return "dx";
    }
    /**
     * 显示单页信息，如系统简介
     * @return
     */
    @RequestMapping("dxdetail")
    public String dx_detail()
    {
        return "dx_detail";
    }

    /**
     * 保存编辑的单页信息
     * @return
     */
    @RequestMapping("savedx")
    public String savedx()
    {
        int lb = Request.getInt("id");
        Dx dx = new Dx();
        dx.setId(lb);
        dx.setContent(Request.get("content"));
        dxService.update(dx);
        return showSuccess("保存成功" , request.getHeader("referer"));
    }
}
