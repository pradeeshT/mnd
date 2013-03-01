<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>E-Mandi</title>
<link href="templte.css" rel="stylesheet" type="text/css" media="screen "/>


</head>

<body>
<%@ include file ="connect.jsp" %>

  <div id="header" class="container">
   <div id="logo">
  		<h1>E-mandi</h1>
		</div>
   <div >
     <ul id="menu">
        <li><a href="home.jsp" >Home</a></li>
        <li><div class="gap"></div></li>
        <li><a href="#">Prices</a></li>
        <li><div class="gap"></div></li>
        <li><a href="#">Markets</a></li>
        <li><div class="gap"></div></li>
        <li><a href="#">F.A.Q</a></li>
        <li><div class="gap"></div></li>
        <li><a href="#">Help</a></li>
        <li><div class="gap"></div></li>    
        <li><a href="#">Contact Us</a></li>
        <li><div class="gap"></div></li>    
        <li><a href="Register.html">Sign-Up</a></li>
     </ul>
    </div>
            
   </div>


<div id="contentbg">
    <div id="content">

      <div id="contentleft">tiam auctor nisl adip is iscing sem. </div>
       <div id="contentmid">Here our price difference tables will be placed, according to region people can see the list. 
            <br><br>
            <form method=post action=home.jsp>
            <label style="color:#458B74;">Change state:</label>
              
            <select name="state" id="state" onchange="this.form.submit()">
             <option value="no">select state</option>
            <option value="TN">Tamil nadu</option>
             <option value="no">no</option>
            </select>
            </form>
            <label style="color:#458B74;">Current state:<% out.print(request.getParameter("state"));%>
              </label> 
             <table border=1 style="background-color: white;" width="430" cellpadding="1" cellspacing="1" >
                <tr bgcolor=#7D9EC0 style="color:white;font-size:14px;"><th>Vegetable Name</th><th>Farmer price</th><th>Wholeseller Price</th><th>Retailer price</th></tr>
             
             	 
              
               <% String state=request.getParameter("state");
              // if (state==null)
               //	state="TN"; cookies
               int n=1;
               try{
               	ResultSet resultSet = statement.executeQuery("select * from vegename where state='"+state+"'");
               	while ( resultSet.next() )  
              {  	  
               		if(n%2==1) { %>
                       <tr bgcolor=#BFEFFF>
               		<%    }
               		else { %>
                      <tr bgcolor=#8EE5EE>
           	<%   	}
               		%>   
           
				<td><%=resultSet.getString(1)%></td>
				<td><%=resultSet.getString(2)%></td>
		    	<td><%=resultSet.getString(3)%></td>
		    	<td><%=resultSet.getString(4)%></td>
		    	
			</tr>
			
		<% 
		      n=n+1;
        	 }
       
    		    con.close();
    	    	resultSet.close();   	    
        	}
        	catch(Exception e){
        		out.println(e);
        	}        	             
        %>
       </table>
       </div>
       <div id="contentright">some more over this is iiwr ity tiam auctor nisl adipi then no one can judge this .

<div id="loginPan">
		<h2>Members <span>login</span></h2>
		<form action="Sessiontracking1.jsp" method="post">
		<label>Email Id</label><input name="username" type="text" size="17" id="" />
		<label>Password</label><input name="password" type="password" size="17" id="" />
                <label>Type</label>
                       <select name="type">
                         <option  value="">Select One..!</option>
                         <option  value="ws">Whole seller</option>
                         <option  value="fs">Farmer</option>
                         <option  value="rs">Retailer</option>
                         
                       </select> <br>
                       <%  String error = request.getParameter("error");
                       out.println ("<font color=red>"+error+"</font>");
    		            %>
		<center><input name="Input" type="submit" class="button" value="Login" /></center>
		</form>
		
			<p>Not a member ?&nbsp;<a href="Register.html">Register now</a> </p>
		
	</div>

      </div>






</div>
</div>
</body>
</html>
