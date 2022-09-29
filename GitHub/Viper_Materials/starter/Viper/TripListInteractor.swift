import SwiftUI
import Combine

class TripListInteractor {
  let model: DataModel

  init (model: DataModel) {
    self.model = model  
  }
}

class TripListPresenter: ObservableObject {
  @Published var trips: [Trip] = []
  private var cancelables =  Set < AnyCancellable >()
  private let interactor: TripListInteractor

  init(interactor: TripListInteractor) {
    self.interactor = interactor
    interactor.model.$trips
      .assign(to: \.trips, on: self)
      .store(in: &cancellables)
  }
}
