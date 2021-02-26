//
//  NewsHandler.swift
//  NewsApp
//
//  Created by EE on 25.02.2021.
//

import Foundation
import Alamofire
import Combine

class NewsHandler {
    
    static let apiKey = "5ce363fe4c914bd68d99cde6482fda8e"
    static let baseUrlApi = "https://newsapi.org/v2/"
    
    
//    func getLatestAppleNews(_ amount: Int) -> AnyPublisher<AFTestDataFull, Never>{
//        let url = NewsHandler.baseUrlApi + "everything?q=apple"
//        let parameters: [String: String] = ["apiKey": NewsHandler.apiKey,
//                                            "PageSize": String(amount)]
//        AF.request(url,
//                   parameters: parameters)
//            .validate()
//            .responseDecodable(of: AFTestDataFull.self) { response in
//                switch response.result {
//                case .success(let value):
//                    print(value)
//                case .failure(let error):
//                    print(error)
//                }
//            }
//    }
    
    func getLatestAppleNews(_ amount: Int) -> AnyPublisher<AFTestDataFull, Never> {
        let url = NewsHandler.baseUrlApi + "everything?q=apple"
        let parameters: [String: String] = ["apiKey": NewsHandler.apiKey,
                                            "PageSize": String(amount)]
        return AF.request(url,
                   parameters: parameters)
            .validate()
            .publishDecodable(type: AFTestDataFull.self)
            .value()
            .replaceError(with: AFTestDataFull.placeholder)
            .eraseToAnyPublisher()
//            .catch { error in
//                print(error)
//                return AFTestDataFull.placeholder
//            }
//            .result()
//            .sink { response in
//                switch response.result {
//                case .success:
//                    return response.value
//                case .failure(let error):
//                    print(error)
//                }
//            }
    }
    
}
