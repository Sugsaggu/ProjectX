@EndUserText.label: 'Fiori - SKU'
@Search.searchable: true
@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #CHECK
define root view entity zpv_sku
  provider contract transactional_query
  as projection on ZCDS_SKU
  association [0..*] to I_UnitOfMeasureDimension as _unitofmeasure on $projection.Uom = _unitofmeasure.UnitOFMeasureSiUnit
{
  key ZCDS_SKU.SkuUuid,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZPV_SKU', element: 'Sku' } }]
      @ObjectModel.text.element: ['Sku']
      @Search.defaultSearchElement: true
      @EndUserText.label : 'SKU'
      ZCDS_SKU.Sku,
      @EndUserText.label : 'Description'
      ZCDS_SKU.Description,
      @EndUserText.label : 'Theme'
      ZCDS_SKU.Theme,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'I_UnitOfMeasureDimension', element: 'UnitOFMeasureSiUnit'  } }]
      @ObjectModel.text.element: ['Uom']
      ZCDS_SKU.Uom,
      @EndUserText.label : 'Unrestricted-Use Stock'
      ZCDS_SKU.Stock,
      @EndUserText.label : 'Created On'
      ZCDS_SKU.Ersda,

      // Associations
      _unitofmeasure
}
