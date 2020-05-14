//
//  CarCell.swift
//  MVVM_Example
//
//  Created by Mohamed El-Naggar on 5/14/20.
//  Copyright © 2020 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class CarCell: UICollectionViewCell {
    
    @IBOutlet weak var carTitle: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carPrice: UILabel!
    @IBOutlet weak var priceParentView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCarTitle(for title: String?) {
        self.carTitle?.text = title
    }
    
    func setCarImage(for image: UIImage?) {
        self.carImage?.image = image
    }
    
    func setCarPrice(for price: String?) {
        self.carPrice?.text = price
    }
    
    func setPriceBackground(for color: UIColor?) {
        self.priceParentView?.backgroundColor = color
    }

}
