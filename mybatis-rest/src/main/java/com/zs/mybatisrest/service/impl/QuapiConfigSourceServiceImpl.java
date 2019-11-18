
package com.zs.mybatisrest.service.impl;

import com.zs.mybatisrest.bo.QuapiConfigSource;
import com.zs.mybatisrest.mapper.QuapiConfigSourceMapper;
import com.zs.mybatisrest.service.QuapiConfigSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: QuapiConfigSourceServiceImpl.java, v1.0 2019/11/13 17:56 zhaishuo Exp $
 */
@Service
public class QuapiConfigSourceServiceImpl implements QuapiConfigSourceService {
  
  @Autowired
  QuapiConfigSourceMapper mapper;
  
  @Override
  public QuapiConfigSource selectById(String id) {
    return mapper.selectByPrimaryKey(id);
  }

  @Override
  public List<QuapiConfigSource> selectAll() {
    return mapper.selectAll();
  }
}
