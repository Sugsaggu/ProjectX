@AbapCatalog.sqlViewName: 'ZVC_SKU_DATE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sku per Date'
define view ZCDS_SKU_DATE
  as select distinct from zcds_sales_ret
{
  key Sku        as Sku,
  key SalesDate  as SalesDate,
      count( * ) as SkuDate
}
group by
  Sku,
  SalesDate
