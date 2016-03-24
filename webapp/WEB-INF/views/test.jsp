<%@page import="org.khmeracademy.app.entities.User"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>   
 <%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${msg}</title>
</head>
<body>


		<form action="${pageContext.request.contextPath}/facebook/connect" method="POST">
			<input type="hidden" name="scope" value="user_posts" />
			<div class="formInfo">
				<p>You aren't connected to Facebook yet. Click the button to connect this application with your Facebook account.</p>
			</div>
			<p><button type="submit">Connect to Facebook</button></p>
		</form>
		
		
		
<h1>${msg}</h1>
<h2><spring:message code="welcome"/></h2>
<spring:message code="language" /> : 
<a href="?language=en"><spring:message code="lang_english"/></a> - <a href="?language=kh"><spring:message code="lang_khmer"/></a>
Locale: ${pageContext.response.locale}

 <sec:authorize access="isAuthenticated()">Logout</sec:authorize>

								  <%
//                                         Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//                                 		User user = (User)authentication.getPrincipal();
//                                 		out.print("____________username " +user.getUsername());
  
									%>
  
  
<!-- គណិតវិទ្យា​ថ្នាក់ទី១២ ៖ សមីការឌីផេរ៉ង់ស្យែល   Total Duration   -->  
<ul>
	<li>00:07:43</li>
	<li>00:11:04</li>
	<li>00:11:48</li>
	<li>00:08:16</li>
	<li>00:12:37</li>
	<li>00:09:13</li>
	<li>00:06:11</li>
	<li>00:06:19</li>
	<li>00:06:10</li>
	<li>00:11:45</li>
	<li>00:18:07</li>
	<li>00:16:52</li>
</ul>
  
  
  
 <!-- គណិតវិទ្យា​ថ្នាក់ទី១២ ៖ កោណិច Total Time:2:13:20  -->
<!--  <ul>
 	<li>00:20:50</li>
	<li>00:13:31</li>
	<li>00:13:55</li>
	<li>00:10:04</li>
	<li>00:07:24</li>
	<li>00:07:33</li>
	<li>00:09:18</li>
	<li>00:11:25</li>
	<li>00:12:08</li>
	<li>00:07:42</li>
	<li>00:08:17</li>
	<li>00:11:13</li>
 </ul> --> 
  
  
<!-- គណិតវិទ្យា​ថ្នាក់ទី១២ ៖ ធរណីមាត្រ Total Duration   2:31:15 -->  
<!-- <ul>
	<li>00:09:44</li>
	<li>00:09:13</li>
	<li>00:10:48</li>
	<li>00:17:55</li>
	<li>00:07:12</li>
	<li>00:07:34</li>
	<li>00:11:50</li>
	<li>00:14:53</li>
	<li>00:09:30</li>
	<li>00:07:25</li>
	<li>00:10:51</li>
	<li>00:09:10</li>
	<li>00:07:46</li>
	<li>00:04:38</li>
	<li>00:04:24</li>
	<li>00:08:22</li>
</ul>   -->
  
  
<!-- គណិតវិទ្យា​ថ្នាក់ទី១២ ៖ សិ្ថតិ  Total Duration 	1:47:30 -->  
<!-- <ul>
	<li>00:09:00</li>
	<li>00:07:22</li>
	<li>00:13:30</li>
	<li>00:08:02</li>
	<li>00:13:40</li>
	<li>00:06:31</li>
	<li>00:09:28</li>
	<li>00:11:52</li>
	<li>00:09:27</li>
	<li>00:11:37</li>
	<li>00:04:28</li>
	<li>00:02:33</li>
</ul>   -->
  
<!--គណិតវិទ្យា​​ថ្នាក់​ទី​១២ ៖ ចម្លាស់ Total Duration 	5:23:27  -->
<!-- <ul>
	<li>00:08:52</li>
	<li>00:13:59</li>
	<li>00:13:59</li>
	<li>00:13:27</li>
	<li>00:09:53</li>
	<li>00:15:21</li>
	<li>00:15:07</li>
	<li>00:13:41</li>
	<li>00:06:02</li>
	<li>00:06:55</li>
	<li>00:19:14</li>
	<li>00:13:12</li>
	<li>00:08:11</li>
	<li>00:04:03</li>
	<li>00:08:49</li>
	<li>00:16:54</li>
	<li>00:08:21</li>
	<li>00:07:24</li>
	<li>00:06:13</li>
	<li>00:07:14</li>
	<li>00:13:06</li>
	<li>00:08:18</li>
	<li>00:11:31</li>
	<li>00:13:10</li>
	<li>00:17:00</li>
	<li>00:12:59</li>
	<li>00:17:02</li>
	<li>00:13:30</li>
</ul> -->
  
                                   
                                   
 <!-- ​ពិសោធន៍​មុខវិជ្ជា​ជីវវិទ្យា  Total duration:	8:42:12-->                                  
<!-- <ul>
	<li>02:06:43</li>
	<li>01:13:31</li>
	<li>01:28:37</li>
	<li>00:11:16</li>
	<li>00:14:12</li>
	<li>00:07:10</li>
	<li>00:22:43</li>
	<li>00:04:54</li>
	<li>00:10:57</li>
	<li>00:07:54</li>
	<li>00:15:05</li>
	<li>00:04:32</li>
	<li>00:03:33</li>
	<li>00:11:00</li>
	<li>00:04:11</li>
	<li>00:05:28</li>
	<li>00:02:52</li>
	<li>00:04:15</li>
	<li>00:20:23</li>
	<li>00:12:06</li>
	<li>00:09:46</li>
	<li>00:07:31</li>
	<li>00:06:10</li>
	<li>00:12:10</li>
	<li>00:06:19</li>
	<li>00:19:29</li>
	<li>00:09:25</li>
	
</ul>  -->                                 
                                   
<!-- ពិសោធន៍​មុខវិជ្ជា​រូបវិទ្យា  Total Time:275:59:53-->
<!-- <ul>
	<li>50:56:00</li>
	<li>01:09:34</li>
	<li>59:05:00</li>
	<li>01:14:06</li>
	<li>01:09:28</li>
	<li>44:11:00</li>
	<li>01:16:15</li>
	<li>50:00:00</li>
	<li>56:02:00</li>
	<li>00:19:54</li>
	<li>01:25:01</li>
	<li>00:04:31</li>
	<li>00:02:42</li>
	<li>00:03:04</li>
	<li>00:03:48</li>
	<li>00:06:47</li>
	<li>00:12:17</li>
	<li>00:12:05</li>
	<li>00:02:42</li>
	<li>00:05:38</li>
	<li>00:07:55</li>
	<li>00:19:06</li>
	<li>00:04:21</li>
	<li>00:05:41</li>
	<li>00:03:30</li>
	<li>00:02:41</li>
	<li>00:12:59</li>
	<li>00:06:24</li>
	<li>00:03:03</li>
	<li>00:03:57</li>
	<li>00:05:41</li>
	<li>00:07:23</li>
	<li>00:06:00</li>
	<li>00:08:33</li>
	<li>00:04:47</li>
	<li>00:08:54</li>
	<li>00:09:40</li>
	<li>00:04:25</li>
	<li>00:09:51</li>
	<li>00:06:57</li>
	<li>00:05:01</li>
	<li>00:07:35</li>
	<li>00:07:36</li>
	<li>00:04:58</li>
	<li>00:04:35</li>
	<li>00:23:51</li>
	<li>00:03:46</li>
	<li>00:03:16</li>
	<li>00:01:15</li>
	<li>00:03:35</li>
	<li>00:05:26</li>
	<li>00:05:16</li>
	<li>00:04:08</li>
	<li>00:05:56</li>
	<li>00:07:52</li>
	<li>00:05:21</li>
	<li>00:04:56</li>
	<li>00:05:23</li>
	<li>00:07:49</li>
	<li>00:04:35</li>
	<li>00:06:31</li>
	<li>00:05:57</li>
	<li>00:06:11</li>
	<li>00:03:41</li>
	<li>00:05:26</li>
	<li>00:04:47</li>
	<li>00:05:41</li>
	<li>00:06:11</li>
	<li>00:04:29</li>
	<li>00:02:38</li>
	<li>00:04:35</li>
	<li>00:04:34</li>
	<li>00:13:12</li>
	<li>00:10:25</li>
	<li>00:07:57</li>
	<li>00:09:00</li>
	<li>00:03:26</li>
	<li>00:10:13</li>
	<li>00:15:37</li>
	<li>00:07:23</li>
	<li>00:07:24</li>
	<li>00:09:26</li>
	<li>00:10:02</li>
	<li>00:02:44</li>
	<li>00:10:01</li>
	<li>00:07:35</li>
	<li>00:10:39</li>
	<li>00:05:44</li>
	<li>00:11:23</li>
	<li>00:09:05</li>
	<li>00:04:00</li>
	<li>00:03:57</li>
	<li>00:04:09</li>
</ul> -->

<div id="totalTime">Total Time:<span class="totalVal"></span></div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<script type="text/javascript">
            /* ==============================================
            Counter Up
            =============================================== */
            $(document).ready(function(){
               
	         		  frmData = { ka_username : "admin@gmail.com",
	         				  	  ka_password : "123"	         				     
	         				  	}; 
	         		
	         		  $.ajax({
		    	            url: "${pageContext.request.contextPath}/api/login",
		    	            type: "POST",
		    	            datatype : "JSON",
		    	            data: frmData, 
		    	            success: function(data) {
		    	            	console.log(data);
		    	            	
		    	            },
		    	         	error: function(data){
		    	         		console.log(data);
		    				}
		    	        });
	         			
              });
				
            
            var totalSeconds = 0;
            $("li").each(function(){
                var currentDuration = $(this).text();
                currentDuration = currentDuration.split(":");
                var hrs = parseInt(currentDuration[0],10);
                var min = parseInt(currentDuration[1],10);
                var sec = parseInt(currentDuration[2],10);
                var currDurationSec = sec + (60*min) + (60*60*hrs); 
                totalSeconds +=currDurationSec;
            });
            

            var hours = Math.floor(totalSeconds / 3600);
        	totalSeconds %= 3600;
        	var minutes = Math.floor(totalSeconds / 60);
        	var seconds = totalSeconds % 60;
            $(".totalVal").text(hours+":"+minutes+":"+seconds);
            
			</script>
</body>


</html>