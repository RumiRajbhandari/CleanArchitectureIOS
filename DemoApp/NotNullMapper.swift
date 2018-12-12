//
//  NotNullMapper.swift
//  DemoApp
//
//  Created by rumi on 12/5/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import Foundation
import ObjectMapper
import RxSwift

func NotNullMapper<T:Mappable>(t:BaseEntity<T>)-> Observable<T>{
    if(t.status_code != 200){
        return Observable.just(t.data!)
    }else{
       return Observable.error(NSError(domain:"", code:-1, userInfo:nil))
    }
}
