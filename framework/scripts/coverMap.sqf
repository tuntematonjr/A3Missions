/*
Original script by Karel Moricky "fn_coverMap.sqf".
Edited by TugeX for Arma Finland.

nul = ["ao"] execVM "scripts\coverMap.sqf";
*/

_name = _this select 0;

_pos = getMarkerPos _name;
_posX = _pos select 0;
_posY = _pos select 1;
_size = getMarkerSize _name;
_sizeX = _size select 0;
_sizeY = _size select 1;
_dir = 0;
_sizeOut = 100000;
_sizeBorder = (_sizeX max _sizeY) / 50;

for "_i" from 0 to 270 step 90 do {
   _sizeMarker = [_sizeX,_sizeOut] select ((_i / 90) % 2);
   _dirTemp = _dir + _i;
   _markerPos = [
      _posX + (sin _dirTemp * (_sizeX + _sizeOut)),
      _posY + (cos _dirTemp * (_sizeY + _sizeOut))
      ];

   _marker = createMarkerLocal [format ["zone_%1_%2",_i],_markerPos];
   _marker setMarkerSizeLocal [_sizeMarker,_sizeOut];
   _marker setMarkerDirLocal _dirTemp;
   _marker setMarkerShapeLocal "rectangle";
   _marker setMarkerBrushLocal "solidFull";
   _marker setMarkerColorLocal "colorblack";


   //--- White borders
   _sizeMarker = [_sizeX,_sizeY + _sizeBorder * 2] select ((_i / 90) % 2);
   //_sizeBorderTemp = if (_i == 90) then {_sizeBorder * 2} else {_sizeBorder};
   _sizeBorderTemp = _sizeBorder;
   _markerPos = [
      _posX + (sin _dirTemp * (_sizeX + _sizeBorderTemp)),
      _posY + (cos _dirTemp * (_sizeY + _sizeBorderTemp))
      ];

   _marker = createMarkerLocal [format ["zoneBorder_%1_%2",_i],_markerPos];
   _marker setMarkerSizeLocal [_sizeMarker,_sizeBorderTemp];
   _marker setMarkerDirLocal _dirTemp;
   _marker setMarkerShapeLocal "rectangle";
   _marker setMarkerBrushLocal "solidFull";
   _marker setMarkerColorLocal "colorwhite";

};