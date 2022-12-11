///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"OffWhite"			"221 221 221 255"
		"DullWhite"			"190 190 190 255"
		"OrangeMenu"			"43 127 204 255"
		"Orange"			"43 127 204 255"		//"0 132 255 255"
		"OrangeDim"			"43 127 204 255"
		"OrangeCheck"			"43 127 204 198"
		"Blue"				"0 125 230 255"
		"TransparentBlack"	"0 0 0 128"
		"TransparentBlackList"	"54 54 54 255"
		"Black"				"0 0 0 255"

		"Blank"				"0 0 0 0"
		
		"SteamLightGreen"	"0 191 255 100"
		"AchievementsLightGrey"		"79 79 79 255"
		"AchievementsDarkGrey"		"55 55 55 255"
		"AchievementsInactiveFG"	"130 130 130 255"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"89 90 91 50"	// the lit side of a control
		Border.Dark						"89 90 91 50"		// the dark/unlit side of a control
		Border.Selection				"Orange"			// the additional border color for displaying the default/selected button

		Button.TextColor				"White"
		Button.BgColor					"56 66 79 200"
		Button.ArmedBgColor				"Orange"
		Button.ArmedFgColor				"White"
		Button.DepressedTextColor		"White"
		Button.DepressedBgColor			"Blank"
		Button.FocusBorderColor			"Blank"

		CheckButton.TextColor			"OffWhite"
		CheckButton.SelectedTextColor		"White"
		CheckButton.BgColor			"TransparentBlack"
		CheckButton.Border1  			"Orange" 		// the left checkbutton border
		CheckButton.Border2  			"OrangeCheck"		// the right checkbutton border
		CheckButton.Check			"Orange"	// color of the check itself
		CheckButton.HighlightFgColor		"Orange"
		CheckButton.ArmedBgColor		"Blank"
		CheckButton.DepressedBgColor		"Blank"
		CheckButton.DisabledBgColor	   	"TransparentBlack"
				
		ComboBoxButton.ArrowColor		"DullWhite"
		ComboBoxButton.ArmedArrowColor	"Orange"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.TitleTextInsetX			16
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		
		Frame.BgColor					"56 66 79 200"
		Frame.OutOfFocusBgColor			"56 66 79 156"
		
		Frame.FocusTransitionEffectTime	"0.2"
		Frame.TransitionEffectTime		"0.2"
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"Blank"
		FrameGrip.Color2				"Blank"
		FrameTitleButton.FgColor		"OffWhite"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"Blank"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.Font				"PanelTitle"
		FrameTitleBar.TextColor			"White"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"255 255 255 192"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"DullWhite"
		Label.TextColor					"OffWhite"
		Label.TextBrightColor			"White"
		Label.SelectedTextColor			"Orange"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"110 110 110 255"
		Label.DisabledFgColor2			"Blank"

		ListPanel.TextColor					"OffWhite"
		ListPanel.TextBgColor				"Blank"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"White"
		ListPanel.SelectedBgColor			"Orange"
		ListPanel.SelectedOutOfFocusBgColor	"Orange"
		ListPanel.EmptyListInfoTextColor	"OffWhite"

		Menu.TextColor					"OffWhite"
		Menu.BgColor					"55 55 55 255"
		Menu.ArmedTextColor				"White"
		Menu.ArmedBgColor				"Orange"
		Menu.TextInset					"6"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"Blank"

		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"OffWhite"
		PropertySheet.SelectedTextColor	"Orange"
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another

		RadioButton.TextColor			"OffWhite"
		RadioButton.SelectedTextColor	"Orange"
		RadioButton.ArmedTextColor	"Orange"

		RichText.TextColor				"OffWhite"
		RichText.BgColor				"TransparentBlack"
		RichText.SelectedTextColor		"White"
		RichText.SelectedBgColor		"Orange"

		ScrollBar.Wide					17

		ScrollBarButton.FgColor				"White"
		ScrollBarButton.BgColor				"Blank"
		ScrollBarButton.ArmedFgColor		"Orange"
		ScrollBarButton.ArmedBgColor		"Blank"
		ScrollBarButton.DepressedFgColor	"White"
		ScrollBarButton.DepressedBgColor	"Blank"

		ScrollBarSlider.FgColor				"TransparentBlack"			// nob color
		ScrollBarSlider.BgColor				"TransparentBlack"		//"255 255 255 64" slider background color

		SectionedListPanel.HeaderTextColor	"White"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"89 90 91 100"
		SectionedListPanel.TextColor		"DullWhite"
		SectionedListPanel.BrightTextColor	"White"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"White"
		SectionedListPanel.SelectedBgColor				"Orange"
		SectionedListPanel.OutOfFocusSelectedTextColor	"White"
		SectionedListPanel.OutOfFocusSelectedBgColor	"Orange"

		Slider.NobColor				"37 122 228 100"
		Slider.TextColor			"180 180 180 255"
		Slider.TrackColor			"31 31 31 255"
		Slider.DisabledTextColor1	"117 117 117 255"
		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"OffWhite"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"OffWhite"
		TextEntry.DisabledTextColor	"DullWhite"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"White"
		TextEntry.SelectedBgColor	"Orange"
		TextEntry.OutOfFocusSelectedBgColor	"Orange"
		TextEntry.FocusEdgeColor	"0 0 0 196"

		ToggleButton.SelectedTextColor	"White"

		Tooltip.TextColor			"OrangeDim"
		Tooltip.BgColor				"TransparentBlackList"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		MainMenu.TextColor			"White"
		MainMenu.ArmedTextColor		"OrangeMenu"
		MainMenu.DepressedTextColor	"89 145 192 255"
		MainMenu.MenuItemHeight		"48"
		MainMenu.Inset				"128"
		MainMenu.Backdrop			"0 0 0 196"

		Console.TextColor			"OffWhite"
		Console.DevTextColor		"White"

		NewGame.TextColor			"White"
		NewGame.FillColor			"0 0 0 255"
		NewGame.SelectionColor		"Orange"			[$WIN32]
		NewGame.SelectionColor		"0 0 0 255"			[$X360]
		NewGame.DisabledColor		"128 128 128 196"

		MessageDialog.MatchmakingBG			"46 43 42 255"	[$X360]
		MessageDialog.MatchmakingBGBlack			"22 22 22 255"	[$X360]
		
		MatchmakingMenuItemTitleColor			"200 184 151 255"	[$X360]
		MatchmakingMenuItemDescriptionColor		"200 184 151 255"	[$X360]

		"QuickListBGDeselected"		"AchievementsDarkGrey"
	 	"QuickListBGSelected"           "AchievementsLightGrey"
	}

	//////////////////////// BITMAP FONT FILES /////////////////////////////
	//
	// Bitmap Fonts are ****VERY*** expensive static memory resources so they are purposely sparse
	BitmapFontFiles
	{
		// UI buttons, custom font, (256x64)
		"Buttons"		"materials/vgui/fonts/buttons_32.vbf"
	}

	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		// fonts are used in order that they are listed
		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"10"
				"weight"	"500"
				"antialias" "1"
			}
		}
		// fonts are used in order that they are listed
		"DebugFixedSmall"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"11"
				"weight"	"500"
				"antialias" "1"
				"dropshadow" "1"
			}
		}
		"DefaultFixedOutline"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Verdana" [$POSIX]
				"tall"		"14" [$LINUX]
				"tall"		"11" [$OSX]
				"tall"		 "10"
				"tall_lodef" "15"
				"tall_hidef" "20"
				"weight"	 "0"
				"antialias"     "1"
				"outline"	 "1"
			}
		}
		"Default"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"21"
				"antialias" "1"
				"dropshadow" "1"
				"weight"	 "500"
			}
		}
		"DefaultBold"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"tall"		"20"
				"antialias"     "1"
				"weight"	"500"
				"dropshadow" "1"
			}
		}
		"DefaultUnderline"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"19"
				"weight"	"500"
				"underline" "1"
				"antialias"     "1"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"21"
				"weight"	"500"
				"antialias"     "1"
				"dropshadow" "1"
			}
		}
		"DefaultSmallDropShadow"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"21"
				"weight"	"500"
				"antialias"     "1"
				"dropshadow" "1"
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"12"
				"antialias"     "1"
				"weight"	"500"
				"dropshadow" "1"
			}
		}
		"DefaultLarge"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"19"
				"antialias"     "1"
				"weight"	"500"
			}
		}
		
		"MarlDefault"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"16"
				"antialias" "1"
				"dropshadow" "1"
				"weight"	"500"
			}
		}
		"MarlDefaultBold"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"21"
				"antialias" "1"
				"weight"	"500"
				"dropshadow" "1"
			}
		}
		
		"UiBold"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"13"
				"weight"	"500"
				"antialias"     "1"
			}
		}
		
		"ChSaveGameTitle"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"25"
				"weight"	"500"
				"antialias" "1"
				"dropshadow" "1"
				//"custom" "1"
			}
		}
		"ChSaveGameTimeDate"
		{
			"1"	[$WIN32]
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"24"
				"weight"	"500"
				"antialias" "1"
				"dropshadow" "1"
			}
		}
		"ChSaveGameType"
		{
			"1"	[$WIN32]
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"23"
				"weight"	"500"
				"antialias" "1"
				"dropshadow" "1"
			}
		}
		
		"ChNewGameTitle"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"27"
				"weight"	"500"
				"dropshadow" "1"
				"antialias" "1"
				//"custom" "1"
			}
		}
		
		"ChNewGameNumber"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"24"
				"weight"	"500"
				"dropshadow" "1"
				"antialias" "1"
				//"custom" "1"
			}
		}
		
		"PanelTitle"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"27"
				"antialias" "1"
				"weight"	"500"
				"dropshadow" "1"
				"scanlines"	"1"
				//"custom" "1"
			}
		}

		// This changes the Main Menu fonts. 
		"MenuLarge"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"25"
				"weight"	"500"
				"yres"		"1 770"
				"antialias" "1"
			}
			"2"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"30"
				"weight"	"500"
				"yres"		"771 1000"
				"antialias" "1"
			}
			"3"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"36"
				"weight"	"500"
				"yres"		"1001 1210"
				"antialias" "1"
			}
			"4"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"50"
				"weight"	"500"
				"yres"		"1211 1500"
				"antialias" "1"
			}
			"5"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"59"
				"weight"	"500"
				"yres"		"1501 10000"
				"antialias" "1"
			}
		}
		"AchievementTitleFont"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"25"
				"weight"	"500"
				"antialias" "1"
				"outline" "1"
			}
		}
		"AchievementTitleFontSmaller"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"19"
				"weight"	"500"
				"antialias" "1"
				//"outline" "1"
			}
		}
		"AchievementDescriptionFont"
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"15"
				"weight"	"500"
				"antialias" "1"
				"outline" "1"
				"yres"		"0 480"
			}
			"2"
			{
				"name"		"RajdhaniNanumGothic"
				"tall"		"20"
				"weight"	"500"
				"antialias" "1"
				"outline" "1"
				"yres"	 "481 10000"
			}
		}
		
		GameUIButtons
		{
			"1"	[$X360]
			{
				"bitmap"	"1"
				"name"		"Buttons"
				"scalex"	"0.63"
				"scaley"	"0.63"
				"scalex_hidef"	"1.0"
				"scaley_hidef"	"1.0"
				"scalex_lodef"	"0.75"
				"scaley_lodef"	"0.75"
			}
		}
		"ConsoleText"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Verdana" [$POSIX]
				"tall"		"18"
				"antialias"     "1"
				"weight"	"500"
			}
		}

		// this is the symbol font
		"Marlett"
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"21"
				"weight"	"500"
				"symbol"	"1"
				"antialias"     "1"
			}
		}

		"Trebuchet24"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"24"
				"weight"	"900"
				"antialias"     "1"
			}
		}

		"Trebuchet20"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"20"
				"weight"	"900"
				"antialias"     "1"
			}
		}

		"Trebuchet18"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"18"
				"weight"	"900"
				"antialias"     "1"
			}
		}

		// HUD numbers
		// We use multiple fonts to 'pulse' them in the HUD, hence the need for many of near size
		"HUDNumber"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"40"
				"weight"	"900"
			}
		}
		"HUDNumber1"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"41"
				"weight"	"900"
			}
		}
		"HUDNumber2"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"42"
				"weight"	"900"
			}
		}
		"HUDNumber3"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"43"
				"weight"	"900"
			}
		}
		"HUDNumber4"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"44"
				"weight"	"900"
			}
		}
		"HUDNumber5"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"45"
				"weight"	"900"
			}
		}
		"DefaultFixed"
		{
			"1"
			{
				"name"		 "RajdhaniNanumGothic"
				"name"		 "Verdana" [$POSIX]
				"tall"		"21" [$POSIX]
				"tall"		"20"
				"weight"	"500"
				"antialias"     "1"
			}
		}

		"DefaultFixedDropShadow"
		{
			"1"
			{
				"name"		 "RajdhaniNanumGothic"
				"name"		 "Verdana" [$OSX]
				"name"		 "Courier" [$LINUX]
				"tall"		"21"
				"weight"	"500"
				"antialias"     "1"
				"dropshadow" "1"
			}
		}


		TitleFont
		{
			"1"
			{
				"name"		"BlackMesa"
				"tall"		"72"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}

		TitleFont2
		{
			"1"
			{
				"name"		"BlackMesa"
				"tall"		"120"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}

		StatsTitle	[$WIN32]
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"2000"
				"tall"			"20"
				"antialias"		"1"
			}
		}
		
		StatsText	[$WIN32]
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"2000"
				"tall"			"18"
				"antialias"		"1"
			}
		}
		
		AchievementItemTitle	[$WIN32]
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"500"
				"tall"			"16" [!$POSIX]
				"tall"			"18" [$POSIX]
				"antialias"		"1"
			}
		}

		AchievementItemDate	[$WIN32]
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"500"
				"tall"			"16"
				"antialias"		"1"
			}
		}

		
		StatsPageText
		{
			"1"
			{
				"name"		"Arial" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"1500"
				"tall"			"14" [!$POSIX]
				"tall"			"16" [$POSIX]
				"antialias"		"1"
			}
		}
		
		AchievementItemTitleLarge	[$WIN32]
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"weight"		"500"
				"tall"			"24" [!$POSIX]
				"tall"			"24" [$POSIX]
				"antialias"		"1"
			}
		}
		
		AchievementItemDescription	[$WIN32]
		{
			"1"
			{
				"name"		"RajdhaniNanumGothic" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"weight"		"500"
				"tall"			"19" [!$POSIX]
				"tall"			"19" [$POSIX]
				"antialias"		"1"
			}
		}

		
		"ServerBrowserTitle"
		{
			"1"
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"35"
				"tall_lodef"	"40"
				"weight"	"500"
				"additive"	"0"
				"antialias" "1"
			}
		}

		"ServerBrowserSmall"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"480 599"
				"antialias"     "1"
			}
			"2"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"600 767"
				"antialias"     "1"
			}
			"3"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"768 1023"
				"antialias"	"1"
			}
			"4"
			{
				"name"		"Tahoma"
				"tall"		"19"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1024 1199"
				"antialias"	"1"
			}
			"5"
			{
				"name"		"Tahoma"
				"tall"		"19"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1200 6000"
				"antialias"	"1"
			}
		}
	}

	//
	//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder		DepressedBorder
		ButtonBorder	RaisedBorder
		ComboBoxBorder	DepressedBorder
		MenuBorder		RaisedBorder
		BrowserBorder	DepressedBorder
		PropertySheetBorder	RaisedBorder

		FrameBorder
		{
			// rounded corners for frames
			"backgroundtype" "2"
		}

		DepressedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		RaisedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		
		TitleButtonBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDisabledBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDepressedBorder
		{
			"backgroundtype" "0"
		}

		ScrollBarButtonBorder
		{
			"inset" "2 2 0 0" [!$OSX]
			"inset" "-3 2 0 0" [$OSX]
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		
		ScrollBarButtonDepressedBorder
		{
			"inset" "2 2 0 0" [!$OSX]
			"inset" "-3 2 0 0" [$OSX]
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		TabBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

		}

		TabActiveBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		// this is the border used for default buttons (the button that gets pressed when you hit enter)
		ButtonKeyFocusBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}
			Top
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}
			Right
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ButtonDepressedBorder
		{
			"inset" "2 1 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
	}

	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	"CustomFontFiles"
	{
		
		"1"		"resource/blackmesa.ttf"
		
		"2"		"resource/raleway.ttf"
		"3"		"ui/fonts/SymbolNew.ttf"
		"9"
		{
			"font" "ui/fonts/RajdhaniNanumGothic-Regular.ttf"
			"name" "RajdhaniNanumGothic"
            "english"
            {
                "range" "0x0000 0xFFFF"
            }
            "russian"
            {
                "range" "0x0000 0xFFFF"
            }
            "ukrainian"
            {
                "range" "0x0000 0xFFFF"
            }
            "german"
            {
                "range" "0x0000 0xFFFF"
            }
            "french"
            {
                "range" "0x0000 0xFFFF"
            }
            "czech"
            {
                "range" "0x0000 0xFFFF"
            }
            "vietnamese"
            {
                "range" "0x0000 0xFFFF"
            }
            "koreana"
            {
                "range" "0x0000 0xFFFF"
            }
            "korean"
            {
                "range" "0x0000 0xFFFF"
            }
            "tchinese"
            {
                "range" "0x0000 0xFFFF"
            }
        }
		
	}
}
