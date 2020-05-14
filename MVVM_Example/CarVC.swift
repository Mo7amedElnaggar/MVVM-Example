//
//  CarVC.swift
//  MVVM_Example
//
//  Created by Mohamed El-Naggar on 5/13/20.
//  Copyright © 2020 Mohamed El-Naggar. All rights reserved.
//

import UIKit

class CarVC: UIViewController {

    @IBOutlet weak var carCollectionView: UICollectionView!
    
    var cars: [CarViewModel] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        APIService.instance.FetchFireDatabase(url: "https://mvvmtest-b8d32.firebaseio.com/Cars/.json") { (cars: [Car]?, err: Error?) in
            
            guard err == nil else {
                print(err!.localizedDescription)
                return
            }
            
            self.cars = CarViewModel.collectionOfCars(cars: cars!)
            self.carCollectionView.reloadData()
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCell()
    }
    
    
    func registerCell() {
        self.carCollectionView.register(UINib(nibName: "CarCell", bundle: nil), forCellWithReuseIdentifier: "CarCell")
    }
    
}

