

import UIKit

class YellowCollectionViewCell: UICollectionViewCell {
  
    
    @IBOutlet weak var carImage: UIImageView!
    
    func setUpCell (img : UIImage){
      
        carImage.image = img
        
    }
    
    
    
}
