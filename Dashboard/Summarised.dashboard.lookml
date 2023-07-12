- dashboard: summarised
  title: Summarised
  layout: newspaper
  refresh : 1 hour
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - dashboard: summarised
  title: Summarised
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ObmdsSz0HR4e6ixxIj80UU
  elements:
  - title: Summarised
    name: Summarised
    model: ecom_prabhu_230
    explore: order_items
    type: single_value
    fields: [orders.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Orders Count
    hidden_pivots: {}
    defaults_version: 1
    listen:
      State: users.state
      Category: products.category
      Gender: users.gender
    row: 0
    col: 0
    width: 6
    height: 3
  - title: New Tile
    name: New Tile
    model: ecom_prabhu_230
    explore: order_items
    type: single_value
    fields: [order_items.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Quantity
    hidden_pivots: {}
    defaults_version: 1
    listen:
      State: users.state
      Category: products.category
      Gender: users.gender
    row: 3
    col: 0
    width: 6
    height: 3
  - title: Category Wise Sales
    name: Category Wise Sales
    model: ecom_prabhu_230
    explore: order_items
    type: looker_pie
    fields: [products.category, products.count]
    sorts: [products.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      custom:
        id: e470e9fe-4c48-4f52-3a3e-e324396a589e
        label: Custom
        type: discrete
        colors:
        - "#0e2fcf"
        - "#d67967"
        - "#1E0030"
        - "#6fde68"
        - "#b50e24"
        - "#e44cf2"
        - "#2693D1"
        - "#45f9fc"
        - "#dee34c"
        - "#f79e30"
        - "#D2EAD1"
        - "#2fc1ff"
      options:
        steps: 5
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Quantity
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    listen:
      State: users.state
      Category: products.category
      Gender: users.gender
    row: 0
    col: 6
    width: 8
    height: 6
  - title: Year Wise Profit
    name: Year Wise Profit
    model: ecom_prabhu_230
    explore: order_items
    type: looker_line
    fields: [inventory_items.created_year, sum_of_sale_price, sum_of_cost]
    fill_fields: [inventory_items.created_year]
    sorts: [inventory_items.created_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${sum_of_sale_price}-${sum_of_cost}",
        label: Profit, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: profit, _type_hint: number}, {measure: sum_of_sale_price,
        based_on: order_items.sale_price, expression: '', label: Sum of Sale Price,
        type: sum, _kind_hint: measure, _type_hint: number}, {measure: sum_of_cost,
        based_on: inventory_items.cost, expression: '', label: Sum of Cost, type: sum,
        _kind_hint: measure, _type_hint: number}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      custom:
        id: 4e918c19-194c-071c-ec77-677704c8f7e3
        label: Custom
        type: discrete
        colors:
        - "#8a771d"
        - "#3EB0D5"
        - "#1E0030"
        - "#B4DED2"
        - "#1864B4"
        - "#E9F3D1"
        - "#2693D1"
        - "#12165C"
        - "#72C5D4"
        - "#184EA0"
        - "#D2EAD1"
        - "#1A81CE"
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.##
    series_types: {}
    series_colors: {}
    label_color: [blue]
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sum_of_sale_price, sum_of_cost]
    listen:
      State: users.state
      Category: products.category
      Gender: users.gender
    row: 0
    col: 14
    width: 10
    height: 6
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: ecom_prabhu_230
    explore: order_items
    listens_to_filters: []
    field: users.state
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: ecom_prabhu_230
    explore: order_items
    listens_to_filters: []
    field: products.category
  - name: Gender
    title: Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: ecom_prabhu_230
    explore: order_items
    listens_to_filters: []
    field: users.gender
