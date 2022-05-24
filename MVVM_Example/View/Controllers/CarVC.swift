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
    
    var cars: [Car] = []
    var viewModel = CarsViewModel()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCell()
        fetchCars()
    }
    
    func fetchCars() {
        viewModel.fetchCars { [weak self] (cars) in
            self?.cars = cars
            self?.carCollectionView.reloadData()
        }
    }
    
    func registerCell() {
        self.carCollectionView.register(UINib(nibName: "CarCell", bundle: nil), forCellWithReuseIdentifier: "CarCell")
    }
}

