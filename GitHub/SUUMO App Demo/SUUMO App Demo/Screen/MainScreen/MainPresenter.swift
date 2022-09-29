////
////  MainPresenter.swift
////  SUUMO App Demo
////d
////  Created by Hikaru Shing on 2022/09/27.
////
//
import Foundation

typealias MainPresenterDependencies = (
    interactor: MainInteractor,
    router: MainRouterOutput
)

final class MainPresenter: Presenterable {
    
    internal var entities: MainEntities
    private weak var view: ViewControllerInputs!
    let dependencies: MainPresenterDependencies

    init(
        entities: MainEntities,
        view: ViewControllerInputs,
        dependencies: MainPresenterDependencies
    )
    {
        self.entities = entities
        self.view = view
        self.dependencies = dependencies
    }
}

extension MainPresenter: ViewControllerOutputs {
    func viewDidLoad(interactor: MainInteractor) {
        interactor.getBuildingLocation(entities: entities)
    }
    
    func onMarkerPress() {
        <#code#>
    }
    
    func onButtonPress() {
        <#code#>
    }
    

}
