
Partial Class Straightforward
    Inherits System.Web.UI.Page
    Public patternStringArray() As Char
    Public textStringArray() As Char
    Public patternStringy As String
    Public patternIndex As Integer
    Public textIndex As Integer = 0
    Public matchFound As Boolean = False

    Public Sub StraightforwardStartup() Handles straightforwardForm.Load
        Try
            patternIndex = 0
            diagnostic2.Text = 0
            Dim patternStringy As String = Me.patternString.Text
            Dim textStringy As String = Me.patternString.Text

            patternStringArray = patternString.Text.ToCharArray
            textStringArray = textString.Text.ToCharArray

            'Check if initial match
            Try
                Dim stringo1 As String = ""
                Dim stringo2 As String = ""
                Dim counter As Integer = 0
                Dim failed As Boolean = False
                For Each c As Char In patternString.Text.Substring(patternString.Text.Length - 3, 3)
                    stringo1 += c
                    stringo2 += textString.Text.Substring(patternString.Text.Length - 3 + counter, 1)
                    If c = textString.Text.Substring(patternString.Text.Length - 3 + counter, 1) Then
                        matchFound = True
                    Else
                        matchFound = False
                        failed = True
                    End If
                    counter += 1
                Next
                If matchFound And failed = False Then
                    'Reached end without failing, match found
                    patternString.ForeColor = Drawing.Color.LimeGreen
                    stringer1.ForeColor = Drawing.Color.LimeGreen
                    stringer2.ForeColor = Drawing.Color.LimeGreen
                    matcher.ForeColor = Drawing.Color.LimeGreen
                    matcher.Text = "Matched!"
                Else
                    patternString.ForeColor = Drawing.Color.Red
                    stringer1.ForeColor = Drawing.Color.Red
                    stringer2.ForeColor = Drawing.Color.Red
                    matcher.ForeColor = Drawing.Color.Red
                    matcher.Text = "No match."
                End If
                patternIndex = patternString.Text.Length - 3

                stringer1.Text = "P: " & stringo1
                stringer2.Text = "T: " & stringo2
            Catch ex As Exception
                diagnostic.Text = "Error: " & ex.Message
            End Try
            diagnostic2.Text = "Index: " & patternIndex
        Catch ex As Exception
            diagnostic.Text = "Error: " & ex.Message
        End Try
    End Sub

    Public Sub backClick() Handles backbutton.Click
        If patternString.Text.Length = 3 Then
            'Already at start
        Else
            Try
                Dim stringo1 As String = ""
                Dim stringo2 As String = ""

                patternString.Text = patternString.Text.Remove(0, 1)
                Dim counter As Integer = 0
                Dim failed As Boolean = False
                For Each c As Char In patternString.Text.Substring(patternString.Text.Length - 3, 3)
                    stringo1 += c
                    stringo2 += textString.Text.Substring(patternString.Text.Length - 3 + counter, 1)
                    If c = textString.Text.Substring(patternString.Text.Length - 3 + counter, 1) Then
                        matchFound = True
                    Else
                        matchFound = False
                        failed = True
                    End If
                    counter += 1
                Next
                If matchFound And failed = False Then
                    'Reached end without failing, match found
                    patternString.ForeColor = Drawing.Color.LimeGreen
                    stringer1.ForeColor = Drawing.Color.LimeGreen
                    stringer2.ForeColor = Drawing.Color.LimeGreen
                    matcher.ForeColor = Drawing.Color.LimeGreen
                    matcher.Text = "Matched!"
                Else
                    patternString.ForeColor = Drawing.Color.Red
                    stringer1.ForeColor = Drawing.Color.Red
                    stringer2.ForeColor = Drawing.Color.Red
                    matcher.ForeColor = Drawing.Color.Red
                    matcher.Text = "No match."
                End If
                patternIndex = patternString.Text.Length - 3

                stringer1.Text = "P: " & stringo1
                stringer2.Text = "T: " & stringo2
            Catch ex As Exception
                diagnostic.Text = "Error: " & ex.Message
            End Try
            diagnostic2.Text = "Index: " & patternIndex
        End If
    End Sub

    Public Sub forwardClick() Handles forwardbutton.Click
        If patternString.Text.Length = textString.Text.Length Then
            'Reached the end, do nothing.
        Else

            Try
                Dim stringo1 As String = ""
                Dim stringo2 As String = ""

                patternString.Text = "-" & patternString.Text
                Dim counter As Integer = 0
                Dim failed As Boolean = False
                For Each c As Char In patternString.Text.Substring(patternString.Text.Length - 3, 3)
                    stringo1 += c
                    stringo2 += textString.Text.Substring(patternString.Text.Length - 3 + counter, 1)
                    If c = textString.Text.Substring(patternString.Text.Length - 3 + counter, 1) Then
                        matchFound = True
                    Else
                        matchFound = False
                        failed = True
                    End If
                    counter += 1
                Next
                If matchFound And failed = False Then
                    'Reached end without failing, match found
                    patternString.ForeColor = Drawing.Color.LimeGreen
                    stringer1.ForeColor = Drawing.Color.LimeGreen
                    stringer2.ForeColor = Drawing.Color.LimeGreen
                    matcher.ForeColor = Drawing.Color.LimeGreen
                    matcher.Text = "Matched!"
                Else
                    patternString.ForeColor = Drawing.Color.Red
                    stringer1.ForeColor = Drawing.Color.Red
                    stringer2.ForeColor = Drawing.Color.Red
                    matcher.ForeColor = Drawing.Color.Red
                    matcher.Text = "No match."
                End If
                patternIndex = patternString.Text.Length - 3

                stringer1.Text = "P: " & stringo1
                stringer2.Text = "T: " & stringo2
            Catch ex As Exception
                diagnostic.Text = "Error: " & ex.Message
            End Try
            diagnostic2.Text = "Index: " & patternIndex
        End If
    End Sub

    Public Sub resetClick() Handles reset.Click
        patternString.Text = "ABC"

        Try
            Dim stringo1 As String = ""
            Dim stringo2 As String = ""
            Dim counter As Integer = 0
            Dim failed As Boolean = False
            For Each c As Char In patternString.Text.Substring(patternString.Text.Length - 3, 3)
                stringo1 += c
                stringo2 += textString.Text.Substring(patternString.Text.Length - 3 + counter, 1)
                If c = textString.Text.Substring(patternString.Text.Length - 3 + counter, 1) Then
                    matchFound = True
                Else
                    matchFound = False
                    failed = True
                End If
                counter += 1
            Next
            If matchFound And failed = False Then
                'Reached end without failing, match found
                patternString.ForeColor = Drawing.Color.LimeGreen
                stringer1.ForeColor = Drawing.Color.LimeGreen
                stringer2.ForeColor = Drawing.Color.LimeGreen
                matcher.ForeColor = Drawing.Color.LimeGreen
                matcher.Text = "Matched!"
            Else
                patternString.ForeColor = Drawing.Color.Red
                stringer1.ForeColor = Drawing.Color.Red
                stringer2.ForeColor = Drawing.Color.Red
                matcher.ForeColor = Drawing.Color.Red
                matcher.Text = "No match."
            End If
            patternIndex = patternString.Text.Length - 3

            stringer1.Text = "P: " & stringo1
            stringer2.Text = "T: " & stringo2
        Catch ex As Exception
            diagnostic.Text = "Error: " & ex.Message
        End Try
        diagnostic2.Text = "Index: " & patternIndex

    End Sub
End Class
