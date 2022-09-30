//
//  MainPresenter.swift
//  SUUMO App Demo

//  Created by Hikaru Shing on 2022/09/27.
//
//
import Foundation
import MapKit


typealias MainPresenterDependencies = (
    interactor: MainInteractor,
    router: MainRouterOutput
)

final class MainPresenter: Presenterable {
    
    internal var entities: MainEntities
    private var vc: ViewController!
    private var interactor: MainInteractor
    private weak var view: ViewControllerInputs!
    let dependencies: MainPresenterDependencies
    init(entities: MainEntities, vc: ViewController!, interactor: MainInteractor, view: ViewControllerInputs!, dependencies: MainPresenterDependencies) {
        self.entities = entities
        self.vc = vc
        self.interactor = interactor
        self.view = view
        self.dependencies = dependencies
    }
}

extension MainPresenter: ViewControllerOutputs {
    func viewDidLoad() {
        interactor.getBuildingLocation(entities: entities)
        // TODO: using .map & looping array each elements defined
        // TODO: change lat, lon to API return value
            let mkp1 = MKPointAnnotation()
            mkp1.coordinate = CLLocationCoordinate2D(latitude: 35.6816, longitude: 139.7677)
            vc.map.addAnnotation(mkp1)
            let mkp2 = MKPointAnnotation()
            mkp2.coordinate = CLLocationCoordinate2D(latitude: 35.6808, longitude: 139.7665)
            vc.map.addAnnotation(mkp2)
    }
    // TODO: do something
    func onMarkerPress() {
        return
    }
    // TODO: do next
    func onButtonPress() {
        
    }
    

}
