@EndUserText.label: 'DEMO 01 projection view - Processor'
@AccessControl.authorizationCheck: #CHECK

@UI: {
 headerInfo: { typeName: 'Dato Demo', typeNamePlural: 'Datos Demo', title: { type: #STANDARD, value: 'partner_id' } } }

@Search.searchable: true
define root view entity zCvgc_demo_01 as projection on ZIvgc_demo_01 {

@UI.facet: [ { id:              'Partner',
               purpose:         #STANDARD,
               type:            #IDENTIFICATION_REFERENCE,
               label:           'Partner',
               position:        10 } ]
@UI: {
     lineItem:       [ { position: 10, importance: #HIGH } ],
     identification: [ { position: 10, label: 'Travel ID [1,...,99999999]' } ] }
 @Search.defaultSearchElement: true
 key partner          as partner_id

}
