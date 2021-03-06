
instance DIA_Mil_310_Stadtwache_EXIT(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 999;
	condition = DIA_Mil_310_Stadtwache_EXIT_Condition;
	information = DIA_Mil_310_Stadtwache_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Mil_310_Stadtwache_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Mil_310_Stadtwache_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


const string Mil_310_Checkpoint = "NW_CITY_ENTRANCE_MAIN";

var int MIL_310_Personal_AbsolutionLevel;

instance DIA_Mil_310_Stadtwache_FirstWarn(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 1;
	condition = DIA_Mil_310_Stadtwache_FirstWarn_Condition;
	information = DIA_Mil_310_Stadtwache_FirstWarn_Info;
	permanent = TRUE;
	important = TRUE;
};

func int DIA_Mil_310_Stadtwache_FirstWarn_Condition()
{
	if((B_GetGreatestPetzCrime(self) >= CRIME_ATTACK) && (B_GetCurrentAbsolutionLevel(self) == MIL_310_Personal_AbsolutionLevel))
	{
		self.aivar[AIV_PASSGATE] = FALSE;
	}
	else if(Mil_310_schonmalreingelassen == TRUE)
	{
		CITYGATEACCESSGRANTED = TRUE;
		self.aivar[AIV_PASSGATE] = TRUE;
	};
	if((self.aivar[AIV_Guardpassage_Status] == GP_NONE) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE) && (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_FirstWarn_Info()
{
	var C_Item itm;

	AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_00");	//СТОЙ!

	if(B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
	{
		AI_Output(other,self,"DIA_Mil_310_Stadtwache_FirstWarn_15_01");	//Что еще?
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_02");	//Ты сам знаешь, что!
		if(B_GetGreatestPetzCrime(self) == CRIME_MURDER)
		{
			AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_03");	//Ты разыскиваешься за убийство в городе!
		};
		if(B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_04");	//Мы не потерпим здесь грязных воров!
		};
		if(B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_05");	//Нам не нужны смутьяны в городе!
		};
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_06");	//С чего ты взял, что мы должны впустить тебя?
	}
	else
	{
		itm = Npc_GetEquippedArmor(other);
		if((hero.guild == GIL_NONE) && ((Npc_HasEquippedArmor(other) == FALSE) || Hlp_IsItem(itm,ITAR_Her_M) || Hlp_IsItem(itm,ITAR_prisonel) || Hlp_IsItem(itm,ITAR_Her_N) || Hlp_IsItem(itm,ITAR_Prisoner) || Hlp_IsItem(itm,itar_sekbed)))
		{
			AI_Output(other,self,"DIA_Mil_310_Stadtwache_FirstWarn_15_07");	//Что?
			AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_08");	//Тебе туда нельзя!
			AI_Output(other,self,"DIA_Mil_310_Stadtwache_FirstWarn_15_09");	//Почему?
			AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_10");	//От таких оборванцев, как ты, одни проблемы!
			AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_11");	//В городе и так хватает всякого сброда. Нам не нужны люди, у которых нет денег.
			Log_CreateTopic(TOPIC_City,LOG_MISSION);
			Log_SetTopicStatus(TOPIC_City,LOG_Running);
			B_LogEntry(TOPIC_City,"Чтобы стражники позволили мне войти в город, я должен выглядеть так, как будто у меня есть деньги. Ну, или я должен найти какой-нибудь другой способ.");
		}
		else if((Hlp_IsItem(itm,ITAR_Bau_L) == TRUE) || (Hlp_IsItem(itm,ITAR_Bau_M) == TRUE))
		{
			if(self.aivar[AIV_TalkedToPlayer] == TRUE)
			{
				AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_12");	//Что тебе нужно на этот раз?
				AI_Output(other,self,"DIA_Mil_310_Stadtwache_FirstWarn_15_13");	//Меня послал фермер.
				AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_14");	//И? У тебя хотя бы на этот раз есть уважительная причина, чтобы попасть в город?
			}
			else
			{
				AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_15");	//Ты один из работников с фермы Лобарта? Я никогда не видел тебя!
				AI_Output(other,self,"DIA_Mil_310_Stadtwache_FirstWarn_15_16");	//Я недавно работаю на Лобарта.
				AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_17");	//Что тебе нужно в городе?
			};
		}
		else
		{
			AI_Output(other,self,"DIA_Mil_310_Stadtwache_FirstWarn_15_18");	//(Спокойно) Что?
			if((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF) || (hero.guild == GIL_KDW) || (hero.guild == GIL_KDM) || (hero.guild == GIL_SEK) || (hero.guild == GIL_TPL) || (hero.guild == GIL_GUR))
			{
				AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_19");	//Прошу извинить меня. Я просто выполняю приказы.
				AI_Output(other,self,"DIA_Mil_310_Stadtwache_FirstWarn_15_20");	//Ты хочешь меня задержать?
				if((hero.guild == GIL_KDW) || (hero.guild == GIL_KDM) || (hero.guild == GIL_SEK) || (hero.guild == GIL_TPL) || (hero.guild == GIL_GUR))
				{
					AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_20A");	//Конечно нет!
				}
				else
				{
					AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_21");	//Конечно нет! Разумеется, мы рады видеть служителей Инноса.
				};
			}
			else
			{
				AI_Output(self,other,"DIA_Mil_310_Stadtwache_FirstWarn_07_22");	//Я просто хотел рассмотреть тебя. Похоже, у тебя есть деньги. Можешь походить.
			};
			CITYGATEACCESSGRANTED = TRUE;
			self.aivar[AIV_PASSGATE] = TRUE;
			Stadtwache_333.aivar[AIV_PASSGATE] = TRUE;
			Mil_310_schonmalreingelassen = TRUE;
			AI_StopProcessInfos(self);
		};
	};
	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,Mil_310_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};


instance DIA_Mil_310_Stadtwache_SecondWarn(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 2;
	condition = DIA_Mil_310_Stadtwache_SecondWarn_Condition;
	information = DIA_Mil_310_Stadtwache_SecondWarn_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Mil_310_Stadtwache_SecondWarn_Condition()
{
	if((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE) && (Npc_GetDistToWP(other,Mil_310_Checkpoint) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_SecondWarn_Info()
{
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_SecondWarn_07_00");	//Хватит шутить. Еще один шаг - и я порублю тебя в капусту!
	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,Mil_310_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;
	AI_StopProcessInfos(self);
};


instance DIA_Mil_310_Stadtwache_Attack(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 3;
	condition = DIA_Mil_310_Stadtwache_Attack_Condition;
	information = DIA_Mil_310_Stadtwache_Attack_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Mil_310_Stadtwache_Attack_Condition()
{
	if((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE) && (Npc_GetDistToWP(other,Mil_310_Checkpoint) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Attack_07_00");	//Ты сам напросился...
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_GuardStopsIntruder,0);
};


instance DIA_Mil_310_Stadtwache_Bribe(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 5;
	condition = DIA_Mil_310_Stadtwache_Bribe_Condition;
	information = DIA_Mil_310_Stadtwache_Bribe_Info;
	permanent = TRUE;
	description = "Вот сто золотых! Позволь мне пройти.";
};


func int DIA_Mil_310_Stadtwache_Bribe_Condition()
{
	if(self.aivar[AIV_PASSGATE] == FALSE)
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_Bribe_Info()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Bribe_15_00");	//Вот сто золотых! Позволь мне пройти.
	if(B_GiveInvItems(other,self,ItMi_Gold,100))
	{
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_Bribe_07_01");	//Сто?! Сто золотых - это неплохо...(жадно) Проходи конечно!
		if(B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
		{
			AI_Output(self,other,"DIA_Mil_310_Stadtwache_Bribe_07_02");	//И сразу иди к Андрэ! Или я в следующий раз опять возьму с тебя сто золотых!
		};
		CITYGATEACCESSGRANTED = TRUE;
		self.aivar[AIV_PASSGATE] = TRUE;
		Stadtwache_333.aivar[AIV_PASSGATE] = TRUE;
		Mil_310_schonmalreingelassen = TRUE;
		MIL_310_Personal_AbsolutionLevel = B_GetCurrentAbsolutionLevel(self) + 1;
	}
	else
	{
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_Bribe_07_03");	//Что?! Где?! Я не вижу золота. Проваливай!
	};
	AI_StopProcessInfos(self);
};


instance DIA_Mil_310_Stadtwache_Passierschein(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 4;
	condition = DIA_Mil_310_Stadtwache_Passierschein_Condition;
	information = DIA_Mil_310_Stadtwache_Passierschein_Info;
	permanent = FALSE;
	description = "У меня есть пропуск!";
};


func int DIA_Mil_310_Stadtwache_Passierschein_Condition()
{
	if(Npc_HasItems(other,ItWr_Passierschein) && (Mil_310_schonmalreingelassen == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_Passierschein_Info()
{
	var C_Item itm;
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Passierschein_15_00");	//У меня есть пропуск!

	if((hero.guild == GIL_NONE) && ((Npc_HasEquippedArmor(other) == FALSE) || Hlp_IsItem(itm,ITAR_Her_M) || Hlp_IsItem(itm,ITAR_Her_N) || Hlp_IsItem(itm,ITAR_Prisoner) || Hlp_IsItem(itm,itar_sekbed)))
	{
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_Passierschein_07_01");	//Да ну? И кого ты убил ради этой бумажки?
		AI_Output(other,self,"DIA_Mil_310_Stadtwache_Passierschein_15_02");	//Так ты позволишь мне пройти или нет?
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_Passierschein_07_03");	//Ладно, иди, пока я не передумал!
	}
	else
	{
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_Passierschein_07_04");	//Все в порядке. Проходи.
	};

	CITYGATEACCESSGRANTED = TRUE;
	self.aivar[AIV_PASSGATE] = TRUE;
	Stadtwache_333.aivar[AIV_PASSGATE] = TRUE;
	Mil_310_schonmalreingelassen = TRUE;
	AI_StopProcessInfos(self);
};


instance DIA_Mil_310_Stadtwache_ZumSchmied(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 3;
	condition = DIA_Mil_310_Stadtwache_ZumSchmied_Condition;
	information = DIA_Mil_310_Stadtwache_ZumSchmied_Info;
	permanent = FALSE;
	description = "Я хочу увидеться с кузнецом. Он должен починить кое-какую утварь.";
};


func int DIA_Mil_310_Stadtwache_ZumSchmied_Condition()
{
	var C_Item itm;
	itm = Npc_GetEquippedArmor(other);

	if(((Hlp_IsItem(itm,ITAR_Bau_L) == TRUE) || (Hlp_IsItem(itm,ITAR_Bau_M) == TRUE)) && Npc_KnowsInfo(other,DIA_Maleth_ToTheCity) && (Mil_310_schonmalreingelassen == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_ZumSchmied_Info()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_ZumSchmied_15_00");	//Я хочу увидеться с кузнецом. Он должен починить кое-какую утварь.

	if(Mil_310_Scheisse_erzaehlt == TRUE)
	{
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_ZumSchmied_07_01");	//(зло) Да? А почему ты это сразу не сказал?
		AI_Output(other,self,"DIA_Mil_310_Stadtwache_ZumSchmied_15_02");	//Мне просто было интересно, как ты будешь реагировать.
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_ZumSchmied_07_03");	//Что?! Еще раз выкинешь такой номер, и я покажу тебе, как я реагирую на такие выходки, тупая деревенщина!
	}
	else
	{
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_ZumSchmied_07_04");	//Хорошо, ты можешь проходить.
	};

	AI_Output(self,other,"DIA_Mil_310_Stadtwache_ZumSchmied_07_05");	//И если увидишь Лобарта, скажи ему, чтобы лучше кормил своих овец. Мы скоро зайдем к нему за ними!
	CITYGATEACCESSGRANTED = TRUE;
	self.aivar[AIV_PASSGATE] = TRUE;
	Stadtwache_333.aivar[AIV_PASSGATE] = TRUE;
	Mil_310_schonmalreingelassen = TRUE;
	B_GivePlayerXP(XP_Ambient);
	AI_StopProcessInfos(self);
};


instance DIA_Addon_Mil_310_Stadtwache_Constantino(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 2;
	condition = DIA_Addon_Mil_310_Stadtwache_Constantino_Condition;
	information = DIA_Addon_Mil_310_Stadtwache_Constantino_Info;
	permanent = TRUE;
	description = "Я принес травы для алхимика Константино.";
};


func int DIA_Addon_Mil_310_Stadtwache_Constantino_Condition()
{
	if((MIS_Addon_Lester_PickForConstantino == LOG_Running) && (Mil_310_schonmalreingelassen == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Mil_310_Stadtwache_Constantino_Info()
{
	AI_Output(other,self,"DIA_Addon_Mil_310_Stadtwache_Constantino_15_00");	//Я принес травы для алхимика Константино.

	if((Npc_HasItems(other,ItPl_Mana_Herb_01) > 0) || (Npc_HasItems(other,ItPl_Mana_Herb_02) > 0) || (Npc_HasItems(other,ItPl_Mana_Herb_03) > 0) || (Npc_HasItems(other,ItPl_Health_Herb_01) > 0) || (Npc_HasItems(other,ItPl_Health_Herb_02) > 0) || (Npc_HasItems(other,ItPl_Health_Herb_03) > 0) || (Npc_HasItems(other,ItPl_Dex_Herb_01) > 0) || (Npc_HasItems(other,ItPl_Strength_Herb_01) > 0) || (Npc_HasItems(other,ItPl_Speed_Herb_01) > 0) || (Npc_HasItems(other,ItPl_Temp_Herb) > 0) || (Npc_HasItems(other,ItPl_Perm_Herb) > 0) || (Npc_HasItems(other,ItPl_Beet) > 0))
	{
		AI_Output(self,other,"DIA_Addon_Mil_310_Stadtwache_Constantino_07_01");	//Правда? Ты же не будешь возражать, если я взгляну на них, не так ли?

		if((Npc_HasItems(other,ItPl_Mana_Herb_01) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Mana_Herb_02) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Mana_Herb_03) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Health_Herb_01) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Health_Herb_02) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Health_Herb_03) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Dex_Herb_01) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Strength_Herb_01) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Speed_Herb_01) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Temp_Herb) >= MinimumPassagePlants) || (Npc_HasItems(other,ItPl_Perm_Herb) >= MinimumPassagePlants))
		{
			AI_Output(self,other,"DIA_Addon_Mil_310_Stadtwache_Constantino_07_02");	//Хммм...(одобрительно) Выглядит неплохо! Хорошо, ты можешь пройти. Но не создавай проблем, ты понял?

			if(RhetorikSkillValue[1] < 100)
			{
				RhetorikSkillValue[1] = RhetorikSkillValue[1] + 1;
				AI_Print("Риторика + 1");
			};

			CITYGATEACCESSGRANTED = TRUE;
			self.aivar[AIV_PASSGATE] = TRUE;
			Stadtwache_333.aivar[AIV_PASSGATE] = TRUE;
			Mil_310_schonmalreingelassen = TRUE;
			MIS_Addon_Lester_PickForConstantino = LOG_SUCCESS;
			B_GivePlayerXP(XP_Addon_PickForConstantino);
			CheckTownPlants = TRUE;
			AI_StopProcessInfos(self);
		}
		else
		{
			AI_Output(self,other,"DIA_Addon_Mil_310_Stadtwache_Constantino_07_03");	//Что? Что это такое?

			if(Npc_HasItems(other,ItPl_Beet) >= MinimumPassagePlants)
			{
				AI_Output(self,other,"DIA_Addon_Mil_310_Stadtwache_Constantino_07_04");	//Что, интересно, алхимик будет делать с этой дурацкой репой? Ты хочешь посмеяться надо мной? Проваливай!
			}
			else
			{
				AI_Output(self,other,"DIA_Addon_Mil_310_Stadtwache_Constantino_07_05");	//В алхимии я не разбираюсь, но даже мне понятно, что этот пучок из разных травок ни одному алхимику не понадобится.
			};
		};
	}
	else
	{
		AI_Output(self,other,"DIA_Addon_Mil_310_Stadtwache_Constantino_07_06");	//Какие травы? У тебя нет никаких трав. Убирайся!
	};

	AI_StopProcessInfos(self);
};


instance DIA_Mil_310_Stadtwache_MilizWerden(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 2;
	condition = DIA_Mil_310_Stadtwache_MilizWerden_Condition;
	information = DIA_Mil_310_Stadtwache_MilizWerden_Info;
	permanent = FALSE;
	description = "Я пришел, чтобы вступить в ополчение!";
};


func int DIA_Mil_310_Stadtwache_MilizWerden_Condition()
{
	if(Mil_310_schonmalreingelassen == FALSE)
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_MilizWerden_Info()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_MilizWerden_15_00");	//Я пришел, чтобы вступить в ополчение!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_MilizWerden_07_01");	//Да ты что?! Попробуй рассказать эту сказку у других ворот - может, они купятся на нее.
	Mil_310_Scheisse_erzaehlt = TRUE;
};


instance DIA_Mil_310_Stadtwache_Paladine(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 1;
	condition = DIA_Mil_310_Stadtwache_Paladine_Condition;
	information = DIA_Mil_310_Stadtwache_Paladine_Info;
	permanent = FALSE;
	description = "Мне нужно увидеть главу паладинов!";
};


func int DIA_Mil_310_Stadtwache_Paladine_Condition()
{
	if(Mil_310_schonmalreingelassen == FALSE)
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_Paladine_Info()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_15_00");	//Мне нужно увидеть главу паладинов! У меня важное сообщение для него!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_07_01");	//Ох? И что это за важное сообщение?
	Mil_310_Scheisse_erzaehlt = TRUE;
	Info_ClearChoices(DIA_Mil_310_Stadtwache_Paladine);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Город скоро подвергнется нападению!",DIA_Mil_310_Stadtwache_Paladine_AttackSoon);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Силы зла собираются в Долине Хориниса!",DIA_Mil_310_Stadtwache_Paladine_EvilArmy);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Я пришел, чтобы получить Глаз Инноса!",DIA_Mil_310_Stadtwache_Paladine_EyeInnos);
};

func void DIA_Mil_310_Stadtwache_Paladine_EyeInnos()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_EyeInnos_15_00");	//Я пришел, чтобы получить Глаз Инноса!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_EyeInnos_07_01");	//Что? Никогда не слышал о нем. А что это такое?
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_EyeInnos_15_02");	//Это очень важный артефакт.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_EyeInnos_07_03");	//Ты не похож на важного посланника. У тебя есть какие-нибудь документы?
	if(!Npc_HasItems(other,ItWr_Passierschein) > 0)
	{
		AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_EyeInnos_15_04");	//Нет!
		AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_EyeInnos_07_05");	//Тогда не трать мое время попусту!
	};
	Info_ClearChoices(DIA_Mil_310_Stadtwache_Paladine);
};

func void DIA_Mil_310_Stadtwache_Paladine_EvilArmy()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_EvilArmy_15_00");	//Силы зла собираются в Долине Хориниса!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_EvilArmy_07_01");	//В Долине Рудников? Ты пришел оттуда? Ты видел там армию?
	Info_ClearChoices(DIA_Mil_310_Stadtwache_Paladine);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Нет, но меня послал человек, который видел их.",DIA_Mil_310_Stadtwache_Paladine_NoSomeone);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Нет. Но я знаю, что ее ведут драконы!",DIA_Mil_310_Stadtwache_Paladine_NoDragons);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Да. Я был в долине Хориниса. Я видел там гигантских драконов!",DIA_Mil_310_Stadtwache_Paladine_YesDragons);
};

func void DIA_Mil_310_Stadtwache_Paladine_AttackSoon()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_AttackSoon_15_00");	//Город скоро подвергнется нападению!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_AttackSoon_07_01");	//Что? Кого? Орков? ты видел армию?
	Info_ClearChoices(DIA_Mil_310_Stadtwache_Paladine);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Нет, но меня послал человек, который видел их.",DIA_Mil_310_Stadtwache_Paladine_NoSomeone);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Нет. Но я знаю, что ее ведут драконы!",DIA_Mil_310_Stadtwache_Paladine_NoDragons);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Да. Я был в долине Хориниса. Я видел там гигантских драконов! ",DIA_Mil_310_Stadtwache_Paladine_YesDragons);
};

func void DIA_Mil_310_Stadtwache_Paladine_NoDragons()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_NoDragons_15_00");	//Нет. Но я знаю, что ее ведут драконы!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_NoDragons_07_01");	//Ну конечно! А моя бабушка консультирует генералов орков.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_NoDragons_07_02");	//Я не думаю, что мы позволим тебе донести эти бредовые сплетни до ушей лорда Хагена!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_NoDragons_07_03");	//Проваливай!
	Player_KnowsLordHagen = TRUE;
	AI_StopProcessInfos(self);
};

func void DIA_Mil_310_Stadtwache_Paladine_NoSomeone()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_NoSomeone_15_00");	//Нет, но меня послал человек, который видел их.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_NoSomeone_07_01");	//КТО послал тебя?...(недоверчиво) 
	Info_ClearChoices(DIA_Mil_310_Stadtwache_Paladine);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Я не вправе рассказывать тебе об этом.",DIA_Mil_310_Stadtwache_Paladine_CantTellYou);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Паладин.",DIA_Mil_310_Stadtwache_Paladine_APaladin);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Маг.",DIA_Mil_310_Stadtwache_Paladine_AMage);
};

func void DIA_Mil_310_Stadtwache_Paladine_YesDragons()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_YesDragons_15_00");	//Да. Я был в долине Хориниса. Я видел там гигантских драконов!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_YesDragons_07_01");	//Ты лжешь! Проход в долину закрыт с обеих сторон. Никто не пройдет там!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_YesDragons_07_02");	//Убирайся отсюда!
	AI_StopProcessInfos(self);
};

func void DIA_Mil_310_Stadtwache_Paladine_AMage()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_AMage_15_00");	//Маг.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_AMage_07_01");	//Ты несешь новости от мага? Тогда у тебя, конечно, есть печать в качестве доказательства?!
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_AMage_15_02");	//Нет.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_AMage_07_03");	//Что? Маги ВСЕГДА дают своим посыльным печать.
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_AMage_15_04");	//Но не этот маг.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_AMage_07_05");	//Я не верю тебе. Если ты настоящий посланник, то давай, выкладывай свои новости или проваливай!
	Info_ClearChoices(DIA_Mil_310_Stadtwache_Paladine);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Я могу передать это сообщение только паладинам!",DIA_Mil_310_Stadtwache_Paladine_OnlyPaladins);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Драконы ведут на нас армию зла! ",DIA_Mil_310_Stadtwache_Paladine_DepecheDragons);
};

func void DIA_Mil_310_Stadtwache_Paladine_APaladin()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_APaladin_15_00");	//Паладин.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_APaladin_07_01");	//Хм, это возможно - паладины охраняют проход в Долину Рудников.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_APaladin_07_02");	//Дай мне твое сообщение, и я доложу о тебе.
	Info_ClearChoices(DIA_Mil_310_Stadtwache_Paladine);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Я могу передать это сообщение только паладинам!",DIA_Mil_310_Stadtwache_Paladine_OnlyPaladins);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Армию зла возглавляют драконы!",DIA_Mil_310_Stadtwache_Paladine_DepecheDragons);
};

func void DIA_Mil_310_Stadtwache_Paladine_CantTellYou()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_CantTellYou_15_00");	//Я не вправе рассказывать тебе об этом.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_CantTellYou_07_01");	//Не говори так, мой мальчик! Я состою в городской страже.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_CantTellYou_07_02");	//Ты можешь рассказать мне ВСЕ. Итак, кто послал тебя?
};

func void DIA_Mil_310_Stadtwache_Paladine_DepecheDragons()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_DepecheDragons_15_00");	//Армию зла возглавляют драконы!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_DepecheDragons_07_01");	//Что? Это не может быть правдой. А я чуть не впустил тебя!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_DepecheDragons_07_02");	//Если бы ты рассказал ЭТУ историю лорду Хагену, он бы повесил меня за халатность.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_DepecheDragons_07_03");	//Проваливай!
	Player_KnowsLordHagen = TRUE;
	AI_StopProcessInfos(self);
};

func void DIA_Mil_310_Stadtwache_Paladine_OnlyPaladins()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_OnlyPaladins_15_00");	//Я могу передать это сообщение только паладинам!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_OnlyPaladins_07_01");	//Так не получится, мой мальчик!
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_OnlyPaladins_07_02");	//Я ни за что не позволю тебе обратиться к лорду Хагену, пока не буду уверен, что ты не потратишь его драгоценное время впустую.
	Player_KnowsLordHagen = TRUE;
	Info_ClearChoices(DIA_Mil_310_Stadtwache_Paladine);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Нет. Я передам сообщение ТОЛЬКО паладину.",DIA_Mil_310_Stadtwache_Paladine_Only2);
	Info_AddChoice(DIA_Mil_310_Stadtwache_Paladine,"Драконы ведут на нас армию зла! ",DIA_Mil_310_Stadtwache_Paladine_DepecheDragons);
};

func void DIA_Mil_310_Stadtwache_Paladine_Only2()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_Paladine_Only2_15_00");	//Нет. Это сообщение предназначено ТОЛЬКО паладинам.
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_Paladine_Only2_07_01");	//Тогда твой путь оканчивается здесь, чужеземец.
	AI_StopProcessInfos(self);
};


instance DIA_Mil_310_Stadtwache_PERM(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 5;
	condition = DIA_Mil_310_Stadtwache_PERM_Condition;
	information = DIA_Mil_310_Stadtwache_PERM_Info;
	permanent = TRUE;
	important = TRUE;
};


func int DIA_Mil_310_Stadtwache_PERM_Condition()
{
	if((self.aivar[AIV_PASSGATE] == TRUE) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Mil_310_Stadtwache_PERM_Info()
{
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_PERM_07_00");	//Проходи!
	AI_StopProcessInfos(self);
};


instance DIA_MIL_310_STADTWACHE_KILLIGNAZ(C_Info)
{
	npc = Mil_310_Stadtwache;
	nr = 5;
	condition = dia_mil_310_stadtwache_killignaz_condition;
	information = dia_mil_310_stadtwache_killignaz_info;
	permanent = FALSE;
	description = "Ничего в последнее время необычного не замечал?";
};


func int dia_mil_310_stadtwache_killignaz_condition()
{
	if((MIS_KILLIGNAZ == LOG_Running) && (READORTEGO == FALSE) && (HELPKILLIGNAZ == TRUE))
	{
		return TRUE;
	};
};

func void dia_mil_310_stadtwache_killignaz_info()
{
	AI_Output(other,self,"DIA_Mil_310_Stadtwache_KillIgnaz_01_00");	//Ничего в последнее время необычного не замечал?
	AI_Output(self,other,"DIA_Mil_310_Stadtwache_KillIgnaz_01_01");	//Нет, ничего такого...(лениво) Тут все тихо!
	AI_StopProcessInfos(self);
};

