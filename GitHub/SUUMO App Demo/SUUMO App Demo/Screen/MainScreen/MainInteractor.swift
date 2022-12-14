//
//  MainInteractor.swift
//  SUUMO App Demo
//
//  Created by Hikaru Shing on 2022/09/27.
//

import Foundation

final class MainInteractor: Interactorable {
    
//    var ArrayLocationData: Any!
//    var locationData: Any!
//
//    init(ArrayLocationData: Any, locationData: Any) {
//        self.ArrayLocationData = ArrayLocationData
//        self.locationData = locationData
//    }
// TODO: After ListInteractorOutputs created discard comment out
//    weak var presenter: ListInteractorOutputs?
    
    func getBuildingLocation(entities: MainEntities) {
        guard let url = URL(string: "https://73f4d5d8-1ee0-4e74-a7a3-71beeafd5d4d.mock.pstmn.io") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {(data, response, error) in
            do {
                let locationDataArray = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [Any]
                
                dump(locationDataArray)
                
                let locationData = locationDataArray.map { (locationData) ->  [String: Any] in
                    return locationData as! [String: Any]
                    // storing current location data.
                    // TODO: do something
//                    self.entities.locationDataState = locationData as! String
                }
            } catch {
                print(error)
            }
        })
        task.resume()
    }
}
    
    
