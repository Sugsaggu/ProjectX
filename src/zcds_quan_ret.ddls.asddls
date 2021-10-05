@AbapCatalog.sqlViewName: 'ZVC_QUAN_RET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quantity per Retailer'
define view ZCDS_QUAN_RET
  as select from zcds_sales_ret
{
  key Retailerid      as RetailerId,
      @Semantics.quantity.unitOfMeasure: 'QuantityUnit'
      sum( Quantity ) as SkuDate,
      QuantityUnit    as QuantityUnit
}
group by
  Retailerid,
  QuantityUnit
