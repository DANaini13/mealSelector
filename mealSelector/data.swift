//
//  data.swift
//  mealSelector
//
//  Created by zeyong shan on 4/5/17.
//  Copyright © 2017 zeyong shan. All rights reserved.
//

import Foundation


class Data
{
    
    var restrantList:[String]
    
    
    init() {
        restrantList = []
        var key = 0
        var value = UserDefaults.standard.string(forKey: "\(key)")
        while value != nil {
            restrantList.append(value!)
            key += 1
            value = UserDefaults.standard.string(forKey: "\(key)")
        }
    }
    
    
    func addRestrant(_ restrant: String)
    {
        UserDefaults.standard.setValue(restrant, forKey: "\(restrantList.count)")
        restrantList.append(restrant)
    }
    
    
    func getRestrants() -> [String]
    {
        return restrantList
    }
    
    func getLength() -> Int
    {
        return restrantList.count
    }
    
    func setResult(_ result:String)
    {
        UserDefaults.standard.setValue(result, forKey: "resultRestrant")
    }
    
    
    func getResult() -> String?
    {
        return UserDefaults.standard.string(forKey: "resultRestrant")
    }
    
}
