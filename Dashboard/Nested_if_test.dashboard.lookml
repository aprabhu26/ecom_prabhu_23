- dashboard: nested_if_test
  title: Nested If Test
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
  - name: Nested_if_test
    title: Nested_if_test
    model: ecom_prabhu_230
    description: "Test the dashboard for view"
    explore: users
    type: table
    fields: [users.city, users.age, users.email, users.state]
    sorts: [users.city]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "if \n(${users.age}<=25,\"Teenage\",if(${users.age}>65,\"senior citizen\"\
        ,if (${users.age}>25,\"Adult\",\"None\")))"
      label: Age_calculation
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: age_calculation
      _type_hint: string
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
