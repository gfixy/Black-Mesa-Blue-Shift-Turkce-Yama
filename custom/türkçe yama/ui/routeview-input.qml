import QtQuick 2.9
import QtQuick.Controls 2.2
import CrowbarCollective 1.0

RouteView {
    OptionsList { id: mouseOptions

		titleNameText: L10n.strings.menus.input
        isLessRows: true

        anchors.centerIn: parent

        onRequestSettingsChange: {
            setValue(model, value);
        }


        // hack so we don't have to make slider components support ghost values
        readonly property QtObject getComplex: QtObject {
            function controller_horizontalSensitivity() {
                var setting = BlackMesaEngine.getConsoleVariableAsFloat("joy_yawsensitivity");

                return (-setting).toString();
            }
        }

        readonly property QtObject setComplex: QtObject {
            function controller_horizontalSensitivity(value) {
                BlackMesaEngine.setConsoleVariableAsFloat("joy_yawsensitivity", -Number(value));
            }
        }

        model: ListModel { id: mouseModel
            Component.onCompleted: {
                var labels = L10n.strings.options.labels,
                    values = L10n.strings.options.values;

                append({
                    label: L10n.strings.headers.mouseOptions,
                    type:  "separator"
                });
                
                append({
                        label: labels.mouse_invert,
                        type: "select",
                        valueType: "int",
                        value: "",
                        key: "mouse_invert",
                        cvar: "m_pitch",
                        options: [
                            { label: values.off, value: "0.022" },
                            { label: values.on, value: "-0.022" }
                        ]
                });

                append({
                        label: labels.mouse_raw,
                        type: "select",
                        valueType: "int",
                        value: "",
                        key: "mouse_raw",
                        cvar: "m_rawinput",
                        options: [
                            { label: values.off, value: "0" },
                            { label: values.on, value: "1" }
                        ]
                });

                append({
                        label: labels.mouse_accelerationswitch,
                        type: "select",
                        valueType: "int",
                        value: "",
                        key: "mouse_accelerationswitch",
                        cvar: "m_customaccel",
                        options: [
                            { label: values.off, value: "0" },
                            { label: values.on, value: "3" }
                        ]
                });

                append({
                        label: labels.mouse_sensitivity,
                        type: "slider",
                        valueType: "real",
                        value: "",
                        key: "mouse_sensitivity",
                        cvar: "sensitivity",
                        minValue: 0.1,
                        maxValue: 6.0,
                        precision: 1,
                        formatter: "decimal",
                        stepValue: 0.1
                });

                append({
                        label: labels.mouse_acceleration,
                        type: "slider",
                        valueType: "real",
                        value: "",
                        key: "mouse_acceleration",
                        cvar: "m_customaccel_exponent",
                        minValue: 1.0,
                        maxValue: 1.4,
                        precision: 2,
                        formatter: "decimal",
                        stepValue: 0.01
                });

                    append({
                        label: labels.mouse_zoomAcceleration,
                        type: "slider",
                        valueType: "real",
                        value: "",
                        key: "mouse_zoomAcceleration",
                        cvar: "zoom_sensitivity_ratio",
                        minValue: 0,
                        maxValue: 2.0,
                        precision: 2,
                        formatter: "decimal",
                        stepValue: 0.05
                    });
                
                // ----------------------------------------------
                
                append({
                    label: L10n.strings.headers.controllerOptions,
                    type:  "separator"
                });
                    
                    // Joystick rumble 
                    append({
                        disabled: false,
                        label: labels.controller_rumble,
                        type: "slider",
                        valueType: "int",
                        value: "",
                        key: "controller_rumble",
                        cvar: "cl_rumblescale",
                        minValue: 0.0,
                        maxValue: 1.0,
                        precision: 1,
                        formatter: "decimal",
                        stepValue: 0.1
                    });
                
                    // Joystick pitch-reverse ( vertical axis )
                append({
                        disabled: false,
                        label: labels.controller_invert,
                        type: "select",
                        valueType: "int",
                        value: "",
                        key: "controller_invert",
                        cvar: "joy_inverty",
                        options: [
                            { label: values.no, value: "0" },
                            { label: values.yes, value: "1" }
                        ]
                });

                    append({
                        disabled: false,
                        label: labels.controller_horizontalSensitivity,
                        type: "slider",
                        valueType: "int",
                        value: "",
                        key: "controller_horizontalSensitivity",
                        //cvar: "joy_yawsensitivity",
                        minValue: 0.5,
                        maxValue: 7.0,
                        precision: 1,
                        formatter: "decimal",
                        stepValue: 0.1
                    });

                    append({
                        disabled: false,
                        label: labels.controller_verticalSensitivity,
                        type: "slider",
                        valueType: "int",
                        value: "",
                        key: "controller_verticalSensitivity",
                        cvar: "joy_pitchsensitivity",
                        minValue: 0.5,
                        maxValue: 7.0,
                        precision: 1,
                        formatter: "decimal",
                        stepValue: 0.1
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
					hintButtonText: appRoot.isLeftMenuFocused ? appRoot.hintSelectIcon : appRoot.hintLRIcon
					hintTextText: appRoot.isLeftMenuFocused ? L10n.strings.hints.hintselect : L10n.strings.hints.hintchange
					hintButtonColor: appRoot.isLeftMenuFocused ? appRoot.hintSelectColor : Theme.colors.text
					
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

//This could be used for menu navigation hints
		
        function onSelectionChanged(modelSelected) {
			
			if ( modelSelected === "select" || modelSelected === "slider" ) {
				footerGraphicDescription.isButtonVisible = true;
			} else {
				footerGraphicDescription.isButtonVisible = false;
			}
			
        }

    }
}
