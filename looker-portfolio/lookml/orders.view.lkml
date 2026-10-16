view: orders {
  sql_table_name: orders ;;

  dimension: order_id { primary_key: yes type: number sql: ${TABLE}.order_id ;; }
  dimension: customer_id { type: number sql: ${TABLE}.customer_id ;; }
  dimension: product_id { type: number sql: ${TABLE}.product_id ;; }
  dimension_group: order_date {
    type: time
    timeframes: [date, week, month, quarter, year]
    sql: ${TABLE}.order_date ;;
  }
  dimension: quantity { type: number sql: ${TABLE}.quantity ;; }
  dimension: sales { type: number sql: ${TABLE}.sales ;; value_format_name: usd }
  dimension: profit { type: number sql: ${TABLE}.profit ;; value_format_name: usd }

  measure: order_count { type: count_distinct sql: ${order_id} ;; }
  measure: total_sales { type: sum sql: ${sales} ;; value_format_name: usd }
  measure: total_profit { type: sum sql: ${profit} ;; value_format_name: usd }
  measure: units_sold { type: sum sql: ${quantity} ;; }
  measure: average_order_value {
    type: number
    sql: ${total_sales} / NULLIF(${order_count}, 0) ;;
    value_format_name: usd
  }
}

