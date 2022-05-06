CREATE TABLE passport_user (
    id TEXT PRIMARY KEY,
    email TEXT UNIQUE,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE passport_visa (
    id TEXT PRIMARY KEY,
    visa_name TEXT,
    visa_issuer TEXT,
    visa_description TEXT
);

CREATE TABLE passport_visa_assertion (
    id INTEGER PRIMARY KEY,
    user_id TEXT,
    visa_id TEXT,
    status TEXT,
    FOREIGN KEY (user_id) REFERENCES passport_user(id),
    FOREIGN KEY (visa_id) REFERENCES passport_visa(id)
);
