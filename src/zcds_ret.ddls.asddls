@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fiori - Retailers'
define root view entity ZCDS_RET
  as select from zapo_ret
{
      @EndUserText.label : 'Retailer ID'
  key retailerid  as Retailerid,
      @EndUserText.label : 'SKU'
  key sku         as Sku,
      @EndUserText.label : 'Description'
      description as Description,
      @EndUserText.label : 'Theme'
      theme       as Theme
}
