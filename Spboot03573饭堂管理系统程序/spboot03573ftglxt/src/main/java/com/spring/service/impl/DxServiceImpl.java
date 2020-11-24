package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.DxMapper;
import com.spring.entity.Dx;
import com.spring.service.DxService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
/**
 *  业务类
 */
@Service("DxService")
public class DxServiceImpl extends ServiceBase<Dx> implements DxService {

    @Resource
    protected DxMapper dxMapper;

    @Override
    protected DxMapper getDao() {
        return dxMapper;
    }
}
