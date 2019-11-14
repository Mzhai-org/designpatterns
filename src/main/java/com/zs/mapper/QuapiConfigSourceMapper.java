package com.zs.mapper;

import com.zs.bo.QuapiConfigSource;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface QuapiConfigSourceMapper {
    int deleteByPrimaryKey(String id);

    int insert(QuapiConfigSource record);

    int insertSelective(QuapiConfigSource record);

    QuapiConfigSource selectByPrimaryKey(String id);
    
    List<QuapiConfigSource> selectAll();

    List<QuapiConfigSource> selectByPage(Map<String, Object> map);

    int updateByPrimaryKeySelective(QuapiConfigSource record);

    int updateByPrimaryKey(QuapiConfigSource record);
}