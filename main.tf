data "aws_bedrockagent_agent_versions" "bedrockagent_agent_versions_lookup" {
  for_each = var.bedrockagent_agent_versions_lookup

  agent_id = each.value.agent_id
  region   = each.value.region
}

