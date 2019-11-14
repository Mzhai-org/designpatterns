/**
 * Talcloud.com Inc. Copyright (c) 2018-2020 All Rights Reserved.
 */

package com.zs.common;

import com.github.pagehelper.PageInfo;

import java.io.Serializable;
import java.util.Date;

/**
 * <pre>
 *    描述信息
 * </pre>
 *
 * @author zhaishuo
 * @version $Id: Result.java, v1.0 2019/11/14 14:05 zhaishuo Exp $
 */
public class Result implements Serializable {
  private static final long serialVersionUID = -6002530010670165167L;
  public static final String SUCCESS = "success";
  public static final String FAILED = "failed";
  private String code;
  private String msg;
  private Integer currentPage;
  private Long totalCount;
  private Integer pageSize;
  private String requestId;
  private String version;
  private Boolean hasNextPage;
  private String tokenName;
  private String tokenValue;
  private long optime = System.currentTimeMillis();
  private Object data;

  public static final Result newInstance() {
    return new Result();
  }

  public Result() {
    this.code = "success";
  }

  public Result(String code, String msg) {
    this.code = code;
    this.msg = msg;
  }

  public Result(String msg, Boolean isError) {
    this.msg = msg;
    if (!isError) {
      this.code = "success";
    }

  }

  public Result(Object data) {
    this.code = "success";
    this.setData(data);
  }

  public Result(String code, String msg, Date optime, Object data) {
    this.code = code;
    this.msg = msg;
    this.optime = optime == null ? null : optime.getTime();
    this.setData(data);
  }

  public String getCode() {
    return this.code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getMsg() {
    return this.msg;
  }

  public void setMsg(String msg) {
    this.msg = msg;
  }

  public Integer getCurrentPage() {
    return this.currentPage;
  }

  public void setCurrentPage(Integer currentPage) {
    this.currentPage = currentPage;
  }

  public Long getTotalCount() {
    return this.totalCount;
  }

  public void setTotalCount(Long totalCount) {
    this.totalCount = totalCount;
  }

  public Integer getPageSize() {
    return this.pageSize;
  }

  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }

  public long getOptime() {
    return this.optime;
  }

  public void setOptime(long optime) {
    this.optime = optime;
  }

  public Object getData() {
    return this.data;
  }

  public String getRequestId() {
    return this.requestId;
  }

  public void setRequestId(String requestId) {
    this.requestId = requestId;
  }

  public Boolean getHasNextPage() {
    return this.hasNextPage;
  }

  public String getTokenName() {
    return this.tokenName;
  }

  public void setTokenName(String tokenName) {
    this.tokenName = tokenName;
  }

  public String getTokenValue() {
    return this.tokenValue;
  }

  public void setTokenValue(String tokenValue) {
    this.tokenValue = tokenValue;
  }

  public String getVersion() {
    return this.version;
  }

  public void setVersion(String version) {
    this.version = version;
  }

  public void setData(Object data) {
    if (data instanceof PageInfo) {
      PageInfo<?> pagedata = (PageInfo)data;
      this.data = pagedata.getList();
      this.totalCount =pagedata.getTotal();
      this.pageSize = pagedata.getPageSize();
      this.currentPage = pagedata.getPageNum();
      this.hasNextPage = pagedata.isHasNextPage();
    } else {
      this.data = data;
    }

  }

  public String toString() {
    return "code:" + this.code + ", msg:" + this.msg + ", data:" + this.data + ", version:" + this.version + ", requestId:" + this.requestId + ", optime:" + this.optime + ", pageSize:" + this.pageSize + ", totalCount:" + this.totalCount + "]";
  }
}
