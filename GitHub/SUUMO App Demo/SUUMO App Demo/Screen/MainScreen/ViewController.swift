//
//  ViewController.swift
//  SUUMO App Demo
//
//  Created by Hikaru Shing on 2022/09/20.
//

import UIKit
import MapKit
import CoreLocation

protocol ViewControllerInputs: AnyObject {
    func setMarkerLocation(entities: MainEntities)
}

protocol ViewControllerOutputs: AnyObject {
    func viewDidLoad(interactor: MainInteractor)
    func onMarkerPress()
    func onButtonPress()
}


class ViewController: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate {
    // ViewControllerOutputs is implemented in the Presenter class
    internal var presenter: ViewControllerOutputs?
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var navigationButton: UIButton!
    
    func configure(entities: MainEntities) {
//        navigationItem.title = "\(entities.entryEntity.language) Repositories"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        
    }
    var locationManager: CLLocationManager!
// TODO: Button below the map (After writing some code "MainRouter")
//  @IBAction func onPress(_ sender: Any) {
//    MapRouterInput().push(from: self, entryEntity: MapEntryEntity(language: "Swift"))
//  }
}

extension ViewController: ViewControllerInputs {
    func setPinUsingMKPlacemark(location: CLLocationCoordinate2D) {
       let pin = MKPlacemark(coordinate: location)
       let coordinateRegion = MKCoordinateRegion(center: pin.coordinate, latitudinalMeters: 800, longitudinalMeters: 800)
       mapView.setRegion(coordinateRegion, animated: true)
       mapView.addAnnotation(pin)
    }
    func setMarkerLocation(entities: MainEntities) {
        entities.locationDataState =
    }
    

}

extension ViewController: Viewable {}

