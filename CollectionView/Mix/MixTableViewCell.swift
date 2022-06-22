
import UIKit

class MixTableViewCell: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
   

    
    
    @IBOutlet weak var titleLabel: UILabel!

    var products = [UIImage]()
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
    }
    
  
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return products.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mixCollCell", for: indexPath) as! MixCollectionViewCell
        
        cell.carImage.image = products[indexPath.row]
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: myCollectionView.frame.width * 0.4, height: 300)
    }
    
    

}
