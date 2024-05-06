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

module.exports = (srv) => {
// module.exports = function  Category() {

//   this.on ('submitOrder', (req)=>{...}) //> custom actions
//   this.on ('CREATE',`Books`, (req)=>{...})
//   this.before ('UPDATE',`*`, (req)=>{...})
//   this.after ('READ','CatalogService', (Category)=>{

srv.on('READ', 'GetCatalog', (req) => {
// let categ = req.data
const newCategories = [];
console.log('Service name')

    // req.data.array.forEach(element => {
    //     newCategories.push(element)
    // });

})
//   this.after ('READ','CatalogService', (Category)=>{
    // const newCategories = [];
    // console.log('Service name')
    // Category.array.array.forEach(element => {
        
    //     newCategories.push(element)
    // });

    // return newCategories;
    // return Category
//   })
}


// cds.serve('inventory-service') .with (function(){
//     this.after('READ', '*', (devices)=>{
//       for (let each of devices) {
//         var deviceAge = calculateDeviceAgeYears(each)
//         if (deviceAge >= 4) {
//           each.eligible_for_replacement = true
//         } else {
//           each.eligible_for_replacement = false
//         }
//    }  })
//   })