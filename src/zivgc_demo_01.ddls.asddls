@AbapCatalog.sqlViewName: 'ZVIVGC_DEMO_01'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data model for DEMO_01'
define root view ZIvgc_demo_01 as select from ztvgc_demo_01 {
  key partner,
  name_last,       
  name_first,      
  bpkind,     
  @Semantics.user.createdBy: true     
  created_by, 
  @Semantics.systemDateTime.createdAt: true     
  created_at,      
  @Semantics.user.lastChangedBy: true
  last_changed_by,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at  
}
