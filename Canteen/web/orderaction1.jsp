<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String name=request.getParameter("name");
String bank=request.getParameter("bank");
String ifsc=request.getParameter("ifsc");
String brach=request.getParameter("brach");
String exp=request.getParameter("exp");    
String fname=request.getParameter("fname");
String fdes=request.getParameter("fdes");
String cost=request.getParameter("cost");
String quan=request.getParameter("quan");
String id=session.getAttribute("id").toString();
String name1=session.getAttribute("name").toString();
String ready=request.getParameter("ready");
String addr=request.getParameter("addr");
String pay=request.getParameter("pay");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flower","root","root");
                PreparedStatement q2=con.prepareStatement("select * from flower where fname='"+fname+"' and fdes='"+fdes+"' and cost='"+cost+"' ");
                    ResultSet r2=q2.executeQuery();
                    if(r2.next()){
                    String image=r2.getString("fimage"); 
                    String email=session.getAttribute("email").toString();
                    PreparedStatement query=con.prepareStatement("insert into orders(sid,sname,email,fimage,fname,fdes,cost,ready,pay,qan,address,status)values ('"+id+"','"+name1+"','"+email+"','"+image+"','"+fname+"','"+fdes+"','"+cost+"','"+ready+"','"+pay+"','"+quan+"','"+addr+"','Waiting')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);  
                    PreparedStatement que=con.prepareStatement("insert into ordertran(sid,sname,fimage,fname,fdes,cost,ready,pay,qan,address,bank,brach,ifsc,exp,status)values ('"+id+"','"+name1+"','"+image+"','"+fname+"','"+fdes+"','"+cost+"','"+ready+"','"+pay+"','"+quan+"','"+addr+"','"+bank+"','"+brach+"','"+ifsc+"','"+exp+"','Waiting')");
                    System.out.println(que);
                    que.executeUpdate();
                    System.out.println(que);
                    out.println("<script>"); 			
                    out.println("alert(\"Online_Delivery Order Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Viewmenu.jsp");
                    rd.include(request,response);		
		}}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Viewmenu.jsp");
                    rd.include(request,response);
                }

%>