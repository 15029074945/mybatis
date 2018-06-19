package org.mybatis.generator.template;

import org.apache.tools.ant.taskdefs.Java;
import org.apache.tools.ant.util.StringUtils;
import org.mybatis.generator.api.IntrospectedColumn;
import org.mybatis.generator.template.entity.JavaModuleEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @author: mitnick
 * @date: 2018-04-24 下午2:14
 */
public class GeneratorMojo {

    static Logger logger = LoggerFactory.getLogger(GeneratorMojo.class);

    static TemplateBuilder templateBuilder = null;

    public static void addJavaController(List<JavaModuleEntity> javaModuleEntities){
        createTempalte(javaModuleEntities,"controller");
    }

    public static void addJavaControllerExp(List<JavaModuleEntity> javaModuleEntities){
        createTempalte(javaModuleEntities,"controllerexp");
    }

    public static void addJavaServiceInterface(List<JavaModuleEntity> javaModuleEntities){
        createTempalte(javaModuleEntities,"service");
        addJavaServiceImpl(javaModuleEntities);
    }

    public static void addJavaServiceImpl(List<JavaModuleEntity> javaModuleEntities){
        createTempalte(javaModuleEntities,"service-impl");
    }

    public static void addJavaDomainInterface(List<JavaModuleEntity> javaModuleEntities){
        createTempalte(javaModuleEntities,"domain");
        addJavaDomainImpl(javaModuleEntities);
    }

    public static void addJavaDomainImpl(List<JavaModuleEntity> javaModuleEntities){
        createTempalte(javaModuleEntities,"domain-impl");
    }

    public static void addJavaMDaoInterface(List<JavaModuleEntity> javaModuleEntities){
        createTempalte(javaModuleEntities,"mdao");
    }

    private static String getRootDir(){
        return System.getProperty("user.dir");
    }

    private static void loadTemplate(){
        logger.info("开始加载模板");
        try {
            templateBuilder = new TemplateBuilder();
        } catch (IOException e) {
            logger.info("模板加载时发生错误：" + e.getMessage());
            return;
        }
        logger.info("完成加载模板");
    }

    private static void createTempalte(List<JavaModuleEntity> javaModuleEntities,String template) {
        loadTemplate();
        if (javaModuleEntities != null && !javaModuleEntities.isEmpty()) {

            boolean flag;
            for (JavaModuleEntity javaModuleEntity : javaModuleEntities) {
                flag = false;
                if (javaModuleEntity.isGeneratorEnable()) {
                    String projectPath = javaModuleEntity.getTargetProject();
                    StringBuilder filePath = new StringBuilder();
                    filePath = filePath.append(projectPath);

                    if ("controller".equals(template) && javaModuleEntity.isGeneratorResource()) {
                        flag = true;
                        filePath = filePath.append(javaModuleEntity.getObjectName()).append("Resource.java");
                    } else if("controllerexp".equals(template)){
                        flag = true;
                        filePath = filePath.append(javaModuleEntity.getObjectName()).append("ExpResource.java");
                    }else if ("service".equals(template)) {
                        flag = true;
                        filePath = filePath.append("I").append(javaModuleEntity.getObjectName()).append("Service.java");
                    } else if ("service-impl".equals(template)) {
                        flag = true;
                        filePath = filePath.append("impl").append(File.separator).append(javaModuleEntity.getObjectName()).append("ServiceImpl.java");
                    }else if ("domain".equals(template)) {
                        flag = true;
                        filePath = filePath.append("I").append(javaModuleEntity.getObjectName()).append("DOM.java");
                    }else if ("domain-impl".equals(template)) {
                        flag = true;
                        filePath = filePath.append("impl").append(File.separator).append(javaModuleEntity.getObjectName()).append("DOMImpl.java");
                    }else if ("mdao".equals(template)) {
                        flag = true;
                        filePath = filePath.append("I").append(javaModuleEntity.getObjectName()).append("MDAO.java");
                    }
                    File file = new File(filePath.toString());
                    System.out.println("生成代码路径： "+ filePath);
                    try {
                        if(flag && templateBuilder != null){

                            templateBuilder.build(template, javaModuleEntity, file);
                        }

                    } catch (Exception e) {
                        logger.error("生成代码失败 {} ",e.getMessage(),e);
                    }
                }
            }
        }
    }
}
