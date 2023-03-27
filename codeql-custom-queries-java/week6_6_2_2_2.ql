import java

from IfStmt if_s
where exists ( BlockStmt block | if_s . getThen () = block )
select if_s , "A block in the then of an if."

// The following query will find all ifs with a block-statement in the then-branch. 
// Line 4 defines a constraint on the nodes defined in line 3. (loosely)
// From all pairs of if-statements and block-statements it takes the ones where the then-part is equal to the block