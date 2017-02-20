package com.base.plantform.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 类名: VersionControl </br>
 * 描述:  </br>
 * 开发人员： Liangqx </br>
 * 创建时间： 2017/2/20 </br>
 * 发布版本：V1.0  </br>
 */
public class VersionControl {
    /**
     * id 唯一标识
     */
    private String id;
    /**
     * 版本号
     */
    private String title;
    /**
     * 版本更新内容，每条之间使用英文的 ; 隔开
     */
    private String content;
    /**
     * 版本发布时间
     */
    private String createDate;
    /**
     * 版本更新内容，用以在页面显示
     */
    private List<String> contents = new ArrayList<String>();

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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public List<String> getContents() {
        return contents;
    }

    public void setContents(List<String> contents) {
        this.contents = contents;
    }
}
