view: dimensionalizing_the_measure {
# If necessary, uncomment the line below to include explore_source.
# include: "ecom_prabhu_230.model.lkml"
    derived_table: {
      explore_source: order_items {
        column: returned_year {}
        column: average_sale_price {}
        column: count {}
        filters: {
          field: order_items.returned_year
          value: "NOT NULL"
        }
      }
    }
    dimension: returned_year {
      description: ""
      type: date_year
    }
    dimension: average_sale_price {
      description: ""
      type: number
    }
    dimension: count {
      description: ""
      type: number
    }
    measure: returned_year_as_measure{
      type: number
      sql: ${returned_year} ;;
    }
  }
