Public Class Edit
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

		txtName.Text = mName
		txtDescription.Text = mDescription

	End Sub

End Class