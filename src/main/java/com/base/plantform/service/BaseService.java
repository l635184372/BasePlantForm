package com.base.plantform.service;

import com.base.plantform.entity.Menu;
import com.base.plantform.entity.PinBoard;
import com.base.plantform.entity.SysUser;
import com.base.plantform.entity.VersionControl;

import java.util.List;

/**
 * Created by Administrator on 2017/2/15.
 */
public interface BaseService {

    List<Menu> findMenuList();

    List<VersionControl> getVersionControlList();

    SysUser saveSysUser(SysUser sysUser);

    SysUser findUserByUserName(String userName);

    List<PinBoard> findPinBoardList();

    int savePinBoard(PinBoard pinBoard);

    boolean deletePinboardByID(String pinBoardId);
}
