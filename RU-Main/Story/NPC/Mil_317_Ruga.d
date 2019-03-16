
instance Mil_317_Ruga(Npc_Default)
{
	name[0] = "Руга";
	guild = GIL_MIL;
	id = 317;
	voice = 11;
	flags = 0;
	npcType = npctype_main;
	aivar[AIV_MM_RestEnd] = TRUE;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_NAILED;
	EquipItem(self,ItMw_1h_Mil_Sword);
	EquipItem(self,ItRw_Mil_Crossbow);
	CreateInvItems(self,ItRw_Bolt,10);
	B_CreateAmbientInv(self);
	CreateInvItems(self,ItKe_City_Tower_03,1);
	B_SetNpcVisual(self,MALE,"Hum_Head_Thief",Face_N_NormalBart03,BodyTex_N,ITAR_Mil_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_317;
};

func void Rtn_Start_317()
{
	TA_Stand_Guarding(7,0,13,0,"KASERNE");
	TA_Stand_Drinking(13,0,16,0,"NW_CITY_HABOUR_TAVERN01_STAND_01");
	TA_Stand_Guarding(16,0,20,0,"KASERNE");
	TA_Sit_Chair(20,0,22,0,"NW_CITY_HABOUR_KASERN_15_B");
	TA_Sleep(22,0,7,0,"NW_CITY_BARRACK01_BED_08");
};
