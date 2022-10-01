/**
 * Get all the highway ways in Braine-L'alleud.
 * Filter out bus stops and service highways.
 */
[out:json][timeout:300];
( area["admin_level"="8"]["wikidata"="Q497572"]; )->.a; // Set "admin_level" and "wikidata" to the correct information of your city
(
    way["highway"]["name"]["highway"!="bus_stop"]["highway"!="elevator"]["highway"!="platform"]["highway"!="service"](area.a);
    way["place"="square"]["name"](area.a);
);
out body;
>;
out skel qt;