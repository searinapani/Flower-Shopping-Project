<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String fname=request.getParameter("fname");
String fno=request.getParameter("fno");
String fdes=request.getParameter("fdes");
String cost=request.getParameter("cost");
String ready=request.getParameter("ready");
String status=request.getParameter("status");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flower","root","root");                
                    PreparedStatement query=con.prepareStatement("update flower set fdes='"+fdes+"',status='"+status+"',cost='"+cost+"',ready='"+ready+"' where fname='"+fname+"' and fno='"+fno+"'");
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Update Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Viewitem.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Viewitem.jsp");
                    rd.include(request,response);
                }

%>