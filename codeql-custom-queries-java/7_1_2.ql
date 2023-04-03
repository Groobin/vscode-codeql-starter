import java

predicate inAssignment(Expr e){
    exists (AssignExpr a| a.getAChildExpr*() = e) or exists (
        LocalVariableDeclExpr a| a.getAChildExpr*() = e)
}

class StringConcat extends AddExpr {
    StringConcat() { this.getType().toString()="String" }
}

from StringConcat str
where inAssignment(str)
select str,"Addition used in assignment or declaration."