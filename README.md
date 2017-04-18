# **_Timetabling-System-represented-in-Neo4j_**

## **_Introduction_**

This project is mostly a documentation detailing the design of the database and prototype Neo4j database using data from GMIT Timetable.
The database should store information and relationships about student groups, classrooms, lecturers, and work hours – just like the currently used timetabling system at GMIT. The document will show the full design and decisions i made as to what data is represtended for example what Nodes, labels and relationships are represting that data.


## **_Tools Used_**

  - Neo4j IDE (discription below)
  - Cypher Query Languge
  - NotePad
  - Internet(main resource in reserch)


# **_Neo4j_**
[![N|Solid](https://cldup.com/69EJDUYNho.png)](https://neo4j.com/nsolid)


## **_Neo4J and Cypher_**

  - Neo4j is a graph DataBase 
  - It is Acid, all data modifications is downloaded within a transaction. Transactional processing ensures data reliability.
  - It is implemented in Java( works on any platform).
  - Comes with Enterprises features this means it can scaleup as well as scale out.
  - It is comfertable with Billions of Entities. 
  - It has a restful APi. 
  - No Schema needed. 


In the previous sections we briefly mentioned Neo4J and its supporting language Cypher. We have also mentioned the general layout of a graph database and the four 
main elements that it consists of, which are:

Element | Description
------------ | -------------
Node | Represents an entity in the database, defined as a circle when shown visually.
Edge | Represents a relationship between nodes, must be directional and are defined as lines when shown visually.
Labels | Used to show what type of entity a node is representing or what type of relationship an edge is representing
Properties | Used to set information about a node or edge
  
  
  - Works on the Cypher (Query Language made for Neo4j)
  -Cypher is a declarative, SQL-inspired language for describing patterns in graphs visually using an [ascii-art](https://en.wikipedia.org/wiki/ASCII_art) syntax.
  -It allows us to state what we want to select, insert, update or delete from our graph data without requiring us to describe exactly how to do it.
  
  - Down below shows a Relationship between two Nodes.
  
  [![N|Solid](https://cldup.com/Fo9dIyMf92.png)](https://neo4j.com/nsolid)
  
  #### **_Cypher Example_** 

In this example we are going to use Cypher to build the graph that we defined in the previous section 'What is a Graph Database'. This example will go though the creation of the 
graph step by step, explaining the Cypher code along the way.

**Step 1**
Creating the nodes

```cypher
CREATE (i:Person {name: "Ian"}), 		//The CREATE keyword is used to create nodes and patterns.
       (j:Person {name: "Jim"}),		//Basically, this is what each of these nodes is describing (usedToReferenceNodeLater:Label {Key: "Value"})
       (e:Person {name: "Emil"}) 
RETURN i, j, e;							//The return keyword is optional, once the nodes are created this keyword causes them to be shown back to the user.
```
(Note: i, j and e are temporary reference variables, they are only used to refer to an element later in the query)
Now that we have created the three nodes we need to now create the relationships between them.

**Step 2**
Creating the relationships between the nodes

```cypher
MATCH 									//The MATCH keyword is used to retrieve any elements that match the patterns specified. (Kind of like your SELECT statement in SQL)
	(i:Person {name: "Ian"}), 			//Then we specify the nodes we are looking for and use a temporary placeholder so we can reference them further in the query.
    (j:Person {name: "Jim"}),		
    (e:Person {name: "Emil"}) 		
CREATE									//Next we use the CREATE keyword to create the relationships and give the label 'KNOWS'
	(i)-[r1:KNOWS]->(e),				//We dont need to reference the node, just its placeholder (Here we say create the 'KNOWS' relationship between Ian and Emil)
	(j)-[r2:KNOWS]->(i)
	(j)-[r3:KNOWS]->(e)
RETURN
	r1, r2, r3;							//Return the relationships back to the user so he/she can see them.
```

Thats it, with those two simple steps we have created the graph shown earlier, if you want to view more information about Cypher you can view its documentation from the 
Neo4J website, here is the link to the [Cypher Documentation](http://neo4j.com/docs/stable/cypher-query-lang.html). 

**_Installation Guide_**

**1. Install Neo4j https://neo4j.com/download/**</br>
**2. Download and unzip the project**</br>
**3. Launch Neo4j and select the database location of the project**</br>
**4. Enter Username and Password**</br>

**_License_**
----

GMIT


## **_References_**

1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Notepad++ Tricks](http://a4apphack.com/featured/tricks-with-notepad). Found this very useful for parsing plain text and removing unwanted

 **Free Software, Hell Yeah!**
