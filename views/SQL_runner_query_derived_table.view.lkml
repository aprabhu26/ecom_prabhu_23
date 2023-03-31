view: sql_runner_query {
  derived_table: {
    sql: select o.id,order_id,sum(sale_price),created_at,status from order_items oi join orders o on oi.order_id = o.id group by order_id
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: sumsale_price {
    type: number
    sql: ${TABLE}.`sum(sale_price)` ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  set: detail {
    fields: [id, order_id, sumsale_price, created_at_time, status]
  }
}
