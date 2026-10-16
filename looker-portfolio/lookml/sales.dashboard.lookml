- dashboard: sales_performance
  title: Sales Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
    - name: sales_by_category
      title: Sales by Category
      type: looker_column
      model: analytics
      explore: orders
      fields: [products.category, orders.total_sales, orders.total_profit]
      sorts: [orders.total_sales desc]
      limit: 10
      row: 0
      col: 0
      width: 12
      height: 8
    - name: sales_by_region
      title: Sales by Region
      type: table
      model: analytics
      explore: orders
      fields: [customers.region, orders.total_sales, orders.total_profit, orders.units_sold]
      sorts: [orders.total_sales desc]
      limit: 20
      row: 8
      col: 0
      width: 12
      height: 7

