@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Fiori - Retailers'
define root view entity ZCDS_RET
  as select from zapo_ret
{
  key retailerid  as Retailerid,
  key sku         as Sku,
      description as Description,
      theme       as Theme
}
