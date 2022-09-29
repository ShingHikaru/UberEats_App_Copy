//
//  MainEntities.swift
//  SUUMO App Demo
//
//  Created by Hikaru Shing on 2022/09/27.
//

import Foundation

struct MainEntryEntity {
    let language: String
    let markerLocation: Int
}
    final class MainEntities {
        var locationDataState: String
        
        class state {
            var fetchingState = false
        }
        var locationAPI: String = "https://73f4d5d8-1ee0-4e74-a7a3-71beeafd5d4d.mock.pstmn.io"
        init(locationDataState: String) {
            self.locationDataState = locationDataState
        }
    }
