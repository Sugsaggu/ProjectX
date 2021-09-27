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
      name1      as Name1,
      @Semantics.telephone: {
          type: [#FAX]
      }
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
      email      as Email,
      @Semantics.address.street: true
      street     as Street
}
