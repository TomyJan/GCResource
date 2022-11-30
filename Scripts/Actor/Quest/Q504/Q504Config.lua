local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Actor/ActorCommon"
L0_1(L1_1)
L0_1 = {}
L0_1.MainID = 504
L0_1.ActorAlias = "504"
L1_1 = {}
L1_1.q50401 = 50401
L1_1.q50402 = 50402
L1_1.q50403 = 50403
L1_1.q50404 = 50404
L1_1.q50407 = 50407
L0_1.SubIDs = L1_1
L0_1.Seal1ID = 100148
L0_1.Seal2ID = 100149
L1_1 = sceneData
L2_1 = L1_1
L1_1 = L1_1.GetDummyPoint
L3_1 = 3
L4_1 = "Q504SealPos"
L1_1 = L1_1(L2_1, L3_1, L4_1)
L1_1 = L1_1.pos
L0_1.SealPos = L1_1
L1_1 = sceneData
L2_1 = L1_1
L1_1 = L1_1.GetDummyPoint
L3_1 = 3
L4_1 = "Q504SealPos"
L1_1 = L1_1(L2_1, L3_1, L4_1)
L1_1 = L1_1.rot
L0_1.SealRot = L1_1
L1_1 = {}
L2_1 = CutsceneType
L2_1 = L2_1.TIME_LINE_PREFAB
L1_1.type = L2_1
L1_1.roleSheetPath = ""
L1_1.resPath = "ART/Cutscene/Cs_MDAQ504_DvalinLairDisplay01"
L2_1 = CutsceneInitPosType
L2_1 = L2_1.FREE
L1_1.startPosType = L2_1
L2_1 = {}
L3_1 = 0
L4_1 = 0
L5_1 = 0
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L1_1.startOffset = L2_1
L0_1.LairDisplay01TimeCfg = L1_1
L1_1 = {}
L2_1 = CutsceneType
L2_1 = L2_1.TIME_LINE_PREFAB
L1_1.type = L2_1
L1_1.roleSheetPath = ""
L1_1.resPath = "ART/Cutscene/Cs_MDAQ504_DvalinLairDisplay02"
L2_1 = CutsceneInitPosType
L2_1 = L2_1.FREE
L1_1.startPosType = L2_1
L2_1 = {}
L3_1 = 0
L4_1 = 0
L5_1 = 0
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L1_1.startOffset = L2_1
L0_1.LairDisplay02TimeCfg = L1_1
L1_1 = {}
L1_1.Wendy = "Wendy"
L1_1.WendyScript = "Actor/Quest/Q301/Wendy301"
L1_1.WendyID = 1001
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q504Venti"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.pos
L1_1.bornPos = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q504Venti"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.rot
L1_1.bornDir = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q50402Venti"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.pos
L1_1.bornPos2 = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q50402Venti"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.rot
L1_1.bornDir2 = L2_1
L0_1.WendyData = L1_1
L1_1 = {}
L1_1.Qin = "Qin"
L1_1.QinScript = "Actor/Quest/Q411/Qin"
L1_1.QinID = 1006
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q504Qin"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.pos
L1_1.bornPos = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q504Qin"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.rot
L1_1.bornDir = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q50402Qin"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.pos
L1_1.bornPos2 = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q50402Qin"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.rot
L1_1.bornDir2 = L2_1
L0_1.QinData = L1_1
L1_1 = {}
L1_1.Diluc = "Diluc"
L1_1.DilucScript = "Actor/Quest/Q376/Diluc"
L1_1.DilucID = 1009
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q504Diluc"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.pos
L1_1.bornPos = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q504Diluc"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.rot
L1_1.bornDir = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q50402Diluc"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.pos
L1_1.bornPos2 = L2_1
L2_1 = sceneData
L3_1 = L2_1
L2_1 = L2_1.GetDummyPoint
L4_1 = 3
L5_1 = "Q50402Diluc"
L2_1 = L2_1(L3_1, L4_1, L5_1)
L2_1 = L2_1.rot
L1_1.bornDir2 = L2_1
L0_1.DilucData = L1_1
L1_1 = {}
L2_1 = {}
L2_1.dialogID = 5040301
L2_1.duration = 6
L3_1 = {}
L3_1.dialogID = 5040302
L3_1.duration = 6
L4_1 = {}
L4_1.dialogID = 5040303
L4_1.duration = 6
L5_1 = {}
L5_1.dialogID = 5040304
L5_1.duration = 6
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L0_1.Story1 = L1_1
L1_1 = {}
L2_1 = {}
L2_1.dialogID = 5040101
L2_1.duration = 6
L3_1 = {}
L3_1.dialogID = 5040102
L3_1.duration = 6
L4_1 = {}
L4_1.dialogID = 5040103
L4_1.duration = 6
L5_1 = {}
L5_1.dialogID = 5040104
L5_1.duration = 6
L6_1 = {}
L6_1.dialogID = 5040105
L6_1.duration = 6
L7_1 = {}
L7_1.dialogID = 5040106
L7_1.duration = 6
L8_1 = {}
L8_1.dialogID = 5040107
L8_1.duration = 6
L9_1 = {}
L9_1.dialogID = 5040108
L9_1.duration = 6
L10_1 = {}
L10_1.dialogID = 5040109
L10_1.duration = 6
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L0_1.Story2 = L1_1
return L0_1
