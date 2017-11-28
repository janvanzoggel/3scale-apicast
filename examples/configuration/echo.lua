local policy_chain = require('apicast.policy_chain').default()
local echo = require('apicast.policy.echo').new({ exit = 0 })

policy_chain:insert(echo, 1)

return {
	policy_chain = policy_chain
}
