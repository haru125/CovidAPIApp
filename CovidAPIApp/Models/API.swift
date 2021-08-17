//
//  API.swift
//  CovidAPIApp
//
//  Created by Satoshi Ota on 2021/08/12.
//

import Foundation

struct CovidAPI {
    static func getTotal(completion: @escaping (CovidInfo.Total) -> Void) {
        let url = URL(string: "https://covid19-japan-web-api.now.sh/api//v1/total")
        let request = URLRequest(url: url!)
        print("🟩\(request)")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error != nil {
                print("error:\(error!.localizedDescription)")
            }
            if let data = data {
                let result = try! JSONDecoder().decode(CovidInfo.Total.self, from: data)
                completion(result)
                print("🟥\(data)")
            }
        } .resume()
    }
    static func getPrefecture(completion: @escaping ([CovidInfo.Prefecture]) -> Void) {
        let url = URL(string: "https://covid19-japan-web-api.now.sh/api//v1/prefectures")
        let request = URLRequest(url: url!)
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let data = data {
                let result = try! JSONDecoder().decode(CovidInfo.Prefecture.self, from: data)
//                completion(result)
            }
        }.resume()
    }
}
