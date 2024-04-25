module.exports = srv => {

    srv.after ("READ", "GetCatalog", Catalog => {
        console.log('Service name')
        const newCategories = [];

        // Catalog.array.forEach(element => {
        //     newCategories.push(element);
        // });

        // Catalog.array.forEach(element => {
        //     if (element.validTo > Date.now) {
        //         element.status = 1;
        //     } else {
        //         element.status = 2;
        //     }
        //     newCategories.push(element);
        // });
        return newCategories;
        // return [];
    });
};