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
        
        let entryEntity: MainEntryEntity
        
        
        
        init(entryEntity: MainEntryEntity) {
            self.entryEntity = entryEntity
        }
    }
