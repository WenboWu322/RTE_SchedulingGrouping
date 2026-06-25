import pandas as pd
import random

# define caissons nb of caissons
N = 100
T = 180
caissons = [i for i in range(N)]  # Index starts from 0

# define degradation rate 
random.seed(40)
# alpha_values = {caisson: round(random.uniform(0.01, 0.05), 6) for caisson in caissons}
alpha_values = {caisson: round(random.uniform(0.001, 0.05), 6) for caisson in caissons}

random.seed(40) # Set seed for reproducibility
# generate random initial pressure values
initial_p_values = {caisson: round(random.uniform(3.2, 3.5), 2) for caisson in caissons}

def generate_tasks(initial_p_values, T, alpha_values):
    # create a dataframe to store the maintenance plan
    columns = ['INDEX', 'CSEM', 'INITIALP', 'OPERATION', 'DATE']
    data = []

    # generate maintenance plan
    index = 0  
    for caisson, initial_p in initial_p_values.items():
        current_p = initial_p
        total_days = 0
        alpha = alpha_values[caisson]
        
        while total_days < T:
            # calculate the time to reach 3.2 and take the integer part
            time_to_3_2 = int((current_p - 3.2) / alpha)

            # check if the total days exceed horizon T
            if total_days + time_to_3_2 >= T:
                break

            # add the maintenance plan x task
            operation = 'x'  # only x tasks
            data.append([index, caisson, initial_p, operation, total_days + time_to_3_2])
            index += 1
            total_days += time_to_3_2 + 1  # x task takes 1 day
            current_p = 3.5  # reset the pressure to 3.5

    maintenance_plan = pd.DataFrame(data, columns=columns)
    return maintenance_plan

planning = generate_tasks(initial_p_values, T, alpha_values)
print(planning)
planning.to_csv("Publication/maintenance_plan_new.csv", index=False)
print("CSV file has been saved successfully")
