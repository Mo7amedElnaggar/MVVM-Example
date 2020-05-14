//
//  APIService.swift
//  MVVM_Example
//
//  Created by Mohamed El-Naggar on 5/14/20.
//  Copyright © 2020 Mohamed El-Naggar. All rights reserved.
//

import Foundation
import Alamofire

class APIService {
    static let instance = APIService()
    
    func FetchFireDatabase<T: Decodable>(url: String , completion: @escaping (T? , Error?) -> Void) {
        AF.request(url).responseJSON(completionHandler: { (response) in
            guard let data = response.data else { return }
            switch (response.result) {
            case .success( _):
                do {
                    let responseVal = try JSONDecoder().decode(T.self, from: data)
                    
                    completion(responseVal , nil)
                } catch(let parsingError) {
                    completion(nil , parsingError)
                    
                }

            case .failure(let err):
                completion(nil , err)
            }
        })
    }
    
}
