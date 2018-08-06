[Kurento](https://kurento.org) JAVA examples working with a HDFS (Hadoop Distributed File System). Using .webm video files (Google VP8 codec).

Based on kurento-tutorial examples.

# Kurento server start

	$ sudo /etc/init.d/kurento-media-server start

# Kurento Clients

## Setup Hadoop FS 

In application.properties:

	hadoop.fs.uri=$HD_FS_SERVER:8020


## Webm player from hdfs

WARNING: This example requires server and client running in the same computer

	$ cd kurento-player-from-hdfs/
	$ sudo mvn -U clean spring-boot:run -Dkms.url=ws://$KURENTO_SERVER:8888/kurento

## Stream record (i.e. webcam, etc) in a hdfs

	$ cd kurento-record-remote-video-in-dfs
	$ sudo mvn -U clean spring-boot:run -Dkms.url=ws://$KURENTO_SERVER:8888/kurento

## Use the client app from a browser

Go to https://localhost:8443/

Config in pom.xml:

	<properties>
		<demo.port>8443</demo.port>
		<start-class>org.kurento.tutorial.player.PlayerApp</start-class>
	</properties>


# TODO

* Add SSL security support


# License
[Apache 2.0 License]: http://www.apache.org/licenses/LICENSE-2.0



About Kurento
=============

Kurento is an open source software project providing a platform suitable for creating modular applications with advanced real-time communication capabilities. For knowing more about Kurento, please visit the Kurento project website: https://www.kurento.org.

Kurento is part of [FIWARE]. For further information on the relationship of FIWARE and Kurento check the [Kurento FIWARE Catalog Entry]. Kurento is also part of the [NUBOMEDIA] research initiative.

[FIWARE]: http://www.fiware.org
[Kurento FIWARE Catalog Entry]: http://catalogue.fiware.org/enablers/stream-oriented-kurento
[NUBOMEDIA]: http://www.nubomedia.eu

Documentation
-------------

The Kurento project provides detailed [documentation] including tutorials, installation and development guides. The [Open API specification], also known as *Kurento Protocol*, is available on [apiary.io].

[documentation]: https://www.kurento.org/documentation
[Open API specification]: http://kurento.github.io/doc-kurento/
[apiary.io]: http://docs.streamoriented.apiary.io/
