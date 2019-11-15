
package com.zs.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zs.aspect.PagingQuery;
import com.zs.bo.QuapiConfigSource;
import com.zs.common.Result;
import com.zs.mapper.QuapiConfigSourceMapper;
import com.zs.service.QuapiConfigSourceService;
import com.zs.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
  
  @Autowired
  QuapiConfigSourceMapper mapper;
  
  @GetMapping("/selectById")
  public QuapiConfigSource selectById(String id) {
   return sourceService.selectById(id); 
  }

//  @GetMapping("/quapiConfigAll/{pageNum}/{pageSize}")
//  public PageInfo<QuapiConfigSource> selectPage(@PathVariable int pageNum, @PathVariable int pageSize) {
//    PageHelper.startPage(pageNum, pageSize);
//    List<QuapiConfigSource> results = sourceService.selectAll();
//    PageInfo<QuapiConfigSource> page = new PageInfo<>(results);
//    
//    return page;
//  }

  @GetMapping("/selectAll/{pageNum}/{pageSize}")
  public Result selectPage(@PathVariable int pageNum, @PathVariable int pageSize) {
    PageHelper.startPage(pageNum, pageSize);
    List<QuapiConfigSource> results = sourceService.selectAll();
    PageInfo<QuapiConfigSource> page = new PageInfo<>(results);
    Result result = new Result();
    result.setData(page);
    return result;
  }
  
  @PagingQuery()
  @GetMapping("/selectAll")
  public List<QuapiConfigSource> selectAll() {
    return sourceService.selectAll();
  }

  @GetMapping("/queryByPage")
  public Result selectByPage(int pageNum, int pageSize) {
    Map<String, Object> paramMap = new HashMap<>();
    Page page = new Page();
    page.setPageNum(pageNum);
    page.setPageSize(pageSize);
    paramMap.put("page", page);
    List<QuapiConfigSource> list = mapper.selectByPage(paramMap);
    return new Result(list);
  }
}
