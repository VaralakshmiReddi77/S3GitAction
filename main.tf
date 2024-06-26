resource "aws_quicksight_dashboard" "example" {
  dashboard_id        = "example-id"
  name                = "example-name"
  version_description = "version"
  source_entity {
    source_template {
      arn = aws_quicksight_template.source.arn
      data_set_references {
        data_set_arn         = aws_quicksight_data_set.dataset.arn
        data_set_placeholder = "1"
      }
    }
  }
}
