- dashboard: ecommerce_overview
  title: Ecommerce Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
    - name: revenue_trend
      title: Revenue by Month
      type: looker_line
      model: analytics
      explore: orders
      dimensions: [orders.order_date_month]
      measures: [orders.total_sales]
      sorts: [orders.order_date_month]
      limit: 12
      row: 0
      col: 0
      width: 12
      height: 8
    - name: order_summary
      title: Orders and Average Order Value
      type: table
      model: analytics
      explore: orders
      dimensions: [orders.order_date_month]
      measures: [orders.order_count, orders.average_order_value]
      sorts: [orders.order_date_month]
      limit: 12
      row: 8
      col: 0
      width: 12
      height: 6

