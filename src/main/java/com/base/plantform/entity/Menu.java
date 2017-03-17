package com.base.plantform.entity;

import java.util.List;

/**
 * 类名: Menu </br>
 * 描述:  </br>
 * 开发人员： Liangqx </br>
 * 创建时间： 2017/3/16 </br>
 * 发布版本：V1.0  </br>
 */
public class Menu {
    /**
     * ID
     */
    private String id;
    /**
     * 菜单名称
     */
    private String name;
    /**
     *
     */
    private String level;
    /**
     * 目标链接
     */
    private String target;
    /**
     * 菜单父节点ID
     */
    private String parentId;
    /**
     * 子菜单列表
     */
    private List<Menu> childrenList;
    /**
     * 启用标识
     */
    private boolean enableFlag;

    private String orderBy;

    private String imgClass;

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public String getImgClass() {
        return imgClass;
    }

    public void setImgClass(String imgClass) {
        this.imgClass = imgClass;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public List<Menu> getChildrenList() {
        return childrenList;
    }

    public void setChildrenList(List<Menu> childrenList) {
        this.childrenList = childrenList;
    }

    public boolean isEnableFlag() {
        return enableFlag;
    }

    public void setEnableFlag(boolean enableFlag) {
        this.enableFlag = enableFlag;
    }
}
