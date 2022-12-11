import QtQuick 2.9
import QtQuick.Controls 2.2
import CrowbarCollective 1.0

RouteView {
    OtherList { id: translatorsOther

		titleNameText: L10n.strings.menus.translators
        //visibleRows: 9

        anchors.centerIn: parent

        model: ListModel { id: translatorsOtherModel
            Component.onCompleted: {
                var labels = L10n.strings.options.values;


            // ----------------------------------------------
                append({
                    label: labels.langUkrainian,
                    type: "title"
                });
                append({
                    type: "credits",
                    label: "Faber",
                    tlflag: "ua",
                    avatar: "fabDescr"
                });
            // ----------------------------------------------
                append({
                    label: labels.langRussian,
                    type: "title"
                });
                append({
                    type: "credits",
                    label: "StavaasEVG",
                    tlflag: "ru",
                    avatar: "stavDescr"
                });
            // ----------------------------------------------
                append({
                    label: labels.langGerman,
                    type: "title"
                });
                append({
                    type: "credits",
                    label:"Cyv0",
                    tlflag: "de",
                    avatar: "cyvoDescr"
                });
                append({
                    type: "credits",
                    label:"Itzylol#2163",
                    avatar: "tl-de1"
                });
                append({
                    type: "credits",
                    label:"itchyfinger#4959",
                    avatar: "tl-de2"
                });
                append({
                    type: "credits",
                    label:"ArtieS#2768",
                    avatar: "tl-de3"
                });
            // ----------------------------------------------
                append({
                    label: labels.langCzech,
                    type: "title"
                });
                append({
                    type: "credits",
                    label:"Fjuro#0179",
                    avatar: "tl-cz"
                });
            // ----------------------------------------------
                append({
                    label: labels.langKorean,
                    type: "title"
                });
                append({
                    type: "credits",
                    label:"ant7575ant#1769",
                    avatar: "tl-kr"
                });
            // ----------------------------------------------
                append({
                    label: labels.langChineseTraditional,
                    type: "title"
                });
                append({
                    type: "credits",
                    label:"Plazehorta#4287",
                    avatar: "tl-tch"
                });
            // ----------------------------------------------
                append({
                    label: labels.langVietnamese,
                    type: "title"
                });
                append({
                    type: "credits",
                    label:"Karyan | Road to 1k lv book#7794",
                    avatar: "tl-vie"
                });
            // ----------------------------------------------
                append({
                    label: labels.langFrench,
                    type: "title"
                });
                append({
                    type: "credits",
                    label:"TheBinaryBuster#5398",
                    avatar: "tl-fr1"
                });
                append({
                    type: "credits",
                    label:"alex.du59#6902",
                    //avatar: "tl-fr2"
                });
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
