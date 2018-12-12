//
//  UserResponseModel.swift
//  DemoApp
//
//  Created by rumi on 12/3/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation
import ObjectMapper
import RxSwift
import Alamofire

class UserResponseModel: Mappable{
    var bu_id: Int?
    var bu_name: String?
    var user_group: String?
    var first_name: String?
    var last_name: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        bu_id <- map["bu_id"]
        bu_name <- map["bu_name"]
        user_group <- map["user_group"]
        first_name <- map["first_name"]
        last_name <- map["last_name"]
    }
    
    
}
