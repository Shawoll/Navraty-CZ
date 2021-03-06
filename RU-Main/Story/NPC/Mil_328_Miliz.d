
instance Mil_328_Miliz(Npc_Default)
{
	name[0] = "Милс";
	guild = GIL_NONE;
	id = 328;
	voice = 8;
	flags = 0;
	npcType = npctype_main;
	aivar[AIV_DropDeadAndKill] = TRUE;
	aivar[AIV_ToughGuy] = TRUE;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Mil_Sword);
	CreateInvItems(self,ItKe_Storage,1);
	CreateInvItems(self,ItMi_HerbPaket,1);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_NormalBart17,BodyTex_N,ITAR_Vlk_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_328;
};

func void Rtn_Start_328()
{
	TA_Stand_Guarding(4,0,21,0,"NW_CITY_HABOUR_HUT_03_IN_05");
	TA_Stand_Guarding(21,0,4,0,"NW_CITY_HABOUR_HUT_03_IN_05");
};

