package org.mybatis.generator.template.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Description:
 * @author: mitnick
 * @date: 2018-04-24 下午2:29
 */
public class JavaModuleEntity {

    private String targetPackage;

    private String targetProject;

    private String objectName;

    private String moduleName;

    /**
     * 代码生成日期
     */
    private String generatedDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());

    /**
     *   代码生成时间
     */
    private String generatedTime =  new SimpleDateFormat("HH:mm").format(new Date());

}
