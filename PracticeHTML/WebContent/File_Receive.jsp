<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="org.apache.commons.fileupload.*"%> 
<%@ page import="java.io.IOException"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>

<%
	DiskFileItemFactory factory = new DiskFileItemFactory();

	ServletFileUpload upload = new ServletFileUpload(factory);
	
	List items = null;

	try
	{
		items = upload.parseRequest(request);
	}
	catch(Exception e)
	{
	 	e.printStackTrace();   
	}
	
	Iterator iter = items.iterator();
	
	while(iter.hasNext())
	{
	    FileItem item = (FileItem) iter.next();
	    
	    if(item.isFormField())
	    {
	        String name = item.getFieldName();
	        String value = item.getString("euc-kr");
	        
	        System.out.println("name : " + name + " " + "value : " + value);
	    }
	    else
	    {
			if(item.getSize() > 0)
			{
			    File uploadedFile = new File("C:/Download","test.jpg");
			    item.write(uploadedFile);
			}
	    }
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
</body>
</html>