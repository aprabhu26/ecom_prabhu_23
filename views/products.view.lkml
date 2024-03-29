# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.products ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  filter: select_category {
    type: string
    suggest_explore: order_items
    suggest_dimension: products.category
  }

  dimension: category_comparison {
    type: string
    sql:
      CASE
      WHEN {% condition select_category %}
        ${category}
        {% endcondition %}
      THEN ${category}
      ELSE 'All Other Categories'
      END
      ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    group_label: "Group"
    sql: ${TABLE}.brand ;;
    link: {
      label: "Dashboard_210"
    #   # url: "https://gcpl232.cloud.looker.com/dashboards/212?Email={{ value | replace: ',', '^,' | url_encode}}&Gender={{ gender | replace: ',', '^,' |url_encode}}&First+Name={{ first_name | replace: ',', '^,' | url_encode}}&Last+Name={{ last_name | replace: ',', '^,' | url_encode}}&Status={{ orders.status | replace: ',', '^,' | url_encode}}&Category={{ products.Category | replace: ',', '^,' | url_encode}}"
      url: "https://gcpl232.cloud.looker.com/dashboards/212?Brand={{ brand | replace: ',', '^,' | url_encode}}"

    }
  }

  dimension: category {
    type: string
    group_label: "Group"
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: group_dimension{
    type: string
    sql: concat(${category}," ",${brand}," ",${department});;
  }

  parameter: group_parameter{
    type: unquoted
    allowed_value: {
      label: "Accessories"
      value: "Accessories"
    }
    allowed_value: {
      label: "Active"
      value: "Active"
    }
    allowed_value: {
      label: "adidas"
      value: "adidas"
    }
    allowed_value: {
      label: "Ray-Ban"
      value: "Ray-Ban"
    }
    allowed_value: {
      label: "Men"
      value: "Men"
    }
    allowed_value: {
      label: "Women"
      value: "Women"
    }
  }

  measure: count_accessories {
    type: count_distinct
    sql: ${id} ;;
    filters: {
       field: category
       value: "Accessories"
     }
  }

  # measure: group_dimension_filter{
  #   type: count
  #   sql: {%if group_parameter._parameter_value == 'Accessories'%}
  #   category._value == "Accessories"
  #   {%endif%};;
  # }

  dimension: item_name {
    label: "Item name is replacing with items name"
    type: string
    group_label: "Group"
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
    value_format: "0.00\%"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_retail_price {
    type: sum
    sql: ${retail_price} ;;
  }

  measure: average_retail_price {
    type: average
    sql: ${retail_price} ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
