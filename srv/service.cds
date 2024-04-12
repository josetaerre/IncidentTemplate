using templates as service from '../db/schema';


service CatalogService {
    @odata.draft.enabled
    entity GetCatalog as projection on service.Category;
    entity GetTemplate as projection on service.Template;
    entity GetSelectable as projection on service.Selectable;
}