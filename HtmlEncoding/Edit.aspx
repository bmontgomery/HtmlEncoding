<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Edit.aspx.vb" Inherits="HtmlEncoding.Edit"
	ValidateRequest="false" %>

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
			Edits include adding and editing items. When adding an item, we will not perform
			any encoding before the item's properties are stored in the database (or other storage
			mechanism). When we edit properties, their text should not be HTML-encoded if they're
			populating an editable field.
		</p>
		<p>
			ValidateRequest is set to false on this page, so entering HTML in the fields below
			will not cause an exception.
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
					<asp:TextBox ID="txtName" runat="server" />
				</td>
			</tr>
			<tr>
				<td>
					Description
				</td>
				<td>
					<asp:TextBox ID="txtDescription" runat="server" Rows="10" Columns="30" TextMode="MultiLine" />
				</td>
			</tr>
		</table>
		<asp:Button ID="btnSubmit" runat="server" Text="Submit" />
	</div>
	</form>
</body>
</html>
