@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@EndUserText.label: 'Fiori - Stock'
define root view entity ZCDS_STOCK
  as select from zapo_sku
{
      @UI.hidden: true
  key skuuuid     as Skuuuid,
      @EndUserText.label : 'Sku'
      sku         as Sku,
      @EndUserText.label : 'Description'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold : 0.7
      @Search.ranking : #LOW
      description as Description,
      @EndUserText.label : 'Theme'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold : 0.7
      @Search.ranking : #LOW
      theme       as Theme

}
