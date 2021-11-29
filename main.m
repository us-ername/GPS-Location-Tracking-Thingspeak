m.PositionSensorEnabled = 1; 
m.Logging = 1;
disp(m);
[lat, lon, t, spd] = poslog(m);

lat = m.latitude;
lon= m.longitude; 

tStamp = datetime('now');

data = [lat lon];

thingSpeakWrite(1588067,{lat, lon},'TimeStamp',tStamps,'WriteKey','2U35DEMER57BQD1I')
