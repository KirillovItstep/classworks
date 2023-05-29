package org.itstep.demo;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmailController {
    @Autowired
    EmailService emailService;

    @RequestMapping("/sendtext")
    public String sendText() {
        Email email = new Email();
        email.from = "kirillov203509@gmail.com";
        email.to = "kirillov203509@gmail.com";
        email.subject = "Тема";
        email.text = "Текст сообщения";
        emailService.sendTextEmail(email);
        return "success.html";
    }

    @RequestMapping("/sendhtml")
    public String sendHtml() {
        Email email = new Email();
        email.from = "kirillov203509@gmail.com";
        email.to = "kirillov203509@gmail.com";
        email.subject = "Тема";
        email.template = "template.html";
        Map<String, Object> properties = new HashMap<>();
        properties.put("name", "Name");
        properties.put("subscriptionDate", LocalDate.now().toString());
        properties.put("technologies", Arrays.asList("Java", "Python"));
        email.setProperties(properties);
        emailService.sendHtmlEmail(email);
        return "success.html";
    }

}
