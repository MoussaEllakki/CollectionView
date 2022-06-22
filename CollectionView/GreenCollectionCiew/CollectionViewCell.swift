

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
 

    @IBOutlet weak var carName: UILabel!
    
    
    @IBOutlet weak var carImage: UIImageView!
    func setUpCell (name : String , img : UIImage){
        carName.text = name
        carImage.image = img
        
    }
    
    
    
}
