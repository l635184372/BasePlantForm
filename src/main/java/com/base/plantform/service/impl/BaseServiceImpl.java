package com.base.plantform.service.impl;

import com.base.plantform.dao.BaseDao;
import com.base.plantform.entity.VersionControl;
import com.base.plantform.service.BaseService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 类名: BaseServiceImpl </br>
 * 描述:  </br>
 * 开发人员： Liangqx </br>
 * 创建时间： 2017/2/15 </br>
 * 发布版本：V1.0  </br>
 */
@Service
//@Transactional(rollbackFor = Exception.class)
public class BaseServiceImpl implements BaseService{

    private static Logger logger = Logger.getLogger(BaseServiceImpl.class);

    @Resource
    private BaseDao baseDao;

    public List<VersionControl> getVersionControlList() {
        List<VersionControl> versionControlList = baseDao.getVersionControlList();
        if(versionControlList != null){
            for (int i = 0;i<versionControlList.size();i++){
                String content = versionControlList.get(i).getContent();
                if (!"".equals(content) && content != null){
                    String[] contents = content.split(";");
                    List<String> contentList = new ArrayList<String>();
                    if(contents != null){
                        for(int j = 0;j<contents.length;j++){
                            contentList.add(contents[j]);
                        }
                    }
                    versionControlList.get(i).setContents(contentList);
                }
            }
        }
        return versionControlList;
    }
}
