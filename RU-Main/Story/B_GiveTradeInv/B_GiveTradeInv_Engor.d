
var int Engor_ItemsGiven_Chapter_1;
var int Engor_ItemsGiven_Chapter_2;
var int Engor_ItemsGiven_Chapter_3;
var int Engor_ItemsGiven_Chapter_4;
var int Engor_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Engor(var C_Npc slf)
{
	if((Kapitel >= 1) && (Engor_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,80);
		CreateInvItems(slf,ItMiSwordraw,3);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItKE_lockpick,60);
		CreateInvItems(slf,itwr_map_oldworld_1,1);
		CreateInvItems(slf,ItRi_Prot_Total_01,1);
		CreateInvItems(slf,ItAm_Prot_Fire_01,1);
		CreateInvItems(slf,ItSc_MediumHeal,2);
		Engor_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Engor_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,90);
		CreateInvItems(slf,ItPo_Health_02,1);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItPo_Mana_01,25);
		CreateInvItems(slf,ItPo_Mana_02,25);
		CreateInvItems(slf,ItRw_Arrow,55);
		CreateInvItems(slf,ItRw_Bolt,50);
		CreateInvItems(slf,ItMi_Sulfur,1);
		CreateInvItems(slf,ItMi_Quartz,2);
		CreateInvItems(slf,ItKE_lockpick,60);
		CreateInvItems(slf,ItRw_Crossbow_M_01,1);
		Engor_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Engor_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItPo_Mana_01,25);
		CreateInvItems(slf,ItPo_Mana_02,25);
		CreateInvItems(slf,ItMi_Pitch,2);
		CreateInvItems(slf,ItMi_Rockcrystal,1);
		CreateInvItems(slf,ItMi_Coal,2);
		CreateInvItems(slf,ItRw_Arrow,70);
		CreateInvItems(slf,ItRw_Bolt,70);
		CreateInvItems(slf,ItKE_lockpick,60);
		CreateInvItems(slf,ItMiSwordraw,2);
		Engor_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Engor_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItPo_Mana_01,25);
		CreateInvItems(slf,ItPo_Mana_02,25);
		CreateInvItems(slf,ItMi_Pitch,2);
		CreateInvItems(slf,ItMi_Rockcrystal,1);
		CreateInvItems(slf,ItMi_Coal,1);
		CreateInvItems(slf,ItRw_Arrow,100);
		CreateInvItems(slf,ItRw_Bolt,110);
		CreateInvItems(slf,ItKE_lockpick,120);
		CreateInvItems(slf,ItMiSwordraw,2);
		Engor_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Engor_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItPo_Mana_01,35);
		CreateInvItems(slf,ItPo_Mana_02,35);
		CreateInvItems(slf,ItMi_Aquamarine,1);
		CreateInvItems(slf,ItMi_DarkPearl,1);
		CreateInvItems(slf,ItMi_Coal,4);
		CreateInvItems(slf,ItRw_Arrow,125);
		CreateInvItems(slf,ItRw_Bolt,125);
		Engor_ItemsGiven_Chapter_5 = TRUE;
	};
};

var int Mortis_ItemsGiven_Chapter_1;
var int Mortis_ItemsGiven_Chapter_2;
var int Mortis_ItemsGiven_Chapter_3;
var int Mortis_ItemsGiven_Chapter_4;
var int Mortis_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Mortis(var C_Npc slf)
{
	if((Kapitel >= 1) && (Mortis_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,80);
		CreateInvItems(slf,ItMiSwordraw,3);
		CreateInvItems(slf,ItMw_1h_Pal_Sword,1);
		CreateInvItems(slf,ItMw_2h_Pal_Sword,1);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItRw_Crossbow_L_01,1);
		CreateInvItems(slf,ItRw_Crossbow_L_02,1);
		Mortis_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Mortis_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,90);
		CreateInvItems(slf,ItPo_Health_02,1);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItRw_Bolt,50);
		CreateInvItems(slf,ItRw_Crossbow_M_01,1);
		Mortis_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Mortis_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItPo_Mana_01,25);
		CreateInvItems(slf,ItPo_Mana_02,25);
		CreateInvItems(slf,ItRw_Bolt,70);
		CreateInvItems(slf,ItRw_Crossbow_M_02,1);
		CreateInvItems(slf,ItMiSwordraw,2);
		Mortis_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Mortis_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItMi_Coal,1);
		CreateInvItems(slf,ItRw_Bolt,110);
		CreateInvItems(slf,ItRw_Crossbow_H_01,1);
		CreateInvItems(slf,ItMiSwordraw,2);
		Mortis_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Mortis_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,ItPo_Health_01,10);
		CreateInvItems(slf,ItPo_Health_02,5);
		CreateInvItems(slf,ItPo_Health_03,5);
		CreateInvItems(slf,ItMi_Coal,4);
		CreateInvItems(slf,ItRw_Bolt,125);
		Mortis_ItemsGiven_Chapter_5 = TRUE;
	};
};