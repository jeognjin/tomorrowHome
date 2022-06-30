package com.tomorrowHome.common.service;


import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

@Service("mss")
public class MailSendService {
    
   @Autowired
    private JavaMailSenderImpl mailSender;

   private final char[] characterTable = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
           'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
           'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };

    //인증코드 난수 발생
    private String getAuthCode(int size) {
    	
        Random random = new Random();
        StringBuffer buffer = new StringBuffer();
        int tablelength = characterTable.length;
        
//        int num = 0;

        for(int i = 0; i < size; i++) {
        	buffer.append(characterTable[random.nextInt(tablelength)]);
        }
        
//        while(buffer.length() < size) {
//            num = random.nextInt(10);
//            buffer.append(num);
//        }

        return buffer.toString();
    }

    //인증메일 보내기
    public String sendAuthMail(String email) {
        //6자리 난수 인증번호 생성
        String authKey = getAuthCode(10);

        //인증메일 보내기
        try {
            MailUtils sendMail = new MailUtils(mailSender);
            sendMail.setSubject("[내일의집] 이메일 인증");
            sendMail.setText(new StringBuffer().append("<h1>[이메일 인증번호 입니다.]</h1>")
            .append("<p>아래 인증번호를 인증번호 확인란에 입력 후 인증번호 확인을 누르시면 이메일 인증이 완료됩니다.</p>")
            .append("<P>인증번호 : "+authKey+"</p>")
            .toString());
            sendMail.setFrom("tomorrowhomefinalproject@gmail.com", "내일의집");
            sendMail.setTo(email);
            sendMail.send();
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

          return authKey;
    }
}