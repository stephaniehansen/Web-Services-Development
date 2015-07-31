<%@ page import="uts.wsd.*"%>

<%
	//Retrieve the Author object from the session
	Author author = (Author)session.getAttribute("author");
%>
<header>

<div id ="logo">
	<a href="index.jsp"><img src ="images/logo.png" alt="Back to Home"></a></div>
	
<%
	//If the user is not logged in, display register and login links
	if (author == null
			&& !request.getRequestURI().contains("register_action.jsp")) {
%>

<div class="login-register">
	<span id="link"><a href="login.jsp">Login</a>
	</span> | <span id="link"><a href="register.jsp">Register</a>
	</span>
</div>

<%
	}
	//If the user is logged in, display user image, dashboard, profile and logout links
	if (author != null) {
%>

<div class="account-details">
	<img id="profile" src=images/authors/<%=author.getProfileImage()%>>
	<div tabindex="0" class="onclick-menu">
		<ul class="onclick-menu-content">
			<a href="edit_profile.jsp"><li><button>Edit Profile</button>
			</li>
			</a>
			<a href="change_password.jsp"><li><button>Change
						Password</button>
			</li>
			</a>
			<a href="logout.jsp"><li><button>Log out</button>
			</li>
			</a>
		</ul>
		
		<%
			//Do not display dashboard button when on the Dashboard page
			if (!request.getRequestURI().contains("dashboard.jsp")) {
		%>
		
		<a href="dashboard.jsp"><div class="dashboard-button">Dashboard</div>
		</a>
	</div>
</div>
<%
	} //Do not display registration/login links when on the registration_action page
	} else if (request.getRequestURI().contains("register_action.jsp")) {
%>
<div></div>

<%
	}
%> </header>


