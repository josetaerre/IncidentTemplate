using templates as service from '../db/schema';


service CatalogService {
    @odata.draft.enabled
    @Capabilities: { Insertable: true, Deletable: true }
    entity GetCatalog as projection on service.Category;
    @odata.draft.enabled
    @Capabilities: { Insertable: true, Deletable: false }
    entity GetTemplate as projection on service.Template {
		*,
		null as numberOfBooks: Integer
	};
    entity GetSelectable as projection on service.Selectable;

}
