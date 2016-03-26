#!/bin/bash
mvn package
java -jar target/endorsed/webapp-runner.jar --port 9010 target/*.war
