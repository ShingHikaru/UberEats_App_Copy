////
////  MainRouter.swift
////  SUUMO App Demo
////
////  Created by Hikaru Shing on 2022/09/27.
////
//
//import Foundation
//
//struct MainRouterInput {
//
//    private func view(entryEntity: MainEntryEntity) -> MainViewController {
//        let view = MainViewController()
//        // API Connection
//        let interactor = MainInteractor()
//        // typealias
//        // Dependencies of R, P, and I(R "-" P "-" I)
//        let dependencies = MainPresenterDependencies(interactor: interactor, router: MainRouterOutput(view))
//        let presenter = MainPresenter(entities: MainEntities(entryEntity: entryEntity), view: view, dependencies: dependencies)
//        //  Assign MainPresenter to presenter variable in MainViewController
//        view.presenter = presenter
//        view.tableViewDataSource = MainTableViewDataSource(entities: presenter.entities, presenter: presenter)
//        // interactor.presenter = MainInteractorOutputs
//        interactor.presenter = presenter
//        return view
//    }
//    // Screen transition using UIViewController
//    func push(from: Viewable, entryEntity: MainEntryEntity) {
//      // self.view = private func view()
//        let view = self.view(entryEntity: entryEntity)
//        from.push(view, animated: true)
//    }
//    // Screen transition using UINavigationController
//    func present(from: Viewable, entryEntity: MainEntryEntity) {
//        let nav = UINavigationController(rootViewController: view(entryEntity: entryEntity))
//        from.present(nav, animated: true)
//    }
//}
//
//final class MainRouterOutput: Routerable {
//
//    private(set) weak var view: Viewable!
//
//    init(_ view: Viewable) {
//        self.view = view
//    }
//
//    func transitionDetail(gitHubRepository: GitHubRepository) {
//        DetailRouterInput().push(from: view, entryEntity: DetailEntryEntity(gitHubRepository: gitHubRepository))
//    }
//}
