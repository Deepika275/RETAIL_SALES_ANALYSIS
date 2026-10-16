view: customers {
  sql_table_name: customers ;;

  dimension: customer_id { primary_key: yes type: number sql: ${TABLE}.customer_id ;; }
  dimension: customer_name { type: string sql: ${TABLE}.customer_name ;; }
  dimension: gender { type: string sql: ${TABLE}.gender ;; }
  dimension: age { type: number sql: ${TABLE}.age ;; }
  dimension: region { type: string sql: ${TABLE}.region ;; }
  dimension_group: signup {
    type: time
    timeframes: [date, month, quarter, year]
    sql: ${TABLE}.signup_date ;;
  }
  dimension: segment { type: string sql: ${TABLE}.segment ;; }

  measure: customer_count { type: count_distinct sql: ${customer_id} ;; }
}

