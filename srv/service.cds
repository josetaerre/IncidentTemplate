using templates as service from '../db/schema';


service CatalogService {
    @odata.draft.enabled
    @Capabilities: { Insertable: true, Deletable: true }
    entity GetCatalog as projection on service.Category
    excluding { createdBy, createdAt, modifiedBy, modifiedAt };

    @odata.draft.enabled
    @Capabilities: { Insertable: true, Deletable: false }
    entity GetTemplate as projection on service.Template
    {
		*,
        to_category.text as category,
		null as number: Integer
	};
    
    @odata.draft.enabled
    @Capabilities: { Insertable: true, Deletable: true }
    entity GetSelectable as projection on service.Selectable
    {
        *,
        to_template.text as template
    };
}

// service TestingService {
//     entity e as projection on service.E;
// }
