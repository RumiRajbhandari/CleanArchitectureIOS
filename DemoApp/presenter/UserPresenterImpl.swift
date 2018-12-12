//
//  UserPresenterImpl.swift
//  DemoApp
//
//  Created by rumi on 12/3/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation

class UserPresenterImpl : UserPresenter{
    
    var view: UserView?
    
    var repo: UserRepo?
    
    var router: UserRouter?
    
    func loginObservable() {
        repo?.login().subscribe(onNext: { (user) in
            print(user.bu_name)
            self.view?.goToNextScreen()
        }, onError: { (error) in
            print("error")
            self.view?.goToNextScreen()
        }, onCompleted: {
            
        })
    }
}

