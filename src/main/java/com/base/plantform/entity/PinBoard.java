package com.base.plantform.entity;

/**
 * 类名: PinBoard </br>
 * 描述:  </br>
 * 开发人员： Liangqx </br>
 * 创建时间： 2017/3/1 </br>
 * 发布版本：V1.0  </br>
 */
public class PinBoard {
    //id
    private String id;
    //标签标题
    private String title;
    //标签内容
    private String comment;
    //标签创建时间
    private String createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
