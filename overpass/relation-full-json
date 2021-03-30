/**
 * Get all the highway ways in Braine-L'alleud.
 */
[out:json][timeout:300];
( area["admin_level"="8"]["wikidata"="Q497572"]; )->.a; // Set "admin_level" and "wikidata" to the correct information of your city
(
    relation["type"="associatedStreet"](area.a);
    relation["type"="street"](area.a);
    relation["type"="multipolygon"]["place"]["name"](area.a);
    relation["type"="multipolygon"]["highway"]["name"](area.a);
);
out body;
>;
out skel qt;