- dashboard: test_case_lookml_dashboard_1
  title: Test Case Lookml Dashboard 1
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - dashboard: test_case_1
  title: Test_case_1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: AWcwSPFNjrmmKr759wJvj6
  elements:
  - title: Test_case_1
    name: Test_case_1
    model: ecom_prabhu_230
    explore: order_items
    type: single_value
    fields: [orders.created_year, orders.count]
    fill_fields: [orders.created_year]
    sorts: [orders.created_year desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: "% change from previous\
          \ row", value_format: !!null '', value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: change_from_previous_row, args: [orders.count], _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    single_value_title: Orders Count
    value_format: ''
    conditional_formatting: [{type: greater than, value: 0, background_color: "#FF8168",
        font_color: "#079c98", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Test_case_1(tile1)
    name: Test_case_1(tile1)
    model: ecom_prabhu_230
    explore: order_items
    type: single_value
    fields: [orders.created_year, sum_of_sale_price]
    sorts: [orders.created_year desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: "% change from previous\
          \ row", value_format: !!null '', value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: change_from_previous_row, args: [orders.count], _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {measure: sum_of_sale_price, based_on: order_items.sale_price,
        expression: '', label: Sum of Sale Price, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Change in Sales,
        value_format: !!null '', value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: change_in_sales, args: [sum_of_sale_price], _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Sales Price
    value_format: ''
    conditional_formatting: [{type: greater than, value: 0, background_color: "#F9AB00",
        font_color: "#1A73E8", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    hidden_fields: [sum_of_sale_price]
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Test_case_1(tile2)
    name: Test_case_1(tile2)
    model: ecom_prabhu_230
    explore: order_items
    type: single_value
    fields: [orders.created_year, sum_of_retail_price]
    sorts: [orders.created_year desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, label: "% change from previous\
          \ row", value_format: !!null '', value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: change_from_previous_row, args: [orders.count], _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {measure: sum_of_sale_price, based_on: order_items.sale_price,
        expression: '', label: Sum of Sale Price, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: table_calculation, label: Change in Retail_price,
        value_format: !!null '', value_format_name: percent_2, calculation_type: percent_difference_from_previous,
        table_calculation: change_in_retail_price, args: [sum_of_retail_price], _kind_hint: measure,
        _type_hint: number}, {measure: sum_of_retail_price, based_on: products.retail_price,
        expression: '', label: Sum of Retail Price, type: sum, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Chicago
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Retail Price
    value_format: ''
    conditional_formatting: [{type: greater than, value: 0, background_color: "#079c98",
        font_color: "#E52592", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    hidden_fields: [sum_of_retail_price]
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Hello Above All are under KPI section"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 6
    col: 0
    width: 24
    height: 3
  - title: Test_case_1(tile3)
    name: Test_case_1(tile3)
    model: ecom_prabhu_230
    explore: order_items
    type: looker_grid
    fields: [orders.created_date, orders.status]
    sorts: [orders.created_date desc]
    limit: 500
    query_timezone: America/Chicago
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 9
    col: 0
    width: 24
    height: 6
