<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8"); 
	response.setCharacterEncoding("UTF-8"); 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户登录</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
<%@ include file="bbb_api.jsp"%>
<% 
HashMap<String, HashMap> allMeetings = new HashMap<String, HashMap>();
HashMap<String, String> meeting;
// String welcome = "<br>Welcome to %%CONFNAME%%!<br><br>For help see our <a href=\"event:http://www.bigbluebutton.org/content/videos\"><u>tutorial videos</u></a>.<br><br>To join the voice bridge for this meeting:<br>  (1) click the headset icon in the upper-left, or<br>  (2) dial xxx-xxx-xxxx (toll free:1-xxx-xxx-xxxx) and enter conference ID: %%CONFNUM%%.<br><br>";
String welcome = "<br>Welcome to <b>%%CONFNAME%%</b>!<br><br>To understand how BigBlueButton works see our <a href=\"event:http://www.bigbluebutton.org/content/videos\"><u>tutorial videos</u></a>.<br><br>To join the audio bridge click the headset icon (upper-left hand corner). <b>You can mute yourself in the Listeners window.</b>";
meeting = new HashMap<String, String>();
allMeetings.put( "ENGL-2013: Research Methods in English", meeting );	// The title that will appear in the drop-down menu
	meeting.put("welcomeMsg", 	welcome);			// The welcome mesage
	meeting.put("moderatorPW", 	"prof123");			// The password for moderator
	meeting.put("viewerPW", 	"student123");			// The password for viewer
	meeting.put("voiceBridge", 	"72013");			// The extension number for the voice bridge (use if connected to phone system)
	meeting.put("logoutURL", 	"/demo/index.jsp");  // The logout URL (use if you want to return to your pages)

meeting = new HashMap<String, String>();
allMeetings.put( "ENGL-2213: Drama Production I", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"72213");
	meeting.put("logoutURL", 	"/demo/index.jsp");

meeting = new HashMap<String, String>();
allMeetings.put( "ENGL-2023: Survey of English Literature", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"72023");
	meeting.put("logoutURL", 	"/demo/index.jsp");
meeting = new HashMap<String, String>();
allMeetings.put( "LAW-1323: Fundamentals of Advocacy ", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"71232");
	meeting.put("logoutURL", 	"/demo/index.jsp");
meeting = new HashMap<String, String>();
allMeetings.put( "LAW-2273: Business Organizations", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"72273");
	meeting.put("logoutURL", 	"/demo/index.jsp");
meeting = new HashMap<String, String>();
allMeetings.put( "LAW-3113: Corporate Finance", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"theprof");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"71642");
	meeting.put("logoutURL", 	"/demo/index.jsp");
//
// Professor's Virtaul Office Hours
//
meeting = new HashMap<String, String>();
allMeetings.put( "Virtual Office Hours - Steve Stoyan", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"70001");
	meeting.put("logoutURL", 	"/demo/index.jsp");
meeting = new HashMap<String, String>();
allMeetings.put( "Virtual Office Hours - Michael Bailetti", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"70002");
	meeting.put("logoutURL", 	"/demo/index.jsp");

meeting = new HashMap<String, String>();
allMeetings.put( "Virtual Office Hours - Tony Weiss", meeting );
	meeting.put("welcomeMsg", 	welcome);
	meeting.put("moderatorPW", 	"prof123");
	meeting.put("viewerPW", 	"student123");
	meeting.put("voiceBridge", 	"70003");
	meeting.put("logoutURL", 	"/demo/index.jsp");
meeting = null;
Iterator<String> meetingIterator = new TreeSet<String>(allMeetings.keySet()).iterator();
if (request.getParameterMap().isEmpty()) {
		//
		// Assume we want to join a course
		//
	%> 

   <div id="header">
        <div id="header_content">
            <div id="logo">
                <a href="http://www.bigbluebutton.org" target="_blank" title="BigBlueButton Home"> <img src="images/bbb_logo.png" alt="bbb_logo" width="278" height="69" title="BigBlueButton Demo Server" alt="BigBlueButton Demo Server" /> </a>
            </div>
        </div>
    </div>


<!-- Content Start -->
<div id="main">
    <div id="main_content">

        <div id="vids">

                <img class="divider" src="images/divider.png"/>


        <div id="welcome">
            <h1>Welcome</h1>
		<p class="content">云计算与虚拟化教育中心。</p>
        	<div class="social-links">
    		<table>
    			<td><strong>Follow Us:</strong></td>
    			<td><a href="http://www.twitter.com/bigbluebutton" title="BigBlueButton Twitter Page" target="_blank"><img src="images/twitter.png" alt="twitter" title="BigBlueButton Twitter Page" width="24" height="24" /></a></td>
    			<td><a href="http://www.facebook.com/bigbluebutton" title="BigBlueButton Facebook Page" target="_blank"><img src="images/facebook.png" alt="Facebook" title="BigBlueButton Facebook Page" width="24" height="24" /></a></td>
    			<td><a href="http://www.youtube.com/bigbluebuttonshare" title="BigBlueButton YouTube Page" target="_blank"><img src="images/youtube.png" alt="YouTube" title="BigBlueButton YouTube Page" width="24" height="24" /></a></td>
    			<td><a href="http://www.flickr.com/photos/bigbluebutton" title="BigBlueButton Flickr Page" target="_blank"><img src="images/flickr.png" alt="flickr" title="BigBlueButton Flickr Page" width="24" height="24" /></a></td>
    		</table>
    	</div>

        </div>
        <div id="join">
	<h3>登录教室</h3>
            <FORM NAME="form1" METHOD="GET">
                       <span class="enter" >用户名:</span> <input type="text" id="username" required autofocus name="username" size="29" class="field" /><br/>
                        <span class="enter" >密&nbsp;&nbsp;&nbsp;码:&nbsp;</span><input type="password" id="username" required autofocus name="password" size="29" class="field" /><br/>

                   <span class="enter">选择教室:</span><select name="meetingID">
						        	<%
										String key;
										while (meetingIterator.hasNext()) {
											key = meetingIterator.next(); 
											out.println("<option value=\"" + key + "\">" + key + "</option>");
										}
										%>
                   	</select>
<br/>
<input type="reset" value="重置" class="submit_btn" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="登录" class="submit_btn" />
     
 <br />
                        <input TYPE="hidden" NAME="action" VALUE="create">
</FORM>
            <br>
        </div>





    </div>
</div>
<!-- Content End -->


<!-- Footer Start -->
    <div id="footer">
                <p id="legal">Copyright ? 2012 <a href="http://bigbluebutton.org/" title="BigBlueButton" >BigBlueButton Inc.</a> <br> <a href="http://code.google.com/p/bigbluebutton/wiki/ReleaseNotes" title="BigBlueButton Release Notes"  target="_blank">version 0.8</a></p>
    </div>

<%
	} else if (request.getParameter("action").equals("create")) {
		//
		// Got an action=create
		//

		String username = request.getParameter("username");
		String meetingID = request.getParameter("meetingID");
		String password = request.getParameter("password");
		
		meeting = allMeetings.get( meetingID );
		
		String welcomeMsg = meeting.get( "welcomeMsg" );
		String logoutURL = meeting.get( "logoutURL" );
		Integer voiceBridge = Integer.parseInt( meeting.get( "voiceBridge" ).trim() );

		String viewerPW = meeting.get( "viewerPW" );
		String moderatorPW = meeting.get( "moderatorPW" );
		
		//
		// Check if we have a valid password
		//
		if ( ! password.equals(viewerPW) && ! password.equals(moderatorPW) ) {
%>

Invalid Password, please <a href="javascript:history.go(-1)">try again</a>.

<%
			return;
		}
		
		//
		// Looks good, let's create the meeting
		//
		String meeting_ID = createMeeting( meetingID, welcomeMsg, moderatorPW, viewerPW, voiceBridge, logoutURL );
		
		//
		// Check if we have an error.
		//
		if( meeting_ID.startsWith("Error ")) {
%>

Error: createMeeting() failed
<p /><%=meeting_ID%> 


<%
			return;
		}
		
		//
		// We've got a valid meeting_ID and passoword -- let's join!
		//
		
		String joinURL = getJoinMeetingURL(username, meeting_ID, password);			
%>

<script language="javascript" type="text/javascript">
  window.location.href="<%=joinURL%>";
</script>

<%
	} 
%>
 


</body>
</html>




