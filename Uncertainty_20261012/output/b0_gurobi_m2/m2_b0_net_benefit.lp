\ Model M2_B0_Net_Benefit
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  - 10 assign[0] - 5 assign[1] - 10 assign[3] - 20 assign[4] - 30 assign[5]
   - 40 assign[6] - 50 assign[7] - 100 visit[0] - 100 visit[1]
   - 100 visit[2] - 100 visit[3] - 100 visit[4] - 100 visit[5]
   - 100 visit[6] - 100 visit[7] + 100 Constant
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
Bounds
 Constant = 1
Binaries
 assign[0] assign[1] assign[2] assign[3] assign[4] assign[5] assign[6]
 assign[7] visit[0] visit[1] visit[2] visit[3] visit[4] visit[5] visit[6]
 visit[7]
End
