package org.zhubao.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BeanUtil {

	public static Object getBean(String beanName) {
        
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"classpath:applicationContext.xml");
		/*ApplicationContext ac = new FileSystemXmlApplicationContext(
				"file:C:/jason/testDemo/src/applicationContext.xml");*/
		Object bean = ac.getBean(beanName);
		return bean;
	}
	
	public static void main(String[] args) throws Exception{
		System.out.println(getBean("categoryDaoImpl"));
		/*PVPOpponentGameCountDAOImpl dao = (PVPOpponentGameCountDAOImpl) getBean("pVPOpponentGameCountDAOImpl");
		PVPOpponentGameCount gameCount = new PVPOpponentGameCount();
		PVPOpponentPK pk = new PVPOpponentPK(1,1);
		gameCount.setpVpOpponentPK(pk);
		gameCount.setPvpGameCount(1);
		gameCount.setCalculateGameCount(0);
		gameCount.setCalculate(0);
		dao.save(gameCount);*/
	}
}
