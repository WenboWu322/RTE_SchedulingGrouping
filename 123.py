# from gurobipy import *
# try:
#     # Create a new model
#     m = Model("mip1")
#     # Create variables
#     x = m.addVar(vtype=GRB.BINARY, name="x")
#     y = m.addVar(vtype=GRB.BINARY, name="y")
#     z = m.addVar(vtype=GRB.BINARY, name="z")
#     # Set objective
#     m.setObjective(x + y + 2 * z, GRB.MAXIMIZE)
#     # Add constraint: x + 2 y + 3 z <= 4
#     m.addConstr(x + 2 * y + 3 * z <= 4, "c0")
#     # Add constraint: x + y >= 1
#     m.addConstr(x + y >= 1, "c1")
#     m.optimize()
#     for v in m.getVars():
#         print(v.varName, v.x)
#     print('Obj:', m.objVal)
# except GurobiError:
#     print('Error reported')



import gurobipy as gp
from gurobipy import GRB

# 创建模型
m = gp.Model("production")

# 添加变量（生产数量 ≥ 0）
A = m.addVar(lb=0, name="A")
B = m.addVar(lb=0, name="B")

# 目标函数：maximize 30A + 50B
m.setObjective(30*A + 50*B, GRB.MAXIMIZE)

# 约束条件
m.addConstr(A + 2*B <= 40, "labor")    # 劳动时间限制
m.addConstr(A + B <= 30, "material")   # 原材料限制

# 求解
m.optimize()

# 输出结果
print("\nOptimal production plan:")
print("A =", A.X)
print("B =", B.X)
print("Total profit =", m.objVal)
