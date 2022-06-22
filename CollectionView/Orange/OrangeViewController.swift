

import UIKit

class OrangeViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
  

    
    var allaBilar : [BilModel] = []
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filBilar()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
     
    }
    

    
 
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
     return   allaBilar.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return allaBilar[section].bilar!.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "orangeCell", for: indexPath) as! OrangeCollectionViewCell
        
        
        cell.carImage.image = allaBilar[indexPath.section].bilar![indexPath.row].img
        return cell
        
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: myCollectionView.frame.width * 0.4, height: 200)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "orangeHeder", for: indexPath) as! ReusableController
        
        header.modelLabel.text = allaBilar[indexPath.section].model
        
        return header
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 

}



extension OrangeViewController {
    
    
    func filBilar (){
        
      
        var bmw      = Bil(namn: "Bmw" , img: UIImage(named: "bmw")!)
        var audi     = Bil(namn: "Audi" , img: UIImage(named: "audi")!)
        var volvo    = Bil(namn: "Volvo" , img: UIImage(named: "volvo")!)
        var toyota   = Bil(namn: "Toyota" , img: UIImage(named: "toyota")!)
        var ferari   = Bil(namn: "Ferari" , img: UIImage(named: "ferari")!)
        var golf     = Bil(namn: "Golf" , img: UIImage(named: "golf")!)
        var camaro   = Bil(namn: "Camaro" , img: UIImage(named: "camaro")!)
        var mercedes = Bil(namn: "Merceds" , img: UIImage(named: "mercedes")!)
       
        var m2018 = [toyota,golf]
        var m2019 = [volvo,mercedes,bmw]
        var m2020 = [bmw,camaro,mercedes]
        var m2021 = [ferari,camaro,bmw,mercedes,audi]
        
        var model2018 = BilModel(model: "2018", bilar: m2018)
        var model2019 = BilModel(model: "2019", bilar: m2019)
        var model2020 = BilModel(model: "2020", bilar: m2020)
        var model2021 = BilModel(model: "2021", bilar: m2021)
        var all = m2018 + m2019 + m2020 + m2021
        var allModel = BilModel(model: "All Model", bilar: all)
        allaBilar = [allModel, model2018,model2019,model2020,model2021]
        allaBilar.reverse()
        
    }
    
    
}
  

class BilModel{
    

    var model : String?
    var bilar : [Bil]?
    
    init(model : String , bilar : [Bil]){
        
        self.model = model
        self.bilar = bilar
    }
    
    
}


class Bil {
    
    var namn : String?
    var img : UIImage?
    
    init(namn : String, img : UIImage){
        
        self.namn = namn
        self.img = img
    }
}


