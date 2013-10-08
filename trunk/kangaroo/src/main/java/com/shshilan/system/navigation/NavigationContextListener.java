package com.shshilan.system.navigation;

import java.io.IOException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;


/**
 * @author lanbz
 * @date 2013-8-6 下午1:51:04
 * @version 1.0
 */
public class NavigationContextListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		   String contextPath=sce.getServletContext().getContextPath();
			NavigationObserver.plugNav=true;
			NavigationObserver.contextPath=contextPath;
			PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
			try {
				Resource[] res = resolver
						.getResources("classpath*:META-INF/navigation.xml");
				if (null != res && res.length > 0) {

					for (Resource resource : res) {
						Document doc = getDocumentFromResource(resource);
						NavigationObserver.addDocument(doc);
					}
				} else {

				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		

	}

	public void contextDestroyed(ServletContextEvent sce) {
	}

	public Document getDocumentFromResource(Resource res)
			throws DocumentException, IOException {

		SAXReader saxReadr = new SAXReader();
		org.dom4j.Document document = saxReadr.read(res.getInputStream());
		return document;
	}

}
