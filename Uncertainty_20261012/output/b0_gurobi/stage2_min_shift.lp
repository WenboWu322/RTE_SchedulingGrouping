\ Model B0_Task_Grouping
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  2 assign[0] + assign[1] + 2 assign[3] + 4 assign[4] + 6 assign[5]
   + 8 assign[6] + 10 assign[7]
Subject To
 assign_once_0: assign[0] + assign[1] + assign[2] + assign[3] + assign[4]
   + assign[5] + assign[6] + assign[7] = 1
 capacity_activation_0: assign[0] - 5 visit[0] <= 0
 no_empty_visit_0: - assign[0] + visit[0] <= 0
 capacity_activation_1: assign[1] - 5 visit[1] <= 0
 no_empty_visit_1: - assign[1] + visit[1] <= 0
 capacity_activation_2: assign[2] - 5 visit[2] <= 0
 no_empty_visit_2: - assign[2] + visit[2] <= 0
 capacity_activation_3: assign[3] - 5 visit[3] <= 0
 no_empty_visit_3: - assign[3] + visit[3] <= 0
 capacity_activation_4: assign[4] - 5 visit[4] <= 0
 no_empty_visit_4: - assign[4] + visit[4] <= 0
 capacity_activation_5: assign[5] - 5 visit[5] <= 0
 no_empty_visit_5: - assign[5] + visit[5] <= 0
 capacity_activation_6: assign[6] - 5 visit[6] <= 0
 no_empty_visit_6: - assign[6] + visit[6] <= 0
 capacity_activation_7: assign[7] - 5 visit[7] <= 0
 no_empty_visit_7: - assign[7] + visit[7] <= 0
 fix_minimum_visit_count: visit[0] + visit[1] + visit[2] + visit[3]
   + visit[4] + visit[5] + visit[6] + visit[7] = 1
Bounds
Binaries
 assign[0] assign[1] assign[2] assign[3] assign[4] assign[5] assign[6]
 assign[7] visit[0] visit[1] visit[2] visit[3] visit[4] visit[5] visit[6]
 visit[7]
End
