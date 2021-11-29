data = thingSpeakRead(1588067,'ReadKey','T4EBTTHYP7ALHB3C', 'Fields', [1,2]);
disp(data);

lat = data(1);
lon = data(2);

disp(lat);
disp(lon);

%lon = mapData[1];

%Central Location
clon = -79.9212;
clat = 43.2629;

%Change in coordinates
mapData.Latitude = [clat lat];
mapData.Longitude = [clon lon];

distancem_x= (lon - clon);
distancem_y= (lat - clat);
disp(distancem_x);
disp(distancem_y);

%Geo plot location
if (distancem_x < abs(0.01081081081)|| distancem_y < abs(0.01081081081))
    geoscatter(mapData.Latitude,mapData.Longitude,'r');
    geobasemap('satellite');
else
    geoscatter(mapData.Latitude,mapData.Longitude,'b');
    geobasemap('satellite');
end
