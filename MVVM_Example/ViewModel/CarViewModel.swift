//
//  CarViewModel.swift
//  MVVM_Example
//
//  Created by Mohamed El-Naggar on 5/14/20.
//  Copyright © 2020 Mohamed El-Naggar. All rights reserved.
//

import Foundation
import UIKit

struct CarViewModel {
    
    private let car: Car
    
    init(car: Car) {
        self.car = car
    }
    
    public var carTitle: String {
        return "\(self.car.carBrand ?? "") \(self.car.carName ?? "") \(self.car.carYear ?? 0)"
    }
    
    public var carPrice: String {
        return "\(self.car.carPrice ?? 0) EGP"
    }
    
    
    public var carImage: UIImage? {
        return #imageLiteral(resourceName: "TestCar")
    }
    
    public var priceBGColor: UIColor {
        switch self.car.carType {
        case 1:
            return #colorLiteral(red: 0, green: 0.6662465334, blue: 0.5891815424, alpha: 1)
        case 2:
            return #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        default:
            return #colorLiteral(red: 0, green: 0.6662465334, blue: 0.5891815424, alpha: 1)
        }
    }
    
    
    static func collectionOfCars(cars: [Car]) -> [CarViewModel] {
        var carViewModels: [CarViewModel] = []
        for car in cars {
            carViewModels.append(CarViewModel(car: car))
        }
        
        return carViewModels
    }
    
    
    
}
