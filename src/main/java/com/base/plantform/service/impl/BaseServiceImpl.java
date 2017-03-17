package com.base.plantform.service.impl;

import com.base.plantform.dao.BaseDao;
import com.base.plantform.dao.PinBoardDao;
import com.base.plantform.dao.UserDao;
import com.base.plantform.entity.Menu;
import com.base.plantform.entity.PinBoard;
import com.base.plantform.entity.SysUser;
import com.base.plantform.entity.VersionControl;
import com.base.plantform.service.BaseService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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

    @Resource
    private UserDao userDao;

    @Resource
    private PinBoardDao pinBoardDao;

    public List<Menu> findMenuList() {
        return baseDao.findMenuList();
    }

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

    public SysUser saveSysUser(SysUser sysUser) {
        logger.info("开始判断用户是否存在...");
        SysUser tempUser = userDao.findUserByUserName(sysUser.getUserName());
        if(tempUser != null){
            logger.info("用户存在，注册失败，请重新填写用户名！");
        }else {
            sysUser.setId(UUID.randomUUID().toString());
            int retFlag = userDao.saveUser(sysUser);
            if(1 == retFlag){
                logger.info("注册成功！");
                return sysUser;
            }
        }
        return null;
    }

    public SysUser findUserByUserName(String userName) {
        return userDao.findUserByUserName(userName);
    }

    public List<PinBoard> findPinBoardList() {
        return pinBoardDao.findPinBoardList();
    }

    public int savePinBoard(PinBoard pinBoard) {
        pinBoard.setId(UUID.randomUUID().toString());
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy年MM月dd日(EEEE) HH时mm分");
        logger.info("当前系统时间为："+df.format(date));
        pinBoard.setCreateTime(df.format(date));
        return pinBoardDao.savePinBoard(pinBoard);
    }

    public boolean deletePinboardByID(String pinBoardId) {
        int flag = pinBoardDao.deletePinBoard(pinBoardId);
        if(flag == 1){
            return true;
        }else {
            return false;
        }

    }
}
