
instance DMT_1215_KELIOS(Npc_Default)
{
	name[0] = "Келиос";
	guild = GIL_NONE;
	level = 500;
	voice = 18;
	id = 1215;
	flags = NPC_FLAG_IMMORTAL;
	npcType = npctype_main;
	aivar[94] = NPC_EPIC;
	aivar[AIV_EnemyOverride] = TRUE;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	B_SetAttributesToChapter(self,8);
	fight_tactic = FAI_HUMAN_MASTER;
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_B_Guardian,BodyTex_Guardians,itar_fireguardian);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	daily_routine = rtn_waitinsecretlab_1215;
};


func void rtn_start_1215()
{
	TA_Stand_ArmsCrossed(8,0,23,0,"NW_DMT_1215_KELIOS");
	TA_Stand_ArmsCrossed(23,0,8,0,"NW_DMT_1215_KELIOS");
};

func void rtn_waitinsecretlab_1215()
{
	TA_Stand_ArmsCrossed(8,0,23,0,"NW_HRN_04");
	TA_Stand_ArmsCrossed(23,0,8,0,"NW_HRN_04");
};

