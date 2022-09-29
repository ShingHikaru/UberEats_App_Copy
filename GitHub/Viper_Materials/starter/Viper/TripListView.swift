import SwiftUI

struct TripListView: View {
  @ObservedObject var presenter: TripListPresenter
  
    var body: some View {
      List {
        ForEach (presenter.trips, id: \.id) { item in
          TripListCell(trip: item)
            .frame(height: 240)
        }
      }
    }
}

struct TripListView_Previews: PreviewProvider {
  let model = DataModel.sample
//  let interactor = TripListInteractor(model: model)
  let interactor = TripListInteractor(model: <#DataModel#>)
  let presenter = TripListPresenter(interactor: <#TripListInteractor#>)
  init() {
    self.interactor = TripListInteractor(model: model)
    self.presenter = TripListPresenter(interactor: interactor)
  }
  return TripListView(presenter: presenter)
  
    static var previews: some View {
        TripListView(presenter: presenter)
    }
}
