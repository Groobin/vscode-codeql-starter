import java

from IfStmt if_s , BlockStmt block
where
    if_s . getThen () = block and
    block . getNumStmt () = 0
select if_s , block , " Empty block in if - then ."
