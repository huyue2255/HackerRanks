@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  TestNG-1 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and TEST_NG_1_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dgreeting.language=en"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\junit5-gradle-consumer-1.0.0-SNAPSHOT.jar;%APP_HOME%\lib\antlr4-4.5.3.jar;%APP_HOME%\lib\log4j-api-2.6.2.jar;%APP_HOME%\lib\log4j-core-2.6.2.jar;%APP_HOME%\lib\jackson-annotations-2.8.0.jar;%APP_HOME%\lib\selenium-java-2.53.1.jar;%APP_HOME%\lib\selenium-server-2.53.1.jar;%APP_HOME%\lib\selenium-firefox-driver-2.53.1.jar;%APP_HOME%\lib\selenium-chrome-driver-2.53.1.jar;%APP_HOME%\lib\selenium-safari-driver-2.53.1.jar;%APP_HOME%\lib\selenium-iphone-driver-2.39.0.jar;%APP_HOME%\lib\selenium-android-driver-2.39.0.jar;%APP_HOME%\lib\selenium-htmlunit-driver-2.52.0.jar;%APP_HOME%\lib\selenium-support-2.53.1.jar;%APP_HOME%\lib\phantomjsdriver-1.2.0.jar;%APP_HOME%\lib\spring-boot-starter-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-test-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-security-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-configuration-processor-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-data-solr-2.0.2.RELEASE.jar;%APP_HOME%\lib\hadoop-common-2.7.2.jar;%APP_HOME%\lib\hadoop-client-2.7.2.jar;%APP_HOME%\lib\hadoop-hdfs-2.7.2.jar;%APP_HOME%\lib\hadoop-annotations-2.7.2.jar;%APP_HOME%\lib\hadoop-core-1.2.1.jar;%APP_HOME%\lib\hadoop-tools-1.2.1.jar;%APP_HOME%\lib\hadoop-mapreduce-client-core-2.7.2.jar;%APP_HOME%\lib\hadoop-mapreduce-client-common-2.7.2.jar;%APP_HOME%\lib\hadoop-mapreduce-client-jobclient-2.7.2.jar;%APP_HOME%\lib\hadoop-mapreduce-client-app-2.7.2.jar;%APP_HOME%\lib\hadoop-mapreduce-client-shuffle-2.7.2.jar;%APP_HOME%\lib\hadoop-mapreduce-client-hs-2.7.2.jar;%APP_HOME%\lib\hadoop-streaming-2.7.2.jar;%APP_HOME%\lib\hadoop-yarn-common-2.7.2.jar;%APP_HOME%\lib\hadoop-yarn-api-2.7.2.jar;%APP_HOME%\lib\hadoop-yarn-server-common-2.7.2.jar;%APP_HOME%\lib\hadoop-yarn-client-2.7.2.jar;%APP_HOME%\lib\hadoop-yarn-server-web-proxy-2.7.2.jar;%APP_HOME%\lib\hadoop-yarn-server-nodemanager-2.7.2.jar;%APP_HOME%\lib\hadoop-yarn-server-resourcemanager-2.7.2.jar;%APP_HOME%\lib\hadoop-auth-2.7.2.jar;%APP_HOME%\lib\hadoop-minicluster-2.7.2.jar;%APP_HOME%\lib\hadoop-yarn-server-tests-2.7.2.jar;%APP_HOME%\lib\hadoop-test-1.2.1.jar;%APP_HOME%\lib\cassandra-all-3.7.jar;%APP_HOME%\lib\spark-cassandra-connector_2.10-1.6.0.jar;%APP_HOME%\lib\cassandra-driver-core-3.0.3.jar;%APP_HOME%\lib\zookeeper-3.4.8.jar;%APP_HOME%\lib\spark-core_2.11-2.0.0.jar;%APP_HOME%\lib\spark-sql_2.11-2.0.0.jar;%APP_HOME%\lib\spark-testing-base_2.11-2.0.0_0.4.4.jar;%APP_HOME%\lib\spark-hive_2.11-2.0.0.jar;%APP_HOME%\lib\mesos-1.0.0.jar;%APP_HOME%\lib\poi-3.15-beta2.jar;%APP_HOME%\lib\deeplearning4j-core-0.4.0.jar;%APP_HOME%\lib\dl4j-spark_2.11-0.4.0.jar;%APP_HOME%\lib\nd4j-native-platform-0.4.0.jar;%APP_HOME%\lib\opencv-2.4.11-2.jar;%APP_HOME%\lib\gdx-1.9.3.jar;%APP_HOME%\lib\jme3-core-3.1.0-beta1.jar;%APP_HOME%\lib\maps-1.0.0.jar;%APP_HOME%\lib\commons-net-3.5.jar;%APP_HOME%\lib\commons-email-1.4.jar;%APP_HOME%\lib\jsoup-1.9.2.jar;%APP_HOME%\lib\kafka_2.11-0.10.0.1.jar;%APP_HOME%\lib\kafka-streams-0.10.0.1.jar;%APP_HOME%\lib\kafka-examples-0.10.0.1.jar;%APP_HOME%\lib\kafka-tools-0.10.0.1.jar;%APP_HOME%\lib\kafka-log4j-appender-0.10.0.1.jar;%APP_HOME%\lib\kafka-clients-0.10.0.1.jar;%APP_HOME%\lib\connect-api-0.10.0.1.jar;%APP_HOME%\lib\connect-json-0.10.0.1.jar;%APP_HOME%\lib\connect-file-0.10.0.1.jar;%APP_HOME%\lib\connect-runtime-0.10.0.1.jar;%APP_HOME%\lib\kafka-streams-examples-0.10.0.1.jar;%APP_HOME%\lib\kafka-hadoop-producer-0.8.2.2.jar;%APP_HOME%\lib\kafka-hadoop-consumer-0.8.2.2.jar;%APP_HOME%\lib\kafka-java-examples-0.8.0.jar;%APP_HOME%\lib\pdfbox-2.0.2.jar;%APP_HOME%\lib\itextpdf-5.5.9.jar;%APP_HOME%\lib\gson-2.7.jar;%APP_HOME%\lib\avro-1.8.1.jar;%APP_HOME%\lib\orc-core-1.2.0.jar;%APP_HOME%\lib\orc-tools-1.2.0.jar;%APP_HOME%\lib\orc-mapreduce-1.2.0.jar;%APP_HOME%\lib\parquet-format-2.2.0.jar;%APP_HOME%\lib\hive-exec-2.1.0.jar;%APP_HOME%\lib\hive-serde-2.1.0.jar;%APP_HOME%\lib\hive-metastore-2.1.0.jar;%APP_HOME%\lib\hive-service-2.1.0.jar;%APP_HOME%\lib\ignite-core-1.7.0.jar;%APP_HOME%\lib\ignite-mesos-1.7.0.jar;%APP_HOME%\lib\ignite-spring-1.7.0.jar;%APP_HOME%\lib\ignite-tools-1.7.0.jar;%APP_HOME%\lib\ignite-rest-http-1.7.0.jar;%APP_HOME%\lib\ignite-spark_2.10-1.7.0.jar;%APP_HOME%\lib\ignite-kafka-1.7.0.jar;%APP_HOME%\lib\ignite-camel-1.7.0.jar;%APP_HOME%\lib\ignite-clients-1.7.0.jar;%APP_HOME%\lib\ignite-examples-1.0.0-RC3.jar;%APP_HOME%\lib\ignite-codegen-1.0.0-RC3.jar;%APP_HOME%\lib\asm-all-6.0_ALPHA.jar;%APP_HOME%\lib\asm-debug-all-6.0_ALPHA.jar;%APP_HOME%\lib\asm-analysis-6.0_ALPHA.jar;%APP_HOME%\lib\scalap-2.12.0-M5.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\util-core_2.10-6.34.0.jar;%APP_HOME%\lib\jme3-desktop-3.1.0-beta1.jar;%APP_HOME%\lib\jme3-lwjgl-3.1.0-beta1.jar;%APP_HOME%\lib\selenium-remote-control-2.0rc2.jar;%APP_HOME%\lib\selenium-edge-driver-2.53.1.jar;%APP_HOME%\lib\htmlunit-driver-2.21.jar;%APP_HOME%\lib\selenium-ie-driver-2.53.1.jar;%APP_HOME%\lib\selenium-leg-rc-2.53.1.jar;%APP_HOME%\lib\selenium-remote-driver-2.53.1.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\spring-boot-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-core-4.3.2.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.4.0.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-5.2.4.Final.jar;%APP_HOME%\lib\spring-web-4.3.2.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.3.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-test-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-test-autoconfigure-1.4.0.RELEASE.jar;%APP_HOME%\lib\json-path-2.2.0.jar;%APP_HOME%\lib\junit-4.12.jar;%APP_HOME%\lib\assertj-core-2.5.0.jar;%APP_HOME%\lib\mockito-core-1.10.19.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\hamcrest-library-1.3.jar;%APP_HOME%\lib\jsonassert-1.3.0.jar;%APP_HOME%\lib\spring-test-4.3.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-1.4.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-1.4.0.RELEASE.jar;%APP_HOME%\lib\hibernate-core-5.0.9.Final.jar;%APP_HOME%\lib\hibernate-entitymanager-5.0.9.Final.jar;%APP_HOME%\lib\javax.transaction-api-1.2.jar;%APP_HOME%\lib\spring-data-jpa-1.10.2.RELEASE.jar;%APP_HOME%\lib\spring-aspects-4.3.2.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.3.2.RELEASE.jar;%APP_HOME%\lib\spring-security-config-4.1.1.RELEASE.jar;%APP_HOME%\lib\spring-security-web-4.1.1.RELEASE.jar;%APP_HOME%\lib\json-20140107.jar;%APP_HOME%\lib\spring-data-commons-1.12.2.RELEASE.jar;%APP_HOME%\lib\solr-solrj-5.5.0.jar;%APP_HOME%\lib\slf4j-api-1.7.21.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.21.jar;%APP_HOME%\lib\commons-cli-1.2.jar;%APP_HOME%\lib\xmlenc-0.52.jar;%APP_HOME%\lib\commons-httpclient-3.1.jar;%APP_HOME%\lib\servlet-api-2.5.jar;%APP_HOME%\lib\jetty-6.1.26.jar;%APP_HOME%\lib\jetty-util-6.1.26.jar;%APP_HOME%\lib\jsp-api-2.1.jar;%APP_HOME%\lib\jersey-core-1.9.jar;%APP_HOME%\lib\jersey-json-1.9.jar;%APP_HOME%\lib\jersey-server-1.9.jar;%APP_HOME%\lib\jets3t-0.9.0.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\commons-configuration-1.6.jar;%APP_HOME%\lib\jackson-core-asl-1.9.13.jar;%APP_HOME%\lib\jackson-mapper-asl-1.9.13.jar;%APP_HOME%\lib\jsch-0.1.42.jar;%APP_HOME%\lib\curator-client-2.7.1.jar;%APP_HOME%\lib\curator-recipes-2.7.1.jar;%APP_HOME%\lib\jsr305-3.0.0.jar;%APP_HOME%\lib\htrace-core-3.1.0-incubating.jar;%APP_HOME%\lib\hadoop-common-2.7.2-tests.jar;%APP_HOME%\lib\hadoop-hdfs-2.7.2-tests.jar;%APP_HOME%\lib\hadoop-mapreduce-client-jobclient-2.7.2-tests.jar;%APP_HOME%\lib\commons-daemon-1.0.13.jar;%APP_HOME%\lib\leveldbjni-all-1.8.jar;%APP_HOME%\lib\jsp-api-2.1-6.1.14.jar;%APP_HOME%\lib\jsp-2.1-6.1.14.jar;%APP_HOME%\lib\commons-el-1.0.jar;%APP_HOME%\lib\hsqldb-1.8.0.10.jar;%APP_HOME%\lib\oro-2.0.8.jar;%APP_HOME%\lib\core-3.1.1.jar;%APP_HOME%\lib\guice-servlet-3.0.jar;%APP_HOME%\lib\hadoop-yarn-server-web-proxy-2.7.2-tests.jar;%APP_HOME%\lib\jaxb-api-2.2.2.jar;%APP_HOME%\lib\jersey-client-1.9.jar;%APP_HOME%\lib\jackson-jaxrs-1.9.13.jar;%APP_HOME%\lib\jackson-xc-1.9.13.jar;%APP_HOME%\lib\guice-3.0.jar;%APP_HOME%\lib\jersey-guice-1.9.jar;%APP_HOME%\lib\jettison-1.1.jar;%APP_HOME%\lib\hadoop-yarn-server-applicationhistoryservice-2.7.2.jar;%APP_HOME%\lib\apacheds-kerberos-codec-2.0.0-M15.jar;%APP_HOME%\lib\curator-framework-2.7.1.jar;%APP_HOME%\lib\hadoop-yarn-server-tests-2.7.2-tests.jar;%APP_HOME%\lib\ftplet-api-1.0.0.jar;%APP_HOME%\lib\mina-core-2.0.0-M5.jar;%APP_HOME%\lib\ftpserver-core-1.0.0.jar;%APP_HOME%\lib\ftpserver-deprecated-1.0.0-M2.jar;%APP_HOME%\lib\lz4-1.3.0.jar;%APP_HOME%\lib\concurrentlinkedhashmap-lru-1.4.jar;%APP_HOME%\lib\antlr-3.5.2.jar;%APP_HOME%\lib\antlr-runtime-3.5.2.jar;%APP_HOME%\lib\json-simple-1.1.jar;%APP_HOME%\lib\high-scale-lib-1.0.6.jar;%APP_HOME%\lib\jbcrypt-0.3m.jar;%APP_HOME%\lib\reporter-config3-3.0.0.jar;%APP_HOME%\lib\thrift-server-0.3.7.jar;%APP_HOME%\lib\cassandra-thrift-3.7.jar;%APP_HOME%\lib\jamm-0.3.0.jar;%APP_HOME%\lib\sigar-1.6.4.jar;%APP_HOME%\lib\ecj-4.4.2.jar;%APP_HOME%\lib\ohc-core-0.4.3.jar;%APP_HOME%\lib\caffeine-2.2.6.jar;%APP_HOME%\lib\cassandra-clientutil-3.0.2.jar;%APP_HOME%\lib\joda-convert-1.2.jar;%APP_HOME%\lib\jsr166e-1.1.0.jar;%APP_HOME%\lib\avro-mapred-1.7.7-hadoop2.jar;%APP_HOME%\lib\chill_2.11-0.8.0.jar;%APP_HOME%\lib\chill-java-0.8.0.jar;%APP_HOME%\lib\xbean-asm5-shaded-4.4.jar;%APP_HOME%\lib\spark-launcher_2.11-2.0.0.jar;%APP_HOME%\lib\spark-network-common_2.11-2.0.0.jar;%APP_HOME%\lib\spark-network-shuffle_2.11-2.0.0.jar;%APP_HOME%\lib\spark-unsafe_2.11-2.0.0.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\RoaringBitmap-0.5.11.jar;%APP_HOME%\lib\json4s-jackson_2.11-3.2.11.jar;%APP_HOME%\lib\jersey-client-2.22.2.jar;%APP_HOME%\lib\jersey-common-2.22.2.jar;%APP_HOME%\lib\jersey-server-2.22.2.jar;%APP_HOME%\lib\jersey-container-servlet-2.22.2.jar;%APP_HOME%\lib\jersey-container-servlet-core-2.22.2.jar;%APP_HOME%\lib\metrics-jvm-3.1.2.jar;%APP_HOME%\lib\metrics-json-3.1.2.jar;%APP_HOME%\lib\metrics-graphite-3.1.2.jar;%APP_HOME%\lib\jackson-module-scala_2.11-2.6.5.jar;%APP_HOME%\lib\ivy-2.4.0.jar;%APP_HOME%\lib\pyrolite-4.9.jar;%APP_HOME%\lib\py4j-0.10.1.jar;%APP_HOME%\lib\spark-tags_2.11-2.0.0.jar;%APP_HOME%\lib\unused-1.0.0.jar;%APP_HOME%\lib\univocity-parsers-2.1.1.jar;%APP_HOME%\lib\spark-sketch_2.11-2.0.0.jar;%APP_HOME%\lib\spark-catalyst_2.11-2.0.0.jar;%APP_HOME%\lib\parquet-column-1.7.0.jar;%APP_HOME%\lib\parquet-hadoop-1.7.0.jar;%APP_HOME%\lib\multisets_2.11-0.3.jar;%APP_HOME%\lib\scalacheck_2.11-1.12.4.jar;%APP_HOME%\lib\jetty-util-9.3.2.v20150730.jar;%APP_HOME%\lib\parquet-hadoop-bundle-1.6.0.jar;%APP_HOME%\lib\hive-exec-1.2.1.spark2.jar;%APP_HOME%\lib\hive-metastore-1.2.1.spark2.jar;%APP_HOME%\lib\jodd-core-3.5.2.jar;%APP_HOME%\lib\canova-nd4j-common-0.0.0.17.jar;%APP_HOME%\lib\canova-api-0.0.0.17.jar;%APP_HOME%\lib\canova-nd4j-image-0.0.0.17.jar;%APP_HOME%\lib\nd4j-api-0.4.0.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.5.1.jar;%APP_HOME%\lib\datavec-nd4j-common-0.4.0.jar;%APP_HOME%\lib\datavec-api-0.4.0.jar;%APP_HOME%\lib\datavec-data-image-0.4.0.jar;%APP_HOME%\lib\spark-mllib_2.11-1.5.2.jar;%APP_HOME%\lib\deeplearning4j-scaleout-api-0.4.0.jar;%APP_HOME%\lib\canova-spark_2.11-0.0.0.17.jar;%APP_HOME%\lib\datavec-spark_2.11-0.4.0.jar;%APP_HOME%\lib\deeplearning4j-ui-components-0.4.0.jar;%APP_HOME%\lib\nd4j-native-0.4.0.jar;%APP_HOME%\lib\nd4j-native-0.4.0-linux-x86_64.jar;%APP_HOME%\lib\nd4j-native-0.4.0-macosx-x86_64.jar;%APP_HOME%\lib\nd4j-native-0.4.0-windows-x86_64.jar;%APP_HOME%\lib\nd4j-native-0.4.0-linux-ppc64le.jar;%APP_HOME%\lib\charm-down-common-2.0.0.jar;%APP_HOME%\lib\javax.mail-1.5.2.jar;%APP_HOME%\lib\activation-1.1.1.jar;%APP_HOME%\lib\scala-xml_2.12.0-M5-1.0.5.jar;%APP_HOME%\lib\scala-parser-combinators_2.12.0-M5-1.0.4.jar;%APP_HOME%\lib\scala-swing_2.12.0-M5-2.0.0-M2.jar;%APP_HOME%\lib\zkclient-0.8.jar;%APP_HOME%\lib\metrics-core-2.2.0.jar;%APP_HOME%\lib\scala-parser-combinators_2.11-1.0.4.jar;%APP_HOME%\lib\jopt-simple-4.9.jar;%APP_HOME%\lib\rocksdbjni-4.8.0.jar;%APP_HOME%\lib\kafka_2.10-0.10.0.1.jar;%APP_HOME%\lib\argparse4j-0.5.0.jar;%APP_HOME%\lib\reflections-0.9.10.jar;%APP_HOME%\lib\jackson-jaxrs-json-provider-2.6.3.jar;%APP_HOME%\lib\jetty-servlet-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-servlets-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-server-9.2.15.v20160210.jar;%APP_HOME%\lib\piggybank-0.12.0.jar;%APP_HOME%\lib\slf4j-simple-1.6.4.jar;%APP_HOME%\lib\fontbox-2.0.2.jar;%APP_HOME%\lib\aircompressor-0.3.jar;%APP_HOME%\lib\hive-storage-api-2.1.1-pre-orc.jar;%APP_HOME%\lib\kryo-shaded-3.0.3.jar;%APP_HOME%\lib\hive-ant-2.1.0.jar;%APP_HOME%\lib\hive-llap-tez-2.1.0.jar;%APP_HOME%\lib\hive-shims-2.1.0.jar;%APP_HOME%\lib\log4j-1.2-api-2.4.1.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.4.1.jar;%APP_HOME%\lib\ant-1.9.1.jar;%APP_HOME%\lib\apache-curator-2.6.0.pom;%APP_HOME%\lib\groovy-all-2.4.4.jar;%APP_HOME%\lib\stax-api-1.0.1.jar;%APP_HOME%\lib\jline-2.12.jar;%APP_HOME%\lib\snappy-0.2.jar;%APP_HOME%\lib\hive-common-2.1.0.jar;%APP_HOME%\lib\hive-service-rpc-2.1.0.jar;%APP_HOME%\lib\opencsv-2.3.jar;%APP_HOME%\lib\parquet-hadoop-bundle-1.8.1.jar;%APP_HOME%\lib\javolution-5.5.1.jar;%APP_HOME%\lib\hbase-client-1.1.1.jar;%APP_HOME%\lib\bonecp-0.8.0.RELEASE.jar;%APP_HOME%\lib\derby-10.10.2.0.jar;%APP_HOME%\lib\datanucleus-api-jdo-4.2.1.jar;%APP_HOME%\lib\datanucleus-rdbms-4.1.7.jar;%APP_HOME%\lib\commons-pool-1.5.4.jar;%APP_HOME%\lib\commons-dbcp-1.4.jar;%APP_HOME%\lib\jdo-api-3.0.1.jar;%APP_HOME%\lib\javax.jdo-3.2.0-m3.jar;%APP_HOME%\lib\tephra-api-0.6.0.jar;%APP_HOME%\lib\tephra-core-0.6.0.jar;%APP_HOME%\lib\tephra-hbase-compat-1.0-0.6.0.jar;%APP_HOME%\lib\hive-llap-server-2.1.0.jar;%APP_HOME%\lib\jpam-1.1.jar;%APP_HOME%\lib\jetty-all-7.6.0.v20120127.jar;%APP_HOME%\lib\jamon-runtime-2.3.1.jar;%APP_HOME%\lib\cache-api-1.0.0.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\ignite-shmem-1.0.0.jar;%APP_HOME%\lib\jodd-lagarto-3.4.8.jar;%APP_HOME%\lib\tomcat-servlet-api-8.0.23.jar;%APP_HOME%\lib\jetty-xml-9.2.11.v20150529.jar;%APP_HOME%\lib\spark-core_2.10-1.5.2.jar;%APP_HOME%\lib\spark-sql_2.10-1.5.2.jar;%APP_HOME%\lib\camel-core-2.16.0.jar;%APP_HOME%\lib\ignite-hibernate-1.0.0-RC3.jar;%APP_HOME%\lib\ignite-log4j-1.0.0-RC3.jar;%APP_HOME%\lib\ignite-indexing-1.0.0-RC3.jar;%APP_HOME%\lib\spymemcached-2.7.3.jar;%APP_HOME%\lib\asm-tree-6.0_ALPHA.jar;%APP_HOME%\lib\scala-compiler-2.12.0-M5.jar;%APP_HOME%\lib\util-function_2.10-6.34.0.jar;%APP_HOME%\lib\lwjgl-2.9.3.jar;%APP_HOME%\lib\tomcat-embed-core-8.5.4.jar;%APP_HOME%\lib\tomcat-embed-el-8.5.4.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.5.4.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\classmate-1.1.0.jar;%APP_HOME%\lib\json-smart-2.2.1.jar;%APP_HOME%\lib\objenesis-2.1.jar;%APP_HOME%\lib\aspectjweaver-1.8.9.jar;%APP_HOME%\lib\tomcat-jdbc-8.5.4.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-2.0.0.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.1.Final.jar;%APP_HOME%\lib\spring-orm-4.2.6.RELEASE.jar;%APP_HOME%\lib\spring-security-core-4.1.1.RELEASE.jar;%APP_HOME%\lib\stax2-api-3.1.4.jar;%APP_HOME%\lib\woodstox-core-asl-4.4.1.jar;%APP_HOME%\lib\noggit-0.6.jar;%APP_HOME%\lib\stax-api-1.0-2.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\cglib-2.2.1-v20090111.jar;%APP_HOME%\lib\apacheds-i18n-2.0.0-M15.jar;%APP_HOME%\lib\api-asn1-api-1.0.0-M20.jar;%APP_HOME%\lib\api-util-1.0.0-M20.jar;%APP_HOME%\lib\reporter-config-base-3.0.0.jar;%APP_HOME%\lib\hppc-0.5.4.jar;%APP_HOME%\lib\jflex-1.6.0.jar;%APP_HOME%\lib\primitive-1.0.jar;%APP_HOME%\lib\snowball-stemmer-1.3.0.581.1.jar;%APP_HOME%\lib\concurrent-trees-2.4.0.jar;%APP_HOME%\lib\avro-ipc-1.7.7.jar;%APP_HOME%\lib\avro-ipc-1.7.7-tests.jar;%APP_HOME%\lib\javax.ws.rs-api-2.0.1.jar;%APP_HOME%\lib\javax.inject-2.4.0-b34.jar;%APP_HOME%\lib\janino-2.7.8.jar;%APP_HOME%\lib\antlr4-runtime-4.5.3.jar;%APP_HOME%\lib\parquet-common-1.7.0.jar;%APP_HOME%\lib\parquet-encoding-1.7.0.jar;%APP_HOME%\lib\parquet-format-2.3.0-incubating.jar;%APP_HOME%\lib\parquet-jackson-1.7.0.jar;%APP_HOME%\lib\scalameter_2.11-0.6.jar;%APP_HOME%\lib\test-interface-1.0.jar;%APP_HOME%\lib\apache-log4j-extras-1.2.17.jar;%APP_HOME%\lib\JavaEWAH-0.3.2.jar;%APP_HOME%\lib\nd4j-buffer-0.4.0.jar;%APP_HOME%\lib\canova-data-image-0.0.0.17.jar;%APP_HOME%\lib\jai-imageio-core-1.3.0.jar;%APP_HOME%\lib\imageio-jpeg-3.1.1.jar;%APP_HOME%\lib\imageio-tiff-3.1.1.jar;%APP_HOME%\lib\imageio-psd-3.1.1.jar;%APP_HOME%\lib\imageio-bmp-3.1.1.jar;%APP_HOME%\lib\javacv-1.2.jar;%APP_HOME%\lib\opencv-3.1.0-1.2.jar;%APP_HOME%\lib\ffmpeg-3.0.2-1.2.jar;%APP_HOME%\lib\leptonica-1.73-1.2.jar;%APP_HOME%\lib\nd4j-context-0.4.0.jar;%APP_HOME%\lib\freemarker-2.3.23.jar;%APP_HOME%\lib\spark-streaming_2.11-1.5.2.jar;%APP_HOME%\lib\spark-graphx_2.11-1.5.2.jar;%APP_HOME%\lib\breeze_2.11-0.11.2.jar;%APP_HOME%\lib\pmml-model-1.1.15.jar;%APP_HOME%\lib\nd4j-native-api-0.4.0.jar;%APP_HOME%\lib\jackson-jaxrs-base-2.6.3.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.6.3.jar;%APP_HOME%\lib\jetty-security-9.2.15.v20160210.jar;%APP_HOME%\lib\servlet-api-2.5-6.1.14.jar;%APP_HOME%\lib\kfs-0.3.jar;%APP_HOME%\lib\minlog-1.3.0.jar;%APP_HOME%\lib\velocity-1.5.jar;%APP_HOME%\lib\hive-llap-client-2.1.0.jar;%APP_HOME%\lib\hive-shims-common-2.1.0.jar;%APP_HOME%\lib\hive-shims-0.23-2.1.0.jar;%APP_HOME%\lib\hive-shims-scheduler-2.1.0.jar;%APP_HOME%\lib\javax.servlet-3.0.0.v201112011016.jar;%APP_HOME%\lib\log4j-web-2.4.1.jar;%APP_HOME%\lib\dropwizard-metrics-hadoop-metrics2-reporter-0.1.0.jar;%APP_HOME%\lib\hbase-annotations-1.1.1.jar;%APP_HOME%\lib\hbase-common-1.1.1.jar;%APP_HOME%\lib\hbase-common-1.1.1-tests.jar;%APP_HOME%\lib\hbase-protocol-1.1.1.jar;%APP_HOME%\lib\jcodings-1.0.8.jar;%APP_HOME%\lib\joni-2.1.2.jar;%APP_HOME%\lib\findbugs-annotations-1.3.9-1.jar;%APP_HOME%\lib\jta-1.1.jar;%APP_HOME%\lib\transaction-api-1.1.jar;%APP_HOME%\lib\guice-assistedinject-3.0.jar;%APP_HOME%\lib\twill-common-0.6.0-incubating.jar;%APP_HOME%\lib\twill-core-0.6.0-incubating.jar;%APP_HOME%\lib\twill-discovery-api-0.6.0-incubating.jar;%APP_HOME%\lib\twill-discovery-core-0.6.0-incubating.jar;%APP_HOME%\lib\twill-zookeeper-0.6.0-incubating.jar;%APP_HOME%\lib\hive-llap-common-2.1.0.jar;%APP_HOME%\lib\slider-core-0.90.2-incubating.jar;%APP_HOME%\lib\hbase-hadoop2-compat-1.1.1.jar;%APP_HOME%\lib\hbase-server-1.1.1.jar;%APP_HOME%\lib\hbase-hadoop-compat-1.1.1.jar;%APP_HOME%\lib\geronimo-jta_1.1_spec-1.1.1.jar;%APP_HOME%\lib\mail-1.4.1.jar;%APP_HOME%\lib\geronimo-jaspic_1.0_spec-1.0.jar;%APP_HOME%\lib\geronimo-annotation_1.0_spec-1.1.1.jar;%APP_HOME%\lib\asm-commons-3.1.jar;%APP_HOME%\lib\chill_2.10-0.5.0.jar;%APP_HOME%\lib\spark-launcher_2.10-1.5.2.jar;%APP_HOME%\lib\spark-network-common_2.10-1.5.2.jar;%APP_HOME%\lib\spark-network-shuffle_2.10-1.5.2.jar;%APP_HOME%\lib\spark-unsafe_2.10-1.5.2.jar;%APP_HOME%\lib\akka-remote_2.10-2.3.11.jar;%APP_HOME%\lib\akka-slf4j_2.10-2.3.11.jar;%APP_HOME%\lib\json4s-jackson_2.10-3.2.10.jar;%APP_HOME%\lib\jackson-module-scala_2.10-2.4.4.jar;%APP_HOME%\lib\tachyon-client-0.7.1.jar;%APP_HOME%\lib\spark-catalyst_2.10-1.5.2.jar;%APP_HOME%\lib\jaxb-core-2.2.11.jar;%APP_HOME%\lib\jaxb-impl-2.2.11.jar;%APP_HOME%\lib\lucene-core-3.5.0.jar;%APP_HOME%\lib\h2-1.3.175.jar;%APP_HOME%\lib\netty-3.2.0.Final.jar;%APP_HOME%\lib\asm-6.0_ALPHA.jar;%APP_HOME%\lib\lwjgl-platform-2.9.3-natives-windows.jar;%APP_HOME%\lib\lwjgl-platform-2.9.3-natives-linux.jar;%APP_HOME%\lib\lwjgl-platform-2.9.3-natives-osx.jar;%APP_HOME%\lib\jinput-2.0.5.jar;%APP_HOME%\lib\accessors-smart-1.1.jar;%APP_HOME%\lib\tomcat-juli-8.5.4.jar;%APP_HOME%\lib\asm-3.1.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\jersey-guava-2.22.2.jar;%APP_HOME%\lib\hk2-api-2.4.0-b34.jar;%APP_HOME%\lib\hk2-locator-2.4.0-b34.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.1.jar;%APP_HOME%\lib\jersey-media-jaxb-2.22.2.jar;%APP_HOME%\lib\commons-compiler-2.7.8.jar;%APP_HOME%\lib\parquet-generator-1.7.0.jar;%APP_HOME%\lib\scalameter-core_2.11-0.6.jar;%APP_HOME%\lib\scala-chart_2.11-0.4.2.jar;%APP_HOME%\lib\test-interface-0.5.jar;%APP_HOME%\lib\nd4j-common-0.4.0.jar;%APP_HOME%\lib\javacpp-1.2.2.jar;%APP_HOME%\lib\imageio-core-3.1.1.jar;%APP_HOME%\lib\imageio-metadata-3.1.1.jar;%APP_HOME%\lib\common-lang-3.1.1.jar;%APP_HOME%\lib\common-io-3.1.1.jar;%APP_HOME%\lib\common-image-3.1.1.jar;%APP_HOME%\lib\core-1.1.2.jar;%APP_HOME%\lib\arpack_combined_all-0.1.jar;%APP_HOME%\lib\breeze-macros_2.11-0.11.2.jar;%APP_HOME%\lib\jtransforms-2.4.0.jar;%APP_HOME%\lib\spire_2.11-0.7.4.jar;%APP_HOME%\lib\pmml-agent-1.1.15.jar;%APP_HOME%\lib\pmml-schema-1.1.15.jar;%APP_HOME%\lib\twill-api-0.6.0-incubating.jar;%APP_HOME%\lib\hadoop-yarn-registry-2.7.1.jar;%APP_HOME%\lib\hbase-procedure-1.1.1.jar;%APP_HOME%\lib\jetty-sslengine-6.1.26.jar;%APP_HOME%\lib\hbase-prefix-tree-1.1.1.jar;%APP_HOME%\lib\asm-tree-3.1.jar;%APP_HOME%\lib\kryo-2.21.jar;%APP_HOME%\lib\akka-actor_2.10-2.3.11.jar;%APP_HOME%\lib\uncommons-maths-1.2.2a.jar;%APP_HOME%\lib\json4s-core_2.10-3.2.10.jar;%APP_HOME%\lib\tachyon-underfs-hdfs-0.7.1.jar;%APP_HOME%\lib\tachyon-underfs-local-0.7.1.jar;%APP_HOME%\lib\jutils-1.0.0.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-linux.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-windows.jar;%APP_HOME%\lib\jinput-platform-2.0.5-natives-osx.jar;%APP_HOME%\lib\hk2-utils-2.4.0-b34.jar;%APP_HOME%\lib\aopalliance-repackaged-2.4.0-b34.jar;%APP_HOME%\lib\jfreechart-1.0.17.jar;%APP_HOME%\lib\scala-swing_2.11-1.0.1.jar;%APP_HOME%\lib\spire-macros_2.11-0.7.4.jar;%APP_HOME%\lib\reflectasm-1.07-shaded.jar;%APP_HOME%\lib\minlog-1.2.jar;%APP_HOME%\lib\config-1.2.1.jar;%APP_HOME%\lib\json4s-ast_2.10-3.2.10.jar;%APP_HOME%\lib\jcommon-1.0.21.jar;%APP_HOME%\lib\annotations-2.0.1.jar;%APP_HOME%\lib\bcprov-jdk15on-1.48.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.48.jar;%APP_HOME%\lib\mx4j-tools-3.0.1.jar;%APP_HOME%\lib\jetty-repacked-9.2.13.v20150730.jar;%APP_HOME%\lib\jetty-rc-repacked-5.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\cglib-nodep-2.1_3.jar;%APP_HOME%\lib\selenium-api-2.53.1.jar;%APP_HOME%\lib\jna-platform-4.1.0.jar;%APP_HOME%\lib\jackson-databind-2.8.1.jar;%APP_HOME%\lib\xz-1.5.jar;%APP_HOME%\lib\zookeeper-3.4.8-tests.jar;%APP_HOME%\lib\netty-3.8.0.Final.jar;%APP_HOME%\lib\java-xmlbuilder-0.4.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\commons-math3-3.4.1.jar;%APP_HOME%\lib\netty-all-4.0.36.Final.jar;%APP_HOME%\lib\netty-handler-4.0.37.Final.jar;%APP_HOME%\lib\netty-buffer-4.0.37.Final.jar;%APP_HOME%\lib\netty-transport-4.0.37.Final.jar;%APP_HOME%\lib\netty-codec-4.0.37.Final.jar;%APP_HOME%\lib\netty-common-4.0.37.Final.jar;%APP_HOME%\lib\joda-time-2.9.3.jar;%APP_HOME%\lib\hadoop-client-2.7.2-tests.jar;%APP_HOME%\lib\compress-lzf-1.0.3.jar;%APP_HOME%\lib\snappy-java-1.1.2.6.jar;%APP_HOME%\lib\scala-library-2.12.0-M5.jar;%APP_HOME%\lib\mesos-1.0.0-shaded-protobuf.jar;%APP_HOME%\lib\stream-2.7.0.jar;%APP_HOME%\lib\metrics-core-3.1.2.jar;%APP_HOME%\lib\commons-digester-1.8.jar;%APP_HOME%\lib\commons-beanutils-core-1.8.0.jar;%APP_HOME%\lib\commons-beanutils-1.7.0.jar;%APP_HOME%\lib\logback-classic-1.1.7.jar;%APP_HOME%\lib\logback-core-1.1.7.jar;%APP_HOME%\lib\commons-compress-1.9.jar;%APP_HOME%\lib\jackson-core-2.8.1.jar;%APP_HOME%\lib\json4s-core_2.11-3.2.11.jar;%APP_HOME%\lib\jackson-module-paranamer-2.6.5.jar;%APP_HOME%\lib\json4s-ast_2.11-3.2.11.jar;%APP_HOME%\lib\scala-reflect-2.12.0-M5.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\ant-1.6.5.jar;%APP_HOME%\lib\datanucleus-core-4.1.6.jar;%APP_HOME%\lib\calcite-core-1.6.0.jar;%APP_HOME%\lib\calcite-linq4j-1.6.0.jar;%APP_HOME%\lib\eigenbase-properties-1.1.5.jar;%APP_HOME%\lib\pentaho-aggdesigner-algorithm-5.1.5-jhyde.jar;%APP_HOME%\lib\calcite-avatica-1.6.0.jar;%APP_HOME%\lib\libthrift-0.9.3.jar;%APP_HOME%\lib\libfb303-0.9.3.jar;%APP_HOME%\lib\jasper-compiler-5.5.23.jar;%APP_HOME%\lib\jsp-api-2.0.jar;%APP_HOME%\lib\jasper-runtime-5.5.23.jar;%APP_HOME%\lib\spring-context-4.3.2.RELEASE.jar;%APP_HOME%\lib\ant-launcher-1.9.1.jar;%APP_HOME%\lib\jetty-http-9.2.15.v20160210.jar;%APP_HOME%\lib\jetty-io-9.2.15.v20160210.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.21.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.21.jar;%APP_HOME%\lib\spring-beans-4.3.2.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.3.2.RELEASE.jar;%APP_HOME%\lib\spring-jdbc-4.3.2.RELEASE.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\ST4-4.0.8.jar;%APP_HOME%\lib\jna-4.1.0.jar;%APP_HOME%\lib\scalatest_2.11-2.2.6.jar;%APP_HOME%\lib\lombok-1.16.6.jar;%APP_HOME%\lib\javassist-3.18.2-GA.jar;%APP_HOME%\lib\jetty-continuation-9.2.15.v20160210.jar;%APP_HOME%\lib\servlet-api-2.5-20081211.jar;%APP_HOME%\lib\pig-0.12.0.jar;%APP_HOME%\lib\hive-orc-2.1.0.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\commons-math-2.2.jar;%APP_HOME%\lib\disruptor-3.3.0.jar;%APP_HOME%\lib\jcommander-1.48.jar;%APP_HOME%\lib\htmlunit-2.21.jar;%APP_HOME%\lib\xalan-2.7.2.jar;%APP_HOME%\lib\htmlunit-core-js-2.17.jar;%APP_HOME%\lib\neko-htmlunit-2.21.jar;%APP_HOME%\lib\cssparser-0.9.18.jar;%APP_HOME%\lib\websocket-client-9.2.15.v20160210.jar;%APP_HOME%\lib\serializer-2.7.2.jar;%APP_HOME%\lib\sac-1.3.jar;%APP_HOME%\lib\websocket-common-9.2.15.v20160210.jar;%APP_HOME%\lib\websocket-api-9.2.15.v20160210.jar;%APP_HOME%\lib\paranamer-2.7.jar;%APP_HOME%\lib\protobuf-java-3.0.0-beta-1.jar;%APP_HOME%\lib\fastutil-6.5.7.jar;%APP_HOME%\lib\spring-tx-4.3.2.RELEASE.jar;%APP_HOME%\lib\scala-xml_2.11-1.0.2.jar;%APP_HOME%\lib\commons-lang3-3.4.jar;%APP_HOME%\lib\httpmime-4.5.2.jar;%APP_HOME%\lib\xercesImpl-2.11.0.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar

@rem Execute TestNG-1
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TEST_NG_1_OPTS%  -classpath "%CLASSPATH%" org.raliclo.JavaSEApplication %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable TEST_NG_1_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%TEST_NG_1_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
