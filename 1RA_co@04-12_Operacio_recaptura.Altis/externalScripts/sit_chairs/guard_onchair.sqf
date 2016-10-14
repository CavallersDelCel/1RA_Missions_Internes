// _p=[_sol2,[14613.1,16696.6,0],5] execVM "guard_onchair.sqf";

_un=_this select 0;
_pos=_this select 1;
_deg=_this select 2;

_chair1=createVehicle ["Land_ChairPlastic_F", _pos, [], 0, "CAN_COLLIDE"];
_chair1 setDir (_deg-90);

_un setBehaviour "SAFE";
_un switchmove "InBaseMoves_SittingRifle1";

_un disableAI "anim"; 
_un attachTo [_chair1, [0, 0, -0.5] ];
_un setVectorDirAndUp [[1,0,0],[0,0,1]];