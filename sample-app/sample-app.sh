#!/bin/sh
  
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


DEBUG=-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005 
CLASSPATH=target/classes:$HOME/.m2/repository/org/apache/logging/log4j/log4j-api/2.10.0/log4j-api-2.10.0.jar:$HOME/.m2/repository/org/apache/logging/log4j/log4j-core/2.10.0/log4j-core-2.10.0.jar:$HOME/.m2/repository/org/apache/logging/log4j/log4j-audit-api/1.0.0-SNAPSHOT/log4j-audit-api-1.0.0-SNAPSHOT.jar:$HOME/.m2/repository/org/apache/logging/log4j/log4j-catalog-api/1.0.0-SNAPSHOT/log4j-catalog-api-1.0.0-SNAPSHOT.jar:$HOME/.m2/repository/io/springfox/springfox-swagger2/2.2.2/springfox-swagger2-2.2.2.jar:$HOME/.m2/repository/org/mapstruct/mapstruct/1.0.0.CR1/mapstruct-1.0.0.CR1.jar:$HOME/.m2/repository/io/swagger/swagger-annotations/1.5.3/swagger-annotations-1.5.3.jar:$HOME/.m2/repository/io/swagger/swagger-models/1.5.3/swagger-models-1.5.3.jar:$HOME/.m2/repository/io/springfox/springfox-spi/2.2.2/springfox-spi-2.2.2.jar:$HOME/.m2/repository/io/springfox/springfox-core/2.2.2/springfox-core-2.2.2.jar:$HOME/.m2/repository/io/springfox/springfox-schema/2.2.2/springfox-schema-2.2.2.jar:$HOME/.m2/repository/io/springfox/springfox-swagger-common/2.2.2/springfox-swagger-common-2.2.2.jar:$HOME/.m2/repository/io/springfox/springfox-spring-web/2.2.2/springfox-spring-web-2.2.2.jar:$HOME/.m2/repository/com/google/guava/guava/18.0/guava-18.0.jar:$HOME/.m2/repository/org/slf4j/slf4j-api/1.6.2/slf4j-api-1.6.2.jar:$HOME/.m2/repository/org/aspectj/aspectjweaver/1.8.6/aspectjweaver-1.8.6.jar:$HOME/.m2/repository/org/springframework/plugin/spring-plugin-core/1.2.0.RELEASE/spring-plugin-core-1.2.0.RELEASE.jar:$HOME/.m2/repository/org/springframework/plugin/spring-plugin-metadata/1.2.0.RELEASE/spring-plugin-metadata-1.2.0.RELEASE.jar:$HOME/.m2/repository/org/springframework/hateoas/spring-hateoas/0.18.0.RELEASE/spring-hateoas-0.18.0.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-web/4.3.3.RELEASE/spring-web-4.3.3.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-webmvc/4.3.3.RELEASE/spring-webmvc-4.3.3.RELEASE.jar:$HOME/.m2/repository/com/fasterxml/classmate/1.2.0/classmate-1.2.0.jar:$HOME/.m2/repository/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4.jar:$HOME/.m2/repository/org/springframework/spring-context/4.3.3.RELEASE/spring-context-4.3.3.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-expression/4.3.3.RELEASE/spring-expression-4.3.3.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-context-support/4.3.3.RELEASE/spring-context-support-4.3.3.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-beans/4.3.3.RELEASE/spring-beans-4.3.3.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-core/4.3.3.RELEASE/spring-core-4.3.3.RELEASE.jar:$HOME/.m2/repository/org/springframework/spring-aop/4.3.3.RELEASE/spring-aop-4.3.3.RELEASE.jar:$HOME/.m2/repository/com/fasterxml/jackson/core/jackson-core/2.8.5/jackson-core-2.8.5.jar:$HOME/.m2/repository/com/fasterxml/jackson/core/jackson-databind/2.8.5/jackson-databind-2.8.5.jar:$HOME/.m2/repository/com/fasterxml/jackson/core/jackson-annotations/2.8.5/jackson-annotations-2.8.5.jar:$HOME/.m2/repository/com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.8.5/jackson-datatype-jsr310-2.8.5.jar:$HOME/.m2/repository/net/sf/jopt-simple/jopt-simple/4.9/jopt-simple-4.9.jar:$HOME/.m2/repository/org/apache/logging/log4j/log4j-jcl/2.10.0/log4j-jcl-2.10.0.jar:$HOME/.m2/repository/commons-logging/commons-logging/1.2/commons-logging-1.2.jar:$HOME/.m2/repository/org/apache/logging/log4j/audit-service-api/1.0.0-SNAPSHOT/audit-service-api-1.0.0-SNAPSHOT.jar
$JAVA_HOME/bin/java -classpath $CLASSPATH org.apache.logging.audit.SampleApp