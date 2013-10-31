package org.zhubao.service;
import java.io.Serializable;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Component;
   
@Component 
public class ProducerServiceImpl implements ProducerService {  
    @Autowired
	private JmsTemplate jmsTemplate;  
      
    public void sendMessage(Destination destination, final String message) {  
        jmsTemplate.send(destination, new MessageCreator() {  
            public Message createMessage(Session session) throws JMSException {  
                return session.createTextMessage(message);  
            }  
        });  
    }

	public void sendMessage(Destination destination, Serializable obj) {
		
	}

	/*public JmsTemplate getJmsTemplate() {
		return jmsTemplate;
	}

	public void setJmsTemplate(JmsTemplate jmsTemplate) {
		this.jmsTemplate = jmsTemplate;
	}   
  */
   
} 