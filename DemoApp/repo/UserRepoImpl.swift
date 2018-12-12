//
//  UserRepoImpl.swift
//  DemoApp
//
//  Created by rumi on 12/3/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation
import RxSwift

class UserRepoImpl : UserRepo{
    
    var remote: UserRemote?
    var presenter: UserPresenter?
    
    func login() -> (Observable<UserResponseModel>) {
        return (remote?.login())!
    }
    
}
