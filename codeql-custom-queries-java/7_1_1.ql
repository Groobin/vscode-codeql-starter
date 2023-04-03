import java

predicate inAssignment ( Expr e ) {
exists ( AssignExpr a | a . getAChildExpr *() = e )
or exists (LocalVariableDeclExpr a| a.getAChildExpr*() =e)
}
    
from MethodAccess call
where inAssignment ( call )
select call , " Used in an assignment or local declaration."