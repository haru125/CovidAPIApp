//
//  CovidSingleton.swift
//  CovidAPIApp
//
//  Created by Satoshi Ota on 2021/08/17.
//

import Foundation

class CovidSingleton {
    private init() {}
    static let shared = CovidSingleton()
    var prefecture:[CovidInfo.Prefecture] = []
}
