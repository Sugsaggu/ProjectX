@AbapCatalog.sqlViewName: 'ZVC_SKU_LAND'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sku per Country'
define view ZCDS_SKU_LAND
  as select distinct from zcds_sales_ret
    inner join            ZCDS_RETAILERS on zcds_sales_ret.Retailerid = ZCDS_RETAILERS.Retailerid
{
  key ZCDS_RETAILERS.Land1 as Country,
      count( * )           as SkuCountry
}
group by
  ZCDS_RETAILERS.Land1
