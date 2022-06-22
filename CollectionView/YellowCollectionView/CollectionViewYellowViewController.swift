//
//  CollectionViewYellowViewController.swift
//  CollectionView
//
//  Created by Moussa El Lakki on 2022-06-16.
//

import UIKit

class CollectionViewYellowViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    var cars : [UIImage] = []
    var timer : Timer?
    var currenCellIndex = 0
    
    var forward = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillCars()
        starttimer()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "yellowCell", for: indexPath) as! YellowCollectionViewCell
        cell.carImage.image = cars[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 1 , height: self.view.frame.height * 0.220)
    }
    
    
    
   
    
    func starttimer (){
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector (moveToNextCell), userInfo: nil, repeats: true)
    }
    
    
    @objc func moveToNextCell(){
        
        if (currenCellIndex < cars.count && forward == true){
            currenCellIndex += 1
        }
        if (currenCellIndex == cars.count){
            forward = false
        }
        if (currenCellIndex == 0){
            forward = true
        }
        if (currenCellIndex > -1 && forward == false){
            currenCellIndex -= 1
        }
        
        myCollectionView.scrollToItem(at: IndexPath(item: currenCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        
    }
    
    func fillCars (){
        cars = [UIImage(named: "bmw")!,
                UIImage(named: "audi")!,
                UIImage(named: "ferari")!,
                UIImage(named: "camaro")!,
                UIImage(named: "toyota")!,
                UIImage(named: "golf")!,
                UIImage(named: "volvo")!,
                UIImage(named: "mercedes")!,
                UIImage(named: "porche")!]
    }
    
}
