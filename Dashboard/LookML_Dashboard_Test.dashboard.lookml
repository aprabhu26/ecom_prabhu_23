- dashboard: lookml_dashboard_test
  title: Lookml Dashboard Test
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
  - name: add_a_unique_name_1678350708
    title: Untitled Visualization
    model: ecom_prabhu_230
    explore: order_items
    type: looker_grid
    fields: [products.department, products.brand, order_items.order_id,order_items.returned_date,
    inventory_items.created_date, orders.created_date,
    orders.status, order_items.count, orders.count, products.count, inventory_items.total_cost,sum_of_sale_price]
    sorts: [order_items.returned_date desc, inventory_items.created_date desc, orders.created_date desc]
    limit: 500

    dynamic_fields:
    - category: table_calculation
      expression: diff_days(${inventory_items.created_date},${order_items.returned_date})
      label: Date diff b/w inv_dt & Ret_dt
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: date_diff_bw_inv_dt_ret_dt
      _type_hint: number
    - category: table_calculation
      expression: diff_days(${orders.created_date},${order_items.returned_date})
      label: date diff b/w ord_dt & ord_itm_dt
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: date_diff_bw_ord_dt_ord_itm_dt
      _type_hint: number
    - measure: sum_of_sale_price
      based_on: order_items.sale_price
      expression: ''
      label: Sum of Sale Price
      type: sum
      _kind_hint: measure
      _type_hint: number
    - category: dimension
      description: ''
      label: Department_grp
      value_format:
      value_format_name:
      calculation_type: group_by

      query_timezone: America/Los_Angeles
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
      hidden_pivots: {}
      defaults_version: 1
