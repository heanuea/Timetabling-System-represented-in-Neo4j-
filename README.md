# **_Timetabling-System-represented-in-Neo4j_**

## **_Introduction_**

This project is mostly a documentation detailing the design of the database and prototype Neo4j database using data from GMIT Timetable.
The database should store information and relationships about student groups, classrooms, lecturers, and work hours – just like the currently used timetabling system at GMIT. The document will show the full design and decisions i made as to what data is represtended for example what Nodes, labels and relationships are represting that data.


## **_Tools Used_**

  - Neo4j IDE (discription below)
  - Cypher Query Languge
  - NotePad
  - ParseHub
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

## **_Neo4J (Graph Database) Vs MySQL (Relational Database)_**

Over the course of this documentation the word 'MySQL' as been briefly mentioned once or twice. MySQL and SQL is the equivalent to Neo4J and Cypher. The main difference being
that MySQL is a relational database management system and SQL (Structured Query Language) is MySQL's supporting language. 

**Graph Database Advantages**

1. Graph Databases are schemaless, meaning that if the type of data we are storing changes we do not need to change any underlying structure, we simply just add the alterations.
2. Graph Databases are extemely effective at performing the kind of searches that relational databases arent good at. These are searches like finding friends of friends or trying to find the shortest path between two entities.
   
   
**Graph Database Disadvantages**

1. Graph Databases tend to use a lot of storage space because of the extra relationships that they must store.

Overall which approach you decide to take when designing an application really depends on the task your trying to accomplish, both databases are useful in certain areas. If you
wish to view more information about relational database here is a link to MySQL's documentation. [MySQL](https://dev.mysql.com/doc/)

**_Installation Guide_**

**1. Install Neo4j https://neo4j.com/download/**</br>
**2. Download and unzip the project**</br>
**3. Launch Neo4j and select the database location of the project**</br>
**4. Enter Username and Password**</br>

## **_The Timtable Database_**
I started the project with the idea i had to make the timetable that was difficult but the fact i had the information infront of me 
made the whole idea a bit easier. 

**_Data Sourcing_**
To get my data i went mostly on the GMIT website and into the time table section there i got most of my data.
Once i had completed this task, i then imported each file into Visual studio code. I found this extremely useful as i was able to complete bulk removal of extra whitespace, tabs and other unwanted artefacts that remained from the CSV import. I was able to accomplish this with simple Find and replace all functions in Notpad++. I deed use a tool called [ParseHub](https://www.parsehub.com/) this helped me with very little but useful to know how it worked. 

Once all my Nodes and relationships were ready, I amalgamated them all into one single .cypher file. Anyone who want to use this database, just needs to copy and paste the scripts form the one file and run in Neo4j. There were times i had to copy and paste most of the information that i couldnt get from GMIT that was time comsuming. 

### where to Start ?? 
So deciding what nodes and relationships also what properties and what to name at i was a few days putting together a rough graph on paper. What was catching me out was the time i didnt know to make a node itself or have it as a property.

**The Database Nodes**

Firstly i shall explain the different types of nodes in my project, the project consists of six different types of nodes which are outlined in the table below along with their
properties and labels.

Node | Description | Label(s) | Property(s)
------------ | ------------- | ------------- | -------------
ee Department Node | The Deptartment we are in  | Computer Science & Applied Physics | Name
ee Program Node | Wghat program we are in  | Program | Name,
ee Module Node | modules in the program  | Modules | Name, id , lectuerer
Group Node| the program is split into 3 groups  | Group | Name, id, course, max sudents 
timeslot Node | Node representing the time slot for the day  | Timeslot | Name, id, day, roomID
Room Node | Which room the program is in  | n Room | Name, id ,ID 
Facilities | Which is lab or lectuer or science | Room | Number, id 
Day | what day of the week | Day | id, name:, roomID 

**The Database Relationships**

Next we have the relationships that connect these nodes together, the project consists of four different types of relationships, these relationships are outlined in the
table below.

Relationship | Description | Connected Nodes | Label(s) | Property(s)
------------ | ------------- | ------------- | ------------- | -------------
IsOver Relationship | Represents what department is over what program | Department, program | Isover | id
HasA Relationship | Represents which program has modules  |Program, Modules | HasA | id
Taught_to Relationship | Represents which module is taught to which Group | Module, Group | Taught_to | none
Taught_at Relationship | Represents which time slot the module is taught at  | Module, TImeslot | Taught_at | none
Occupied_by Relationship | represents the time slot is occupied by what group | TimeSlot, Group | Ocupied_by |none
Session Relationship | represents the time slot on that day | Day, TimeSlot |Session | none
In relationship | representing what is going on the room at that time | Activity, Room| in | none
Available_on | represnts what rooms are available on that day | Day, Room |Available_on | none
Divided_into| groups divided into a,b,c | Groups, students| Divided_into | none

## **_Queries_**
In the Introduction section of this documentation i mentioned that i needed to come up with interesting queries for the database i have created. I spent some time trying 
to think of some interesting ones and i think the three here do have some interesting data. I also wanted to make use of different keywords and functions and show my understanding
of them. So the three interesting queries for my database are as follows:

#### **_This Query is to check what time and day software is on_**

```cypher
match (a:Module)-[:Taught_at]-(b:TimeSlot)-[:Session]-(c:Day) where a.name = "Software Testing" return a,b,c
```

#### **_This Query is to check All the groups and time slots_**

```cypher
match (ee:Module)-[]-(Group) return ee, Group
```

#### **_This Query is to check All the groups and students_**

```cypher
match (ee:Students)-[Divided_into]-(Group) return ee, Group 
```

#### **_Search for aroom on particular day_**
```cypher
match (a:Room)-[]->(b:Day) where a.number = "0995" and b.name = "Monday" return a,b
```


## **_Conclusion_**
As trying to get my head around the cypher this is a very good language and getting popular especially in the social media side of the web. I do find it more fun to use than mysql/relational database. But overall i see this being used more and more in the future, as for the project i wish i had found a better way to gather the info or data i was a fulll day copying and pasting also trying to learn the cypher at the same time. 


## **_License_**

GMIT


## **_References_**

1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Notepad++ Tricks](http://a4apphack.com/featured/tricks-with-notepad). Found this very useful for parsing plain text and removing unwanted
3. [Neo4J IN Keyword](http://neo4j.com/docs/stable/cypher-introduction.html) contains information in the introduction section of the Cypher documentation showing how to use the IN keyword to reference multiple properties at once. 
4. [Neo4J SET Keyword] (http://neo4j.com/docs/stable/query-set.html) contains information about setting properties and labels for nodes.
5. gmit timeTable 
6. [Graph Theory Wikapedia] (https://en.wikipedia.org/wiki/Graph_theory) wikipedia page about graph thoery.
7. [Mastering Markdown Language] (https://guides.github.com/features/mastering-markdown) information about how to use the markdown language.. [Graph Database Wikapedia] (https://en.wikipedia.org/wiki/Graph_database) wikipedia page about graph databases.
8. [Cypher Query Language] (http://neo4j.com/developer/cypher) information about cypher and how to use it.
9. [Neo4J MATCH Keyword and capabilities] (http://neo4j.com/docs/stable/query-match.html) information about the 'MATCH' keyword and how you can use it.

 **Free Software, Hell Yeah!**
