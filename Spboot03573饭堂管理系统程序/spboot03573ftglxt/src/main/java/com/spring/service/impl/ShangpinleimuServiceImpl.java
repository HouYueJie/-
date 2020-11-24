package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.ShangpinleimuMapper;
import com.spring.entity.Shangpinleimu;
import com.spring.service.ShangpinleimuService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("ShangpinleimuService")
public class ShangpinleimuServiceImpl extends ServiceBase<Shangpinleimu> implements ShangpinleimuService {
    @Resource
    private ShangpinleimuMapper dao;

    @Override
    protected ShangpinleimuMapper getDao() {
        return dao;
    }
}
