

import UIKit

class MixViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
  

    @IBOutlet weak var tableView: UITableView!
    
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        filProducts()
        tableView.delegate = self
        tableView.dataSource = self
    }
   
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return products.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "mixCell", for: indexPath) as! MixTableViewCell
        
        cell.titleLabel.text = products[indexPath.row].title
     
        cell.products = products[indexPath.row].photo
        return cell
    }
    

    
    
    
    func filProducts (){
        
        var product1 = (UIImage(named: "bmw")!)
        var product2 = (UIImage(named: "audi")!)
        var product3 = (UIImage(named: "volvo")!)
        var product4 = (UIImage(named: "mercedes")!)
        var product5 = (UIImage(named: "toyota")!)
        var product6 = (UIImage(named: "ferari")!)
        var product7 = (UIImage(named: "golf")!)
        var product8 = (UIImage(named: "camaro")!)
        
        var bilar1 =  [product1,product2,product3,product4,product5,product6,product7,product8]
        var bilar2 = [product1,product2, product3]
        var bilar3 =  [product1,product2,product3,product4,product5,product6,product7,product8]
        var bilar4 = [product1,product2,product3,product4,product5, product6]
        var bilar5 = [product1,product2,product3,product4,product5,product6,product7,product8]

        
        var pro1 = Product(title: "Product 1", photo: bilar1)
        var pro2 = Product(title: "Product 2", photo: bilar2)
        var pro3 = Product(title: "Product 3", photo: bilar3)
        var pro4 = Product(title: "Product 4", photo: bilar4)
        var pro5 = Product(title: "Product 5", photo: bilar5)
    
        products = [pro1,pro2,pro3,pro4,pro5]
        
    }
    

}



struct Product {
    
    var title : String
    var photo : [UIImage]
    
    
}
