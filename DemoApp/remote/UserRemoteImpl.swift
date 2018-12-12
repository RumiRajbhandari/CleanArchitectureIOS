//
//  UserRemoteImpl.swift
//  DemoApp
//
//  Created by rumi on 12/3/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation
import RxSwift

class UserRemoteImpl: UserRemote{
    
    let endpoint = "authenticate"
     var userRepo: UserRepo?
    
    func login() -> (Observable<UserResponseModel>) {
        
        return ApiClient().requestObseverable(endPoint: endpoint, type: UserResponseModel.self)
    }
    
}
