

create (ee:Department { name: "Computer Science & Applied Physics"})
create (ee:Program { name:"Computing in Software Development L7 YR 3 Sem 6" })
match (a:Department),(b:Program) where a.name = "Computer Science & Applied Physics" and b.name = "Computing in Software Development L7 YR 3 Sem 6" create (a)-[r:IsOver]->(b)
create (ee:Module { name: "Graph Theory", Lecturer: "Ian McLoughlin" })
match (a:Program),(b:Module) where a.name = "Computing in Software Development L7 YR 3 Sem 6" and b.name = "Graph Theory" create (a)-[r:HasA]->(b)
match (ee:Program) where ee.name = "Computing in Software Development L7 YR 3 Sem 6" create (ab:Module { name: "Database Management Systems", Lecturer: "Deirdre O'Donovan"}),
 (cd:Module { name: "Mobile Applications Development 2", Lecturer: "Damian Costello"}),
 (ef:Module { name: "Software Testing", Lecturer: "Martin Hynes"}),
 (gh:Module { name: "Server Side Rad", Lecturer: "Gerard Harrison"}),
 (ij:Module { name: "Professional Practice In IT", Lecturer: "Damian Costello"}),
 (ee)-[:HasA]->(ab), (ee)-[:HasA]->(cd), (ee)-[:HasA]->(ef), (ee)-[:HasA]->(gh), (ee)-[:HasA]->(ij)
create (ee:Students { accepted_into: "Computing in Software Development L7 YR 3 Sem 6", max_students: "90"})
 match (ee:Students) where ee.accepted_into = "Computing in Software Development L7 YR 3 Sem 6" 
 create (ab:Group { name: "A", course: "Computing in Software Development L7 YR 3 Sem 6", max_students: "30"}),
 (cd:Group { name: "B", course: "Computing in Software Development L7 YR 3 Sem 6", max_students: "30"}), 
 (ef:Group { name: "C", course: "Computing in Software Development L7 YR 3 Sem 6", max_students: "30"}), 
 (ee)-[:Divided_into]->(ab), (ee)-[:Divided_into]->(cd), (ee)-[:Divided_into]->(ef)

 match (ee:Group),(m0:Module),(m1:Module),(m2:Module),(m3:Module),(m4:Module),(m5:Module) 
 where ee.name = "A" and m0.name = "Graph Theory" and m1.name = "Software Testing" and m2.name = "Mobile Applications Development 2"
 and m3.name = "Database Management Systems" and m4.name = "Server Side Rad" and m5.name = "Professional Practice In IT" create (m0)-[:Taught_to]->(ee),
 (m1)-[:Taught_to]->(ee), (m2)-[:Taught_to]->(ee), (m3)-[:Taught_to]->(ee), (m4)-[:Taught_to]->(ee), (m5)-[:Taught_to]->(ee)

match (ee:Group),(m0:Module),(m1:Module),(m2:Module),(m3:Module),(m4:Module),(m5:Module) where ee.name = "B" 
and m0.name = "Graph Theory" and m1.name = "Software Testing" and m2.name = "Mobile Applications Development 2" 
and m3.name = "Database Management Systems" and m4.name = "Server Side Rad" and m5.name = "Professional Practice In IT"
 create (m0)-[:Taught_to]->(ee), (m1)-[:Taught_to]->(ee), (m2)-[:Taught_to]->(ee), (m3)-[:Taught_to]->(ee), (m4)-[:Taught_to]->(ee), 
(m5)-[:Taught_to]->(ee)


create (:Day { name: "Monday", roomID: "0436" }),
(:Day { name: "Tuesday", roomID: "0436" }), 
(:Day { name: "Wednesday", roomID: "0436" }),
(:Day { name: "Thursday", roomID: "0436" }),
(:Day { name: "Friday", roomID: "0436" }), 
(:Day { name: "Monday", roomID: "0483" }), 
(:Day { name: "Tuesday", roomID: "0483" }),
(:Day { name: "Wednesday", roomID: "0483" }),
(:Day { name: "Thursday", roomID: "0483" }),
(:Day { name: "Friday", roomID: "0483" }),
(:Day { name: "Monday", roomID: "0481" }),
(:Day { name: "Tuesday", roomID: "0481" }),
(:Day { name: "Wednesday", roomID: "0481" }),
(:Day { name: "Thursday", roomID: "0481" }),
(:Day { name: "Friday", roomID: "0481" }),
(:Day { name: "Monday", roomID: "0482" }),
(:Day { name: "Tuesday", roomID: "0482" }),
(:Day { name: "Wednesday", roomID: "0482" }),
(:Day { name: "Thursday", roomID: "0482" }),
(:Day { name: "Friday", roomID: "0482" }),
(:Day { name: "Monday", roomID: "0994" }),
(:Day { name: "Tuesday", roomID: "0994" }),
(:Day { name: "Wednesday", roomID: "0994" }),
(:Day { name: "Thursday", roomID: "0994" }),
(:Day { name: "Friday", roomID: "0994" }),
(:Day { name: "Monday", roomID: "0145" }),
(:Day { name: "Tuesday", roomID: "0145" }),
(:Day { name: "Wednesday", roomID: "0145" }),
(:Day { name: "Thursday", roomID: "0145" }),
(:Day { name: "Friday", roomID: "0145" }),
(:Day { name: "Monday", roomID: "PF18" }),
(:Day { name: "Tuesday", roomID: "PF18" }),
(:Day { name: "Wednesday", roomID: "PF18" }),
(:Day { name: "Thursday", roomID: "PF18" }),
(:Day { name: "Friday", roomID: "PF18" }),
(:Day { name: "Monday", roomID: "0939" }),
(:Day { name: "Tuesday", roomID: "0939" }),
(:Day { name: "Wednesday", roomID: "0939" }),
(:Day { name: "Thursday", roomID: "0939" }),
(:Day { name: "Friday", roomID: "0939" }), 
(:Day { name: "Monday", roomID: "0208" }),
(:Day { name: "Tuesday", roomID: "0208" }),
(:Day { name: "Wednesday", roomID: "0208" }),
(:Day { name: "Thursday", roomID: "0208" }),
(:Day { name: "Friday", roomID: "0208" }),
(:Day { name: "Monday", roomID: "0938" }),
(:Day { name: "Tuesday", roomID: "0938" }),
(:Day { name: "Wednesday", roomID: "0938" }),
(:Day { name: "Thursday", roomID: "0938" }), 
(:Day { name: "Friday", roomID: "0938" }), 
(:Day { name: "Monday", roomID: "0162" }), 
(:Day { name: "Tuesday", roomID: "0162" }), 
(:Day { name: "Wednesday", roomID: "0162" }), 
(:Day { name: "Friday", roomID: "0379" }), 
(:Day { name: "Monday", roomID: "0997" }), 
(:Day { name: "Tuesday", roomID: "0997" }), 
(:Day { name: "Wednesday", roomID: "0997" }), 
(:Day { name: "Thursday", roomID: "0997" }), 
(:Day { name: "Friday", roomID: "0997" }), 
(:Day { name: "Monday", roomID: "0223" }), 
(:Day { name: "Tuesday", roomID: "0223" }), 
(:Day { name: "Wednesday", roomID: "0223" }), 
(:Day { name: "Thursday", roomID: "0223" }), 
(:Day { name: "Friday", roomID: "0223" }), 
(:Day { name: "Monday", roomID: "0995" }), 
(:Day { name: "Tuesday", roomID: "0995" }), 
(:Day { name: "Wednesday", roomID: "0995" }), 
(:Day { name: "Thursday", roomID: "0995" }), 
(:Day { name: "Friday", roomID: "0995" }), 
(:Day { name: "Monday", roomID: "0470" }), 
(:Day { name: "Tuesday", roomID: "0470" }), 
(:Day { name: "Wednesday", roomID: "0470" }), 
(:Day { name: "Thursday", roomID: "0470" }), 
(:Day { name: "Friday", roomID: "0470" })




 relationships 
 _____________________________________________
match (ee:Day { name: "Monday", roomID: "0436" }), (a:TimeSlot { roomID: "0436", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0483" }), (a:TimeSlot { roomID: "0483", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0482" }), (a:TimeSlot { roomID: "0482", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0481" }), (a:TimeSlot { roomID: "0481", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "PF18" }), (a:TimeSlot { roomID: "PF18", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0145" }), (a:TimeSlot { roomID: "0145", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0994" }), (a:TimeSlot { roomID: "0994", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0223" }), (a:TimeSlot { roomID: "0223", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0162" }), (a:TimeSlot { roomID: "0162", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0470" }), (a:TimeSlot { roomID: "0470", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0995" }), (a:TimeSlot { roomID: "0995", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0379" }), (a:TimeSlot { roomID: "0379", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0997" }), (a:TimeSlot { roomID: "0997", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0938" }), (a:TimeSlot { roomID: "0938", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0939" }), (a:TimeSlot { roomID: "0939", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Monday", roomID: "0208" }), (a:TimeSlot { roomID: "0208", day: "Monday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0436" }), (a:TimeSlot { roomID: "0436", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0483" }), (a:TimeSlot { roomID: "0483", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0482" }), (a:TimeSlot { roomID: "0482", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0481" }), (a:TimeSlot { roomID: "0481", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "PF18" }), (a:TimeSlot { roomID: "PF18", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0145" }), (a:TimeSlot { roomID: "0145", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0994" }), (a:TimeSlot { roomID: "0994", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0223" }), (a:TimeSlot { roomID: "0223", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0162" }), (a:TimeSlot { roomID: "0162", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0470" }), (a:TimeSlot { roomID: "0470", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0995" }), (a:TimeSlot { roomID: "0995", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0379" }), (a:TimeSlot { roomID: "0379", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0997" }), (a:TimeSlot { roomID: "0997", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0938" }), (a:TimeSlot { roomID: "0938", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0939" }), (a:TimeSlot { roomID: "0939", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Tuesday", roomID: "0208" }), (a:TimeSlot { roomID: "0208", day: "Tuesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0436" }), (a:TimeSlot { roomID: "0436", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0483" }), (a:TimeSlot { roomID: "0483", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0482" }), (a:TimeSlot { roomID: "0482", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0481" }), (a:TimeSlot { roomID: "0481", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "PF18" }), (a:TimeSlot { roomID: "PF18", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0145" }), (a:TimeSlot { roomID: "0145", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0994" }), (a:TimeSlot { roomID: "0994", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0223" }), (a:TimeSlot { roomID: "0223", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0162" }), (a:TimeSlot { roomID: "0162", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0470" }), (a:TimeSlot { roomID: "0470", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0995" }), (a:TimeSlot { roomID: "0995", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0379" }), (a:TimeSlot { roomID: "0379", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0997" }), (a:TimeSlot { roomID: "0997", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0938" }), (a:TimeSlot { roomID: "0938", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0939" }), (a:TimeSlot { roomID: "0939", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Wednesday", roomID: "0208" }), (a:TimeSlot { roomID: "0208", day: "Wednesday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0436" }), (a:TimeSlot { roomID: "0436", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0483" }), (a:TimeSlot { roomID: "0483", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0482" }), (a:TimeSlot { roomID: "0482", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0481" }), (a:TimeSlot { roomID: "0481", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "PF18" }), (a:TimeSlot { roomID: "PF18", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0145" }), (a:TimeSlot { roomID: "0145", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0994" }), (a:TimeSlot { roomID: "0994", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0223" }), (a:TimeSlot { roomID: "0223", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0162" }), (a:TimeSlot { roomID: "0162", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0470" }), (a:TimeSlot { roomID: "0470", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0995" }), (a:TimeSlot { roomID: "0995", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0379" }), (a:TimeSlot { roomID: "0379", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0997" }), (a:TimeSlot { roomID: "0997", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0938" }), (a:TimeSlot { roomID: "0938", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0939" }), (a:TimeSlot { roomID: "0939", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Thursday", roomID: "0208" }), (a:TimeSlot { roomID: "0208", day: "Thursday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0436" }), (a:TimeSlot { roomID: "0436", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0483" }), (a:TimeSlot { roomID: "0483", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0482" }), (a:TimeSlot { roomID: "0482", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0481" }), (a:TimeSlot { roomID: "0481", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "PF18" }), (a:TimeSlot { roomID: "PF18", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0145" }), (a:TimeSlot { roomID: "0145", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0994" }), (a:TimeSlot { roomID: "0994", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0994" }), (a:TimeSlot { roomID: "0994", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0223" }), (a:TimeSlot { roomID: "0223", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0162" }), (a:TimeSlot { roomID: "0162", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0470" }), (a:TimeSlot { roomID: "0470", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0995" }), (a:TimeSlot { roomID: "0995", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0379" }), (a:TimeSlot { roomID: "0379", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0997" }), (a:TimeSlot { roomID: "0997", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0938" }), (a:TimeSlot { roomID: "0938", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0939" }), (a:TimeSlot { roomID: "0939", day: "Friday" }) create (ee)-[:Session]->(a)
match (ee:Day { name: "Friday", roomID: "0208" }), (a:TimeSlot { roomID: "0208", day: "Friday" }) create (ee)-[:Session]->(a)
match (a:Group),(b:TimeSlot {name: "9:00-10:00", roomID: "0145", day:"Monday"}),(c:Module) where a.name = "A" and c.name = "Graph Theory"
 create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "10:00-11:00", roomID: "0994", day:"Monday"}),(c:Module) where c.name = "Database Management Systems" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "12:00-13:00", roomID: "0223", day:"Monday"}),(c:Module) where c.name = "Mobile Applications Development 2" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "13:00-14:00", roomID: "0223", day:"Monday"}),(c:Module) where c.name = "Mobile Applications Development 2"
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "16:00-17:00", roomID: "0481", day:"Monday"}),(c:Module) where a.name = "A" and c.name = "Software Testing" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "17:00-18:00", roomID: "0481", day:"Monday"}),(c:Module) where a.name = "A" and c.name = "Software Testing" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "16:00-17:00", roomID: "0436", day:"Monday"}),(c:Module) where a.name = "C" and c.name = "Server Side Rad" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "17:00-18:00", roomID: "0436", day:"Monday"}),(c:Module) where a.name = "C" and c.name = "Server Side Rad" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "9:00-10:00", roomID: "0436", day:"Tuesday"}),(c:Module) where a.name = "C" and c.name = "Software Testing" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "10:00-11:00", roomID: "0436", day:"Tuesday"}),(c:Module) where a.name = "C" and c.name = "Software Testing" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "9:00-10:00", roomID: "0481", day:"Tuesday"}),(c:Module) where a.name = "A" and c.name = "Database Management Systems" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "10:00-11:00", roomID: "0481", day:"Tuesday"}),(c:Module) where a.name = "A" and c.name = "Database Management Systems" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "11:00-12:00", roomID: "0470", day:"Tuesday"}),(c:Module) where a.name = "A" and c.name = "Mobile Applications Development 2" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "12:00-13:00", roomID: "0470", day:"Tuesday"}),(c:Module) where a.name = "A" and c.name = "Mobile Applications Development 2" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "12:00-13:00", roomID: "0379", day:"Tuesday"}),(c:Module) where a.name = "B" and c.name = "Graph Theory" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "14:00-15:00", roomID: "0436", day:"Tuesday"}),(c:Module) where a.name = "B" and c.name = "Software Testing" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "15:00-16:00", roomID: "0436", day:"Tuesday"}),(c:Module) where a.name = "B" and c.name = "Software Testing" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "16:00-17:00", roomID: "0436", day:"Tuesday"}),(c:Module) where a.name = "B" and c.name = "Server Side Rad" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "17:00-18:00", roomID: "0436", day:"Tuesday"}),(c:Module) where a.name = "B" and c.name = "Server Side Rad" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "9:00-10:00", roomID: "0162", day:"Wednesday"}),(c:Module) where a.name = "C" and c.name = "Graph Theory" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "10:00-11:00", roomID: "0938", day:"Wednesday"}),(c:Module) where c.name = "Graph Theory" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)

match (a:Group),(b:TimeSlot {name: "11:00-12:00", roomID: "0208", day:"Wednesday"}),(c:Module) where c.name = "Professional Practice In IT" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "13:00-14:00", roomID: "0997", day:"Wednesday"}),(c:Module) where c.name = "Server Side Rad" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "14:00-15:00", roomID: "0994", day:"Wednesday"}),(c:Module) where c.name = "Software Testing" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "15:00-16:00", roomID: "0939", day:"Wednesday"}),(c:Module) where c.name = "Software Testing" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "16:00-17:00", roomID: "0995", day:"Wednesday"}),(c:Module) where c.name = "Database Management Systems" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "9:00-10:00", roomID: "PF18", day:"Thursday"}),(c:Module) where a.name = "B" and c.name = "Mobile Applications Development 2" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "10:00-11:00", roomID: "PF18", day:"Thursday"}),(c:Module) where a.name = "B" and c.name = "Mobile Applications Development 2" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "11:00-12:00", roomID: "PF18", day:"Thursday"}),(c:Module) where a.name = "C" and c.name = "Mobile Applications Development 2" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "12:00-13:00", roomID: "PF18", day:"Thursday"}),(c:Module) where a.name = "C" and c.name = "Mobile Applications Development 2" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "14:00-15:00", roomID: "0436", day:"Thursday"}),(c:Module) where a.name = "A" and c.name = "Server Side Rad" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "15:00-16:00", roomID: "0436", day:"Thursday"}),(c:Module) where a.name = "A" and c.name = "Server Side Rad" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "15:00-16:00", roomID: "0483", day:"Thursday"}),(c:Module) where a.name = "C" and c.name = "Database Management Systems" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "16:00-17:00", roomID: "0483", day:"Thursday"}),(c:Module) where a.name = "C" and c.name = "Database Management Systems" create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "9:00-10:00", roomID: "0482", day:"Friday"}),(c:Module) 
where a.name = "B" and c.name = "Database Management Systems" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "10:00-11:00", roomID: "0482", day:"Friday"}),(c:Module)
where a.name = "B" and c.name = "Database Management Systems" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (a:Group),(b:TimeSlot {name: "11:00-12:00", roomID: "0208", day:"Friday"}),(c:Module) 
where c.name = "Graph Theory" 
create (b)-[:Occupied_by]->(a), (c)-[:Taught_at]->(b)
match (ee:Room),(a:Day) where ee.ID = "CR5" and a.roomID = "0436" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.ID = "CR2" and a.roomID = "0483" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.ID = "CR4" and a.roomID = "0481" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.ID = "CR3" and a.roomID = "0482" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0994" and a.roomID = "0994" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0145" and a.roomID = "0145" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "PF18" and a.roomID = "PF18" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0939" and a.roomID = "0939" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0208" and a.roomID = "0208" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0938" and a.roomID = "0938" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0162" and a.roomID = "0162" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0379" and a.roomID = "0379" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0997" and a.roomID = "0997" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0223" and a.roomID = "0223" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0995" and a.roomID = "0995" create (ee)-[:Available_on]->(a)
match (ee:Room),(a:Day) where ee.number = "0470" and a.roomID = "0470" create (ee)-[:Available_on]->(a)
