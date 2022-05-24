//
//  CarsViewModel.swift
//  MVVM_Example
//
//  Created by Mohamed El-Naggar on 24/05/2022.
//  Copyright © 2022 Mohamed El-Naggar. All rights reserved.
//

import Foundation

fileprivate let carsUrl = "https://mvvmtest-b8d32.firebaseio.com/Cars/.json"

class CarsViewModel {
        
    func fetchCars(completion: @escaping (([Car]) -> Void)) {
        APIService.instance.FetchFireDatabase(url: carsUrl) { (cars: [Car]?, err: Error?) in
            
            guard let cars = cars else {
                print(err!.localizedDescription)
                return
            }

            completion(cars)
        }
    }
}
