//
//  MainRouter.swift
//  SUUMO App Demo
//
//  Created by Hikaru Shing on 2022/09/27.
//

import Foundation
import UIKit

struct MainRouterInput {

    private func view(entryEntity: MainEntryEntity) -> ViewController {
        let view = ViewController()
        let interactor = MainInteractor()
        let dependencies = MainPresenterDependencies(interactor: interactor, router: MainRouterOutput(view))
        // TODO: Next do
        let presenter = MainPresenter(entities: MainEntities(entryEntity: <#T##MainEntryEntity#>, locationDataState: <#T##String#>, locationAPI: entryEnt, vc: <#T##ViewController!#>, interactor: <#T##MainInteractor#>, view: <#T##ViewControllerInputs!#>, dependencies: <#T##MainPresenterDependencies#>)
        view.presenter = presenter
//        view.tableViewDataSource = MainTableViewDataSource(entities: presenter.entities, presenter: presenter)
        // interactor.presenter = MainInteractorOutputs
        interactor.presenter = presenter
        return view
    }
    // Screen transition using UIViewController
    func push(from: Viewable, entryEntity: MainEntryEntity) {
      // self.view = private func view()
        let view = self.view(entryEntity: entryEntity)
        from.push(view, animated: true)
    }
    // Screen transition using UINavigationController
    func present(from: Viewable, entryEntity: MainEntryEntity) {
        let nav = UINavigationController(rootViewController: view(entryEntity: entryEntity))
        from.present(nav, animated: true)
    }
}

final class MainRouterOutput: Routerable {

    private(set) weak var view: Viewable!

    init(_ view: Viewable) {
        self.view = view
    }
}
