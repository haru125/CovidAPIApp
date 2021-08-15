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
}
