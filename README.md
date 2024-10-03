# Interactive Brokers Client Portal Gateway Docker

This is an ultra simple setup for containerizing the Interactive Brokers Client Portal Gateway, allowing for interaction with IB Web API.

Details on the gateway can be found at: [https://www.interactivebrokers.com/campus/ibkr-api-page/cpapi-v1/#cpgw](https://www.interactivebrokers.com/campus/ibkr-api-page/cpapi-v1/#cpgw)

## Building and Running the Container

Everything needed is encapsulated in the included Makefile. The Makefile builds an image `ib-gateway` and runs a container with the name `ib-gateway`. Only one instance should be running on any given system.

``` sh
# build the image
make build

# run the container
make run

# stop the container
make stop

# remove the image and container
make clean
```