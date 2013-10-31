package org.zhubao.util;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Map;

import freemarker.cache.ClassTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

public class FreemarkUtil {
	protected static Template template;
	protected static void initTemplate(String templateFile) throws Exception {
		Configuration cfg = new Configuration();
		cfg.setObjectWrapper(new DefaultObjectWrapper());
		cfg.setTemplateLoader(new ClassTemplateLoader(FreemarkUtil.class, "/ftl/"));
		template = cfg.getTemplate(templateFile);
	}
	
	public static void writeToFile(Map<Object,Object> root,String templateFile,File file) throws Exception{
		
		initTemplate(templateFile);
		FileWriter fw = new FileWriter(file);
		template.process(root, fw);
		fw.close();
	}
	
    public static void writeToConsole(Map<Object,Object> root,String templateFile) throws Exception{
		
		initTemplate(templateFile);
		template.process(root, new PrintWriter(System.out));
	}

}
