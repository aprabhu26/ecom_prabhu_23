# The name of this view in Looker is "Users"
view: users {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.users ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.


  filter: select_traffic_source {
    type: string
    suggest_explore: order_items
    suggest_dimension: users.traffic_source
  }

  dimension: hidden_traffic_source_filter {
    hidden: yes
    type: yesno
    sql: {% condition select_traffic_source %} ${traffic_source} {% endcondition %} ;;
  }


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age {
    type: sum
    sql: ${age} ;;
  }

  measure: average_age {
    type: average
    sql: ${age} ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
    html:
    {% if orders.status._value == 'complete' %}
    <p style="color: black; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif orders.status._value == 'cancelled' %}
    <p style="color: black; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; background-color: yellow; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %};;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;


    # link: {
    #   label: "Dashboard_212"
    #   url: "https://gcpl232.cloud.looker.com/dashboards/212?Email={{ value | replace: ',', '^,' | url_encode}}&Gender={{ gender | replace: ',', '^,' |url_encode}}&First+Name={{ first_name | replace: ',', '^,' | url_encode}}&Last+Name={{ last_name | replace: ',', '^,' | url_encode}}&Status={{orders.status | replace: ',', '^,' | url_encode}}"
    #   #url: "https://gcpl232.cloud.looker.com/dashboards/212?Email={{ value | replace: ',', '^,' | url_encode}}&Status={{ orders.status | replace: ',', '^,' | url_encode}}&Cost={{ inventory_items.cost | replace: ',','^,' | url_encode}}"

    # }

  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
    order_by_field: subject_orderings
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state;;
    order_by_field: subject_orderings
  }

  dimension: subject_orderings {
    type: number
    sql:
      CASE
        WHEN ${first_name} = 'A' THEN 1
        WHEN ${first_name} = 'B' THEN 2
        WHEN ${first_name} = 'C' THEN 3
        ELSE 4
      END ;;
    description: "This dimension is used to force sort the subject dimension."
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: dynamic_count {
    type: count_distinct
    sql: ${id} ;;
    filters: [ hidden_traffic_source_filter: "Yes" ]
  }



  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      events.count,
      orders.count,
      saralooker.count,
      sindhu.count,
      user_data.count
    ]
  }
}
