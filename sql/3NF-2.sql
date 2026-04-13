CREATE TABLE dim_place_of_service (
    place_of_srvc      VARCHAR(2)  PRIMARY KEY,
    place_of_srvc_desc VARCHAR(50)
);

INSERT INTO dim_place_of_service (place_of_srvc, place_of_srvc_desc)
VALUES
    ('F', 'Facility'),
    ('O', 'Non-Facility / Office');