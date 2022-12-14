"Resource\SaveGamePanel.res"
{
	"SaveGamePanel"
	{
		"ControlName"		"CSaveGamePanel"
		"fieldName"		"SaveGamePanel"
		"xpos"		"0"
		"ypos"		"0"
		"wide"		"500"
		"tall"		"140"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"sound_depressed"	"UI/buttonclickrelease.wav"
		"sound_released"	"UI/buttonclickrelease.wav"
		"sound_rollover"	"UI/buttonrollover.wav"
	}
	"SaveGameScreenshotBackground"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"SaveGameScreenshotBackground"
		"xpos"		"14"
		"ypos"		"8"
		"wide"		"20"
		"tall"		"116"
		"fillcolor"	"0 0 0 255"
		"zpos"	"-1"
	}
	
	"SGBackUP"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"SGBackUP"
		"xpos"		"34"
		"ypos"		"8"
		"wide"		"188"
		"tall"		"8"
		"fillcolor"	"0 0 0 255"
		"zpos"	"-1"
	}
	"SGBackDN"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"SGBackDN"
		"xpos"		"34"
		"ypos"		"116"
		"wide"		"188"
		"tall"		"8"
		"fillcolor"	"0 0 0 255"
		"zpos"	"-1"
	}
	"SGBackRT"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"SGBackRT"
		"xpos"		"214"
		"ypos"		"16"
		"wide"		"8"
		"tall"		"100"
		"fillcolor"	"0 0 0 255"
		"zpos"	"-1"
	}
	
	"SaveGameImage"
	{
		"ControlName"		"CTGAImagePanel"
		"fieldName"		"SaveGameImage"
		"xpos"			"34"
		"ypos"			"16"
		"wide"			"180"
		"tall"			"100"
		"visible"		"1"
	}
	"AutoSaveImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"AutoSaveImage"
		"xpos"			"34"
		"ypos"			"16"
		"wide"			"180"
		"tall"			"100"
		"visible"		"0"
	}
	"ChapterLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"ChapterLabel"
		"xpos"		"230"
		"ypos"		"8"
		"wide"		"350"
		"tall"		"30"
		"font"		"ChSaveGameTitle"
		"textAlignment"	"north-west"
	}
	"ElapsedTimeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"ElapsedTimeLabel"
		"xpos"		"230"
		"ypos"		"35"
		"wide"		"300"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"textAlignment"	"north-west"
		"font"	"ChSaveGameTimeDate"
	}
	"FileTimeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"FileTimeLabel"
		"xpos"		"230"
		"ypos"		"35"
		"wide"		"300"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"textAlignment"	"north-west"
		"font"	"ChSaveGameTimeDate"
	}
	"TypeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"TypeLabel"
		"xpos"		"230"
		"ypos"		"59"
		"wide"		"300"
		"tall"		"24"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"north-west"
		"font"	"ChSaveGameType"
	}
}
