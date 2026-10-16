connection: "analytics"

include: "*.view.lkml"
include: "*.dashboard.lookml"

explore: orders {
  label: "Retail Orders"
  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.customer_id} ;;
    relationship: many_to_one
  }
  join: products {
    type: left_outer
    sql_on: ${orders.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }
}

