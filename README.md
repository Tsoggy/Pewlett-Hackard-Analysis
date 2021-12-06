# Pewlett Hackard Analysis
## Challenge Week 7: SQL
### Overview
#### Purpose
The purpose of this analysis is to parse through the very large list of Pewlett Hackard employees to determine:
- how many are still employed
- the birth dates of the employees so that we can determine who is nearing retirement age
- the departments that will have retiring employees

#### Data
The data that we used was stored within 6 .csvs. We used SQL to create tables, import from the .csvs, and view the data. We then produced new tables to determine:
- who the retiring individuals will likely be (based on their birth dates)
- a count of the retiring individuals grouped by job title
- the employees who may be interested in mentoring the next generation of employees

### Results
#### Analysis Deliverables
The first analysis deliverable is to produce a table with the names of all employees who will be retiring in the near future. The second analysis deliverable is to produce a table with the names of all employees who may be eligible to mentor new employees who will be replacing those retiring. We completed this analysis in the following 4 steps:
1. finding all employees whose birthdates are between 1952 and 1955
2. eliminating all duplicate employee names (as some have moved from one department to another over time)
3. counting the number of employees retiring
4. finding all employees whose birthdates are in 1965

#### Silver Tsunami
There are 90,398 soon-to-be retiring employees, as you can see with the query below:
!(Count_of_Retiring_Individuals)Resources/count_of_retiring_employees.png



Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
