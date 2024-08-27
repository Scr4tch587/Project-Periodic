// Script assets have changed for v2.3.0 see
// checks if _x and _y of a position is within the bounds of _room_width and _room height
function is_inside_room(_x, _y, _room_width, _room_height) {
    // Check if the position is within the room boundaries
    if (_x >= 0 && _x <= _room_width && _y >= 300 && _y <= 2000)
    {
        return true; // Inside the room
    }
    else
    {
        return false; // Outside the room
    }
}