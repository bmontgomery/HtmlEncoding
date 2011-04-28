<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="HtmlEncoding._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<p>
			In order to protect ourselves from XSS attacks, we need to be sure to use an effective
			strategy for accepting and distrusting data, and making that data trusted again.
		</p>
		<p>
			We know that in the software world, we can trust nothing that comes from the user.
			This means that in web forms, we can't trust what they type in textboxes. However,
			we don't want to inconvenience the user by disallowing them from typing certain
			character combinations. Software compaines especially use special characters that
			are not valid requests in ASP .NET by default. We end up turning off the default
			ASP .NET Request Validation feature on most of our entry and edit pages. This opens
			us up to a user entering HTML into a form field, then that HTML being rendered out
			to the screen somewhere else in the application without being properly encoded first,
			which is a very dangerous security problem.
		</p>
		<p>
			We must use an effective strategy to overcome this security risk. There are two
			types of code we need to watch out for:
		</p>
		<ul>
			<li>HTML</li>
			<li>JavaScript</li>
		</ul>
		<p>
			When we render HTML to a web page, we do it in the following types of places:
		</p>
		<ul>
			<li>"View" - Static display control (label, span, div, etc.)</li>
			<li>"Edit" - Editable control (textbox, input, etc.)</li>
			<li>"Data Bound" - Grid columns, drop down lists</li>
			<li>"In-line" - Item Templates with server tags (<code>&lt;%# ... %&gt;</code> within
				asp:DataGrid, asp:Repeater, asp:DataList, etc.)</li>
		</ul>
		<p>
			Rather than relying on the developers to always remember to propertly escape and
			encode things every time, we will develop a strategy which makes it obvious to a
			developer that something needs to be escaped or encoded before being rendered to
			a web page.
		</p>
		<p>
			To demonstrate the toolkit, click on a link below to see how we will handle each
			situation.
		</p>
		<ul>
			<li><a href="View.aspx">View</a></li>
			<li><a href="Edit.aspx">Edit</a></li>
			<li><a href="DataBound.aspx">Data Bound</a></li>
			<li><a href="Inline.aspx">In-line</a></li>
		</ul>
	</div>
	</form>
</body>
</html>
