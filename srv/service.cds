using templates as service from '../db/schema';


service CatalogService {
    @odata.draft.enabled
    // @Capabilities: { Insertable: true, Deletable: true }
    entity GetCatalog    as
        projection on service.Category {
            *,
            null as numberOfTemplates : Integer,
        }
        excluding {
            createdBy,
            createdAt,
            modifiedBy,
            modifiedAt
        };

    // annotate GetCatalog with @(Capabilities: {
    //     InsertRestrictions: {Insertable: true},
    //     DeleteRestrictions: {Deletable: true},
    // });



    

    // @odata.draft.enabled
    entity GetTemplate   as
        projection on service.Template {
            *,
            to_category.text as category,
            null             as numberOfSelectables : Integer
        }

    annotate GetTemplate with @(Capabilities: {
        // InsertRestrictions: {Insertable: true},
        // DeleteRestrictions: {Deletable: true},
        Insertable: true,
        Updatable : true,
        Deletable : true
    });

    // @odata.draft.enabled
    entity GetSelectable as
        projection on service.Selectable {
            *,
            to_template.text as template
        }

    annotate GetSelectable with @(Capabilities: {
        // InsertRestrictions: {Insertable: true},
        // DeleteRestrictions: {Deletable: true},
        Insertable: true,
        Updatable : true,
        Deletable : true
    });
}


// annotate CatalogService.GetCatalog with @(
//   Capabilities: {
//     InsertRestrictions: {
//       Insertable: true
//     },
//     DeleteRestrictions: {
//       Deletable: true
//     }
//   }
// );


// service TestingService {
//     entity e as projection on service.E;
// }
