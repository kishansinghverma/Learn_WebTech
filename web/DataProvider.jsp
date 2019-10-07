<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <span id="data">
    <%
        String[] names={"Amit", "Anubhav", "Ajay", "Aakash", "Kishan", "Keshav"};
        String data=request.getParameter("data");
        int len=data.length();

        String result="";
        for(String x : names){
            if(data.length()<=x.length() && data.equalsIgnoreCase(x.substring(0, len))){
                result += x+", ";
            }
        }
        if(result.length()>0)
            out.print(result);
        else
            out.print("No Prediction Available!");
    %>
    </span>
</body>
</html>