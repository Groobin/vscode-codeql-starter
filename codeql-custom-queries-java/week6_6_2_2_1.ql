import java

from IfStmt if_s
select if_s , if_s . getThen () . getPrimaryQlClasses ()

//The followingquery will give information on what type of statements are the thenbranch of an if. 
//The method getPrimaryQlClasses returns which QLclass a node belongs to.
//If you run this query the results will tell that 9 if-statements have a BlockStmt and one an ExprStmt.