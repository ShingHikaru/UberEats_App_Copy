//
//  LocationAPI.swift
//  SUUMO App Demo
//
//  Created by Hikaru Shing on 2022/09/28.
//

import Foundation

struct LocationAPI {
    
    struct resData: Codable {
        var markers: [String]
    }
    
    struct innerData: Codable {
        var name: String?
        var position: [Double]
    }
    
    func getLocation() {
        guard let url = URL(string: "https://73f4d5d8-1ee0-4e74-a7a3-71beeafd5d4d.mock.pstmn.io") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {(data, response, error) in
                do {
                    let locationDataArray = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [Any]
                    dump(locationDataArray)
                    let locationData = locationDataArray.map { (locationData) ->  [String: Any] in
                        return locationData as! [String: Any]
                    }
                    print(locationData)
                } catch {
                    print(error)
                }
            })
            task.resume()
    }
}
    
