#include <YSI_Coding\y_hooks>

new PlayerText: MaafLagiYaBangAnggaByAufa[MAX_PLAYERS][18];

stock ShowHbeaufa(playerid) {
    for(new i = 0; i < 18; i++)
    {
        PlayerTextDrawShow(playerid, MaafLagiYaBangAnggaByAufa[playerid][i]);
    }
}

stock UpdateHBE(playerid) {
    if (PlayerData[playerid][pSpawned] && !PlayerData[playerid][pTogHud]) {

        new Float:health, Float:aufalapar, Float:aufahaus, Float:stress;
        new str[300];
        GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);

        //getplayerid
        format(str, sizeof(str), "%d", playerid);
        PlayerTextDrawSetString(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], str);
        PlayerTextDrawShow(playerid, MaafLagiYaBangAnggaByAufa[playerid][3]);

        health = PlayerData[playerid][pHealth] * 37.0/100;
		PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], health, 11.0);
		PlayerTextDrawShow(playerid, MaafLagiYaBangAnggaByAufa[playerid][10]);

        aufalapar = PlayerData[playerid][pHunger] * -11.0/100;
        PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], 10.0, aufalapar);
        PlayerTextDrawShow(playerid, MaafLagiYaBangAnggaByAufa[playerid][12]);

        aufahaus = PlayerData[playerid][pThirst] * -11.0/100;
        PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], 10.0, aufahaus);
        PlayerTextDrawShow(playerid, MaafLagiYaBangAnggaByAufa[playerid][12]);

        stress = PlayerData[playerid][pStress] * -11.0/100;
        PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], 12.0, stress);
        PlayerTextDrawShow(playerid, MaafLagiYaBangAnggaByAufa[playerid][14]);
    }
    return 1;
}

hook OnPlayerConnect(playerid){
	ShowHbeaufa(playerid);
}

hook OnGameModeInit() {
    MaafLagiYaBangAnggaByAufa[playerid][0] = CreatePlayerTextDraw(playerid, 139.000, 423.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][0], 87.000, 2.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][0], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][0], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][0], 1);

    MaafLagiYaBangAnggaByAufa[playerid][1] = CreatePlayerTextDraw(playerid, 139.000, 438.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][1], 87.000, 2.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][1], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][1], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][1], 1);

    MaafLagiYaBangAnggaByAufa[playerid][2] = CreatePlayerTextDraw(playerid, 126.000, 421.000, "ID:");
    PlayerTextDrawLetterSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][2], 0.200, 0.899);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][2], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][2], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][2], 1);

    MaafLagiYaBangAnggaByAufa[playerid][3] = CreatePlayerTextDraw(playerid, 127.000, 428.000, "0");
    PlayerTextDrawLetterSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], 0.319, 1.700);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][3], 1);

    MaafLagiYaBangAnggaByAufa[playerid][4] = CreatePlayerTextDraw(playerid, 139.000, 424.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][4], 2.000, 15.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][4], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][4], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][4], 1);

    MaafLagiYaBangAnggaByAufa[playerid][5] = CreatePlayerTextDraw(playerid, 180.000, 424.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][5], 2.000, 15.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][5], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][5], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][5], 1);

    MaafLagiYaBangAnggaByAufa[playerid][6] = CreatePlayerTextDraw(playerid, 194.000, 424.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][6], 2.000, 15.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][6], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][6], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][6], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][6], 1);

    MaafLagiYaBangAnggaByAufa[playerid][7] = CreatePlayerTextDraw(playerid, 208.000, 424.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][7], 2.000, 15.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][7], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][7], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][7], 1);

    MaafLagiYaBangAnggaByAufa[playerid][8] = CreatePlayerTextDraw(playerid, 224.000, 424.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][8], 2.000, 15.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][8], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][8], 255);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][8], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][8], 1);

    MaafLagiYaBangAnggaByAufa[playerid][9] = CreatePlayerTextDraw(playerid, 142.000, 426.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][9], 37.000, 11.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][9], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][9], -353517313);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][9], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][9], 1);

    MaafLagiYaBangAnggaByAufa[playerid][10] = CreatePlayerTextDraw(playerid, 142.000, 426.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], 37.000, 11.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], -1111080961);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][10], 1);

    MaafLagiYaBangAnggaByAufa[playerid][11] = CreatePlayerTextDraw(playerid, 158.000, 427.000, "HUD:radar_girlfriend");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][11], 6.000, 7.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][11], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][11], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][11], 1);

    MaafLagiYaBangAnggaByAufa[playerid][12] = CreatePlayerTextDraw(playerid, 183.000, 437.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], 10.000, -11.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], -1111080961);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][12], 1);

    MaafLagiYaBangAnggaByAufa[playerid][13] = CreatePlayerTextDraw(playerid, 197.000, 437.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], 10.000, -11.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], -1111080961);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][13], 1);

    MaafLagiYaBangAnggaByAufa[playerid][14] = CreatePlayerTextDraw(playerid, 211.000, 437.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], 12.000, -11.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], -960450049);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][14], 1);

    MaafLagiYaBangAnggaByAufa[playerid][15] = CreatePlayerTextDraw(playerid, 185.000, 428.000, "HUD:radar_pizza");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][15], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][15], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][15], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][15], 1);

    MaafLagiYaBangAnggaByAufa[playerid][16] = CreatePlayerTextDraw(playerid, 213.000, 427.000, "HUD:radar_centre");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][16], 7.000, 7.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][16], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][16], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][16], 1);

    MaafLagiYaBangAnggaByAufa[playerid][17] = CreatePlayerTextDraw(playerid, 199.000, 428.000, "HUD:radar_diner");
    PlayerTextDrawTextSize(playerid, MaafLagiYaBangAnggaByAufa[playerid][17], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, MaafLagiYaBangAnggaByAufa[playerid][17], 1);
    PlayerTextDrawColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, MaafLagiYaBangAnggaByAufa[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, MaafLagiYaBangAnggaByAufa[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, MaafLagiYaBangAnggaByAufa[playerid][17], 255);
    PlayerTextDrawFont(playerid, MaafLagiYaBangAnggaByAufa[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, MaafLagiYaBangAnggaByAufa[playerid][17], 1);
}
