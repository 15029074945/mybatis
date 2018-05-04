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

    private String packageName;

    private boolean generatorEnable;

    private boolean generatorResource;

    private boolean generatorService;

    private boolean generatorDOM;

    private boolean generatorMDAO;

    /**
     * 代码生成日期
     */
    private String generatedDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());

    /**
     *   代码生成时间
     */
    private String generatedTime =  new SimpleDateFormat("HH:mm").format(new Date());

    public boolean isGeneratorEnable() {
        return generatorEnable;
    }

    public void setGeneratorEnable(boolean generatorEnable) {
        this.generatorEnable = generatorEnable;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getTargetPackage() {
        return targetPackage;
    }

    public void setTargetPackage(String targetPackage) {
        this.targetPackage = targetPackage;
    }

    public String getTargetProject() {
        return targetProject;
    }

    public void setTargetProject(String targetProject) {
        this.targetProject = targetProject;
    }

    public String getObjectName() {
        return objectName;
    }

    public void setObjectName(String objectName) {
        this.objectName = objectName;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public String getGeneratedDate() {
        return generatedDate;
    }

    public void setGeneratedDate(String generatedDate) {
        this.generatedDate = generatedDate;
    }

    public String getGeneratedTime() {
        return generatedTime;
    }

    public void setGeneratedTime(String generatedTime) {
        this.generatedTime = generatedTime;
    }

    public boolean isGeneratorResource() {
        return generatorResource;
    }

    public void setGeneratorResource(boolean generatorResource) {
        this.generatorResource = generatorResource;
    }

    public boolean isGeneratorService() {
        return generatorService;
    }

    public void setGeneratorService(boolean generatorService) {
        this.generatorService = generatorService;
    }

    public boolean isGeneratorDOM() {
        return generatorDOM;
    }

    public void setGeneratorDOM(boolean generatorDOM) {
        this.generatorDOM = generatorDOM;
    }

    public boolean isGeneratorMDAO() {
        return generatorMDAO;
    }

    public void setGeneratorMDAO(boolean generatorMDAO) {
        this.generatorMDAO = generatorMDAO;
    }
}
