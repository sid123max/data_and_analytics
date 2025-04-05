with source as (
    select *
    from {{source('employee','emp') }}
 ),
 renamed as (
    select 
        empno emp_no,
        ename as emp_name,
        job,
        mgr as mgr_id,
        hiredate,
        sal,
        comm,
        deptno
 )
 select * from renamed

       
 )