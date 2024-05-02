// module.exports = srv => {

    // srv.after ("READ", "GetCatalog", Catalog => {
    //     console.log('Service name')
    //     const newCategories = [];
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
        // return newCategories;
        // return [];
//     });
// };


const cds = require('@sap/cds')
module.exports = function (){
//   this.on ('submitOrder', (req)=>{...}) //> custom actions
//   this.on ('CREATE',`Books`, (req)=>{...})
//   this.before ('UPDATE',`*`, (req)=>{...})

//   this.after ('READ','CatalogService', (Category)=>{
//     const newCategories = [];
//     Category.array.array.forEach(element => {
//         console.log('Service name')
//         newCategories.push(element)
//     });

//     return newCategories;
//   })
}