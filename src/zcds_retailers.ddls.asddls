@AbapCatalog.sqlViewName: 'ZV_RETAILERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Fiori - Retailers'
define root view ZCDS_RETAILERS
  as select from zapo_retailers
{
  key retailerid as Retailerid,
      @Semantics.address.country: true
      land1      as Land1,
      @Semantics.organization.name: true
      name1      as Name1
}
