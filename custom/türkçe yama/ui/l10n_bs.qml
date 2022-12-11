﻿pragma Singleton

import QtQuick 2.9
import CrowbarCollective 1.0

QtObject {
    property variant strings: _getStringMap()

    function getString(key) {
        return BlackMesaEngine.getLocalizedString(key);
    }

    function refreshStrings() {
        strings = _getStringMap();
    }

    function _getStringMap() {
        return Object.freeze({
            maps: Object.freeze({
                chapter1: getString("#BSQTUI_Maps_Chapter1_Title"),
                chapter2: getString("#BSQTUI_Maps_Chapter2_Title"),
                chapter3: getString("#BSQTUI_Maps_Chapter3_Title"),
                chapter4: getString("#BSQTUI_Maps_Chapter4_Title"),
                chapter5: getString("#BSQTUI_Maps_Chapter5_Title"),
                chapter6: getString("#BSQTUI_Maps_Chapter6_Title"),
                chapter7: getString("#BSQTUI_Maps_Chapter7_Title"),
                chapter8: getString("#BSQTUI_Maps_Chapter8_Title")
            }),

            hints: Object.freeze({

                bindingcellhovered: getString("#BSQTUI_Hint_BindingCellHovered"),
                hintselect: getString("#BSQTUI_Hint_Select"),
                hintchange: getString("#BSQTUI_Hint_Change"),
                hintstart: getString("#BSQTUI_Hint_Start"),
                hintload: getString("#BSQTUI_Hint_Load"),
                hintsave: getString("#BSQTUI_Hint_Save"),
                hintoverwrite: getString("#BSQTUI_Hint_Overwrite"),
                hintdelete: getString("#BSQTUI_Hint_Delete"),
                hintclear: getString("#BSQTUI_Hint_Clear"),
                hintopen: getString("#BSQTUI_Hint_Open"),
                hintcancel: getString("#BSQTUI_Hint_Cancel"),
                hintback: getString("#BSQTUI_Hint_Back"),
                hintclosemenu: getString("#BSQTUI_Hint_CloseMenu"),
                hintquitgame: getString("#BSQTUI_Hint_QuitGame"),
                hintbinding: getString("#BSQTUI_Hint_BindingAny"),
                hintConsoleEnter: getString("#BSQTUI_Hint_Console_Enter"),
                hintConsoleErase: getString("#BSQTUI_Hint_Console_Erase"),
                hintConsoleAutofill: getString("#BSQTUI_Hint_Console_Autofill"),
                hintConsoleClose: getString("#BSQTUI_Hint_Console_Close"),
                hintPlaceholderConsoleText: getString("#BSQTUI_Console_Placeholder_Text")
            }),

            loading: Object.freeze({
                loadingLevel: getString("#QTUI_Loading_Level"),
                pleaseWait: getString("#BSQTUI_Loading_PleaseWait")
            }),

            links: Object.freeze({
                ourmedia: getString("#BSQTUI_Links_OurSocialMedia"),
                support: getString("#BSQTUI_Links_Support"),
                downloads: getString("#BSQTUI_Links_Downloads"),
                checkmore: getString("#BSQTUI_Links_CheckMore"),
                hecuprojects: getString("#BSQTUI_Links_HECUProjects"),
                personalprojects: getString("#BSQTUI_Links_PersonalProjects"),

                website: getString("#BSQTUI_Links_Website"),
                websiteDescr: getString("#BSQTUI_Links_Website_Descr"),

                workshop: getString("#BSQTUI_Links_Workshop"),
                workshopDescr: getString("#BSQTUI_Links_Workshop_Descr"),

                discord: getString("#BSQTUI_Links_Discord"),
                discordDescr: getString("#BSQTUI_Links_Discord_Descr"),

                teamYT: getString("#BSQTUI_Links_TeamYT"),
                teamYTDescr: getString("#BSQTUI_Links_TeamYT_Descr"),

                davYT: getString("#BSQTUI_Links_DavYT"),
                davYTDescr: getString("#BSQTUI_Links_DavYT_Descr"),

                patreonDescr: getString("#BSQTUI_Links_Patreon_Descr"),

                oldLogo: getString("#BSQTUI_Links_OriginalLogo"),
                oldLogoDescr: getString("#BSQTUI_Links_OriginalLogo_Descr"),
				
                altCrowbars: getString("#BSQTUI_Links_AltCrowbars"),
                altCrowbarsDescr: getString("#BSQTUI_Links_AltCrowbars_Descr"),
				
                dualshockIcons: getString("#BSQTUI_Links_DualshockIcons"),
                dualshockIconsDescr: getString("#BSQTUI_Links_DualshockIcons_Descr"),

                wallpapers: getString("#BSQTUI_Links_Wallpapers"),
                wallpapersDescr: getString("#BSQTUI_Links_Wallpapers_Descr"),

                blackopsDescr: getString("#BSQTUI_Links_BlackOps_Descr"),
                azureDescr: getString("#BSQTUI_Links_AzureSheep_Descr"),
                damoclesModDescr: getString("#BSQTUI_Links_DamoclesMod_Descr"),
                xboxModDescr: getString("#BSQTUI_Links_XBOXUIMod_Descr")
            }),

            credits: Object.freeze({
                leads: getString("#BSQTUI_Credits_LeadDevelopers"),
                fabDescr: getString("#BSQTUI_Credits_Fab_Descr"),
                cyvoDescr: getString("#BSQTUI_Credits_Cyvo_Descr"),
                stavDescr: getString("#BSQTUI_Credits_Stavaas_Descr"),

                devs: getString("#BSQTUI_Credits_Developers"),
                davDescr: getString("#BSQTUI_Credits_Daver_Descr"),
                lilDescr: getString("#BSQTUI_Credits_LilPif_Descr"),
                validDescr: getString("#BSQTUI_Credits_Validator_Descr"),
                impoffiDescr: getString("#BSQTUI_Credits_ImperialOfficer_Descr"),
                leojfcDescr: getString("#BSQTUI_Credits_LeoJFC_Descr"),
                citifiveDescr: getString("#BSQTUI_Credits_CitizenFive_Descr"),
                icebirbDescr: getString("#BSQTUI_Credits_Icebirb_Descr"),
                jjonahjamesonDescr: getString("#BSQTUI_Credits_JustJacob_Descr"),
                rimasDescr: getString("#BSQTUI_Credits_Rimas_Descr"),
                giantDescr: getString("#BSQTUI_Credits_UnstGia_Descr"),
                kevinDescr: getString("#BSQTUI_Credits_Kevin_Descr"),
                hillardDescr: getString("#BSQTUI_Credits_Hillard_Descr"),
                bonesDescr: getString("#BSQTUI_Credits_Bones_Descr"),
                ronDescr: getString("#BSQTUI_Credits_RonVA_Descr"),
				
				
                pastDevs: getString("#BSQTUI_Credits_PastDevelopers"),
                bprDescr: getString("#BSQTUI_Credits_BlackPriest_Descr"),
                decoyDescr: getString("#BSQTUI_Credits_Decoy_Descr"),
                mdlDescr: getString("#BSQTUI_Credits_MDL_Descr"),
                avevourDescr: getString("#BSQTUI_Credits_AveVour_Descr"),
                zloikotDescr: getString("#BSQTUI_Credits_ZloiKot_Descr"),
                musienDescr: getString("#BSQTUI_Credits_MyCbEH_Descr"),
				
                playtesters: getString("#BSQTUI_Credits_Playtesters"),
                automDescr: getString("#BSQTUI_Credits_Autom_Descr"),
                adamCCDescr: getString("#BSQTUI_Credits_AdamBomb_Descr"),
                digispCCDescr: getString("#BSQTUI_Credits_DIGISPORTS_Descr"),
                sentinelCCDescr: getString("#BSQTUI_Credits_Sentinel_Descr"),

                support: getString("#BSQTUI_Credits_Support"),
                crowbarsDescr: getString("#BSQTUI_Credits_CC_Descr"),
                skymsDescr: getString("#BSQTUI_Credits_Insecurity_Descr"),
                juliaDescr: getString("#BSQTUI_Credits_Julia_Descr"),
                randomguyDescr: getString("#BSQTUI_Credits_SomeRandomGuy_Descr"),
                allanDescr: getString("#BSQTUI_Credits_YouKnowHim_Descr"),
                everyoneelse: getString("#BSQTUI_Credits_EveryoneElse"),
                everyoneelseDescr: getString("#BSQTUI_Credits_EveryoneElse_Descr")
            }),

            quit: Object.freeze({
                quote01: getString("#BSQTUI_Quit_Quote01"),
                quote02: getString("#BSQTUI_Quit_Quote02"),
                quote03: getString("#BSQTUI_Quit_Quote03"),
                quote04: getString("#BSQTUI_Quit_Quote04"),
                quote05: getString("#BSQTUI_Quit_Quote05"),
                quote06: getString("#BSQTUI_Quit_Quote06")
            }),

            labels: Object.freeze({
                quickSave: getString("#QTUI_Labels_QuickSave"),
                autoSave: getString("#QTUI_Labels_AutoSave"),
                manualSave: getString("#QTUI_Labels_ManualSave"),
                newSave: getString("#QTUI_Labels_NewSave")
            }),

            buttons: Object.freeze({
                back: getString("#QTUI_Buttons_Back"),

                cancel: getString("#QTUI_Buttons_Cancel"),
                apply: getString("#QTUI_Buttons_Apply"),
                confirm: getString("#QTUI_Buttons_Confirm"),
                applyChanges: getString("#QTUI_Buttons_ApplyChanges"),
                continue: getString("#BSQTUI_Menu_Continue"),
                resume: getString("#QTUI_Buttons_Resume"),
                startGame: getString("#QTUI_Buttons_StartGame"),
                discard: getString("#QTUI_Buttons_Discard"),
                discardChanges: getString("#QTUI_Buttons_DiscardChanges"),
                createSave: getString("#QTUI_Buttons_CreateSave"),
                overwriteSave: getString("#QTUI_Buttons_OverwriteSave"),
                deleteSave: getString("#QTUI_Buttons_DeleteSave"),
                saveGame: getString("#QTUI_Buttons_SaveGame"),
                quicksave: getString("#QTUI_Buttons_Quicksave"),
                save: getString("#QTUI_Buttons_Save"),
                quit: getString("#BSQTUI_Menu_QuitGame"),
                saveandquit: getString("#BSQTUI_Menu_SaveAndQuit"),
                savenoquit: getString("#BSQTUI_Menu_QuitNoSave"),
                quitgame: getString("#BSQTUI_Menu_QuitNoSave"),
                dontSave: getString("#QTUI_Buttons_DontSave"),
                execControllerPreset: getString("#BSQTUI_Buttons_ControllerPreset"),
                execKBMPreset: getString("#BSQTUI_Buttons_KBMPreset"),

                editBinding: getString("#QTUI_Buttons_EditBinding"),
                clearBinding: getString("#QTUI_Buttons_ClearBinding")
            }),

            menus: Object.freeze({
                startnewgame: getString("#BSQTUI_Menu_StartNewGame"),
                campaign: getString("#QTUI_Menu_Campaign"),
                multiplayer: getString("#QTUI_Menu_Multiplayer"),
                options: getString("#QTUI_Menu_Options"),
                achievements: getString("#QTUI_Menu_Achievements"),
                workshop: getString("#QTUI_Menu_Workshop"),

                newgame: getString("#QTUI_Menu_Campaign_NewGame"),
                loadgame: getString("#QTUI_Menu_Campaign_LoadGame"),
                savegame: getString("#QTUI_Menu_Campaign_SaveGame"),

                other: getString("#BSQTUI_Menu_Options_Other"),
                credits: getString("#BSQTUI_Menu_Options_Credits"),
                links: getString("#BSQTUI_Menu_Options_Links"),
                ourpatrons: getString("#BSQTUI_Menu_Options_OurPatrons"),

                game: getString("#QTUI_Menu_Options_Game"),
                input: getString("#QTUI_Menu_Options_Input"),
                bindings: getString("#QTUI_Menu_Options_Bindings"),
                video: getString("#QTUI_Menu_Options_Video"),
                audio: getString("#QTUI_Menu_Options_Audio"),
                policy: getString("#QTUI_Menu_Options_Policy"),
                translators: getString("#QTUI_Menu_Options_Translators"),

                join: getString("#QTUI_Menu_Multiplayer_Join"),
                refresh: getString("#QTUI_Menu_Multiplayer_Refresh"),
                host: getString("#QTUI_Menu_Multiplayer_Host"),

                campaigns: getString("#QTUI_Menu_Workshop_Campaigns"),
                addons: getString("#QTUI_Menu_Workshop_Addons"),
                installed: getString("#QTUI_Menu_Workshop_Installed"),
                browse: getString("#QTUI_Menu_Workshop_Browse")
            }),

            headers: Object.freeze({
                gameOptions: getString("#QTUI_Header_Options_Game"),
                controls: getString("#QTUI_Header_Options_Controls"),
                videoOptions: getString("#QTUI_Header_Options_Video"),
                advancedSettings: getString("#QTUI_Header_Advanced_Settings"),
                audioOptions: getString("#QTUI_Header_Options_Audio"),
                mouseOptions: getString("#BSQTUI_Header_Options_Mouse"),
                controllerOptions: getString("#BSQTUI_Header_Options_Controller"),
                bindings: getString("#QTUI_Header_Options_Bindings"),
                quit: getString("#BSQTUI_Title_QuitGame"),
                saveBeforeQuit: getString("#QTUI_Header_SaveBeforeQuit"),
                unsavedWarning: getString("#QTUI_Header_UnsavedChangesWarning"),
                keyboardPresetWarning: getString("#BSQTUI_Buttons_KBMPresetAlertHeader"),
                controllerPresetWarning: getString("#BSQTUI_Buttons_ControllerPresetAlertHeader"),
                overwriteSaveConfirmation: getString("#QTUI_Header_OverwriteSaveConfirmation"),
                deleteSaveConfirmation: getString("#QTUI_Header_DeleteSaveConfirmation"),
                confirmBindingOverwrite: getString("#QTUI_Header_ConfirmBindingOverwrite")
            }),

            modalMessages: Object.freeze({
                unsavedWarning: getString("#QTUI_Messages_UnsavedChangesWarning"),
                keyboardPresetWarning: getString("#BSQTUI_Buttons_KBMPresetAlertDescription"),
                controllerPresetWarning: getString("#BSQTUI_Buttons_ControllerPresetAlertDescription"),
                deleteSaveConfirmation: getString("#QTUI_Messages_DeleteSaveConfirmation"),
                overwriteSaveConfirmation: getString("#QTUI_Messages_OverwriteSaveConfirmation"),
                bindingInstructions: getString("#QTUI_Messages_BindingInstructions"),
                confirmBindingOverwrite: getString("#QTUI_Messages_ConfirmBindingOverwrite"),
                saveBeforeQuit: getString("#QTUI_Messages_SaveBeforeQuit")
            }),

            options: Object.freeze({
                bindings: Object.freeze({
                    move_forward: getString("#QTUI_Option_Binding_MoveForward"),
                    move_backward: getString("#QTUI_Option_Binding_MoveBackward"),
                    strafe_left: getString("#QTUI_Option_Binding_StrafeLeft"),
                    strafe_right: getString("#QTUI_Option_Binding_StrafeRight"),
                    jump: getString("#QTUI_Option_Binding_Jump"),
                    duck: getString("#QTUI_Option_Binding_Duck"),
                    sprint: getString("#QTUI_Option_Binding_Sprint"),

                    use: getString("#QTUI_Option_Binding_Use"),
                    primary: getString("#QTUI_Option_Binding_PrimaryAttack"),
                    secondary: getString("#QTUI_Option_Binding_SecondaryAttack"),
                    reload: getString("#QTUI_Option_Binding_Reload"),
                    flashlight: getString("#QTUI_Option_Binding_Flashlight"),
                    zoom: getString("#QTUI_Option_Binding_SuitZoom"),
                    nextWeapon: getString("#QTUI_Option_Binding_NextWeapon"),
                    previousWeapon: getString("#QTUI_Option_Binding_PreviousWeapon"),
                    lastWeapon: getString("#QTUI_Option_Binding_LastWeapon"),
					quickFrag: getString("#BSQTUI_Option_Binding_QuickFrag"),
                    weaponCategory1: getString("#QTUI_Option_Binding_WeaponCategory1"),
                    weaponCategory2: getString("#QTUI_Option_Binding_WeaponCategory2"),
                    weaponCategory3: getString("#QTUI_Option_Binding_WeaponCategory3"),
                    weaponCategory4: getString("#QTUI_Option_Binding_WeaponCategory4"),
                    weaponCategory5: getString("#QTUI_Option_Binding_WeaponCategory5"),
                    weaponCategory6: getString("#QTUI_Option_Binding_WeaponCategory6"),

                    quickSave: getString("#QTUI_Option_Binding_QuickSave"),
                    quickLoad: getString("#QTUI_Option_Binding_QuickLoad"),
                    devConsole: getString("#QTUI_Option_Binding_Console"),
                    ccSoundEffects: getString("#QTUI_Option_Binding_CCSoundEffects"),
                    swimUp: getString("#QTUI_Option_Binding_SwimUp"),
                    swimDown: getString("#QTUI_Option_Binding_SwimDown"),
                    lookUp: getString("#QTUI_Option_Binding_LookUp"),
                    lookDown: getString("#QTUI_Option_Binding_LookDown"),
                    turnLeft: getString("#QTUI_Option_Binding_TurnLeft"),
                    turnRight: getString("#QTUI_Option_Binding_TurnRight"),

                    chooseTeam: getString("#QTUI_Option_Binding_ChooseTeam"),
                    voiceChat: getString("#QTUI_Option_Binding_VoiceChat"),

                    weaponCrowbar: getString("#QTUI_Option_Binding_WeaponCrowbar"),
                    weaponPistol: getString("#QTUI_Option_Binding_WeaponPistol"),
                    weapon357: getString("#QTUI_Option_Binding_Weapon357"),
                    weaponMP5: getString("#QTUI_Option_Binding_WeaponMP5"),
                    weaponShotgun: getString("#QTUI_Option_Binding_WeaponShotgun"),
                    weaponCrossbow: getString("#QTUI_Option_Binding_WeaponCrossbow"),
                    weaponRPG: getString("#QTUI_Option_Binding_WeaponRPG"),
                    weaponTau: getString("#QTUI_Option_Binding_WeaponTau"),
                    weaponGluon: getString("#QTUI_Option_Binding_WeaponGluon"),
                    weaponHiveHand: getString("#QTUI_Option_Binding_WeaponHiveHand"),
                    weaponFrag: getString("#QTUI_Option_Binding_WeaponFrag"),
                    weaponTripmine: getString("#QTUI_Option_Binding_WeaponTripmine"),
                    weaponSatchel: getString("#QTUI_Option_Binding_WeaponSatchel"),
                    weaponSnarks: getString("#QTUI_Option_Binding_WeaponSnarks")
                }),

                labels: Object.freeze({
                    game_difficulty: getString("#QTUI_Option_Game_Difficulty"),
                    game_alwaysRun: getString("#QTUI_Option_Game_AlwaysRun"),
                    game_viewRoll: getString("#QTUI_Option_Game_ViewRoll"),
                    game_autoAim: getString("#QTUI_Option_Game_AutoAim"),
                    game_weaponSwitch: getString("#QTUI_Option_Game_WeaponSwitch"),
                    game_AutoWeaponSwitch: getString("#QTUI_Option_Game_AutoWeaponSwitch"),
                    game_autoCrouchJump: getString("#QTUI_Option_Game_AutoCrouchJump"),
                    game_toggleCrouch: getString("#QTUI_Option_Game_ToggleCrouch"),
                    game_announcer: getString("#QTUI_Option_Game_Announcer"),
                    game_devConsole: getString("#QTUI_Option_Game_DevConsole"),
                    game_multiplayermodel: getString("#GameUI_CharacterModel"),
                    game_multiplayerskin: getString("#GameUI_CharacterSkin"),

                    game_viewmodelenable: getString("#BSQTUI_Option_Game_DisableViewModel"),
                    game_ingamehudenable: getString("#BSQTUI_Option_Game_DisableHUD"),
                    video_bloodenable: getString("#BSQTUI_Option_Video_BloodAcidHands"),
                    game_uiIcons: getString("#BSQTUI_Options_UI_Icons"),
                    game_uiIconsKB: getString("#BSQTUI_Options_UI_KB"),

                    video_aspectRatio: getString("#QTUI_Option_Video_AspectRatio"),
                    video_resolution: getString("#QTUI_Option_Video_Resolution"),
                    video_displayMode: getString("#QTUI_Option_Video_DisplayMode"),
                    video_fov: getString("#QTUI_Option_Video_FOV"),
                    video_vsync: getString("#QTUI_Option_Video_Vsync"),
                    video_quality: getString("#QTUI_Option_Video_Quality"),
                    video_modelDetail: getString("#QTUI_Option_Video_ModelDetail"),
                    video_textureDetail: getString("#QTUI_Option_Video_TextureDetail"),
                    video_waterDetail: getString("#QTUI_Option_Video_WaterDetail"),
                    video_shaderDetail: getString("#QTUI_Option_Video_ShaderDetail"),
                    video_shadowDetail: getString("#QTUI_Option_Video_ShadowDetail"),
                    video_csmQuality: getString("#QTUI_Option_Video_CSMQuality"),
                    video_csmMemory: getString("#QTUI_Option_Video_CSMMemory"),
                    video_dynamicShadowQuality: getString("#QTUI_Option_Video_DynamicShadowQuality"),
                    video_dynamicShadowMemory: getString("#QTUI_Option_Video_DynamicShadowMemory"),
                    video_dynamicShadowSoftness: getString("#QTUI_Option_Video_DynamicShadowSoftness"),
                    video_dynamicLightsQuality: getString("#QTUI_Option_Video_DynamicLightsQuality"),
                    video_hudPostProcess: getString("#QTUI_Option_Video_HudPostProcess"),
                    video_lensFlare: getString("#QTUI_Option_Video_LensFlare"),
                    video_godRays: getString("#QTUI_Option_Video_GodRays"),
                    video_antialiasing: getString("#QTUI_Option_Video_Antialiasing"),
                    video_filtering: getString("#QTUI_Option_Video_Filtering"),
                    video_motionBlur: getString("#QTUI_Option_Video_MotionBlur"),
                    video_chromaticAberration: getString("#QTUI_Option_Video_ChromaticAberration"),
                    video_radioactiveNoise: getString("#QTUI_Option_Video_RadioactiveNoise"),
                    video_gamma: getString("#QTUI_Option_Video_Gamma"),
                    video_unlockHighendUnsupported: getString("#QTUI_Option_Video_UnlockHighendUnsupported"),
                    video_warningHeader: getString("#QTUI_Option_Video_WarningHeader"),

                    video_desc_help_RESOLUTION: getString("#QTUI_Option_Video_Desc_Help_RESOLUTION"),
                    video_desc_help_DISPLAYMODE: getString("#QTUI_Option_Video_Desc_Help_DISPLAYMODE"),
                    video_desc_help_FIELDOFVIEW: getString("#QTUI_Option_Video_Desc_Help_FIELDOFVIEW"),
                    video_desc_help_VERTICALSYNC: getString("#QTUI_Option_Video_Desc_Help_VERTICALSYNC"),
                    video_desc_help_LENSFLARE: getString("#QTUI_Option_Video_Desc_Help_LENSFLARE"),
                    video_desc_help_CHROMATICABBREVIATION: getString("#QTUI_Option_Video_Desc_Help_CHROMATICABBREVIATION"),
                    video_desc_help_RADIOACTIVENOISESHADER: getString("#QTUI_Option_Video_Desc_Help_RADIOACTIVENOISESHADER"),
                    video_desc_help_HUDPOSTPROCESS: getString("#QTUI_Option_Video_Desc_Help_HUDPOSTPROCESS"),
                    video_desc_help_MOTIONBLUR: getString("#QTUI_Option_Video_Desc_Help_MOTIONBLUR"),
                    video_desc_help_OVERALLQUALITY: getString("#QTUI_Option_Video_Desc_Help_OVERALLQUALITY"),
                    video_desc_help_MODELDETAIL: getString("#QTUI_Option_Video_Desc_Help_MODELDETAIL"),
                    video_desc_help_TEXTUREDETAIL: getString("#QTUI_Option_Video_Desc_Help_TEXTUREDETAIL"),
                    video_desc_help_FILTERING: getString("#QTUI_Option_Video_Desc_Help_FILTERING"),
                    video_desc_help_WATERREFLECTIONS: getString("#QTUI_Option_Video_Desc_Help_WATERREFLECTIONS"),
                    video_desc_help_CSMQUALITY: getString("#QTUI_Option_Video_Desc_Help_CSMQUALITY"),
                    video_desc_help_CSMMEMORYUSAGE: getString("#QTUI_Option_Video_Desc_Help_CSMMEMORYUSAGE"),
                    video_desc_help_DYNAMICLIGHTSQUALITY: getString("#QTUI_Option_Video_Desc_Help_DYNAMICLIGHTSQUALITY"),
                    video_desc_help_DYNAMICSHADOWSQUALITY: getString("#QTUI_Option_Video_Desc_Help_DYNAMICSHADOWSQUALITY"),
                    video_desc_help_DYNAMICSHADOWSMEMORY: getString("#QTUI_Option_Video_Desc_Help_DYNAMICSHADOWSMEMORY"),
                    video_desc_help_DYNAMICSHADOWFILTERING: getString("#QTUI_Option_Video_Desc_Help_DYNAMICSHADOWFILTERING"),
                    video_desc_help_GAMMA: getString("#QTUI_Option_Video_Desc_Help_GAMMA"),
                    video_desc_help_UNLOCKHIGHENDUNSUPPORTED: getString("#QTUI_Option_Video_Desc_Help_UNLOCKHIGHENDUNSUPPORTED"),
                    video_desc_help_UNLOCKPOTATO: getString("#QTUI_Option_Video_Desc_Help_UNLOCKPOTATO"),

                    video_desc_usage_cpu: getString("#QTUI_Option_Video_Desc_Usage_CPU"),
                    video_desc_usage_gpu: getString("#QTUI_Option_Video_Desc_Usage_GPU"),
                    video_desc_usage_ram: getString("#QTUI_Option_Video_Desc_Usage_VRAM"),
                    video_desc_usage_major: getString("#QTUI_Option_Video_Desc_Usage_Major"),
                    video_desc_usage_moderate: getString("#QTUI_Option_Video_Desc_Usage_Moderate"),
                    video_desc_usage_minor: getString("#QTUI_Option_Video_Desc_Usage_Minor"),
                    video_desc_usage_none: getString("#QTUI_Option_Video_Desc_Usage_None"),


                    audio_gameVolume: getString("#GameUI_MasterVolume"),
                    audio_fxvolume: getString("#GameUI_SoundEffectVolume"),
                    audio_musicVolume: getString("#QTUI_Option_Audio_MusicVolume"),
                    audio_speakerConfig: getString("#QTUI_Option_Audio_SpeakerConfiguration"),
                    audio_quality: getString("#QTUI_Option_Audio_Quality"),
                    audio_captioning: getString("#QTUI_Option_Audio_Captioning"),
                    audio_captioningLang: getString("#QTUI_Option_Audio_CaptioningLanguage"),

                    controller_enabled: getString("#QTUI_Option_Controller_Enabled"),
                    controller_rumble: getString("#QTUI_Option_Controller_Rumble"),
                    controller_invert: getString("#QTUI_Option_Controller_Invert"),
                    controller_verticalSensitivity: getString("#QTUI_Option_Controller_VerticalSensitivity"),
                    controller_horizontalSensitivity: getString("#QTUI_Option_Controller_HorizontalSensitivity"),

                    mouse_invert: getString("#QTUI_Option_Mouse_Invert"),
                    mouse_raw: getString("#QTUI_Option_Mouse_RawInput"),
                    mouse_accelerationswitch: getString("#QTUI_Option_Mouse_AccelerationSwitch"),
                    mouse_sensitivity: getString("#QTUI_Option_Mouse_Sensitivity"),
                    mouse_zoomAcceleration: getString("#QTUI_Option_Mouse_ZoomAcceleration"),
                    mouse_acceleration: getString("#QTUI_Option_Mouse_Acceleration"),

                    binding_movement: getString("#QTUI_Option_Binding_Movement"),
                    binding_combat: getString("#QTUI_Option_Binding_Combat"),
                    binding_misc: getString("#QTUI_Option_Binding_Misc"),
                    binding_weapons: getString("#QTUI_Option_Binding_Weapons"),
                    binding_multiplayer: getString("#QTUI_Option_Binding_Multiplayer")
                }),

                values: Object.freeze({
                    no: getString("#QTUI_Option_No"),
                    yes: getString("#QTUI_Option_Yes"),
                    on: getString("#QTUI_Option_On"),
                    off: getString("#QTUI_Option_Off"),

                    qualityPotato: getString("#QTUI_Option_Quality_Potato"),
                    qualityLow: getString("#QTUI_Option_Quality_Low"),
                    qualityMedium: getString("#QTUI_Option_Quality_Medium"),
                    qualityHigh: getString("#QTUI_Option_Quality_High"),
                    qualityUltra: getString("#QTUI_Option_Quality_Ultra"),
                    qualityInsane: getString("#QTUI_Option_Quality_Insane"),
                    qualityInsane2: getString("#QTUI_Option_Quality_Insane2"),
                    qualityCustom: getString("#QTUI_Option_Quality_Custom"),

                    difficultyEasy: getString("#QTUI_Option_Game_Difficulty_Easy"),
                    difficultyNormal: getString("#QTUI_Option_Game_Difficulty_Normal"),
                    difficultyHard: getString("#QTUI_Option_Game_Difficulty_Hard"),

                    announcerMarine: getString("#QTUI_Option_Game_Announcer_Marine"),
                    announcerScientist: getString("#QTUI_Option_Game_Announcer_Scientist"),

                    aspectRatio4x3: getString("#QTUI_Option_Video_AspectRatio_4x3"),
                    aspectRatio16x9: getString("#QTUI_Option_Video_AspectRatio_16x9"),
                    aspectRatio16x10: getString("#QTUI_Option_Video_AspectRatio_16x10"),

                    displayModeFullscreen: getString("#QTUI_Option_Video_DisplayMode_Fullscreen"),
                    displayModeWindowed: getString("#QTUI_Option_Video_DisplayMode_Windowed"),
                    displayModeBorderless: getString("#QTUI_Option_Video_DisplayMode_Borderless"),

                    waterSimpleReflections: getString("#QTUI_Option_Video_WaterDetail_Simple"),
                    waterReflectWorld: getString("#QTUI_Option_Video_WaterDetail_World"),
                    waterReflectAll: getString("#QTUI_Option_Video_WaterDetail_All"),

                    filteringBilinear: getString("#QTUI_Option_Video_Filtering_Bilinear"),
                    filteringTrilinear: getString("#QTUI_Option_Video_Filtering_Trilinear"),
                    filteringAnisotropic2x: getString("#QTUI_Option_Video_Filtering_Anisotropic2x"),
                    filteringAnisotropic4x: getString("#QTUI_Option_Video_Filtering_Anisotropic4x"),
                    filteringAnisotropic8x: getString("#QTUI_Option_Video_Filtering_Anisotropic8x"),
                    filteringAnisotropic16x: getString("#QTUI_Option_Video_Filtering_Anisotropic16x"),

                    speakersHeadphones: getString("#QTUI_Option_Audio_Speakers_Headphones"),
                    speakers2: getString("#QTUI_Option_Audio_Speakers_2"),
                    speakers4: getString("#QTUI_Option_Audio_Speakers_4"),
                    speakers51: getString("#QTUI_Option_Audio_Speakers_51"),
                    speakers71: getString("#QTUI_Option_Audio_Speakers_71"),

                    captioningNo: getString("#QTUI_Option_Audio_Captioning_NoCaptions"),
                    captioningClosedCaptions: getString("#QTUI_Option_Audio_Captioning_ClosedCaptions"),
                    captioningSubtitles: getString("#QTUI_Option_Audio_Captioning_Subtitles"),

                    langArabic: getString("#QTUI_Option_Language_Arabic"),
                    langChineseSimplified: getString("#QTUI_Option_Language_ChineseSimplified"),
                    langChineseTraditional: getString("#QTUI_Option_Language_ChineseTraditional"),
                    langCroatian: getString("#QTUI_Option_Language_Croatian"),
                    langCzech: getString("#QTUI_Option_Language_Czech"),
                    langDanish: getString("#QTUI_Option_Language_Danish"),
                    langDutch: getString("#QTUI_Option_Language_Dutch"),
                    langEnglish: getString("#QTUI_Option_Language_English"),
                    langFinnish: getString("#QTUI_Option_Language_Finnish"),
                    langFrench: getString("#QTUI_Option_Language_French"),
                    langGeorgian: getString("#QTUI_Option_Language_Georgian"),
                    langGerman: getString("#QTUI_Option_Language_German"),
                    langGreek: getString("#QTUI_Option_Language_Greek"),
                    langHungarian: getString("#QTUI_Option_Language_Hungarian"),
                    langIndonesian: getString("#QTUI_Option_Language_Indonesian"),
                    langItalian: getString("#QTUI_Option_Language_Italian"),
                    langJapanese: getString("#QTUI_Option_Language_Japanese"),
                    langKorean: getString("#QTUI_Option_Language_Korean"),
                    langLithuanian: getString("#QTUI_Option_Language_Lithuanian"),
                    langNorwegian: getString("#QTUI_Option_Language_Norwegian"),
                    langPolish: getString("#QTUI_Option_Language_Polish"),
                    langPortuguese: getString("#QTUI_Option_Language_Portuguese"),
                    langPortugueseBrazilian: getString("#QTUI_Option_Language_PortugueseBrazilian"),
                    langRomanian: getString("#QTUI_Option_Language_Romanian"),
                    langRussian: getString("#QTUI_Option_Language_Russian"),
                    langSpanish: getString("#QTUI_Option_Language_Spanish"),
                    langSpanishMexico: getString("#QTUI_Option_Language_SpanishMexico"),
                    langSwedish: getString("#QTUI_Option_Language_Swedish"),
                    langTurkish: getString("#QTUI_Option_Language_Turkish"),
                    langUkrainian: getString("#QTUI_Option_Language_Ukrainian"),
                    langVietnamese: getString("#QTUI_Option_Language_Vietnamese"),
                })
            })
        });
    }
}
