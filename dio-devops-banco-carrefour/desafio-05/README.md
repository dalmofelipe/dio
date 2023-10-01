### DESAFIO 05 - Deploy de um App no K8S


### APP Conteinerizado

#### NETWORK

    ```sh
    docker network create dioapp-network
    ```

#### CONTAINERS

    ```sh
    # frontend
    docker run -dti -p 8081:80 --name dioapp-frontend --network dioapp-network dalmofelipe/dioapp-frontend:1.0.0

    # backend
    docker run -dti -p 8080:80 --name dioapp --network dioapp-network dalmofelipe/dioapp:1.0.0

    # database
    docker run -dti -p 3306:3306 --name dioapp-db --network dioapp-network dalmofelipe/dioapp-db:1.0.0
    ```

#### DATABASE

Foi utililizado o MySQL 8, assim foi necessário algumas configurações em relação ao `caching_sha2_password`, através do script entrypoint `docker-entrypoint-initdb.d` pelo dockerfile e o script sql em `./sql/data.sql`.



### K8s

### Tipos de K8S SERVICES

- `ClusterIP` (default): Internal clients send requests to a stable internal IP address.

- `NodePort`: Clients send requests to the IP address of a node on one or more nodePort values that are specified by the Service.

- `LoadBalancer`: Clients send requests to the IP address of a network load balancer.

- `ExternalName`: Internal clients use the DNS name of a Service as an alias for an external DNS name.

- `Headless`: You can use a headless service when you want a Pod grouping, but don't need a stable IP address.

