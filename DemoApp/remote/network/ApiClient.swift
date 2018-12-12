//
//  NetworkService.swift
//  DemoApp
//
//  Created by rumi on 12/3/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper
import RxSwift
import RxAlamofire

class ApiClient{
    
    let url = "https://bfa94eca-cb8f-4351-99e1-0e21c61915f6.mock.pstmn.io/user/supervisor/"


    func requestObseverable<T: Mappable>(endPoint: String,
                              type:T.Type,
                              method: HTTPMethod? = .get,
                              parameters: Parameters? = nil,
                              header:HTTPHeaders? = nil) -> (Observable<T>) {
        
        return RxAlamofire.requestJSON(.post, url+endPoint)
            .mapObject(type:BaseEntity<T>.self)
            .flatMap{response in NotNullMapper(t:response)}

    
    
    }
}
