//
//  Car.swift
//  MVVM_Example
//
//  Created by Mohamed El-Naggar on 5/14/20.
//  Copyright © 2020 Mohamed El-Naggar. All rights reserved.
//

import Foundation
import UIKit

enum CarType: Int, Codable {
    case forSale = 1
    case forExchange = 2
    case none
}

struct Car: Codable {

    let carImageUrl: String?
    let carName: String?
    let carYear: Int?
    let carPrice: Double?
    let carBrand: String?
    let carType: CarType?  // 1 stands for sale cars // 2 stands for exchange cars
    
    enum CodingKeys: String , CodingKey {
        case carImageUrl = "car_url"
        case carName = "car_name"
        case carYear = "car_year"
        case carPrice = "car_price"
        case carBrand = "car_brand"
        case carType = "car_type"
    }
}

extension Car {
    var carTitle: String {
        return "\(self.carBrand ?? "") \(self.carName ?? "") \(self.carYear ?? 0)"
    }
    
    var carPriceWithCurrency: String {
        return "\(self.carPrice ?? 0) EGP"
    }
    
    public var priceBGColor: UIColor {
        switch self.carType {
        case .forSale:
            return #colorLiteral(red: 0, green: 0.6662465334, blue: 0.5891815424, alpha: 1)
        case .forExchange:
            return #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        default:
            return #colorLiteral(red: 0, green: 0.6662465334, blue: 0.5891815424, alpha: 1)
        }
    }
    
    public var carImage: UIImage? {
        return #imageLiteral(resourceName: "TestCar")
    }
}
