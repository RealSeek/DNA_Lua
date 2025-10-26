local ReadOnly = (DataMgr or {}).ReadOnly or function(n, x)
  return x
end
return ReadOnly("CombatMonitor", {
  [1] = {
    MonitorId = 1,
    MonitorType = "Damage",
    ServerMark = false,
    SubId = {"OneDamage"},
    Value = 10000000
  },
  [2] = {
    MonitorId = 2,
    MonitorType = "Time",
    ServerMark = true,
    SubId = {"Capture"},
    Value = 50
  },
  [3] = {
    MonitorId = 3,
    MonitorType = "Time",
    ServerMark = true,
    SubId = {"Sabotage"},
    Value = 50
  },
  [4] = {
    MonitorId = 4,
    MonitorType = "Time",
    ServerMark = true,
    SubId = {"Rescue"},
    Value = 75
  },
  [5] = {
    MonitorId = 5,
    MonitorType = "Time",
    ServerMark = true,
    SubId = {
      "Exterminate"
    },
    Value = 35
  },
  [6] = {
    MonitorId = 6,
    MonitorType = "Time",
    ServerMark = true,
    SubId = {"Hijack"},
    Value = 120
  },
  [7] = {
    MonitorId = 7,
    MonitorType = "Time",
    ServerMark = true,
    SubId = {"Rouge"},
    Value = 10
  },
  [8] = {
    MonitorId = 8,
    MonitorType = "Resource",
    ServerMark = true,
    SubId = {"RougeToken"},
    Value = 5000
  },
  [9] = {
    MonitorId = 9,
    MonitorType = "OverTime",
    ServerMark = true,
    SubId = {
      "AbyssMaxTime"
    },
    Value = 300
  }
})
