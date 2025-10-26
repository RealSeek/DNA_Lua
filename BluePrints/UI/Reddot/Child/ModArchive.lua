local TimeUtils = require("Utils.TimeUtils")
local ReddotTreeNode_ModArchive = Class("BluePrints.UI.Reddot.ReddotTreeNode")

function ReddotTreeNode_ModArchive:OnDecreaseCount(SubValue, CacheDetailChangedParams, OldCount)
  self:RefreshInfo()
end

function ReddotTreeNode_ModArchive:OnIncreaseCount(AddValue, CacheDetailChangedParams, OldCount)
  self:RefreshInfo()
end

function ReddotTreeNode_ModArchive:RefreshInfo()
  if self.Cache.Detail and self.Cache.Detail.RedNum and self.Cache.Detail.RedNum > 0 then
    self.ReddotType = EReddotType.Normal
  elseif self.Cache.Detail and self.Cache.Detail.NewNum and self.Cache.Detail.NewNum > 0 then
    self.ReddotType = EReddotType.New
  elseif self.Cache.Detail and self.Cache.Detail.PhaseId and self.Cache.Detail.PhaseId > 0 then
    self.ReddotType = EReddotType.Normal
  end
  self:UpdateRdType()
end

return ReddotTreeNode_ModArchive
