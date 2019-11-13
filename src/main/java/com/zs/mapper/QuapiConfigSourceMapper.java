package com.zs.mapper;

import com.zs.bo.QuapiConfigSource;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface QuapiConfigSourceMapper {
    int deleteByPrimaryKey(String id);

    int insert(QuapiConfigSource record);

    int insertSelective(QuapiConfigSource record);

    QuapiConfigSource selectByPrimaryKey(String id);
    
    List<QuapiConfigSource> selectAll();

    int updateByPrimaryKeySelective(QuapiConfigSource record);

    int updateByPrimaryKey(QuapiConfigSource record);
}