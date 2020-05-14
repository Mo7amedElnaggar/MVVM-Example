//
//  Car.swift
//  MVVM_Example
//
//  Created by Mohamed El-Naggar on 5/14/20.
//  Copyright © 2020 Mohamed El-Naggar. All rights reserved.
//

import Foundation

struct Car: Codable {

    let carImageUrl: String?
    let carName: String?
    let carYear: Int?
    let carPrice: Double?
    let carBrand: String?
    let carType: Int?  // 1 stands for sale cars // 2 stands for exchange cars
    
    enum CarKeys: String , CodingKey {
        case carImageUrl = "car_url"
        case carName = "car_name"
        case carYear = "car_year"
        case carPrice = "car_price"
        case carBrand = "car_brand"
        case carType = "car_type"
    }
    
//    public enum CarType {
//        case forSale
//        case forExchange
//    }
    
    init(from decoder: Decoder)  throws {
        let carData = try decoder.container(keyedBy: CarKeys.self)
        carImageUrl = try carData.decodeIfPresent(String.self, forKey: .carImageUrl)
        carName = try carData.decodeIfPresent(String.self, forKey: .carName)
        carYear = try carData.decodeIfPresent(Int.self, forKey: .carYear)
        carPrice = try carData.decodeIfPresent(Double.self, forKey: .carPrice)
        carBrand = try carData.decodeIfPresent(String.self, forKey: .carBrand)
        carType = try carData.decodeIfPresent(Int.self, forKey: .carType)!
    }
    
}
