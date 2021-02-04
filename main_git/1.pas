program untitled;


var k, FL, VR :integer;
a :array[1..5] of integer;

label 10, 100;

begin

for k := 1 to 5 do read(a[k]);

10:
FL := 0;

for k := 1 to 4 do
begin
if a[k] <= a[k + 1] then goto 100;
VR := a[k];
a[k] := a[k + 1];
a[k + 1] := VR;
FL := 1;
100:
end;

if FL = 1 then goto 10;

for k := 1 to 5 do writeln(a[k]);
end.

