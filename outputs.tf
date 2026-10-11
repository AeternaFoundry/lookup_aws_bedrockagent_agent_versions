output "bedrockagent_agent_versions_lookup_agent_id" {
  description = "Map of agent_id values across all bedrockagent_agent_versions_lookup, keyed the same as var.bedrockagent_agent_versions_lookup"
  value       = { for k, v in data.aws_bedrockagent_agent_versions.bedrockagent_agent_versions_lookup : k => v.agent_id if v.agent_id != null && length(v.agent_id) > 0 }
}
output "bedrockagent_agent_versions_lookup_agent_version_summaries" {
  description = "Map of agent_version_summaries values across all bedrockagent_agent_versions_lookup, keyed the same as var.bedrockagent_agent_versions_lookup"
  value       = { for k, v in data.aws_bedrockagent_agent_versions.bedrockagent_agent_versions_lookup : k => v.agent_version_summaries if v.agent_version_summaries != null && length(v.agent_version_summaries) > 0 }
}
output "bedrockagent_agent_versions_lookup_region" {
  description = "Map of region values across all bedrockagent_agent_versions_lookup, keyed the same as var.bedrockagent_agent_versions_lookup"
  value       = { for k, v in data.aws_bedrockagent_agent_versions.bedrockagent_agent_versions_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

