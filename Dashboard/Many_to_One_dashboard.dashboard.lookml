- dashboard: manytoone
  title: My Many To One LookML Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  preferred_slug: YC1JnRyoJGwDI3vs94p3op
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Tile 1"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 1

  - title: Tile 1
    name: New Tile 1
    model: ecom_prabhu_230
    explore: order_items
    type: looker_grid
    fields: [users.email, orders.id, order_items.count, order_items.total4]
    filters:
      orders.id: '1'
    sorts: [orders.id desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    series_cell_visualizations:
      order_items.count:
        is_active: false
    series_text_format:
      users.email:
        bg_color: "#d9ffe0"
      orders.id:
        bg_color: "#d9ffe0"
      order_items.count:
        bg_color: "#d9ffe0"
      order_items.total_sales:
        bg_color: "#d9ffe0"
      order_items.total4:
        bg_color: "#d9ffe0"
    header_font_color: "#ffffff"
    header_background_color: "#0e8543"
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    title_hidden: False
    title_text_alignment: left
    listen: {}
    row: 1
    col: 0
    width: 24
    height: 3


  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Tile 2"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 2
    col: 0
    width: 24
    height: 1

  - title: Tile 2
    name: New Tile 2
    model: ecom_prabhu_230
    explore: order_items
    type: looker_grid
    fields: [products.item_name, order_items.count, products.brand, order_items.total4]
    filters:
      orders.id: '1'
    sorts: [order_items.count desc 0]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      order_items.count:
        is_active: false
    series_text_format:
      users.email:
        bg_color: "#d9ffe0"
      orders.id:
        bg_color: "#d9ffe0"
      order_items.count:
        bg_color: "#d6efff"
      order_items.total_sales:
        bg_color: "#d9ffe0"
      order_items.total4:
        bg_color: "#d6efff"
    header_font_color: "#ffffff"
    header_background_color: "#117885"
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    title_hidden: False
    title_alingment: right
    listen: {}
    row: 3
    col: 0
    width: 24
    height: 3


  - name: "(3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Tile 3"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 4
    col: 0
    width: 24
    height: 1

  - title: Tile 3
    name: New Tile 3
    model: ecom_prabhu_230
    explore: order_items
    type: looker_grid
    fields: [users.email, orders.id, order_items.count, order_items.total4]
    filters:
      orders.id: '2'
    sorts: [orders.id desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: yellow
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: right
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      order_items.count:
        is_active: false
    series_text_format:
      users.email:
        bg_color: "#d9ffe0"
      orders.id:
        bg_color: "#d9ffe0"
      order_items.count:
        bg_color: "#d9ffe0"
      order_items.total_sales:
        bg_color: "#d9ffe0"
      order_items.total4:
        bg_color: "#d9ffe0"
    header_font_color: "#ffffff"
    header_background_color: "#0e8543"
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    title_hidden: False
    listen: {}
    row: 5
    col: 0
    width: 24
    height: 3

  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Tile 4"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 6
    col: 0
    width: 24
    height: 1

  - title: Tile 4
    name: New Tile 4
    model: ecom_prabhu_230
    explore: order_items
    type: looker_grid
    fields: [products.item_name, order_items.count, products.brand, order_items.total4]
    filters:
      orders.id: '2'
    sorts: [order_items.count desc 0]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      order_items.count:
        is_active: false
    series_text_format:
      users.email:
        bg_color: "#d9ffe0"
      orders.id:
        bg_color: "#d9ffe0"
      order_items.count:
        bg_color: "#d6efff"
      order_items.total_sales:
        bg_color: "#d9ffe0"
      order_items.total4:
        bg_color: "#d6efff"
    header_font_color: "#ffffff"
    header_background_color: "#117885"
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    title_hidden: False
    listen: {}
    row: 7
    col: 0
    width: 24
    height: 3
