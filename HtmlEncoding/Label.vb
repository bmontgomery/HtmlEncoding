Namespace Controls

	Public Class Label
		Inherits System.Web.UI.WebControls.Label

		Public Overrides Property EnableViewState As Boolean
			Get
				Return False
			End Get
			Set(value As Boolean)
				MyBase.EnableViewState = value
			End Set
		End Property

		Public Property IsHtmlSafe As Boolean

		Private Sub Label_PreRender(sender As Object, e As System.EventArgs) Handles Me.PreRender

			If Me.Text IsNot Nothing AndAlso Not IsHtmlSafe Then Me.Text = EncodeForDisplay(Me.Text)
		End Sub

		Private Function EncodeForDisplay(input As String) As String
			Return HttpUtility.HtmlEncode(input).Replace(vbCrLf, "<br/>").Replace(vbCr, "<br/>").Replace(vbLf, "<br/>")
		End Function

	End Class

End Namespace