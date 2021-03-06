
func void player_mob_missing_key_or_lockpick()
{
	AI_Print(PRINT_Picklock_or_KeyMissing);
	AI_PlayAni(self,"T_DONTKNOW");
	B_Say_Overlay(self,self,"$PICKLOCKORKEYMISSING");
};

func void player_mob_missing_key()
{
	AI_Print(PRINT_KeyMissing);
	AI_PlayAni(self,"T_DONTKNOW");
	B_Say_Overlay(self,self,"$KEYMISSING");
};

func void player_mob_missing_lockpick()
{
	if(Npc_GetTalentSkill(hero,NPC_TALENT_PICKLOCK) == FALSE)
	{
		AI_Print(PRINT_NoPicklockTalent);
		AI_PlayAni(self,"T_DONTKNOW");
		B_Say_Overlay(self,self,"$NOPICKLOCKTALENT");
	}
	else
	{
		AI_Print(PRINT_PicklockMissing);
		AI_PlayAni(self,"T_DONTKNOW");
		B_Say_Overlay(self,self,"$PICKLOCKMISSING");
	};
};

func void player_mob_never_open()
{
	AI_Print(PRINT_NeverOpen);
	AI_PlayAni(self,"T_DONTKNOW");
};

func void player_mob_missing_item()
{
	AI_Print(PRINT_MissingItem);
	AI_PlayAni(self,"T_DONTKNOW");
	B_Say_Overlay(self,self,"$MISSINGITEM");
};

func void player_mob_another_is_using()
{
	AI_Print(PRINT_AnotherUser);
	AI_PlayAni(self,"T_DONTKNOW");
};

func void player_mob_too_far_away()
{
	AI_Print(PRINT_Toofar_Away);
	AI_PlayAni(self,"T_DONTKNOW");
};

func void player_mob_wrong_side()
{
	AI_Print(PRINT_WrongSide);
	AI_PlayAni(self,"T_DONTKNOW");
};

func void player_trade_not_enough_gold()
{
	AI_Print(PRINT_Trade_Not_Enough_Gold);
};