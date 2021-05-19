<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String one = request.getParameter("one");

 
String connectionURL = "jdbc:mysql://localhost:3306/world";
String user = "root";
String pass = "12345";
 
Connection con = null;
 
try{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    
    PreparedStatement ps = con.prepareStatement("select * from contacts1 where fname=?");
    ps.setString(1, one);
    ResultSet rs = ps.executeQuery();
 
    if(rs.next()){
    	
        Blob blob = rs.getBlob("photo");
        byte byteArray[] = blob.getBytes(1, (int)blob.length());
 
        response.setContentType("photo/gif");
        OutputStream os = response.getOutputStream();
        os.write(byteArray);
        os.flush();
        os.close();
    }
}
catch(Exception e){
    e.printStackTrace();
}   
finally{
    if(con != null){
        try{
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
%>