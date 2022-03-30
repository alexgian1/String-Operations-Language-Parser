all: compile

compile:
	jflex scanner.flex
	java -jar JavaCUP/java-cup-11b.jar -interface -parser Parser parser.cup
	javac -cp JavaCUP/java-cup-11b-runtime.jar *.java

execute:
	java -cp JavaCUP/java-cup-11b-runtime.jar:. Main

clean:
	rm -f *.class *~ sym.java Scanner.java
