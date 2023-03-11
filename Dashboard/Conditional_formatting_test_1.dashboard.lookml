- dashboard: conditional_formatting_test_1
  title: Conditional Formatting Test 1
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
      - name: add_a_unique_name_1678413063
        title: Untitled Visualization
        model: ecom_prabhu_230
        explore: orders
        type: table
        fields: [orders.created_date, orders.status, orders.count]
        sorts: [orders.created_date desc]
        limit: 500
        column_limit: 50
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
        series_types: {}
