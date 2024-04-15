using templates as service from '../db/schema';


service CatalogService {
    @odata.draft.enabled
    @Capabilities: { Insertable: true, Deletable: true}
    entity GetCatalog as projection on service.Category;
    // @Capabilities: { Insertable: true, Deletable: true}
    entity GetTemplate as projection on service.Template;
    entity GetSelectable as projection on service.Selectable;
}