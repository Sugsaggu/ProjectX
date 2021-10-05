@AbapCatalog.sqlViewName: 'ZV_RETAILERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@Search.searchable: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fiori - Retailers'
define root view ZCDS_RETAILERS
  as select from zapo_retailers
{
      @EndUserText.label : 'Retailer ID'
  key retailerid as Retailerid,
      @Semantics.address.country: true
      @Search.defaultSearchElement: true
      land1      as Land1,
      @Semantics.organization.name: true
      @EndUserText.label : 'Name'
      @Search.defaultSearchElement: true
      name1      as Name1,
      @Semantics.telephone: {
          type: [#FAX]
      }
      @EndUserText.label : 'Fax Number'
      fax        as Fax,
      @Semantics.eMail: {
          type: [#WORK],
          address: true,
          from: true,
          sender: true,
          to: true,
          cc: true,
          bcc: true,
          subject: true,
          body: true,
          keywords: true,
          received: true
      }
      @EndUserText.label : 'E-Mail Address'
      @Search.defaultSearchElement: true
      email      as Email,
      @Semantics.address.street: true
      @EndUserText.label : 'Street'
      @Search.defaultSearchElement: true
      street     as Street
}
