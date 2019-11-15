/**
 * Talcloud.com Inc. Copyright (c) 2018-2020 All Rights Reserved.
 */

package com.zs.service.impl;

import com.zs.bo.QuapiConfigSource;
import com.zs.mapper.QuapiConfigSourceMapper;
import com.zs.service.QuapiConfigSourceService;
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
