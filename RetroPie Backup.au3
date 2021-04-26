#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GUIConstants.au3>

Global $app_name = "RetroPie Backup"
Global $app_version = "v0.01"

Local $local_path = "F:\RetroPie"
Local $winscp_hostname = "retropie"
Local $winscp_username = "pi"
Local $winscp_password = "raspberry"
Local $winscp_hostkey = "ssh-ed25519 255 cq4AFscwWDozkpWLAzpJmZak8M7USnljP1lO36e23Co="
Local $result


$main_gui = GUICreate($app_name & " " & $app_version, 800, 380)

GUICtrlCreateGroup("WinSCP Settings", 10, 10, 500, 110)
GUICtrlCreateLabel("Hostname:", 20, 30, 80)
Global $winscp_hostname_input = GUICtrlCreateInput("retropie", 100, 30, 380)
GUICtrlCreateLabel("Username:", 20, 50, 80)
Global $winscp_username_input = GUICtrlCreateInput("pi", 100, 50, 380)
GUICtrlCreateLabel("Password:", 20, 70, 80)
Global $winscp_password_input = GUICtrlCreateInput("raspberry", 100, 70, 380)
GUICtrlCreateLabel("Host Key:", 20, 90, 80)
Global $winscp_hostkey_input = GUICtrlCreateInput("ssh-ed25519 255 cq4AFscwWDozkpWLAzpJmZak8M7USnljP1lO36e23Co=", 100, 90, 380)
GUICtrlCreateGroup("", -99, -99, 1, 1)

GUICtrlCreateGroup("Paths to Synchronise", 10, 130, 780, 190)
GUICtrlCreateLabel("Local Path", 70, 150, 80)
GUICtrlCreateLabel("Remote Path", 360, 150, 80)
GUICtrlCreateLabel("File Mask", 540, 150, 80)
GUICtrlCreateLabel("Include", 700, 150, 40)
Local $path_1_y = 170
GUICtrlCreateLabel("Pair #1", 20, $path_1_y, 80)
Global $path_1_local_input = GUICtrlCreateInput($local_path & "\boot", 70, $path_1_y, 250)
Global $path_1_remote_input = GUICtrlCreateInput("/boot", 360, $path_1_y, 140)
Global $path_1_filemask_input = GUICtrlCreateInput("config.txt", 540, $path_1_y, 140)
Global $path_1_include_checkbox = GUICtrlCreateCheckbox("", 700, $path_1_y, 20, 20)
GUICtrlSetState($path_1_include_checkbox, $GUI_CHECKED)
Local $path_2_y = $path_1_y + 20
GUICtrlCreateLabel("Pair #2", 20, $path_2_y, 80)
Global $path_2_local_input = GUICtrlCreateInput($local_path & "\home\pi\GPIOnext", 70, $path_2_y, 250)
Global $path_2_remote_input = GUICtrlCreateInput("/home/pi/GPIOnext", 360, $path_2_y, 140)
Global $path_2_filemask_input = GUICtrlCreateInput("", 540, $path_2_y, 140)
Global $path_2_include_checkbox = GUICtrlCreateCheckbox("", 700, $path_2_y, 20, 20)
GUICtrlSetState($path_2_include_checkbox, $GUI_CHECKED)
Local $path_3_y = $path_2_y + 20
GUICtrlCreateLabel("Pair #3", 20, $path_3_y, 80)
Global $path_3_local_input = GUICtrlCreateInput($local_path & "\home\pi\RetroPie\BIOS", 70, $path_3_y, 250)
Global $path_3_remote_input = GUICtrlCreateInput("/home/pi/RetroPie/BIOS", 360, $path_3_y, 140)
Global $path_3_filemask_input = GUICtrlCreateInput("", 540, $path_3_y, 140)
Global $path_3_include_checkbox = GUICtrlCreateCheckbox("", 700, $path_3_y, 20, 20)
GUICtrlSetState($path_3_include_checkbox, $GUI_CHECKED)
Local $path_4_y = $path_3_y + 20
GUICtrlCreateLabel("Pair #4", 20, $path_4_y, 80)
Global $path_4_local_input = GUICtrlCreateInput($local_path & "\opt\retropie\configs", 70, $path_4_y, 250)
Global $path_4_remote_input = GUICtrlCreateInput("/opt/retropie/configs", 360, $path_4_y, 140)
Global $path_4_filemask_input = GUICtrlCreateInput("|*.iso", 540, $path_4_y, 140)
Global $path_4_include_checkbox = GUICtrlCreateCheckbox("", 700, $path_4_y, 20, 20)
GUICtrlSetState($path_4_include_checkbox, $GUI_CHECKED)
Local $path_5_y = $path_4_y + 20
GUICtrlCreateLabel("Pair #5", 20, $path_5_y, 80)
Global $path_5_local_input = GUICtrlCreateInput($local_path & "\home\pi\RetroPie\roms", 70, $path_5_y, 250)
Global $path_5_remote_input = GUICtrlCreateInput("/home/pi/RetroPie/roms", 360, $path_5_y, 140)
Global $path_5_filemask_input = GUICtrlCreateInput("", 540, $path_5_y, 140)
Global $path_5_include_checkbox = GUICtrlCreateCheckbox("", 700, $path_5_y, 20, 20)
GUICtrlSetState($path_5_include_checkbox, $GUI_CHECKED)
Local $path_6_y = $path_5_y + 20
GUICtrlCreateLabel("Pair #6", 20, $path_6_y, 80)
Global $path_6_local_input = GUICtrlCreateInput($local_path & "\etc\emulationstation", 70, $path_6_y, 250)
Global $path_6_remote_input = GUICtrlCreateInput("/etc/emulationstation", 360, $path_6_y, 140)
Global $path_6_filemask_input = GUICtrlCreateInput("es_systems.cfg", 540, $path_6_y, 140)
Global $path_6_include_checkbox = GUICtrlCreateCheckbox("", 700, $path_6_y, 20, 20)
GUICtrlSetState($path_6_include_checkbox, $GUI_CHECKED)
Local $path_7_y = $path_6_y + 20
GUICtrlCreateLabel("Pair #7", 20, $path_7_y, 80)
Global $path_7_local_input = GUICtrlCreateInput($local_path & "\etc\emulationstation\themes", 70, $path_7_y, 250)
Global $path_7_remote_input = GUICtrlCreateInput("/etc/emulationstation/themes", 360, $path_7_y, 140)
Global $path_7_filemask_input = GUICtrlCreateInput("", 540, $path_7_y, 140)
Global $path_7_include_checkbox = GUICtrlCreateCheckbox("", 700, $path_7_y, 20, 20)
GUICtrlSetState($path_7_include_checkbox, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)

Global $mirror_button = GUICtrlCreateButton("WinSCP Mirror", 20, 325, 180)

Global $status_input = GUICtrlCreateInput("", 10, 380 - 25, 800 - 20, 20, $ES_READONLY, $WS_EX_STATICEDGE)

GUISetState(@SW_SHOW, $main_gui)

While True

	; GUI msg loop...
	$msg = GUIGetMsg()

	Switch $msg

		Case $GUI_EVENT_CLOSE

			GUIDelete($main_gui)
			ExitLoop

		Case $mirror_button

			; create the local directories
			DirCreateSafe(GUICtrlRead($path_1_local_input))
			DirCreateSafe(GUICtrlRead($path_2_local_input))
			DirCreateSafe(GUICtrlRead($path_3_local_input))
			DirCreateSafe(GUICtrlRead($path_4_local_input))
			DirCreateSafe(GUICtrlRead($path_5_local_input))
			DirCreateSafe(GUICtrlRead($path_6_local_input))
			DirCreateSafe(GUICtrlRead($path_7_local_input))

			; create the winscp backup script
			;Local $winscp_script = _
			;	"open scp://pi:raspberry@retropie/ -hostkey=""ssh-ed25519 255 cq4AFscwWDozkpWLAzpJmZak8M7USnljP1lO36e23Co="" -rawsettings Shell=""sudo%20su%20-""" & @CRLF & _
			;	"synchronize local -delete -mirror -transfer=binary -filemask=""config.txt"" D:\dwn\RetroPie\boot /boot" & @CRLF & _
			;	"synchronize local -delete -mirror -transfer=binary -filemask=""config.txt"" D:\dwn\RetroPie\home\pi\GPIOnext /home/pi/GPIOnext" & @CRLF & _
			;	"synchronize local -delete -mirror -transfer=binary D:\dwn\RetroPie\home\pi\RetroPie\BIOS /home/pi/RetroPie/BIOS" & @CRLF & _
			;	"synchronize local -delete -mirror -transfer=binary -filemask=""|*.iso"" D:\dwn\RetroPie\opt\retropie\configs /opt/retropie/configs" & @CRLF & _
			;	"synchronize local -delete -mirror -transfer=binary D:\dwn\RetroPie\home\pi\RetroPie\roms /home/pi/RetroPie/roms" & @CRLF & _
			;	"exit" & @CRLF


			Local $winscp_script = "open scp://" & GUICtrlRead($winscp_username_input) & ":" & GUICtrlRead($winscp_password_input) & "@" & GUICtrlRead($winscp_hostname_input) & "/ -hostkey=""" & GUICtrlRead($winscp_hostkey_input) & """ -rawsettings Shell=""sudo%20su%20-"" SendBuf=0 SshSimple=0" & @CRLF

			if GUICtrlRead($path_1_include_checkbox) = $GUI_CHECKED and StringLen(GUICtrlRead($path_1_local_input)) > 0 And StringLen(GUICtrlRead($path_1_remote_input)) > 0 Then

				Local $filemask = ""

				if StringLen(GUICtrlRead($path_1_filemask_input)) > 0 Then

					$filemask = " -filemask=""" & GUICtrlRead($path_1_filemask_input) & """"
				EndIf

				$winscp_script = $winscp_script & "synchronize local -delete -mirror -transfer=binary" & $filemask & " " & GUICtrlRead($path_1_local_input) & " " & GUICtrlRead($path_1_remote_input) & @CRLF
			EndIf

			if GUICtrlRead($path_2_include_checkbox) = $GUI_CHECKED and StringLen(GUICtrlRead($path_2_local_input)) > 0 And StringLen(GUICtrlRead($path_2_remote_input)) > 0 Then

				Local $filemask = ""

				if StringLen(GUICtrlRead($path_2_filemask_input)) > 0 Then

					$filemask = " -filemask=""" & GUICtrlRead($path_2_filemask_input) & """"
				EndIf

				$winscp_script = $winscp_script & "synchronize local -delete -mirror -transfer=binary" & $filemask & " " & GUICtrlRead($path_2_local_input) & " " & GUICtrlRead($path_2_remote_input) & @CRLF
			EndIf

			if GUICtrlRead($path_3_include_checkbox) = $GUI_CHECKED and StringLen(GUICtrlRead($path_3_local_input)) > 0 And StringLen(GUICtrlRead($path_3_remote_input)) > 0 Then

				Local $filemask = ""

				if StringLen(GUICtrlRead($path_3_filemask_input)) > 0 Then

					$filemask = " -filemask=""" & GUICtrlRead($path_3_filemask_input) & """"
				EndIf

				$winscp_script = $winscp_script & "synchronize local -delete -mirror -transfer=binary" & $filemask & " " & GUICtrlRead($path_3_local_input) & " " & GUICtrlRead($path_3_remote_input) & @CRLF
			EndIf

			if GUICtrlRead($path_4_include_checkbox) = $GUI_CHECKED and StringLen(GUICtrlRead($path_4_local_input)) > 0 And StringLen(GUICtrlRead($path_4_remote_input)) > 0 Then

				Local $filemask = ""

				if StringLen(GUICtrlRead($path_4_filemask_input)) > 0 Then

					$filemask = " -filemask=""" & GUICtrlRead($path_4_filemask_input) & """"
				EndIf

				$winscp_script = $winscp_script & "synchronize local -delete -mirror -transfer=binary" & $filemask & " " & GUICtrlRead($path_4_local_input) & " " & GUICtrlRead($path_4_remote_input) & @CRLF
			EndIf

			if GUICtrlRead($path_5_include_checkbox) = $GUI_CHECKED and StringLen(GUICtrlRead($path_5_local_input)) > 0 And StringLen(GUICtrlRead($path_5_remote_input)) > 0 Then

				Local $filemask = ""

				if StringLen(GUICtrlRead($path_5_filemask_input)) > 0 Then

					$filemask = " -filemask=""" & GUICtrlRead($path_5_filemask_input) & """"
				EndIf

				$winscp_script = $winscp_script & "synchronize local -delete -mirror -transfer=binary" & $filemask & " " & GUICtrlRead($path_5_local_input) & " " & GUICtrlRead($path_5_remote_input) & @CRLF
			EndIf

			if GUICtrlRead($path_6_include_checkbox) = $GUI_CHECKED and StringLen(GUICtrlRead($path_6_local_input)) > 0 And StringLen(GUICtrlRead($path_6_remote_input)) > 0 Then

				Local $filemask = ""

				if StringLen(GUICtrlRead($path_6_filemask_input)) > 0 Then

					$filemask = " -filemask=""" & GUICtrlRead($path_6_filemask_input) & """"
				EndIf

				$winscp_script = $winscp_script & "synchronize local -delete -mirror -transfer=binary" & $filemask & " " & GUICtrlRead($path_6_local_input) & " " & GUICtrlRead($path_6_remote_input) & @CRLF
			EndIf

			if GUICtrlRead($path_7_include_checkbox) = $GUI_CHECKED and StringLen(GUICtrlRead($path_7_local_input)) > 0 And StringLen(GUICtrlRead($path_7_remote_input)) > 0 Then

				Local $filemask = ""

				if StringLen(GUICtrlRead($path_7_filemask_input)) > 0 Then

					$filemask = " -filemask=""" & GUICtrlRead($path_7_filemask_input) & """"
				EndIf

				$winscp_script = $winscp_script & "synchronize local -delete -mirror -transfer=binary" & $filemask & " " & GUICtrlRead($path_7_local_input) & " " & GUICtrlRead($path_7_remote_input) & @CRLF
			EndIf

			$winscp_script = $winscp_script	& "exit" & @CRLF

			FileDelete(@ScriptDir & "\" & $app_name & ".log")
			FileDelete(@ScriptDir & "\" & $app_name & ".log.1")
			FileDelete(@ScriptDir & "\" & $app_name & ".txt")
			FileWrite(@ScriptDir & "\" & $app_name & ".txt", $winscp_script)

			; run the winscp backup script
;			ShellExecuteWait("C:\Program Files (x86)\WinSCP\WinSCP.exe", "/console /logsize=1*1M /log=""" & @ScriptDir & "\" & $app_name & ".log"" /ini=nul /script=""" & @ScriptDir & "\" & $app_name & ".txt""", @ScriptDir)
;			ShellExecuteWait("C:\Program Files (x86)\WinSCP\WinSCP.com", "/logsize=1*1M /log=""" & @ScriptDir & "\" & $app_name & ".log"" /ini=nul /script=""" & @ScriptDir & "\" & $app_name & ".txt""", @ScriptDir)
			Run(@ComSpec & ' /k ""C:\Program Files (x86)\WinSCP\WinSCP.com" /log="' & @ScriptDir & '\' & $app_name & '.log" /loglevel=2 /ini=nul /script="' & @ScriptDir & '\' & $app_name & '.txt""', @ScriptDir)

	EndSwitch
WEnd

Func DirCreateSafe($path)

	If StringLen($path) > 0 and FileExists($path) = False Then

		$result = DirCreate($path)

		if $result <> 1 Then

			MsgBox(262144, $app_name, "failed to create dir " & $path)
			Exit
		EndIf
	EndIf
EndFunc

