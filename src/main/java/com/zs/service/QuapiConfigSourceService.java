/**
 * Talcloud.com Inc. Copyright (c) 2018-2020 All Rights Reserved.
 */

package com.zs.service;

import com.zs.bo.QuapiConfigSource;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: QuapiConfigSourceService.java, v1.0 2019/11/13 17:56 zhaishuo Exp $
 */
public interface QuapiConfigSourceService {

  QuapiConfigSource selectById(String id);
  
  List<QuapiConfigSource> selectAll();
}
