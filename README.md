# Task 7 – Creating Views

## 🎯 Objective:
Demonstrate the use of SQL `CREATE VIEW` to simplify queries, abstract logic, and improve data security using the `EmployeeDB` database.

## 🗃️ Table Used:
**employees**  (in file: Task-7_script.sql):

<img width="392" alt="image" src="https://github.com/user-attachments/assets/4b078505-ac16-4c94-8e2a-ee8de9537788" />

---

## 📄 Views Created (in file: Task-7_VIEW_queries.sql):

### 1. `high_salary_employees`
- Shows employees earning more than ₹65,000.
- Helps in quickly identifying top earners across departments.
<img width="345" alt="image" src="https://github.com/user-attachments/assets/fccd64d3-7936-4e73-97b5-4384a9cb84f5" />

### 2. `department_avg_salary`
- Displays the average salary per department using `GROUP BY`.
- Useful for analyzing departmental salary trends.
<img width="143" alt="image" src="https://github.com/user-attachments/assets/344e0665-52dd-4d80-bf75-bd54769ac948" />

### 3. `recent_hires`
- Lists employees hired in the **last 2 years**.
- Helps HR filter and monitor new joiners.
- Output shows no recent hires.
<img width="301" alt="image" src="https://github.com/user-attachments/assets/01724c10-0c9b-4edc-8efa-5e7894752c28" />

### 4. `only_it_department` *(with `WITH CHECK OPTION`)*
- Filters only `IT` department employees.
- Prevents insert/update operations through the view unless the department is `'IT'`.
<img width="388" alt="image" src="https://github.com/user-attachments/assets/04789996-be0a-4aae-8437-bc34efb0d34b" />

---

## 🔍 Sample Usage

```sql
-- View employees with high salaries
SELECT * FROM high_salary_employees;

-- View average salary by department
SELECT * FROM department_avg_salary;

-- View employees hired in the last 2 years
SELECT * FROM recent_hires;

-- View only IT department employees
SELECT * FROM only_it_department;
