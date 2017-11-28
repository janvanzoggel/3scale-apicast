local _M = require('apicast.policy').new('Echo Policy')

local type = type
local new = _M.new

function _M.new(configuration)
  local policy = new(configuration)
  if configuration then
    policy.exit = configuration.exit
  end
  return policy
end

function _M:rewrite()
  ngx.say(ngx.var.request)

  if type(self.exit) == 'number' then
    ngx.exit(self.exit)
  end
end

return _M
