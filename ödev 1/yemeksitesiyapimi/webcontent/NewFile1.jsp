<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%
request.setCharacterEncoding("ISO-8859-9");
%>
<%
   String result;

   // alici mail adresi
   String to = "semanurkyya@gmail.com";

   // gonderici mail adresi
   String from = "sunucuproje@gmail.com";
   
   
   //gonderici sifre
   String password="Sunucu123";

   // ozellik nesnesi olusturuluyor
   Properties properties = System.getProperties();

   // mail server ayarlari yapiliyor
   properties.put("mail.smtp.host", "smtp.gmail.com");
   properties.put("mail.smtp.port", "587");
   properties.put("mail.smtp.starttls.enable", "true");
   properties.put("mail.smtp.auth", "true"); 



   // Mail icin session nesnesi olusturulur.
   Session mailSession = Session.getInstance(properties,
                           new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                           return new PasswordAuthentication(from, password);
                    }
             }); 

   try {
      // olusturulan sessiondan mimemesage nesnesi olusturulur
      MimeMessage message = new MimeMessage(mailSession);
      System.out.println(from);
      // gonderici adresi set ediliyor
      message.setFrom(new InternetAddress(from));
      
      // alici adresi set ediliyor
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // mail basligi set ediliyor
      message.setSubject("konu Ba�l���");
      
      // mail icerigi set ediliyor
      message.setText("Mesaj�m budur");
      
      // mail gonderiliyor
      Transport.send(message);
      //mail gonderilir ise sonuc 1
      response.sendRedirect("NewFile1.jsp?sonuc=1");
   } catch (MessagingException mex) {
      mex.printStackTrace();
    //mail gonderilemez ise sonuc 0
      response.sendRedirect("NewFile1.jsp?sonuc=0");
   }
%>