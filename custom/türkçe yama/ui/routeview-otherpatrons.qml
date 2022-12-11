import QtQuick 2.9
import QtQuick.Controls 2.2
import CrowbarCollective 1.0

RouteView {
    OtherList { id: translatorsOther

		titleNameText: L10n.strings.menus.ourpatrons
        //visibleRows: 9

        anchors.centerIn: parent

        model: ListModel { id: translatorsOtherModel
            Component.onCompleted: {

                append({ type: "credits", label: "The One Freeman" });
                append({ type: "credits", label: "Knoster " });
                append({ type: "credits", label: "Kelly Martin" });
                append({ type: "credits", label: "Daniel Anthony" });
                append({ type: "credits", label: "KorteZZ Lambda" });
                append({ type: "credits", label: "Samuel Lewis" });
                append({ type: "credits", label: "Daria Podrezova" });
                append({ type: "credits", label: "Colonel Orange" });
                append({ type: "credits", label: "Harley Godfrey" });
                append({ type: "credits", label: "Tóth Milán" });
                append({ type: "credits", label: "Ondřej Mejzlík" });
                append({ type: "credits", label: "Gideon Ritter" });
                append({ type: "credits", label: "Hellman4710" });
                append({ type: "credits", label: "leromango " });
                append({ type: "credits", label: "Aras Sidlauskas" });
                append({ type: "credits", label: "h4r4ld " });
                append({ type: "credits", label: "Florian Thurn" });
                append({ type: "credits", label: "Will Wing" });
                append({ type: "credits", label: "Brett Redvers" });
                append({ type: "credits", label: "Boondock Free" });
                append({ type: "credits", label: "Smit " });
                append({ type: "credits", label: "Elan S." });
                append({ type: "credits", label: "Blake Williams" });
                append({ type: "credits", label: "your evil twin" });
                append({ type: "credits", label: "DrCI " });
                append({ type: "credits", label: "Андрей Горбанёв" });
                append({ type: "credits", label: "Ian Griffiths" });
                append({ type: "credits", label: "Joe" });
                append({ type: "credits", label: "Ian Buchanan" });
                append({ type: "credits", label: "Илья Булатецкий" });
                append({ type: "credits", label: "Игорь Владимирович" });
                append({ type: "credits", label: "Ruvin Blue" });
                append({ type: "credits", label: "Oliver" });
                append({ type: "credits", label: "warbrand2" });
                append({ type: "credits", label: "Saphire -sama" });
                append({ type: "credits", label: "Case Boux" });
                append({ type: "credits", label: "Дмитрий Кутузов" });
                append({ type: "credits", label: "ClassixGamer" });
                append({ type: "credits", label: "Marius Müller" });
                append({ type: "credits", label: "Wayward Scholar" });
                append({ type: "credits", label: "Сергей Шмелев" });
                append({ type: "credits", label: "The Gaming Council" });
                append({ type: "credits", label: "Almost Night" });
                append({ type: "credits", label: "programmist11180 " });
                append({ type: "credits", label: "Mikhfell " });
                append({ type: "credits", label: "Ashley Davis" });
                append({ type: "credits", label: "Darkwolf" });
                append({ type: "credits", label: "Chron1Cone" });
                append({ type: "credits", label: "Brandon Eldridge" });
                append({ type: "credits", label: "PAVEL KOTSIUBA" });
                append({ type: "credits", label: "atanda " });
                append({ type: "credits", label: "작고 날개달린 데코트" });
                append({ type: "credits", label: "Henning Schreiber" });
                append({ type: "credits", label: "TGC Duc" });
                append({ type: "credits", label: "Игорь Борисенко" });
                append({ type: "credits", label: "Jonathan Veiga" });
                append({ type: "credits", label: "Sveriges-Största-SG-Fan" });
                append({ type: "credits", label: "Rundas" });
                append({ type: "credits", label: "Trav!s" });
            }
        }

        Item {
            id: footerGraphicDescription
            height: Math.ceil(69 * Theme.heightScale)		// OptionsList Footer Height

            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

			property bool isButtonVisible: false

			Item {
				id: hintBGBase
				anchors.bottom: footerGraphicDescription.bottom
				anchors.left: footerGraphicDescription.left
				anchors.right: footerGraphicDescription.right
				
				height: 0
				width: footerGraphicDescription.width

				Rectangle {
					id: hintsBGSec
					height: hintBGBase.width + Math.ceil(2 * Theme.widthScale)
					width: Math.ceil(30 * Theme.heightScale)
					anchors.centerIn: hintBGBase
					anchors.verticalCenterOffset: Math.ceil(-20 * Theme.heightScale)
					
					rotation: -90
					opacity: Theme.opacity.bsRightPanel
					
					gradient: Gradient {
						GradientStop { position: 0.3; color:  "transparent" }
						GradientStop { position: 0.7; color: Theme.colors.highlight }
					}
				}
				
				Rectangle {
					id: hintsBG
					height: hintBGBase.width + Math.ceil(2 * Theme.widthScale)
					width: Math.ceil(39 * Theme.heightScale)
					anchors.centerIn: hintBGBase
					anchors.verticalCenterOffset: Math.ceil(-34 * Theme.heightScale)
					
					rotation: -90
					opacity: 0.9
					
					gradient: Gradient {
						GradientStop { position: 0.1; color:  "transparent" }
						GradientStop { position: 0.6; color: Theme.colors.subMenuHintPrimary }
					}
				}
			}
			
			Row {
				anchors.bottom: parent.bottom
				anchors.right: footerGraphicDescription.right
				anchors.rightMargin: Math.ceil(30 * Theme.widthScale)
				anchors.bottomMargin: Math.ceil(-10 * Theme.heightScale)

				Hint {
					id: hint1
					hintButtonText: appRoot.hintSelectIcon
					hintTextText: appRoot.isLeftMenuFocused ? L10n.strings.hints.hintselect : L10n.strings.hints.hintopen
					hintButtonColor: appRoot.hintSelectColor
					
					isHintVisible: appRoot.isLeftMenuFocused || footerGraphicDescription.isButtonVisible
				}
				Hint {
					id: hint2
					hintButtonText: appRoot.hintBackIcon
					hintTextText: L10n.strings.hints.hintback
					hintButtonColor: appRoot.hintBackColor
				}
				Hint {
					id: hint3
					hintButtonText: appRoot.hintCloseIcon
					hintTextText: L10n.strings.hints.hintclosemenu
					
					isHintVisible: appRoot.isInGame
				}
			}
        }


        function onSelectionChanged(modelSelected) {
			
			if ( modelSelected.link ) {
				footerGraphicDescription.isButtonVisible = true;
			} else {
				footerGraphicDescription.isButtonVisible = false;
			}
			
        }
    }
}
