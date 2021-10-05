@EndUserText.label: 'Fiori - Sales'
@Search.searchable: true
@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZPV_SALES_RET
  provider contract transactional_query
  as projection on zcds_sales_ret
{
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_RETAILERS', element: 'Retailerid' } }]
      @Search.defaultSearchElement: true
      @EndUserText.label : 'Retailer ID'
  key Retailerid,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_STOCK', element: 'Sku' } }]
      @Search.defaultSearchElement: true
      @EndUserText.label : 'SKU'
  key Sku,
      @EndUserText.label : 'Sales Date'
      @Search.defaultSearchElement: true
  key SalesDate,
      @EndUserText.label : 'Description'
      Description,
      @EndUserText.label : 'Theme'
      Theme,
      @EndUserText.label : 'Quantity'
      @Semantics.quantity.unitOfMeasure: 'QuantityUnit'
      Quantity,
      @EndUserText.label : 'Quantity Unit'
      QuantityUnit
}
