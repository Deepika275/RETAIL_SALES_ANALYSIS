- dashboard: customer_retention
  title: Customer Retention
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
    - name: signups_by_month
      title: Customer Signups by Month
      type: looker_area
      model: analytics
      explore: orders
      dimensions: [customers.signup_month]
      measures: [customers.customer_count]
      sorts: [customers.signup_month]
      limit: 24
      row: 0
      col: 0
      width: 12
      height: 8
    - name: customers_by_segment
      title: Sales and Customers by Segment
      type: table
      model: analytics
      explore: orders
      fields: [customers.segment, customers.customer_count, orders.total_sales, orders.total_profit]
      sorts: [orders.total_sales desc]
      limit: 20
      row: 8
      col: 0
      width: 12
      height: 7

