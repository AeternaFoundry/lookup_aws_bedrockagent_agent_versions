variable "bedrockagent_agent_versions_lookup" {
  description = <<EOT
Map of bedrockagent_agent_versions_lookup, attributes below
Required:
    - agent_id
Optional:
    - region
EOT

  type = map(object({
    agent_id = string
    region   = optional(string)
  }))
}

