@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales consunpion'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_THS_SALES as projection on ZI_THS_SALES
{
    key Orderid,
    Customer,
    Vendor,
    Company
}
