# Looker portfolio for RETAIL_SALES_ANALYSIS

This starter adds a Looker project to the existing retail sales analysis repository. Its LookML references the `customers`, `products`, and `orders` tables defined in `sql/01_create_tables.sql`.

## Dashboard examples

- Ecommerce overview: revenue, orders, and average order value.
- Sales performance: revenue and profit by time, product, and region.
- Customer retention: customer counts, segments, signup trends, and repeat-order proxy.

The portfolio HTML uses illustrative figures for its card previews. Actual Looker dashboards require a Looker instance and a connection to the warehouse containing these tables. Set the connection name in `analytics.model.lkml` and adjust the schema/database qualification in each view to match your warehouse.

