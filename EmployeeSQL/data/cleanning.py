import pandas as pd

files = ['dept_emp.csv','dept_manager.csv','employees.csv','salaries.csv']
for file in files:
    df = pd.read_csv('EmployeeSQL/data/'+ file)
    df.to_csv('EmployeeSQL/data/'+ file)
