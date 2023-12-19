#!/bin/bash
(cd vendor-template && ./gradlew publishToMavenLocal && cp -R ${HOME}/.m2/repository/com/vendor/. ${HOME}/wpilib/${YEAR}/maven/com/vendor)