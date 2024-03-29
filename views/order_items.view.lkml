# The name of this view in Looker is "Order Items"
view: order_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.
  # required_access_grants: [can_view_financial_data]
  parameter: select_timeframe {
    type: unquoted
    default_value: "returned_month"
    allowed_value: {
      value: "returned_date"
      label: "Date"
    }
    allowed_value: {
      value: "returned_week"
      label: "Week"
    }
    allowed_value: {
      value: "returned_month"
      label: "Month"
    }
  }

  dimension: dynamic_timeframe {
    label_from_parameter: select_timeframe
    type: string
    sql:
    {% if select_timeframe._parameter_value == 'returned_date' %}
    ${returned_date}
    {% elsif select_timeframe._parameter_value == 'returned_week' %}
    ${returned_week}
    {% else %}
    ${returned_month}
    {% endif %} ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Inventory Item ID" in Explore.

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    suggestable: yes
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}.phones ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: returned {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  measure: Sales_price_sum {
    type: sum
    sql: ${sale_price} ;;
  }

measure: sum_dim {
  type: number
  sql: ${order_id}+${orders.id} ;;
}
# Here we are adding two dimensions from different views with number format to create new measure.


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sale_price {
    type: sum
    sql: ${sale_price} ;;
  }

  measure: average_sale_price {
    type: average
    sql: ${sale_price} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }

  measure: gender_test {
    type: string
    sql: ${users.gender} ;;
    }
  measure: returned_count {
    type: count_distinct
    sql: ${id} ;;
    link: {
      label: "Explore Top 20 Results"
      url: "{{ link }}&limit=20"
    }
  }

  # dimension: is_search_source {
  #   type: yesno
  #   sql: ${users.traffic_source}= "Search";;
  # }

  # measure: sales_from_complete_search_users {
  #   type: sum
  #   sql: ${sale_price} ;;
  #   filters: [status: "Complete", is_search_source: "yes"]
  # }

  # measure: total_gross_margin {
  #   type: sum
  #   sql: ${sale_price} - ${inventory_items.cost};;
  # }

  # dimension: return_days {
  #   type: number
  #   sql: date_diff(${delivered_date},${returned_date},day);;
  # }


  dimension: Dummy {
    type: string
    sql: 1 ;;
    html: <div>
          <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

          <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" target="new" href="http://gcpl232.cloud.looker.com/dashboards/143?State={{ _filters['users.state'] | url_encode }}&Category={{ _filters['products.category'] | url_encode }}"> Detailed </a>

          <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#home"> Summarised </a>

</nav>

</div> ;;
  }
           # Target ="new" is used in html parameter to redirect to new tab.
           # BY using the  href="http://gcpl232.cloud.looker.com/dashboards/143?State={{ _filters['users.state'] | url_encode }}" filter can pass to nect dashboard that linked.
}
