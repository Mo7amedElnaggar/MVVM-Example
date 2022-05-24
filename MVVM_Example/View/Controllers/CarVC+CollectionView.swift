//
//  CarVC+CollectionView.swift
//  MVVM_Example
//
//  Created by Mohamed El-Naggar on 5/14/20.
//  Copyright © 2020 Mohamed El-Naggar. All rights reserved.
//

import Foundation
import UIKit

extension CarVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let carCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCell", for: indexPath) as? CarCell else { return UICollectionViewCell() }
        
        let car = self.cars[indexPath.row]
        
        carCell.setCarImage(for: car.carImage)
        carCell.setCarTitle(for: car.carTitle)
        carCell.setCarPrice(for: car.carPriceWithCurrency)
        carCell.setPriceBackground(for: car.priceBGColor)
        
        return carCell
    }
}


extension CarVC: UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Car Preview
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width) / 2.0
        return CGSize(width: width , height: width * 3.0 / 2.0)
    }
}
