//
//  ViewController.swift
//  DemoApp
//
//  Created by rumi on 12/2/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UserView {
   
    var userPresenter: UserPresenterImpl?
    var userRepo: UserRepoImpl?

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
       
            let gradient:CAGradientLayer = CAGradientLayer()
            gradient.frame.size = self.btn.frame.size
            gradient.colors = [UIColor.init(red: 11/255, green: 105/255, blue: 175/255, alpha: 0),
                               UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0)] //Or any colors
            //        gradient.colors = [
            
            //            UIColor.init(red: 11/255, green: 105/255, blue: 175/255, alpha: 1),
            //            UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            
            //        ]
                    gradient.startPoint = CGPoint(x: 0, y: 0)
            //        gradient.endPoint = CGPoint(x: 1, y: 1)
            self.btn.layer.addSublayer(gradient)
            
        
        
    }

    @IBAction func btnClicked(_ sender: Any) {
        userPresenter?.loginObservable()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func goToNextScreen() {
        let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        present(vc, animated: true, completion: nil)
    }


}
