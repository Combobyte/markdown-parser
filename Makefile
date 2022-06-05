# Makefile for MarkdownParse Final version
CLASSPATH = lib/*:.

Graph.class: Graph.java
	javac Graph.java
# Step 1: make MarkdownParse.class
MarkdownParse.class: MarkdownParse.java Graph.class
	javac -g -cp $(CLASSPATH) MarkdownParse.java

# Step 2: make MarkdownParseTest.class
MarkdownParseTest.class: MarkdownParseTest.java MarkdownParse.class
	javac -g -cp $(CLASSPATH) MarkdownParseTest.java

# Step 3: run test cases
test: MarkdownParseTest.class
	java -cp $(CLASSPATH) MarkdownParseTest

TryCommonMark.class: TryCommonMark.java
	javac -g -cp $(CLASSPATH) TryCommonMark.java