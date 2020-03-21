### Requirements
- Java 13
- Maven 3.6.3
- mySQL 18 (will change to postgreSQL)
    - username: root
    - password: root

### How to run
- git clone https://github.com/UbaidurRehman1/spring-oauth-1
- cd spring-oauth-1
- mvn spring-boot:run

### How to get Token
- There is one client already in the database 
    - username: 1
    - password: admin
- Execute a post request 
    - post request: http://localhost:8000/oauth/token?grant_type=password&user_name=admin&password=admin
- with Basic Auth (Client credentials)
    - username: 1
    - password: admin


### Documentation
- OAuth2 Authorization server with Spring Security
- We can add clients in this server
    - Client can get token 
    - refresh token

### Further Detail
- This authorization server is backed with JDBC
- Data script and schema script are presented 
- Full automated 