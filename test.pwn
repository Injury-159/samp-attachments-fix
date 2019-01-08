#include "attachment-fix.inc"

main()
{
	// Just aim with the sniper given when you spawn, to test.
}

public OnGameModeInit()
{
	SendRconCommand("hostname samp-attachments-fix | test gamemode");
	SetGameModeText("test gamemode");
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerAttachedObject(playerid, 3, 19487, 2, 0.101, -0.0, 0.0, 5.50, 84.60, 83.7, 1.0, 1.0, 1.0, 0xFF00FF00);
	SetSpawnInfo(playerid, 0, 0, 1958.33, 1343.12, 15.36, 269.15, 26, 36, 28, 150, 0, 0);
	SpawnPlayer(playerid);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	GivePlayerWeapon(playerid, 34, 100);
	SetPlayerInterior(playerid, 0);
	return 1;
}