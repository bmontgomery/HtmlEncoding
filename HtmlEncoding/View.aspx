<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="View.aspx.vb" Inherits="HtmlEncoding.View" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<p>
			<a href="Default.aspx">Back</a>
		</p>
		<p>
			Displaying items on a web page requires careful consideration. Actually, not <i>that</i>
			careful. Basically, everything which is a string of characters needs to be HTML-encoded
			before rendering it out to the screen.
		</p>
		<p>
			The tricky thing about it is that the developer <b>MUST</b> remember to do this
			for everything, otherwise, the security hole is wide open. Also to consider is that
			the strings might contain line breaks, which need to be replaced with &lt;br/&gt;
			tags in order to get the value to render properly.
		</p>
		<p>
			Use the td:Label control to ensure strings displayed are properly encoded for display
			on a web page.
		</p>
		<p>
			Example:
		</p>
	</div>
	<div>
		<table>
			<tr>
				<td>
					Name
				</td>
				<td>
					<asp:Label ID="lblName" runat="server" />
				</td>
			</tr>
			<tr>
				<td>
					Description
				</td>
				<td>
					<asp:Label ID="lblDescription" runat="server" />
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>
