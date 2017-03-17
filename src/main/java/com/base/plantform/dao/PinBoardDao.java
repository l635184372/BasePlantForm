package com.base.plantform.dao;

import com.base.plantform.entity.PinBoard;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/3/1.
 */
@Repository
public interface PinBoardDao {
    /**
     * 获取标签墙列表
     * @return
     */
    List<PinBoard> findPinBoardList();

    /**
     * 新建标签
     * @param pinBoard
     * @return
     */
    int savePinBoard(PinBoard pinBoard);

    /**
     * 删除标签
     * @param pinBoardId
     * @return
     */
    int deletePinBoard(String pinBoardId);


}
