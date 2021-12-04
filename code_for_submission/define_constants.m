%this function defines some constant parameters used for urban road network analysis.

%the following constant parameters are for node information: node_data
NI=1;%the column for node id
NX=2;%the column for node coordinate x
NY=3;%the column for node coordinate y

% the following constant parameters are for edge information: edge_data
EI=1;%the column for edge id
EF=2;%the column for the originated node
ET=3;%the column for the destination node
EL=4;%the column for edge length;
EH=5;%the column for edge highway information
ES=6;%the column for edge speed information
ESI=7;%the street ID
SEI=8;%the street edge sequence id

%city_basic_dat related index
CN=3;
CX=5;
CY=4;
CI=1;
CC=2;
CP=6;

%the following codes are paramters to simplify the urban road network
comb_dist=60;
max_ang=pi/12;
raster_size=1000;
max_route_factor=1.2;
street_ang=pi*3/4;
par_street_ang=pi/20;
err=10^-8;
diff_ang=pi/6;
city_radius=30;%km