#!/bin/sh
mvn package exec:java -Dexec.mainClass=HelloWorld

echo This is a happy day. A day to remember > input.txt
java -cp target/chapter2-0-jar-with-dependencies.jar com.twitter.scalding.Tool WordCountJob --local --input input.txt --output output.txt -Xmx1024mjava