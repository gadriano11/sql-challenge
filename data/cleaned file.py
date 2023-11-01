import pandas as pd
import os

# Get the current directory
current_dir = os.path.dirname(__file__)

# File paths for input and output CSV files
input_file = os.path.join(current_dir, "employees.csv")
output_file = os.path.join(current_dir, "employees_cleaned.csv")

# Read the original CSV file
df = pd.read_csv(input_file)

# Convert the date columns from MM/DD/YYYY to YYYY/MM/DD
df['birth_date'] = pd.to_datetime(df['birth_date'], format='%m/%d/%Y').dt.strftime('%Y/%m/%d')
df['hire_date'] = pd.to_datetime(df['hire_date'], format='%m/%d/%Y').dt.strftime('%Y/%m/%d')

# Save the cleaned data to a new CSV file
df.to_csv(output_file, index=False)

print(f"Data cleaned and saved to {output_file}")
