#!/bin/bash
mvn package
java -jar target/endorsed/webapp-runner.jar target/*.war
