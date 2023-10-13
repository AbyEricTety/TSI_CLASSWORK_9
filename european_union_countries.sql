CREATE TABLE european_union_countries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    street_address VARCHAR(255),
    city VARCHAR(255),
    postal_code VARCHAR(10),
    country VARCHAR(50),
    region VARCHAR(50)
);

INSERT INTO european_union_countries (street_address, city, postal_code, country, region)
SELECT street_address, city, postal_code, country, region
FROM mydatabase.addresses
WHERE country IN ('Austria', 'Belgium', 'Bulgaria', 'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland', 'France', 'Germany', 'Greece', 'Hungary', 'Ireland', 'Italy', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 'Netherlands', 'Poland', 'Portugal', 'Romania', 'Slovakia', 'Slovenia', 'Spain', 'Sweden');
