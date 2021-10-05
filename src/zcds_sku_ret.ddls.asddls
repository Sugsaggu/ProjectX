@AbapCatalog.sqlViewName: 'ZVC_SKU_RET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sku per Retailer'
define view ZCDS_SKU_RET
  as select distinct from zcds_sales_ret
{
  key Retailerid as RetailerId,
  @UI.lineItem: [{ position: 20, label: 'Total SKU per Retailer' }]
      count( * ) as SkuRetAmount
}
group by
  Retailerid
