Public Class HtmlInjectedItemHelper

	Public Shared Function GetHtmlInjectedName() As String
		Return "Brandon > stuff"
	End Function

	Public Shared Function GetHtmlInjectedDescription() As String
		Return "Here is a description with some really dangerous stuff in it. Someone's trying to hack the system..." & Environment.NewLine & _
		 "<iframe src=""somesource.html"" />The iframe alone could allow someone to take over someone's entire computer."
	End Function

End Class
