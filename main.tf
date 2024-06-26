resource "aws_quicksight_dashboard" "example" {
  dashboard_id        = "example-id"
  name                = "example-name"
  version_description = "version"
  definition {
    data_set_identifiers_declarations {
      data_set_arn = aws_quicksight_data_set.dataset.arn
      identifier   = "1"
    }
    sheets {
      title    = "Example"
      sheet_id = "Example1"
      visuals {
        line_chart_visual {
          visual_id = "LineChart"
          title {
            format_text {
              plain_text = "Line Chart Example"
            }
          }
          chart_configuration {
            field_wells {
              line_chart_aggregated_field_wells {
                category {
                  categorical_dimension_field {
                    field_id = "1"
                    column {
                      data_set_identifier = "1"
                      column_name         = "Column1"
                    }
                  }
                }
                values {
                  categorical_measure_field {
                    field_id = "2"
                    column {
                      data_set_identifier = "1"
                      column_name         = "Column1"
                    }
                    aggregation_function = "COUNT"
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
