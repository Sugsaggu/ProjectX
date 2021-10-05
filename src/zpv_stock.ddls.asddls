@EndUserText.label: 'Fiori - Stock'
@Search.searchable: true
@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZPV_STOCK
  provider contract transactional_query
  as projection on ZCDS_STOCK
{
  key Skuuuid,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_STOCK', element: 'Sku'  } }]
      @Search.defaultSearchElement: true
      @EndUserText.label : 'Sku'
      Sku,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_STOCK', element: 'Description'  } }]
      @EndUserText.label : 'Description'
      Description,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_STOCK', element: 'Theme'  } }]
      @EndUserText.label : 'Theme'
      Theme
}
