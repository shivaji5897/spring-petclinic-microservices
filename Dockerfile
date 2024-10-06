FROM openjdk:17-oracle AS adminserver
ADD spring-petclinic-admin-server/target/spring-petclinic-admin-server-3.2.7.jar .

FROM openjdk:17-oracle AS apigateway
ADD spring-petclinic-api-gateway/target/spring-petclinic-api-gateway-3.2.7.jar .

FROM openjdk:17-oracle AS configserver
ADD spring-petclinic-config-server/target/spring-petclinic-config-server-3.2.7.jar .

FROM openjdk:17-oracle AS customerservice
ADD spring-petclinic-customers-service/target/spring-petclinic-customers-service-3.2.7.jar .

FROM openjdk:17-oracle AS discoveryserver
ADD spring-petclinic-discovery-server/target/spring-petclinic-discovery-server-3.2.7.jar .

FROM openjdk:17-oracle AS vetsservice
ADD spring-petclinic-vets-service/target/spring-petclinic-vets-service-3.2.7.jar .

FROM openjdk:17-oracle AS visitsservice
ADD spring-petclinic-visits-service/target/spring-petclinic-visits-service-3.2.7.jar .
