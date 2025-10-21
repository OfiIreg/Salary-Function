# Module 2 Assignment: Salary Function

## Overview
This project completes **Module 2 - Salary Function Assignment** using the provided dataset `Total.csv`.  
It demonstrates Python programming concepts such as data loading, dictionary processing, function creation, error handling, file exportation, and R integration.

The notebook and accompanying scripts were designed to meet all rubric requirements:
- Correctness and completeness
- Code design and standards
- Error handling
- Efficiency and reproducibility

---

## Project Structure
| File | Description |
|------|--------------|
| `Module_2_Salary_Function.ipynb` | Main Jupyter Notebook containing Python code, explanations, and outputs. |
| `Total.csv` | Provided salary dataset containing employee details. |
| `Employee Profile.zip` | Generated ZIP file containing the exported CSV for the second employee in the dataset. |
| `read_employee.R` | R script that unzips `Employee Profile.zip` and displays the contents in R. |
| `submission.zip` | Compressed folder containing all necessary deliverables for submission. |
| `README.md` | This documentation file. |

---

## Step-by-Step Workflow

### Step 1: Load Dataset
The dataset (`Total Salaries.csv`) is imported using **pandas**.  
It contains over 312,000 rows and 9 columns (EmployeeName, JobTitle, BasePay, OvertimePay, OtherPay, Benefits, TotalPay, TotalPayBenefits, Year).

### Step 2: Create Employee Dictionary
A Python dictionary is built using the employee names as keys and the rest of the row data as values.  
This structure enables **fast lookup (O(1) average time)** for any employee name.

### Step 3: Define Lookup Function
The function `get_employee_details(name, allow_partial=False)` returns employee details when a name is entered.
- **Error handling:** Raises `ValueError` for empty input and `LookupError` for missing names.
- **Partial match option:** When `allow_partial=True`, it returns all names containing the substring.

### Step 4: Demonstration with the Second Employee
Following the assignment’s instruction, the function retrieves details for the **second employee in the dataset**, `GARY JIMENEZ`.  
Example output:
```
Name: GARY JIMENEZ
JobTitle: CAPTAIN III (POLICE DEPARTMENT)
BasePay: 155966.02
OvertimePay: 245131.88
OtherPay: 137811.38
TotalPay: 538909.28
Year: 2011
```

### Step 5: Export and Zip Employee Data
The script exports this employee’s data to a CSV file inside a folder named **Employee Profile**, then compresses it into `Employee Profile.zip`.

### Step 6: View Data in R
The provided R script (`read_employee.R`) automatically unzips `Employee Profile.zip`, lists its contents, and prints the first few rows of the CSV.

Run it in R or RStudio:
```R
Rscript read_employee.R
```

---

## How to Run the Project

1. Place the file `Total Salaries.csv` in the same folder as the notebook.
2. Open `Module_2_Salary_Function.ipynb` in Jupyter Notebook, JupyterLab, or Google Colab.
3. Run each cell from top to bottom.
4. Confirm that:
   - The function displays employee details for **GARY JIMENEZ**.
   - `Employee Profile.zip` is generated in the current directory.
5. To view the data using R, run the command:
   ```bash
   Rscript read_employee.R
   ```


---

## Example Outputs

**Employee Dictionary Summary:**
```
Built employee dictionary with 99865 unique names.
Second employee name: GARY JIMENEZ
Matches found for second employee: 1
```

**Export Confirmation:**
```
Exported CSV to Employee Profile/employee_GARY_JIMENEZ.csv
Created zip file: Employee Profile.zip
```

---

## Deliverables Checklist
✅ Jupyter Notebook – `Module_2_Salary_Function.ipynb`  
✅ CSV Data – `Total. Salariescsv`  
✅ Employee ZIP – `Employee Profile.zip`  
✅ R Script – `read_employee.R`  
✅ README File – (this document)  

---

## Author
Prepared by: **Ofure Iregbeyen**  
For: **Module 2 - Salary Function Assignment**  
Course: Programming in R & Python 
Institution: Nexford University

---

*End of README*
