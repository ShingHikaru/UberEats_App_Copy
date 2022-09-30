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
    func viewDidLoad()
    func onMarkerPress()
    func onButtonPress()
}


final class ViewController: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate {
    
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
    
    @IBAction func onPress(_ sender: Any) {
        presenter?.onButtonPress()
  }
}

// TODO: do something
//extension ViewController: ViewControllerInputs {
//
//    func setMarkerLocation(entities: MainEntities) {
//        entities.locationDataState =
//    }
//
//
//}

extension ViewController: Viewable {}

