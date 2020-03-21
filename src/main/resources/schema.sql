drop table if exists oauth_access_token;
drop table if exists oauth_client_details;
drop table if exists oauth_client_token;
drop table if exists oauth_code;
drop table if exists oauth_refresh_token;
drop table if exists users;

create table users
(
    id       int          not null primary key,
    enabled  smallint     null,
    password varchar(800) null,
    role     varchar(50)  null,
    username varchar(50)  null
);

create table oauth_client_details
(
    client_id               VARCHAR(255) PRIMARY KEY,
    resource_ids            VARCHAR(255),
    client_secret           VARCHAR(255),
    scope                   VARCHAR(255),
    authorized_grant_types  VARCHAR(255),
    web_server_redirect_uri VARCHAR(255),
    authorities             VARCHAR(255),
    access_token_validity   INTEGER,
    refresh_token_validity  INTEGER,
    additional_information  VARCHAR(4096),
    autoapprove             tinyint
);

create table oauth_client_token
(
    token_id          VARCHAR(255),
    token             BLOB,
    authentication_id VARCHAR(255),
    user_name         VARCHAR(255),
    client_id         VARCHAR(255)
);

create table oauth_access_token
(
    token_id          VARCHAR(255),
    token             BLOB,
    authentication_id VARCHAR(255),
    user_name         VARCHAR(255),
    client_id         VARCHAR(255),
    authentication    BLOB,
    refresh_token     VARCHAR(255)
);

create table oauth_refresh_token
(
    token_id       VARCHAR(255),
    token          BLOB,
    authentication BLOB
);

create table oauth_code
(
    code           VARCHAR(255),
    authentication BLOB
);
