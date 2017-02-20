package com.base.plantform.dao;

import com.base.plantform.entity.VersionControl;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/2/15.
 */
@Repository
public interface BaseDao {
    /**
     * 获取版本更新信息列表
     * @return
     */
    List<VersionControl> getVersionControlList();
}
