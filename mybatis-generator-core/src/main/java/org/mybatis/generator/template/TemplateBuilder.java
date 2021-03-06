package org.mybatis.generator.template;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;


import org.apache.commons.io.FileUtils;
import org.mybatis.generator.template.entity.JavaModuleEntity;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Map;

/**
 * @Description:
 * @author: mitnick
 * @date: 2018-04-24 下午2:07
 */
public class TemplateBuilder {

    private Map<String, Template> templates = new HashMap<String, Template>();

    private final String[] templateFiles = new String[] {
            "controller","service","serviceexp","service-impl","service-implexp","domain","domainexp","domain-impl","domain-implexp","mdao","controllerexp"
    };

    private Configuration configuration;

    private final String extension = ".ftl";

    public TemplateBuilder() throws IOException {
        configuration = new Configuration();
        configuration.setObjectWrapper(new DefaultObjectWrapper());
        configuration.setClassForTemplateLoading(this.getClass(), "");
        configuration.setDefaultEncoding("utf-8");

        for(String templateFile : templateFiles) {
            Template template = configuration.getTemplate(templateFile + extension);
            templates.put(templateFile, template);

        }
    }

    public void build(String templateFile, JavaModuleEntity data, File file) throws IOException, TemplateException {
        Template template = templates.get(templateFile);
        if(template != null) {
            FileOutputStream fileOutputStream = null;
            OutputStreamWriter outputStreamWriter = null;
            try {
                fileOutputStream = FileUtils.openOutputStream(file);
                outputStreamWriter = new OutputStreamWriter(fileOutputStream, "utf-8");
                template.process(data, outputStreamWriter);
            } finally {
                try {
                    outputStreamWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void main(String[] args) throws IOException {
        new TemplateBuilder();

    }
}
