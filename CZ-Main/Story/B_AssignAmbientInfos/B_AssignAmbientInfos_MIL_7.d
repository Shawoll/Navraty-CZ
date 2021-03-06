
instance DIA_MIL_7_EXIT(C_Info)
{
	nr = 999;
	condition = DIA_MIL_7_EXIT_Condition;
	information = DIA_MIL_7_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_MIL_7_EXIT_Condition()
{
	return TRUE;
};

func void DIA_MIL_7_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_MIL_7_JOIN(C_Info)
{
	nr = 4;
	condition = DIA_MIL_7_JOIN_Condition;
	information = DIA_MIL_7_JOIN_Info;
	permanent = TRUE;
	description = "Chci se přidat k domobraně!";
};


func int DIA_MIL_7_JOIN_Condition()
{
	if(hero.guild == GIL_NONE)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_MIL_7_JOIN_Info()
{
	AI_Output(other,self,"DIA_MIL_7_JOIN_15_00");	//Chci se přidat k domobraně!
	if(Player_IsApprentice == APP_NONE)
	{
		AI_Output(self,other,"DIA_MIL_7_JOIN_07_01");	//Ještě ses nestal občanem Khorinisu! Proč si myslíš, že by tě měl lord Andre přijmout?
		AI_Output(self,other,"DIA_MIL_7_JOIN_07_02");	//Takhle by mohl přijít každý - dostal by zbraň a nějakou zbroj a pak s tím zmizel!
		if(C_NpcIsInQuarter(self) != Q_KASERNE)
		{
			AI_Output(other,self,"DIA_MIL_7_JOIN_15_03");	//Ale já mám dobrou pověst!
			AI_Output(self,other,"DIA_MIL_7_JOIN_07_04");	//To nevysvětluj mně, ale lordu Andremu. Najdeš ho v kasárnách.
		};
	}
	else
	{
		B_Say(self,other,"$ABS_GOOD");
	};
};


instance DIA_MIL_7_PEOPLE(C_Info)
{
	nr = 3;
	condition = DIA_MIL_7_PEOPLE_Condition;
	information = DIA_MIL_7_PEOPLE_Info;
	permanent = TRUE;
	description = "Co víš o paladinech?";
};


func int DIA_MIL_7_PEOPLE_Condition()
{
	if(hero.guild != GIL_PAL)
	{
		return TRUE;
	};
	return FALSE;
};

func void DIA_MIL_7_PEOPLE_Info()
{
	AI_Output(other,self,"DIA_MIL_7_PEOPLE_15_00");	//Co víš o paladinech?
	AI_Output(self,other,"DIA_MIL_7_PEOPLE_07_01");	//Nic moc. Nikdo pořádně neví, proč jsou vlastně tady. Alespoň nikdo z městské stráže.
	AI_Output(self,other,"DIA_MIL_7_PEOPLE_07_02");	//Převzali kontrolu nad městem, zabrali místodržícímu jeho zastupitelskou síň a ujali se funkce soudu.
	AI_Output(self,other,"DIA_MIL_7_PEOPLE_07_03");	//Pokud to chceš vědět, tak si myslím, že to je jen ku prospěchu věci. Ti nafoukaní oslové už vážně potřebovali lekci slušného chování.
};


instance DIA_MIL_7_LOCATION(C_Info)
{
	nr = 2;
	condition = DIA_MIL_7_LOCATION_Condition;
	information = DIA_MIL_7_LOCATION_Info;
	permanent = TRUE;
	description = "Co mohu tady ve městě dělat?";
};


func int DIA_MIL_7_LOCATION_Condition()
{
	return TRUE;
};

func void DIA_MIL_7_LOCATION_Info()
{
	AI_Output(other,self,"DIA_MIL_7_LOCATION_15_00");	//Co mohu tady ve městě dělat?
	AI_Output(self,other,"DIA_MIL_7_LOCATION_07_01");	//Pokud nechceš skončit ve stoce v přístavní čtvrti, najdi si slušné zaměstnání. Poptej se tady v dolní čtvrti - možná se na tebe usměje štěstí.
	AI_Output(self,other,"DIA_MIL_7_LOCATION_07_02");	//Jestli se tu chystáš zůstat trochu déle, měl by ses připojit k domobraně nebo alespoň začít s bojovým výcvikem.
	AI_Output(self,other,"DIA_MIL_7_LOCATION_07_03");	//Vedoucí výcviku, kterého najdeš v kasárnách, učí i civilisty.
	AI_Output(self,other,"DIA_MIL_7_LOCATION_07_04");	//Skřeti přijdou už brzo a pak budeš vděčný za každou hodinu, kterou jsi strávil na cvičišti.
};


instance DIA_MIL_7_STANDARD(C_Info)
{
	nr = 1;
	condition = DIA_MIL_7_STANDARD_Condition;
	information = DIA_MIL_7_STANDARD_Info;
	permanent = TRUE;
	description = "Co je nového?";
};


func int DIA_MIL_7_STANDARD_Condition()
{
	return TRUE;
};

func void DIA_MIL_7_STANDARD_Info()
{
	var int randy;
	AI_Output(other,self,"DIA_MIL_7_STANDARD_15_00");	//Co je nového?
	if(Kapitel == 1)
	{
		randy = Hlp_Random(2);
		if(randy == 0)
		{
			AI_Output(self,other,"DIA_Addon_MIL_7_STANDARD_07_00");	//Občané mizí kždným dnem. Nikdo neví, kdo za tím stojí, snad skřeti?
			if(SC_HearedAboutMissingPeople == FALSE)
			{
				Log_CreateTopic(TOPIC_Addon_WhoStolePeople,LOG_MISSION);
				Log_SetTopicStatus(TOPIC_Addon_WhoStolePeople,LOG_Running);
				B_LogEntry(TOPIC_Addon_WhoStolePeople,LogText_Addon_SCKnowsMisspeapl);
			};
			SC_HearedAboutMissingPeople = TRUE;
		}
		else
		{
			AI_Output(self,other,"DIA_MIL_7_STANDARD_07_01");	//Říká se, že se farmáři vzbouřili. Takový zatracený problémy nám byl čert dlužen, zrovna teď, když jsme uprostřed války se skřety!
		};
	};
	if(Kapitel == 2)
	{
		AI_Output(self,other,"DIA_MIL_7_STANDARD_07_02");	//Je na čase, aby paladinové konečně tu rebelii potlačili. Každý, kdo poruší zákon, musí být potrestán. Zvlášť teď, když jsme ve válce.
	};
	if(Kapitel == 3)
	{
		if(MIS_RescueBennet == LOG_SUCCESS)
		{
			AI_Output(self,other,"DIA_MIL_7_STANDARD_07_03");	//Žoldák, co byl obviněn z vraždy Lothara, je pravděpodobně nevinen. Kdosi přinesl důkaz o tom, že na něj někdo ušil boudu.
		}
		else
		{
			AI_Output(self,other,"DIA_MIL_7_STANDARD_07_04");	//Jeden z Onarových žoldáků zavraždil ctihodného paladina Lothara. Ale nakonec ho chytili a uvrhli do žaláře.
		};
	};
	if(Kapitel == 4)
	{
		AI_Output(self,other,"DIA_MIL_7_STANDARD_07_05");	//Někteří ze žoldáků už Onarovu farmu opustili. Některé problémy se vyřeší časem samy.
	};
	if(Kapitel == 5)
	{
		AI_Output(self,other,"DIA_MIL_7_STANDARZ_07_06");	//Draci to mají spočítané, ale ještě není všemu konec. Další na řadě jsou skřeti. My své záležitosti řešíme s řádnou důsledností!
	};
	if(Kapitel >= 6)
	{
		AI_Output(self,other,"DIA_MIL_7_STANDARD_07_07");	//Innos s námi!
	};
};

func void B_AssignAmbientInfos_MIL_7(var C_Npc slf)
{
	dia_mil_7_exit.npc = Hlp_GetInstanceID(slf);
	dia_mil_7_join.npc = Hlp_GetInstanceID(slf);
	dia_mil_7_people.npc = Hlp_GetInstanceID(slf);
	dia_mil_7_location.npc = Hlp_GetInstanceID(slf);
	dia_mil_7_standard.npc = Hlp_GetInstanceID(slf);
};

