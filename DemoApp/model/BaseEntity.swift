//
//  BaseEntity.swift
//  DemoApp
//
//  Created by rumi on 12/3/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation
import ObjectMapper

public class BaseEntity<T:Mappable>: Mappable {
    var message : String = ""
    var status_code: Int = 0
    var debug_code: Int = 0
    var data: T?
    typealias ContainedProtocol = T
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        debug_code <- map["debug_code"]
        message <- map["message"]
        status_code <- map["status_code"]
        data <- map["data"]
    }
    
    
    
}
