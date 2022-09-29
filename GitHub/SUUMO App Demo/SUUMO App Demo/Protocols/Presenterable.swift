//
//  Presenterable.swift
//  SUUMO App Demo
//
//  Created by Hikaru Shing on 2022/09/27.
//
import Foundation

protocol Presenterable {
    associatedtype I: Interactorable
    associatedtype R: Routerable
    var dependencies: (interactor: I, router: R) { get }
}


