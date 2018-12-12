//
//  UserRouter.swift
//  DemoApp
//
//  Created by rumi on 12/3/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation
import  UIKit

class UserRouter{
    
    static var mainStoryboard: UIStoryboard{
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    static func createModule() -> ViewController {
        let view = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let presenter: UserPresenter  = UserPresenterImpl()
        let repo = UserRepoImpl()
        let remoteImpl = UserRemoteImpl.init()

        view.userPresenter = presenter as? UserPresenterImpl
        presenter.view = view
        presenter.router = UserRouter()
        presenter.repo = repo
        repo.remote = remoteImpl
        repo.presenter = presenter
        remoteImpl.userRepo = repo
        return view
    }
    
    func pushToNextScreen(view: UIViewController, userName: String) {
    
        
    }
}
