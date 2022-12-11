import QtQuick 2.9
import CrowbarCollective 1.0

RouteView { id: index
    property bool isInGame: false
    
    property bool isWidescreen: appRoot.width / appRoot.height >= 1.586

    property int logoVerticalCenterOffset: Math.ceil(-136 * Theme.heightScale)
    property int childTopMargin: Math.ceil(20 * Theme.heightScale)
    property int childLogoMargin: isWidescreen ? Math.ceil(160 * Theme.widthScale) :  Math.ceil(30 * Theme.widthScale)
    property int childMargin: isWidescreen ? Math.ceil(120 * Theme.widthScale) :  Math.ceil(20 * Theme.widthScale)
	
    property int titleNameFontSize: Math.ceil(80 * Theme.heightScale)
    property int hintFontSize: Math.ceil(24 * Theme.heightScale)

     anchors.fill: parent
    
    Timer {
        id: autoLogoTimer
        interval: 1
        repeat: false
        running: true
        triggeredOnStart: false

        onTriggered: {
			//This one is for changing icons in menu hints
			
			//In order:
			
			//DS4 DPAD LEFT-RIGHT	- "!"
			//DS4 DPAD UP-DOWN		- "^"
			//DS4 DPAD RIGHT		- "_"
			
			//DS4 Cross				- "*"
			//DS4 Circle			- "+"
			//DS4 Square			- ","
			//DS4 Triangle			- "-"
			
			//DS4 Options			- ";"
			//DS4 Touchpad			- "="
			
			
			//XBOX DPAD LEFT-RIGHT	- "("
			//XBOX DPAD UP-DOWN		- "'"
			//XBOX DPAD RIGHT		- ")"
			
			//XBOX A				- "#"
			//XBOX B				- "$"
			//XBOX X				- "%"
			//XBOX Y				- "&"
			
			//XBOX Start			- ":"
			//XBOX Back				- "?"
			
			
			//KB Backspace			- " "
			//KB ENTER				- "a"
			//KB DEL				- "p"
			
			//KB UP					- "q"
			//KB DOWN				- "r"
			//KB LEFT				- "t"
			//KB RIGHT				- "s"
			
			//KB ESCAPE				- "y"
			//KB TAB				- "©"
			
            appRoot.iconsType = BlackMesaEngine.getConsoleVariableAsInt("hud_draw_fixed_reticle");
			
			appRoot.hintsIconTypeChange();
			
			//appRoot.isIndexHints = true;
		
			//workaround, you have to open index menu to fix the weapon choosing panels
			var fixTheDamnHUDW = BlackMesaEngine.getConsoleVariableAsBoolean("hud_fastswitch");
			if ( fixTheDamnHUDW === 2 ) {
				BlackMesaEngine.setConsoleVariableAsString( "hud_fastswitch", 0 );
			}
			
			
			appRoot.playerName = BlackMesaEngine.getConsoleVariableAsString("name");
        }
    }
	
    Item { id: indexMenu
        anchors.fill: parent
    
        Item { id: root
            anchors.fill: parent

            property int logoDimension: Math.ceil(200 * Theme.heightScale)
            
            Image { id: logo
                width: parent.width
                height: root.logoDimension
				visible: !appRoot.isConsoleOpened
				
				source: "image://game/ui/images/logo" + Theme.setImgDef
				
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Image.AlignLeft

                anchors.left: parent.left
                anchors.leftMargin: childLogoMargin
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: logoVerticalCenterOffset
            }
            

			Column { id: buttonsContainer
			
                anchors.top: logo.bottom
                anchors.topMargin: childTopMargin
                anchors.left: parent.left
                anchors.leftMargin: childMargin
				
				spacing: Math.ceil(10 * Theme.heightScale)
			
				BSButton { id: continueButton
					objectName: "ui--navigation:bsbutton:level_0"
					visible: BlackMesaUtils.getSaveGames()[0] || isInGame
					text: isInGame ? L10n.strings.buttons.resume : L10n.strings.buttons.continue + " (" + Theme.getDateTimeMainMenuString(BlackMesaUtils.getSaveGames()[0].dateCreated) + ")"
					callback: function() {
						if (!isInGame) {
							index.loadGameRequest(BlackMesaUtils.getSaveGames()[0])
						} else {
							BlackMesaEngine.executeClientCommand('gameui_hide');
						}
					}
					onClicked: {
						if (!isInGame ) {
							index.loadGameRequest(BlackMesaUtils.getSaveGames()[0])
						} else {
							BlackMesaEngine.executeClientCommand('gameui_hide');
						}
					}
					Keys.onLeftPressed: { return; }
					Keys.onRightPressed: { return; }
					Keys.onPressed: {
						if ( event.key === Qt.Key_Escape || event.key === Qt.Key_Backspace ) {
							if ( isInGame ) {
								BlackMesaEngine.executeClientCommand('gameui_hide');
								return;
							} else {
								Sound.playEffect(Theme.sounds.buttonClicked);
								index.routeRequest(Routes.quit.name);
								return;
							}
						}
					}
				}
                    
				BSButton { id: quickButton
					visible: isInGame
					objectName: "ui--navigation:bsbutton:level_0"
					text: L10n.strings.buttons.quicksave
					callback: function() { index.saveGameRequest("quick"); }
					onClicked: { index.saveGameRequest("quick"); }

					Keys.onLeftPressed: { return; }
					Keys.onRightPressed: { return; }
					Keys.onPressed: {
						if ( event.key === Qt.Key_Escape || event.key === Qt.Key_Backspace ) {
							if ( isInGame ) {
								BlackMesaEngine.executeClientCommand('gameui_hide');
								return;
							} else {
								Sound.playEffect(Theme.sounds.buttonClicked);
								index.routeRequest(Routes.quit.name);
								return;
							}
						}
					}
				}
				
				BSButton { id: newgameButton
					objectName: "ui--navigation:bsbutton:level_0"
					text: ( !isInGame && !BlackMesaUtils.getSaveGames()[0] ) ? L10n.strings.menus.startnewgame : L10n.strings.menus.campaign
					callback: function() {
						if ( isInGame ) {
							appRoot.isIndexHints = false;
						}
						index.routeRequest(Routes.bscampaign.name);
						if ( !isInGame && !BlackMesaUtils.getSaveGames()[0] ) {
							appRoot.isSubMenuOpenedFunction( true );
						}
					}
					onClicked: {
						if ( isInGame ) {
							appRoot.isIndexHints = false;
						}
						index.routeRequest(Routes.bscampaign.name);
						if ( !isInGame && !BlackMesaUtils.getSaveGames()[0] ) {
							appRoot.isSubMenuOpenedFunction( true );
						}
					}

					Keys.onLeftPressed: { return; }
					Keys.onRightPressed: { return; }
					Keys.onPressed: {
						if ( event.key === Qt.Key_Escape || event.key === Qt.Key_Backspace ) {
							if ( isInGame ) {
								BlackMesaEngine.executeClientCommand('gameui_hide');
								return;
							} else {
								Sound.playEffect(Theme.sounds.buttonClicked);
								index.routeRequest(Routes.quit.name);
								return;
							}
						}
					}
				}
                    
				BSButton { id: optionsButton
					objectName: "ui--navigation:bsbutton:level_0"
					text: L10n.strings.menus.options
					callback: function() {
						if ( isInGame ) {
							appRoot.isIndexHints = false;
						}
						index.routeRequest(Routes.bsoptions.name);
					}
					onClicked: {
						if ( isInGame ) {
							appRoot.isIndexHints = false;
						}
						index.routeRequest(Routes.bsoptions.name);
					}

					Keys.onLeftPressed: { return; }
					Keys.onRightPressed: { return; }
					Keys.onPressed: {
						if ( event.key === Qt.Key_Escape || event.key === Qt.Key_Backspace ) {
							if ( isInGame ) {
								BlackMesaEngine.executeClientCommand('gameui_hide');
								return;
							} else {
								Sound.playEffect(Theme.sounds.buttonClicked);
								index.routeRequest(Routes.quit.name);
								return;
							}
						}
					}
				}

				BSButton { id: quitButton
					objectName: "ui--navigation:bsbutton:level_0"
					text: L10n.strings.buttons.quit
					callback: function() {
						if ( isInGame ) {
							appRoot.isIndexHints = false;
						}
						index.routeRequest(Routes.quit.name)
					}
					onClicked: {
						if ( isInGame ) {
							appRoot.isIndexHints = false;
						}
						index.routeRequest(Routes.quit.name)
					}

					Keys.onLeftPressed: { return; }
					Keys.onRightPressed: { return; }
					Keys.onPressed: {
						if ( event.key === Qt.Key_Escape || event.key === Qt.Key_Backspace ) {
							if ( isInGame ) {
								BlackMesaEngine.executeClientCommand('gameui_hide');
								return;
							} else {
								Sound.playEffect(Theme.sounds.buttonClicked);
								index.routeRequest(Routes.quit.name);
								return;
							}
						}
					}
				}
            }   //buttonsContainer
        }   //root
    }   //indexMenu
    
}   //index
