@AbapCatalog.sqlViewName: 'ZVC_STOCK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@Search.searchable: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fiori - Stock - Chart'

define view ZCDS_STOCK_CHART
  as select from zapo_sales
{
      @UI.lineItem: [{ position: 10, label: 'Retailer ID' }]
      @Search.defaultSearchElement: true
  key retailerid      as Retailerid,
      @UI.lineItem: [{ position: 20, label: 'Quantity' }]
      @Semantics.quantity.unitOfMeasure: 'Quantityunit'
      sum( quantity ) as Quantity,
      quantityunit    as Quantityunit
}
group by
  retailerid,
  quantityunit
