
import UIKit

class CollectionViewViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    

@IBOutlet weak var myCollectionView: UICollectionView!
    var cars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myCollectionView.delegate = self
        myCollectionView.dataSource = self
     
        fillCars()
        fillCars()
        fillCars()
        fillCars()
        fillCars()
        fillCars()
       
        
        
    }
    

    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     return cars.count
     }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
   
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "theCell", for: indexPath) as! CollectionViewCell
            var car = cars[indexPath.row]
             cell.setUpCell(name: car.name , img: car.img)
        return cell
    }
 
    // bestämmer stroleken på hela cellen
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width: self.view.frame.width * 0.3 , height: self.view.frame.height * 0.2)
    }
    
  
   
    
    /*
    // bestämmer avstånd mellan varje cell vertical
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    
    // bestämmer avstånd mellan varje cell horiziontal
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    
     // bestämmer margin avstånd från olika håll
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
         return UIEdgeInsets(top: 150, left: 10, bottom: 10, right: 10)
     }
     */
  
    

    
    
 

}






extension CollectionViewViewController {
    func fillCars (){
        cars.append(Car(name: "Bmw", img: UIImage(named: "bmw")!))
        cars.append(Car(name: "Audi", img: UIImage(named: "audi")!))
        cars.append(Car(name: "Ferari", img: UIImage(named: "ferari")!))
    }
}



struct Car {
    var name : String
    var img : UIImage
    
    
    
}
