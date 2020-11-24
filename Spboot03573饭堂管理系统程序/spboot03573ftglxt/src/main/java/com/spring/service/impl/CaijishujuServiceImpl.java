package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.CaijishujuMapper;
import com.spring.entity.Caijishuju;
import com.spring.service.CaijishujuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("CaijishujuService")
public class CaijishujuServiceImpl extends ServiceBase<Caijishuju> implements CaijishujuService {
    @Resource
    private CaijishujuMapper dao;

    @Override
    protected CaijishujuMapper getDao() {
        return dao;
    }
}
