data = thingSpeakRead(1588067,'ReadKey','T4EBTTHYP7ALHB3C', 'Fields', [1,2]);
disp(data);

lat = data(1);
lon = data(2);

disp(lat);
disp(lon);

%Central Location - McMaster
cy = -79.9212;
cx = 43.2629;

%Change in coordinates
mapData.Latitude = [cx lat];
mapData.Longitude = [cy lon];

%Geo plot location
geoscatter(mapData.Latitude,mapData.Longitude,'r');
geobasemap('satellite');
