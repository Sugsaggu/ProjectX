@EndUserText.label: 'Fiori - Retailers'
@Search.searchable: true
@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #CHECK
define root view entity ZPV_RET
  provider contract transactional_query
  as projection on ZCDS_RET
{
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZPV_RET', element: 'retailerid'  } }]
      @ObjectModel.text.element: ['retailerid']
      @EndUserText.label : 'Retailer ID'
  key Retailerid,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZPV_RET', element: 'Sku'  } }]
      @ObjectModel.text.element: ['Sku']
      @EndUserText.label : 'SKU'
  key Sku,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZPV_RET', element: 'Description'  } }]
      @ObjectModel.text.element: ['Description']
      @EndUserText.label : 'Description'
      Description,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZPV_RET', element: 'Theme'  } }]
      @ObjectModel.text.element: ['Theme']
      @EndUserText.label : 'Theme'
      Theme
}
