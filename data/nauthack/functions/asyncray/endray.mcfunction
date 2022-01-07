#ends ray, but (!)doesn't remove its data, because this would screw up the whole system

function nauthack:asyncray/getdata

execute store result score asynray_owner nautmath_var run data get storage nauthack:nauthack asyncray.databuffer.ownerID 1.0
function #nauthack:asyncray/endray

kill @s