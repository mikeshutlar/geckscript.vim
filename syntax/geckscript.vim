" Vim syntax file
" Language: GECK Script (GECKScript)
" Maintainer: Mike Shutlar (iFSS)
" Latest Revision: 24 October 2011
" Licence: ISC

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = 'GECKScript'

" Also highlights numbers in variable names etc, but as GECK Script doesn't
" have indexed lists, this is quite useful.
syn match geckInt '\d\+' display
syn match geckInt '[-+]\d\+' display
syn match geckFloat '\d\+\.\d*' display
syn match geckFloat '[-+]\d\+\.\d*' display

syn region geckComment start=";" end="$" keepend contains=geckToDo
syn region geckString start=/"/ end=/"/

syn keyword geckToDo contained TODO todo Todo ToDo FIXME XXX NOTE
syn keyword geckType short long float ref reference
syn keyword geckConditional if else elseif endif If Else Elseif Endif
syn keyword geckOperator set to
syn keyword geckOtherKeywords Player player
syn keyword geckScriptname ScriptName scriptname scn
syn keyword geckBlock Begin End

syn keyword geckBlockType
    \   GameMode
    \   MenuMode
    \   OnActivate
    \   OnActorEquip
    \   OnActorUnequip
    \   OnAdd
    \   OnClose
    \   OnCombatEnd
    \   OnDeath
    \   OnDestructionStageChange
    \   OnDrop
    \   OnEquip
    \   OnGrab
    \   OnHit
    \   OnHitWith
    \   OnLoad
    \   OnMagicEffectHit
    \   OnMurder
    \   OnOpen
    \   OnPackageChange
    \   OnPackageDone
    \   OnPackageStart
    \   OnRelease
    \   OnReset
    \   OnSell
    \   OnStartCombat
    \   OnTrigger
    \   OnTriggerEnter
    \   OnTriggerLeave
    \   OnUnequip
    \   SayToDone
    \   ScriptEffectFinish
    \   ScriptEffectStart
    \   ScriptEffectUpdate

syn keyword geckFunction
    \   Abs
    \   Activate
    \   AddAchievement
    \   AddFlames
    \   AddItem
    \   AddItemHealthPercent
    \   AddNote    AN
    \   AddPerk
    \   AddScriptPackage
    \   AddSPECIALPoints
    \   AddSpell
    \   AddTagSkills
    \   AddToFaction    Addfac
    \   AddTopic
    \   AdvancePCLevel    AdvLevel
    \   AdvancePCSkill    AdvSkill
    \   AgeRace
    \   ApplyImageSpaceModifier    imod
    \   AttachAshPile
    \   AutoDisplayObjectives
    \   Autosave
    \   CanHaveFlames
    \   Cast
    \   CastImmediateOnSelf    cios
    \   ClearActorsFactionsPlayerEnemyFlag
    \   ClearDestruction
    \   ClearFactionPlayerEnemyFlag
    \   ClearNoActivationSound
    \   ClearOwnership
    \   CompleteAllObjectives
    \   CompleteQuest
    \   Cos
    \   CreateDetectionEvent
    \   DamageActorValue    DamageAV
    \   DamageObject    do
    \   Disable
    \   DisableAllActors    DisAA
    \   DisableAllMines
    \   DisableLinkedPathPoints
    \   DisableNavMesh
    \   DisablePlayerControls
    \   Dispel
    \   DispelAllSpells
    \   Drop
    \   DropMe
    \   DumpMasterFileSeekData
    \   DuplicateAllItems
    \   DuplicateNPCStats
    \   Enable
    \   EnableFastTravel    EnableFast
    \   EnableLinkedPathPoints
    \   EnableNavMesh
    \   EnablePlayerControls
    \   EnterTrigger
    \   EquipItem    EquipObject
    \   EssentialDeathReload
    \   EvaluatePackage    evp
    \   EvaluateSpellConditions    esc
    \   Exists
    \   ExitGame    exit
    \   FadeSFX    FSFX
    \   FireWeapon
    \   ForceActiveQuest
    \   ForceActorValue    ForceAV
    \   ForceFlee    Flee
    \   ForceRadioStationUpdate    FRSU
    \   ForceSave
    \   ForceTakeCover    TakeCover
    \   ForceTerminalBack
    \   ForceWeather    fw
    \   FriendDispositionBoost
    \   FunctionUnused16
    \   FunctionUnused19    unused
    \   FunctionUnused20
    \   GetActionRef    getAR
    \   GetActorAggroRadiusViolated
    \   GetActorCrimePlayerEnemy
    \   GetActorFactionPlayerEnemy
    \   GetActorsInHigh
    \   GetActorValue    GetAV
    \   GetAlarmed
    \   GetAmountSoldStolen
    \   GetAngle
    \   GetAnimAction
    \   GetArmorRating
    \   GetArmorRatingUpperBody
    \   GetAttacked
    \   GetBarterGold
    \   GetBaseActorValue    GetBaseAV
    \   GetBroadcastState
    \   GetButtonPressed
    \   GetCannibal
    \   GetCauseofDeath
    \   GetClassDefaultMatch
    \   GetClothingValue
    \   GetCombatTarget
    \   GetConcussed
    \   GetContainer
    \   GetCrime
    \   GetCrimeKnown
    \   GetCurrentAIPackage
    \   GetCurrentAIProcedure
    \   GetCurrentTime
    \   GetCurrentWeatherPercent    getweatherpct
    \   GetDayOfWeek
    \   GetDead
    \   GetDeadCount
    \   GetDefaultOpen
    \   GetDestroyed
    \   GetDestructionStage
    \   GetDetected
    \   GetDetectionLevel
    \   GetDialogueEmotion
    \   GetDialogueEmotionValue
    \   GetDisabled
    \   GetDisease
    \   GetDisposition
    \   GetDistance
    \   GetEquipped
    \   GetFactionCombatReaction
    \   GetFactionRank
    \   GetFactionRankDifference
    \   GetFactionReaction
    \   GetFactionRelation
    \   GetFatiguePercentage    GetFatigue
    \   GetForceRun
    \   GetForceSneak
    \   GetFriendHit
    \   GetFurnitureMarkerID
    \   GetGameSetting    GetGS
    \   GetGlobalValue
    \   GetGold
    \   GetGroupMemberCount
    \   GetGroupTargetCount
    \   GetHasNote    GetN
    \   GetHeadingAngle
    \   GetHealthPercentage
    \   GetHitLocation
    \   GetIdleDoneOnce
    \   GetIgnoreCrime
    \   GetIgnoreFriendlyHits    gifh
    \   GetInCell
    \   GetInCellParam
    \   GetInFaction
    \   GetInSameCell
    \   GetInWorldspace
    \   GetInZone
    \   GetIsAlerted
    \   GetIsAlignment
    \   GetIsClass
    \   GetIsClassDefault
    \   GetIsCreature
    \   GetIsCreatureType
    \   GetIsCurrentPackage
    \   GetIsCurrentWeather    getweather
    \   GetIsFormType
    \   GetIsGhost
    \   GetIsID
    \   GetIsLockBroken
    \   GetIsObjectType
    \   GetIsPlayableRace
    \   GetIsRace
    \   GetIsReference
    \   GetIsSex
    \   GetIsUsedItem
    \   GetIsUsedItemEquipType
    \   GetIsUsedItemType
    \   GetIsVoiceType
    \   GetItemCount
    \   GetKillingBlowLimb
    \   GetKnockedState
    \   GetLastHitCritical
    \   GetLastPlayerAction
    \   GetLevel
    \   GetLineOfSight    GetLOS
    \   GetLinkedRef
    \   GetLocked
    \   GetLockLevel
    \   GetMajorCrimeCount
    \   GetMapMarkerVisible
    \   GetMinorCrimeCount
    \   GetNoRumors
    \   GetObjectiveCompleted
    \   GetObjectiveDisplayed
    \   GetOffersServicesNow
    \   GetOpenState
    \   GetPackageTarget
    \   GetParentRef
    \   GetPCEnemyofFaction
    \   GetPCExpelled
    \   GetPCFactionAttack
    \   GetPCFactionMurder
    \   GetPCInFaction
    \   GetPCIsClass
    \   GetPCIsRace
    \   GetPCIsSex
    \   GetPCMiscStat    GetPCMS
    \   GetPCSleepHours
    \   GetPermanentActorValue    GetPermAV
    \   GetPersuasionNumber
    \   GetPlantedExplosive
    \   GetPlayerControlsDisabled
    \   GetPlayerGrabbedRef
    \   GetPlayerHasLastRiddenHorse
    \   GetPlayerName
    \   GetPlayerTeammate
    \   GetPlayerTeammateCount
    \   GetPos
    \   GetQuestCompleted    GetQC
    \   GetQuestRunning    GetQR
    \   GetQuestVariable
    \   GetRadiationLevel
    \   GetRandomPercent
    \   GetRestrained
    \   GetSandman
    \   GetScale
    \   GetScriptVariable
    \   GetSecondsPassed
    \   GetSelf    this
    \   GetShouldAttack
    \   GetSitting
    \   GetSleeping
    \   GetSpellUsageNum
    \   GetStage
    \   GetStageDone
    \   GetStartingAngle
    \   GetStartingPos
    \   GetTalkedToPC
    \   GetTalkedToPCParam
    \   GetThreatRatio
    \   GetTimeDead
    \   GetTotalPersuasionNumber
    \   GetTrespassWarningLevel
    \   GetUnconscious
    \   GetUsedItemActivate
    \   GetUsedItemLevel
    \   GetVampire
    \   GetVATSBackAreaFree
    \   GetVATSBackTargetVisible
    \   GetVATSFrontAreaFree
    \   GetVATSFrontTargetVisible
    \   GetVATSLeftAreaFree
    \   GetVATSLeftTargetVisible
    \   GetVATSMode
    \   GetVATSRightAreaFree
    \   GetVATSRightTargetVisible
    \   GetVatsTargetHeight
    \   GetVATSValue
    \   GetWalkSpeed    GetWalk
    \   GetWeaponAnimType
    \   GetWeaponHealthPerc
    \   GetWindSpeed
    \   GetXPForNextLevel
    \   HasBeenEaten
    \   HasFlames
    \   HasFriendDisposition
    \   HasLoaded3D
    \   HasMagicEffect
    \   HasPerk
    \   IgnoreCrime
    \   IsActionRef
    \   IsActor
    \   IsActorAVictim
    \   IsActorDetected
    \   IsActorEvil
    \   IsActorsAIOff
    \   IsActorTalkingThroughActivator
    \   IsActorUsingATorch
    \   IsAnimPlaying
    \   IsCellOwner
    \   IsChild
    \   IsCloudy
    \   IsCombatTarget
    \   IsContinuingPackagePCNear
    \   IsCurrentFurnitureObj
    \   IsCurrentFurnitureRef
    \   IsEssential
    \   IsFacingUp
    \   IsGoreDisabled
    \   IsGreetingPlayer
    \   IsGuard
    \   IsHorseStolen
    \   IsIdlePlaying
    \   IsImageSpaceActive
    \   IsInCombat
    \   IsInCriticalStage
    \   IsInDangerousWater
    \   IsInInterior
    \   IsInList
    \   IsInMyOwnedCell
    \   IsKiller
    \   IsKillerObject
    \   IsLastIdlePlayed
    \   IsLeftUp
    \   IsLimbGone
    \   IsMoving
    \   IsOwner
    \   IsPC1stPerson    pc1st
    \   IsPCAMurderer
    \   IsPCSleeping
    \   IsPlayerActionActive
    \   IsPlayerGrabbedRef
    \   IsPlayerMovingIntoNewSpace
    \   IsPlayersLastRiddenHorse
    \   IsPlayerTagSkill
    \   IsPleasant
    \   IsPS3
    \   IsRaining
    \   IsRidingHorse
    \   IsRunning
    \   IsShieldOut
    \   IsSneaking
    \   IsSnowing
    \   IsSpellTarget
    \   IsSwimming
    \   IsTalking
    \   IsTalkingActivatorActor
    \   IsTimePassing
    \   IsTorchOut
    \   IsTrespassing
    \   IsTurning
    \   IsWaiting
    \   IsWaterObject
    \   IsWeaponInList
    \   IsWeaponOut
    \   IsWeaponSkillType
    \   IsWin32
    \   IsXBox
    \   KillActor    kill
    \   KillAllActors    killall
    \   KillQuestUpdates    KQU
    \   Lock
    \   Log
    \   Look
    \   LoopGroup
    \   MarkForDelete
    \   MatchFaceGeometry
    \   MatchRace
    \   MenuMode
    \   ModActorValue    ModAV
    \   ModAmountSoldStolen
    \   ModBarterGold
    \   ModDisposition
    \   ModFactionRank
    \   ModFactionReaction
    \   ModPCAttribute    ModPCA
    \   ModPCMiscStat    ModPCMS
    \   ModPCSkill    ModPCS
    \   ModScale
    \   ModWeaponHealthPerc
    \   MoveToMarker    MoveTo
    \   OpenTeammateContainer
    \   PickIdle
    \   PipBoyRadioOff
    \   PipboyRadio    prad
    \   PlaceAtMe
    \   PlaceAtMeHealthPercent
    \   PlaceLeveledActorAtMe
    \   PlayBink
    \   PlayGroup
    \   PlayIdle
    \   PlayMagicEffectVisuals    PME
    \   PlayMagicShaderVisuals    PMS
    \   PlayMusic
    \   PlaySound
    \   PlaySound3D
    \   PreloadMagicEffect
    \   PurgeCellBuffers    pcb
    \   PushActorAway
    \   ReleaseWeatherOverride    rwo
    \   RemoveAllItems
    \   RemoveFlames
    \   RemoveFromAllFactions
    \   RemoveFromFaction    Removefac
    \   RemoveImageSpaceModifier    rimod
    \   RemoveItem
    \   RemoveMe
    \   RemoveMerchantContainer
    \   RemoveNote    RN
    \   RemovePerk
    \   RemoveScriptPackage
    \   RemoveSpell
    \   Reset3DState
    \   ResetAI
    \   ResetFallDamageTimer
    \   ResetHealth
    \   ResetInterior
    \   ResetInventory
    \   ResetPipboyManager
    \   ResetQuest
    \   RestoreActorValue    RestoreAV
    \   ResurrectActor    resurrect
    \   RewardKarma
    \   RewardXP
    \   Rotate
    \   SameFaction
    \   SameFactionAsPC
    \   SameRace
    \   SameRaceAsPC
    \   SameSex
    \   SameSexAsPC
    \   Say
    \   SayTo
    \   ScriptEffectElapsedSeconds
    \   SelectPlayerSpell    spspell
    \   SendAssaultAlarm
    \   SendTrespassAlarm
    \   SetActorAlpha    SAA
    \   SetActorFullName
    \   SetActorRefraction    sar
    \   SetActorsAI
    \   SetActorValue    SetAV
    \   SetAlert
    \   SetAllReachable
    \   SetAllVisible
    \   SetAlly
    \   SetAngle
    \   SetAtStart
    \   SetAudioMultithreading    SAM
    \   SetBarterGold
    \   SetBroadcastState
    \   SetCellFullName
    \   SetCellImageSpace
    \   SetCellOwnership
    \   SetCellPublicFlag    setpublic
    \   SetClass
    \   SetCombatStyle    setcs
    \   SetCriticalStage
    \   SetDefaultOpen
    \   SetDestroyed
    \   SetDisposition    SetDisp
    \   SetEnemy
    \   SetEssential
    \   SetFactionRank
    \   SetFactionReaction
    \   SetForceRun
    \   SetForceSneak
    \   SetGhost
    \   SetGlobalTimeMultiplier    sgtm
    \   SetIgnoreFriendlyHits    sifh
    \   SetImageSpace
    \   SetInChargen
    \   SetItemValue
    \   SetLastExtDoorActivated
    \   SetLevel
    \   SetLocationSpecificLoadScreensOnly
    \   SetMerchantContainer
    \   SetMinimalUse
    \   SetNoActivationSound
    \   SetNoAvoidance
    \   SetNoRumors
    \   SetNPCRadio    snr
    \   SetObjectiveCompleted
    \   SetObjectiveDisplayed
    \   SetOpenState
    \   SetOwnership
    \   SetPackDuration    SPDur
    \   SetPCCanUsePowerArmor
    \   SetPCEnemyofFaction
    \   SetPCExpelled
    \   SetPCFactionAttack
    \   SetPCFactionMurder
    \   SetPCSleepHours
    \   SetPCToddler
    \   SetPCYoung
    \   SetPlayerTagSkill
    \   SetPlayerTeammate
    \   SetPos
    \   SetQuestDelay
    \   SetQuestObject
    \   SetRestrained
    \   SetRigidBodyMass
    \   SetRumble
    \   SetScale
    \   SetSceneIsComplex
    \   SetShowQuestItems
    \   SetSize    CSize
    \   SetSPECIALPoints
    \   SetStage
    \   SetTagSkills
    \   SetTalkingActivatorActor
    \   SetUnconscious
    \   SetVATSTarget
    \   SetWeaponHealthPerc
    \   SetWeather    sw
    \   SetZoneRespawns
    \   SexChange
    \   ShowAllMapMarkers    tmm
    \   ShowBarberMenu
    \   ShowBarterMenu    sbm
    \   ShowChargenMenuModValues    scgmod
    \   ShowChargenMenuParams    scgmp
    \   ShowChargenMenu    scgm
    \   ShowClassMenu
    \   ShowComputersInterface    sci
    \   ShowDialogSubtitles
    \   ShowHackingMiniGame    shmg
    \   ShowLockpickMenuDebug    slpmd
    \   ShowLockpickMenu    slpm
    \   ShowMap
    \   ShowMessage
    \   ShowNameMenu
    \   ShowPlasticSurgeonMenu
    \   ShowQuestStages    SQS
    \   ShowRaceMenu
    \   ShowRepairMenu    srm
    \   ShowSPECIALBookMenuParams    ssbmp
    \   ShowSPECIALBookMenu    ssbm
    \   ShowSpellMaking
    \   ShowSurgeryMenu    ssmg
    \   ShowTutorialMenu
    \   ShowViewerStrings    svs
    \   ShowWarning
    \   Sin
    \   SkipAnim
    \   Sqrt
    \   StartCannibal
    \   StartCombat
    \   StartConversation
    \   StartMasterFileSeekData
    \   StartMisterSandMan
    \   StartQuest
    \   StartRadioConversation
    \   StopCombat
    \   StopCombatAlarmOnActor    SCAOnActor
    \   StopLook
    \   StopMagicEffectVisuals    SME
    \   StopMagicShaderVisuals    SMS
    \   StopQuest
    \   StopWaiting
    \   StreamMusic
    \   Tan
    \   ToggleActorsAI
    \   ToggleMotionBlur    tmb
    \   TrapUpdate
    \   TriggerHitShader    ths
    \   TriggerHUDShudder    hudsh
    \   TriggerLODApocalypse
    \   TriggerScreenBlood    tsb
    \   UnequipItem    UnEquipObject
    \   UnLock
    \   UnusedFunction
    \   UnusedFunction1
    \   UnusedFunction10
    \   UnusedFunction11
    \   UnusedFunction12
    \   UnusedFunction13
    \   UnusedFunction14
    \   UnusedFunction15
    \   UnusedFunction17
    \   UnusedFunction18
    \   UnusedFunction21
    \   UnusedFunction22
    \   UnusedFunction26
    \   UnusedFunction27
    \   UnusedFunction28
    \   UnusedFunction29
    \   UnusedFunction9
    \   UseWeapon
    \   Wait
    \   WakeUpPC
    \   WhichServiceMenu


syn keyword geckFOSEFunction
    \   AddSpellNS
    \   Ceil
    \   CompareNames
    \   con_CloseAllMenus
    \   con_GetINISetting
    \   con_LoadGame
    \   con_QuitGame
    \   con_RefreshINI
    \   con_SetCameraFOV
    \   con_SetGameSetting
    \   con_SetINISetting
    \   con_SetVel
    \   con_Save
    \   con_SaveINI
    \   DebugPrint	dbprintc
    \   DisableControl		dc
    \   DisableKey	dk
    \   EnableControl		ec
    \   EnableKey	ek
    \   Exp
    \   Floor		flr
    \   fmod
    \   GetAltControl
    \   GetArmorAR		GetArmorArmorRating
    \   GetAttackDamage		GetDamage
    \   GetBaseObject		gbo
    \   GetControl
    \   GetCrosshairRef
    \   GetDebugMode		GetDbMode
    \   GetEquippedCurrentHealth	GetEqCurHealth
    \   GetEquippedObject	GetEqObj
    \   GetEquipType
    \   GetFirstRef
    \   GetFirstRefInCell
    \   GetFOSEVersion
    \   GetFOSERevision
    \   GetFOSEBeta
    \   GetGameLoaded
    \   GetGameRestarted
    \   GetHealth		GetBaseHealth
    \   GetHotkeyItem
    \   GetKeyPress	gkp
    \   GetLinkedDoor
    \   GetModIndex
    \   GetMouseButtonPress
    \   GetNextRef
    \   GetNumericGameSetting
    \   GetNumericIniSetting
    \   GetNumKeysPressed	gnkp
    \   GetNumLoadedMods
    \   GetNumRefs
    \   GetNumRefsInCell
    \   GetNumMouseButtonsPressed	gmbp
    \   GetObjectEffect		GetEnchantment
    \   GetOpenKey		GetKey
    \   GetParentCell		gpc
    \   GetParentWorldspace	gpw
    \   GetRepairList		grl
    \   GetScript
    \   GetSourceModIndex
    \   GetTeleportCell
    \   GetType		GetObjectType
    \   GetUIFloat
    \   GetValue		GetItemValue
    \   GetWeight
    \   GetWeaponActionPoints	GetAP
    \   GetWeaponAimArc		GetAimArc
    \   GetWeaponAmmo		GetAmmo
    \   GetWeaponAmmoUse	GetAmmoUse
    \   GetWeaponAnimAttackMult		GetAnimAttackMult
    \   GetWeaponAnimJamTime		GetAnimJamTime
    \   GetWeaponAnimMult	GetAnimMult
    \   GetWeaponAnimReloadTime		GetAnimReloadTime
    \   GetWeaponAnimShotsPerSec	GetAnimShotsPerSec
    \   GetWeaponAttackAnimation	GetAttackAnim
    \   GetWeaponBaseVATSChance		GetVATSChance
    \   GetWeaponClipRounds	GetClipSize
    \   GetWeaponCritChance	GetCritPerc
    \   GetWeaponCritDamage	GetCritDam
    \   GetWeaponCritEffect	GetCritEffect
    \   GetWeaponFireDelayMin		GetFireDelayMin
    \   GetWeaponFireDelayMax		GetFireDelayMax
    \   GetWeaponFireRate	GetFireRate
    \   GetWeaponHandGrip	GetHandGrip
    \   GetWeaponHasScope
    \   GetWeaponIsAutomatic	GetIsAutomatic
    \   GetWeaponLimbDamageMult		GetLimbDamageMult
    \   GetWeaponMaxRange	GetMaxRange
    \   GetWeaponMinRange	GetMinRange
    \   GetWeaponMinSpread	GetMinSpread
    \   GetWeaponNumProjectiles		GetNumProj
    \   GetWeaponProjectile	GetWeapProj
    \   GetWeaponReach		GetReach
    \   GetWeaponReloadAnim	GetReloadAnim
    \   GetWeaponResistType		GetWeaponResist
    \   GetWeaponRumbleDuration		GetRumbleDuration
    \   GetWeaponRumbleLeftMotor	GetRumbleLeft
    \   GetWeaponRumbleRightMotor	GetRumbleRight
    \   GetWeaponRumbleWavelength	GetRumbleWavelen
    \   GetWeaponSightFOV	GetSightFOV
    \   GetWeaponSightUsage	GetSightUsage
    \   GetWeaponSkill
    \   GetWeaponSpread		GetSpread
    \   GetWeaponType		GetWeapType
    \   HoldKey		hk
    \   IsClonedForm	IsCloned
    \   IsControl
    \   IsControlDisabled
    \   IsControlPressed
    \   IsFormValid
    \   IsKeyDisabled
    \   IsKeyPressed
    \   IsModLoaded
    \   IsPowerArmor		IsPA
    \   IsReference
    \   IsScripted
    \   LeftShift
    \   ListAddReference	ListAddRef
    \   ListAddForm
    \   ListGetCount
    \   ListGetNthForm
    \   ListGetFormIndex
    \   ListRemoveForm
    \   ListRemoveNthForm	ListRemoveNth
    \   ListReplaceForm
    \   ListReplaceNthForm	ListReplaceNth
    \   Log10
    \   LogicalAnd
    \   LogicalNot
    \   LogicalOr
    \   LogicalXor
    \   MenuHoldKey	mhk
    \   MenuReleaseKey		mrk
    \   MenuTapKey	mtk
    \   PrintActiveTile
    \   PrintToConsole		printc
    \   ReleaseKey	rk
    \   RemoveScript
    \   RightShift
    \   SetAltControl
    \   SetAttackDamage		SetDamage
    \   SetBaseItemValue	SetValue
    \   SetControl
    \   SetDebugMode		dbmode
    \   SetEquippedCurrentHealth	SetEqCurHealth
    \   SetHealth	SetObjectHealth
    \   SetIsControl
    \   SetIsPowerArmor		SetIsPA
    \   SetName
    \   SetNumericGameSetting
    \   SetNumericIniSetting
    \   SetOpenKey	SetKey
    \   SetRepairList
    \   SetScript
    \   SetUIFloat
    \   SetUIString
    \   SetWeaponActionPoints		SetAP
    \   SetWeaponAimArc		SetAimArc
    \   SetWeaponAmmo		SetAmmo
    \   SetWeaponAmmoUse	SetAmmoUse
    \   SetWeaponAnimAttackMult		SetAnimAttackMult
    \   SetWeaponAnimMult	SetAnimMult
    \   SetWeaponAttackAnimation	SetAttackAnim
    \   SetWeaponBaseVATSChance		SetVATSChance
    \   SetWeaponClipRounds	SetClipSize
    \   SetWeaponCritChance	SetCritPerc
    \   SetWeaponCritDamage	SetCritDamage
    \   SetWeaponCritEffect	SetCritEffect
    \   SetWeaponHandGrip	SetHandGrip
    \   SetWeaponIsAutomatic	SetIsAutomatic
    \   SetWeaponLimbDamageMult		SetLimbDamageMult
    \   SetWeaponMaxRange	SetMaxRange
    \   SetWeaponMinRange	SetMinRange
    \   SetWeaponMinSpread	SetMinSpread
    \   SetWeaponNumProjectiles		SetNumProj
    \   SetWeaponProjectile	SetProjectile
    \   SetWeaponReach
    \   SetWeaponReloadAnim	SetReloadAnim
    \   SetWeaponSpread		SetSpread
    \   SetWeaponSightFOV	SetSightFOV
    \   SetWeaponSightUsage	SetSightUsage
    \   SetWeaponType
    \   SetWeight
    \   TapControl	tc
    \   TapKey		tk
    \   TempCloneForm


syn keyword geckFOSERepeat Label Goto GoTo


" @ the NVSE folks - where's the docs?!
syn keyword geckNVSEFunction
    \   BuildRef
    \   ClearBit
    \   GetActorBaseFlagsHigh
    \   GetActorBaseFlagsLow
    \   GetArmorDT
    \   GetLocalRefIndex
    \   GetNVSEBeta
    \   GetNVSERevision
    \   GetNVSEVersion
    \   GetOwner
    \   GetOwningFactionRequiredRank
    \   GetParentCellOwner
    \   GetParentCellOwningFactionRequiredRank
    \   GetPlayerCurrentAmmo
    \   GetPlayerCurrentAmmoRounds
    \   GetUIString
    \   GetWeaponFlags1
    \   GetWeaponFlags2
    \   GetWeaponItemMod
    \   GetWeaponLongBursts
    \   MessageBoxEx
    \   MessageEx
    \   SetActorBaseFlagsHigh
    \   SetActorBaseFlagsLow
    \   SetArmorAR
    \   SetArmorDT
    \   SetBit
    \   SetNameEx
    \   SetPlayerCurrentAmmoRounds
    \   SetUIStringEx
    \   SetWeaponFireRate
    \   SetWeaponFlags1
    \   SetWeaponFlags2
    \   SetWeaponLongBursts
    \   SortUIListBox


if !exists("did_make_geckscript_inits")

    let did_make_geckscript_inits = 1

    hi def link geckComment Comment
    hi def link geckString String

    hi def link geckInt Number
    hi def link geckFloat Float

    hi def link geckToDo Todo
    hi def link geckType Type
    hi def link geckConditional Conditional
    hi def link geckOperator Operator
    hi def link geckOtherKeywords Keyword
    hi def link geckScriptname Special
    hi def link geckBlock Conditional
    hi def link geckBlockType Special

    hi def link geckFunction Function
    hi def link geckFOSEFunction Function
    hi def link geckFOSERepeat Repeat
    hi def link geckNVSEFunction Function

endif
