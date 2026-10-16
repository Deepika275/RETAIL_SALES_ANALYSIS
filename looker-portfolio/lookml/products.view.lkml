view: products {
  sql_table_name: products ;;

  dimension: product_id { primary_key: yes type: number sql: ${TABLE}.product_id ;; }
  dimension: product_name { type: string sql: ${TABLE}.product_name ;; }
  dimension: category { type: string sql: ${TABLE}.category ;; }
  dimension: sub_category { type: string sql: ${TABLE}.sub_category ;; }
  dimension: brand { type: string sql: ${TABLE}.brand ;; }
  dimension: cost { type: number sql: ${TABLE}.cost ;; value_format_name: usd }
  dimension: price { type: number sql: ${TABLE}.price ;; value_format_name: usd }

  measure: product_count { type: count_distinct sql: ${product_id} ;; }
}

