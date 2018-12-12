//
//  UserInterface.swift
//  DemoApp
//
//  Created by rumi on 12/3/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation
import RxSwift


protocol UserView: class{
    func goToNextScreen()
}
protocol UserPresenter: class{
    var view: UserView? {get set}
    var repo: UserRepo? {get set}
    var router: UserRouter? {get set}
    func loginObservable()

}

protocol UserRepo: class {
    
    var presenter: UserPresenter? {get set}
    var remote: UserRemote? {get set}
    func login() -> (Observable<UserResponseModel>)

}
protocol UserRemote:class {
    func login() -> (Observable<UserResponseModel>)

}

