import java

from MethodAccess call , Method method , string packageName , string typeName
where
    call . getMethod () = method and
    method . hasName (" println ") and
    method . getDeclaringType () . hasQualifiedName ( packageName , typeName )
select call , packageName +","+ typeName
