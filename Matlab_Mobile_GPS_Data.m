% m = mobiledev; 
m.PositionSensorEnabled = 1; 
m.Logging = 1; %required to send to mobiledev, device sends data to matlab 
while (m.Logging == 1) 
  for x = 1:15 
      pause(1); 
  end 
  disp(m); 
  %[lat,lon] = poslog(m); 
  lat = m.latitude; 
  lon= m.longitude; 
  
  user = 1;

  disp(lat); 
  disp(lon); 

  thingSpeakWrite(1588067,[lat, lon, user],'WriteKey','2U35DEMER57BQD1I'); 
end 
