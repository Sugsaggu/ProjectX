@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Fiori - SKU'
define root view entity ZCDS_SKU
  as select from zapo_sku
{

  key skuuuid     as SkuUuid,
      sku         as Sku,
      description as Description,
      theme       as Theme,
      uom         as Uom,
      stock       as Stock,
      @Semantics.dateTime: true
      ersda       as Ersda
}
