with source as (
    select *
    from {{source('employee','emp') }}
 ),
 renamed as (
    select 
        empno,
        ename as emp_name,
        job,
        mgr as mgr_id,
        hiredate,
        sal,
        comm,
        deptno
    from source
 )
 select * from renamed