<%@page import="mail.mail"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String sname=request.getParameter("sname");
String id=request.getParameter("id");
String fname=request.getParameter("fname");
String sid=request.getParameter("sid");
String cost=request.getParameter("cost");
String email=request.getParameter("email");
    
    mail m=new mail();
    String subject="your Flower Order Accepted Sucessfuly Thank your for order";
    String message="Flower Name :  "+fname;
    String m1="Cost : "+cost;
    String m2="Customer ID : "+sid;
    String mall=m2+" "+m1+" "+message;
    System.out.println(message);
    System.out.println(m1);
    System.out.println(m2);
    m.sendFromGMail("1cp.javateam2020", "1cpjava2020",email, subject,mall);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flower","root","root");                
                    PreparedStatement query=con.prepareStatement("update orders set status='Accept' where sname='"+sname+"' and id='"+id+"' and fname='"+fname+"' and sid='"+sid+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Order Delivery Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Vieworder.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Vieworder.jsp");
                    rd.include(request,response);
                }

%>