Public Class View
	Inherits System.Web.UI.Page
	Private mName As String
	Private mDescription As String

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Try

			If Not Page.IsPostBack Then
				LoadData()
				SetUI()
			End If

		Catch ex As Exception

		End Try
	End Sub

	Private Sub LoadData()

		mName = HtmlInjectedItemHelper.GetHtmlInjectedName()
		mDescription = HtmlInjectedItemHelper.GetHtmlInjectedDescription()

	End Sub

	Private Sub SetUI()

		lblName.Text = EncodeForDisplay(mName)
		lblDescription.Text = EncodeForDisplay(mDescription)

	End Sub

	Private Function EncodeForDisplay(input As String) As String
		Return Server.HtmlEncode(input).Replace(vbCrLf, "<br/>").Replace(vbCr, "<br/>").Replace(vbLf, "<br/>")
	End Function

End Class