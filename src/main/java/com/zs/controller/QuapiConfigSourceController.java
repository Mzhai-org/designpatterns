/**
 * Talcloud.com Inc. Copyright (c) 2018-2020 All Rights Reserved.
 */

package com.zs.controller;

import com.zs.bo.QuapiConfigSource;
import com.zs.service.QuapiConfigSourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: QuapiConfigSourceController.java, v1.0 2019/11/13 17:59 zhaishuo Exp $
 */
@RestController
public class QuapiConfigSourceController {
  
  @Autowired
  QuapiConfigSourceService sourceService;
  
  @RequestMapping("/quapiConfig")
  public QuapiConfigSource selectById(String id) {
   return sourceService.selectById(id); 
  }

  @RequestMapping("/quapiConfigAll")
  public List<QuapiConfigSource> selectAll() {
    return sourceService.selectAll();
  }
}
