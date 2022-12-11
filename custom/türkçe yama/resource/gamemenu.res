"GameMenu"
{

	"1"
	{
		"label" "#GameUI_GameMenu_ResumeGame"
		"command" "ResumeGame"
		"OnlyInGame" "1"
	}
	"2"
	{
		"label" "#GameUI_GameMenu_NewGame"
		"command" "OpenNewGameDialog"
	}
	"3"
	{
		"label" "#GameUI_GameMenu_LoadGame"
		"command" "OpenLoadGameDialog"
	}
	"4"
	{
		"label" "#GameUI_GameMenu_SaveGame"
		"command" "OpenSaveGameDialog"
		"OnlyInGame" "1"
	}
	"5"
	{
		"label" "#GameUI_GameMenu_Options"
		"command" "OpenOptionsDialog"
	}
	"6"
	{
		"label" "#GameUI_GameMenu_Disconnect"
		"command" "engine save quick; startupmenu"
		"OnlyInGame" "1"
	}
	"7"
	{
		"label" "#GameUI_GameMenu_Quit"
		"command" "Quit"
	}
}

