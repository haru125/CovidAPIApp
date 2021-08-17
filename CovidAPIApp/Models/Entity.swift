//
//  Entity.swift
//  CovidAPIApp
//
//  Created by Satoshi Ota on 2021/08/12.
//

import Foundation

struct CovidInfo: Codable {
    struct Total: Codable {
        var pcr: Int
        var positive: Int
        var hospitalize: Int
        var severe: Int
        var death: Int
        var discharge: Int
    }
    
    struct Prefecture: Codable {
        var id: Int
        var name_ja: String
        var cases: Int
        var deaths: Int
        var pcr: Int
    }
}
