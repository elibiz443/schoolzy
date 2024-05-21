# SCHOOLZY

- This is a school management system.

Kickstart:
```
rails new schoolzy  -j esbuild -c tailwind -d postgresql -T && cd schoolzy && subl .
```

```
rails g model User first_name middle_name last_name grade total_fee:integer fee_paid:integer date_paid:date reg_no admission_fee_status:boolean uniform_status:boolean role total_salary:integer salary_paid:integer lunch_money_status:boolean gurdian_contact username password_digest
```
