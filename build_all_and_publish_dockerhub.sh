#!/bin/bash

cd shopfront
mvn clean install
if docker build -t smhillin/shopfront . ; then
  docker push smhillin/shopfront
fi
cd ..

cd productcatalogue
mvn clean install
if docker build -t smhillin/productcatalogue . ; then
  docker push smhillin/productcatalogue
fi
cd ..

cd stockmanager
mvn clean install
if docker build -t smhillin/stockmanager . ; then
  docker push smhillin/stockmanager
fi
cd ..
