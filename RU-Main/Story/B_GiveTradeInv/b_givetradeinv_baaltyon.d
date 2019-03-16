
var int baaltyon_itemsgiven_chapter_1;
var int baaltyon_itemsgiven_chapter_2;
var int baaltyon_itemsgiven_chapter_3;
var int baaltyon_itemsgiven_chapter_4;
var int baaltyon_itemsgiven_chapter_5;

func void b_givetradeinv_baaltyon(var C_Npc slf)
{
	if((Kapitel >= 1) && (BAALTYON_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ1,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ2,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ3,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ4,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ5,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ6,1);
		CreateInvItems(slf,ItMi_Stomper,3);
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItPo_Health_02,9);
		CreateInvItems(slf,ItPo_Health_03,6);
		CreateInvItems(slf,ItPo_Mana_01,10);
		CreateInvItems(slf,ItPo_Mana_02,3);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItMi_Flask,50);
		CreateInvItems(slf,ItMi_RuneBlank,2);
		CreateInvItems(slf,ItSc_Sleep,2);
		CreateInvItems(slf,ItSc_Windfist,2);
		CreateInvItems(slf,itsc_berzerk,3);
		CreateInvItems(slf,ItSc_Fear,1);
		CreateInvItems(slf,ItMi_Quartz,2);
		CreateInvItems(slf,ItMi_Rockcrystal,2);
		CreateInvItems(slf,ItMi_Coal,1);
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ITWR_MAGICPAPER,5);
		BAALTYON_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((Kapitel >= 2) && (BAALTYON_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItPo_Health_02,9);
		CreateInvItems(slf,ItPo_Health_03,6);
		CreateInvItems(slf,ItPo_Mana_01,12);
		CreateInvItems(slf,ItPo_Mana_02,7);
		CreateInvItems(slf,ItPo_Mana_03,3);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItMi_RuneBlank,2);
		CreateInvItems(slf,itwr_maniac,1);
		CreateInvItems(slf,ItMi_Sulfur,2);
		CreateInvItems(slf,ItMi_Quartz,2);
		CreateInvItems(slf,ItMi_Coal,2);
		CreateInvItems(slf,ItSc_Windfist,5);
		CreateInvItems(slf,ItMi_Pitch,1);
		CreateInvItems(slf,itsc_greententacle,2);
		CreateInvItems(slf,itsc_sumswpgol,1);
		CreateInvItems(slf,ITWR_MAGICPAPER,5);
		BAALTYON_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((Kapitel >= 3) && (BAALTYON_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItMi_Sulfur,2);
		CreateInvItems(slf,ItMi_Quartz,2);
		CreateInvItems(slf,ItMi_Rockcrystal,2);
		CreateInvItems(slf,ItMi_Coal,2);
		CreateInvItems(slf,ItAt_WaranFiretongue,1);
		CreateInvItems(slf,ItMi_Pitch,1);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItPo_Health_02,9);
		CreateInvItems(slf,ItPo_Health_03,6);
		CreateInvItems(slf,ItPo_Mana_01,30);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_Addon_04,5);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ItMi_RuneBlank,2);
		CreateInvItems(slf,ItSc_Sleep,2);
		CreateInvItems(slf,ItSc_Extricate,2);
		CreateInvItems(slf,ItSc_Windfist,5);
		CreateInvItems(slf,itsc_berzerk,3);
		CreateInvItems(slf,ItSc_Fear,1);
		CreateInvItems(slf,itsc_sumswpgol,2);
		CreateInvItems(slf,ITWR_MAGICPAPER,5);
		BAALTYON_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((Kapitel >= 4) && (BAALTYON_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItMi_Sulfur,5);
		CreateInvItems(slf,ItMi_Quartz,6);
		CreateInvItems(slf,ItMi_Rockcrystal,3);
		CreateInvItems(slf,ItMi_Coal,4);
		CreateInvItems(slf,ItMi_Aquamarine,2);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItMi_Pitch,1);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItPo_Health_Addon_04,5);
		CreateInvItems(slf,ItPo_Mana_Addon_04,10);
		CreateInvItems(slf,ItPo_Health_02,15);
		CreateInvItems(slf,ItPo_Health_03,10);
		CreateInvItems(slf,ItPo_Mana_01,30);
		CreateInvItems(slf,ItPo_Mana_02,30);
		CreateInvItems(slf,ItSc_Sleep,1);
		CreateInvItems(slf,ItSc_Windfist,2);
		CreateInvItems(slf,itsc_berzerk,5);
		CreateInvItems(slf,ItSc_Extricate,1);
		CreateInvItems(slf,ItSc_Fear,1);
		CreateInvItems(slf,ItSc_Charm,1);
		CreateInvItems(slf,itsc_greententacle,2);
		CreateInvItems(slf,ItSc_SumGol,3);
		CreateInvItems(slf,itsc_sumswpgol,2);
		CreateInvItems(slf,ITWR_MAGICPAPER,5);
		BAALTYON_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((Kapitel >= 5) && (BAALTYON_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItMi_Sulfur,6);
		CreateInvItems(slf,ItMi_Quartz,4);
		CreateInvItems(slf,ItMi_Rockcrystal,6);
		CreateInvItems(slf,ItMi_Coal,3);
		CreateInvItems(slf,ItMi_Aquamarine,3);
		CreateInvItems(slf,ItMi_DarkPearl,1);
		CreateInvItems(slf,ItMi_HolyWater,3);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItMi_RuneBlank,1);
		CreateInvItems(slf,ItPo_Health_02,20);
		CreateInvItems(slf,ItPo_Health_03,15);
		CreateInvItems(slf,ItPo_Mana_01,20);
		CreateInvItems(slf,ItPo_Mana_02,40);
		CreateInvItems(slf,ItSc_Sleep,1);
		CreateInvItems(slf,ItSc_Acid,2);
		CreateInvItems(slf,ItSc_Windfist,2);
		CreateInvItems(slf,itsc_berzerk,5);
		CreateInvItems(slf,ItSc_Fear,1);
		CreateInvItems(slf,ItSc_Charm,1);
		CreateInvItems(slf,itsc_greententacle,2);
		CreateInvItems(slf,ItSc_SumGol,3);
		CreateInvItems(slf,itsc_severefetidity,1);
		CreateInvItems(slf,ItSc_Whirlwind,1);
		CreateInvItems(slf,ItSc_Quake,1);
		CreateInvItems(slf,ITWR_MAGICPAPER,5);
		BAALTYON_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

var int NetBek_itemsgiven_chapter_1;
var int NetBek_itemsgiven_chapter_2;
var int NetBek_itemsgiven_chapter_3;
var int NetBek_itemsgiven_chapter_4;
var int NetBek_itemsgiven_chapter_5;

func void b_givetradeinv_NetBek(var C_Npc slf)
{
	if((Kapitel >= 1) && (NetBek_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ1,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ2,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ3,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ4,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ5,1);
		CreateInvItems(slf,itwr_addon_runemaking_gur_circ6,1);
		CreateInvItems(slf,ItMi_Stomper,3);
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItPo_Health_02,9);
		CreateInvItems(slf,ItPo_Health_03,6);
		CreateInvItems(slf,ItPo_Mana_01,10);
		CreateInvItems(slf,ItPo_Mana_02,3);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItMi_Flask,50);
		CreateInvItems(slf,ItMi_RuneBlank,2);
		CreateInvItems(slf,ItSc_Sleep,2);
		CreateInvItems(slf,ItSc_Windfist,2);
		CreateInvItems(slf,itsc_berzerk,3);
		CreateInvItems(slf,ItSc_Fear,1);
		CreateInvItems(slf,ItMi_Quartz,2);
		CreateInvItems(slf,ItMi_Rockcrystal,2);
		CreateInvItems(slf,ItMi_Coal,1);
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ITWR_MAGICPAPER,5);
		NetBek_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((Kapitel >= 2) && (NetBek_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItPo_Health_02,9);
		CreateInvItems(slf,ItPo_Health_03,6);
		CreateInvItems(slf,ItPo_Mana_01,12);
		CreateInvItems(slf,ItPo_Mana_02,7);
		CreateInvItems(slf,ItPo_Mana_03,3);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItMi_RuneBlank,2);
		CreateInvItems(slf,itwr_maniac,1);
		CreateInvItems(slf,ItMi_Sulfur,2);
		CreateInvItems(slf,ItMi_Quartz,2);
		CreateInvItems(slf,ItMi_Coal,2);
		CreateInvItems(slf,ItSc_Windfist,5);
		CreateInvItems(slf,ItMi_Pitch,1);
		CreateInvItems(slf,itsc_greententacle,2);
		CreateInvItems(slf,itsc_sumswpgol,1);
		NetBek_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((Kapitel >= 3) && (NetBek_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItMi_Sulfur,2);
		CreateInvItems(slf,ItMi_Quartz,2);
		CreateInvItems(slf,ItMi_Rockcrystal,2);
		CreateInvItems(slf,ItMi_Coal,2);
		CreateInvItems(slf,ItAt_WaranFiretongue,1);
		CreateInvItems(slf,ItMi_Pitch,1);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItPo_Health_02,9);
		CreateInvItems(slf,ItPo_Health_03,6);
		CreateInvItems(slf,ItPo_Mana_01,30);
		CreateInvItems(slf,ItPo_Health_Addon_04,2);
		CreateInvItems(slf,ItPo_Mana_Addon_04,5);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ItMi_RuneBlank,2);
		CreateInvItems(slf,ItSc_Sleep,2);
		CreateInvItems(slf,ItSc_Windfist,5);
		CreateInvItems(slf,itsc_berzerk,3);
		CreateInvItems(slf,ItSc_Fear,1);
		CreateInvItems(slf,itsc_sumswpgol,2);
		NetBek_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((Kapitel >= 4) && (NetBek_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItMi_Sulfur,5);
		CreateInvItems(slf,ItMi_Quartz,6);
		CreateInvItems(slf,ItMi_Rockcrystal,3);
		CreateInvItems(slf,ItMi_Coal,4);
		CreateInvItems(slf,ItMi_Aquamarine,2);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItMi_Pitch,1);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItPo_Health_Addon_04,5);
		CreateInvItems(slf,ItPo_Mana_Addon_04,10);
		CreateInvItems(slf,ItPo_Health_02,15);
		CreateInvItems(slf,ItPo_Health_03,10);
		CreateInvItems(slf,ItPo_Mana_01,30);
		CreateInvItems(slf,ItPo_Mana_02,30);
		CreateInvItems(slf,ItSc_Sleep,1);
		CreateInvItems(slf,ItSc_Windfist,2);
		CreateInvItems(slf,itsc_berzerk,5);
		CreateInvItems(slf,ItSc_Fear,1);
		CreateInvItems(slf,ItSc_Acid,2);
		CreateInvItems(slf,ItSc_Charm,1);
		CreateInvItems(slf,itsc_greententacle,2);
		CreateInvItems(slf,ItSc_SumGol,3);
		CreateInvItems(slf,itsc_sumswpgol,2);
		CreateInvItems(slf,ItSc_Extricate,1);
		NetBek_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((Kapitel >= 5) && (NetBek_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,ItPl_Blueplant,5);
		CreateInvItems(slf,ItMi_Sulfur,6);
		CreateInvItems(slf,ItMi_Quartz,4);
		CreateInvItems(slf,ItMi_Rockcrystal,6);
		CreateInvItems(slf,ItMi_Coal,3);
		CreateInvItems(slf,ItMi_Aquamarine,3);
		CreateInvItems(slf,ItMi_DarkPearl,1);
		CreateInvItems(slf,ItMi_HolyWater,3);
		CreateInvItems(slf,ItFo_Alcohol,10);
		CreateInvItems(slf,ItMi_Flask,10);
		CreateInvItems(slf,ItSc_Extricate,1);
		CreateInvItems(slf,ItSc_Acid,1);
		CreateInvItems(slf,ITPO_ANPOIS,5);
		CreateInvItems(slf,ItMi_RuneBlank,1);
		CreateInvItems(slf,ItPo_Health_02,20);
		CreateInvItems(slf,ItPo_Health_03,15);
		CreateInvItems(slf,ItPo_Mana_01,20);
		CreateInvItems(slf,ItPo_Mana_02,40);
		CreateInvItems(slf,ItSc_Sleep,1);
		CreateInvItems(slf,ItSc_Windfist,2);
		CreateInvItems(slf,itsc_berzerk,5);
		CreateInvItems(slf,ItSc_Fear,1);
		CreateInvItems(slf,ItSc_Charm,1);
		CreateInvItems(slf,itsc_greententacle,2);
		CreateInvItems(slf,itsc_severefetidity,1);
		CreateInvItems(slf,ItSc_Whirlwind,1);
		CreateInvItems(slf,ItSc_Quake,1);
		NetBek_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};