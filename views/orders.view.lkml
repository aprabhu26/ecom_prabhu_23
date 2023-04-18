# The name of this view in Looker is "Orders"
view: orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
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
    sql: TO_TIMESTAMP(replace(${TABLE}.created_at, 'T', ' '), 'YYYY-MM-DD HH12:MI:SS.0000');;
    html:
    {% if status._value == 'complete' %}
<p style="color: black; background-color: purple; font-size:100%; text-align:center">{{ rendered_value }}</p>
{% elsif status._value == 'cancelled' %}
<p style="color: black; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
{% else %}
<p style="color: black; font-size:100%; text-align:center">{{ rendered_value }}</p>
{% endif %};;
    # {% if status._value == 'complete' %}
    # <p style="color: black; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    # {% elsif status._value == 'cancelled' %}
    # <p style="color: black; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    # {% else %}
    # <p style="color: black; background-color: yellow; font-size:100%; text-align:center">{{ rendered_value }}</p>
    # {% endif %};;
  }


  dimension: status {
    type: string
    sql: ${TABLE}.status ;;

    html:
    {% if value == 'complete' %}
    <p style="color: black; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'cancelled' %}
    <p style="color: black; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% else %}
    <p style="color: black; background-color: yellow; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %};;

}

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  # dimension_group: created {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}.created_at ;;
  # }

  # # Here's what a typical dimension looks like in LookML.
  # # A dimension is a groupable field that can be used to filter query results.
  # # This dimension will be called "Status" in Explore.


  # dimension: status {
  #   type: string
  #   # sql: ${TABLE}.status ;;
  #   sql: case
  #   when ${TABLE}.status = "complete" then '{{_localization['complete']}}'
  #   when ${TABLE}.status = "pending" then '{{_localization['pending']}}'
  #   else '{{_localization['cancelled']}}'
  #   end;;
    # html:
    # {% if value == 'complete' %}
    # <p style="color: black; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    # {% elsif value == 'cancelled' %}
    # <p style="color: black; background-color: red; font-size:100%; text-align:center">{{ rendered_value }}</p>
    # {% else %}
    # <p style="color: black; background-color: yellow; font-size:100%; text-align:center">{{ rendered_value }}</p>
    # {% endif %};;
  #   html:
  #   {% if value == 'complete' %}
  #   {% assign indicator = "green,▲" | split: ',' %}
  #   {% elsif value == 'cancelled' %}
  #   {% assign indicator = "red,▼" | split: ',' %}
  #   {% else %}
  #   {% assign indicator = "black,▬" | split: ',' %}
  # {% endif %}

  #     <font color="{{indicator[0]}}">

  #     {% if value == 99999.12345 %} &infin

  #     {% else %}{{rendered_value}}

  #     {% endif %} {{indicator[1]}}

  #     </font> ;;

  # }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: Non_null_user_id {
    type: yesno
    sql: if(${user_id} = null,"Yes","No");;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.first_name,
      users.last_name,
      billion_orders.count,
      fakeorders.count,
      hundred_million_orders.count,
      hundred_million_orders_wide.count,
      order_items.count,
      order_items_vijaya.count,
      ten_million_orders.count
    ]
  }
}
