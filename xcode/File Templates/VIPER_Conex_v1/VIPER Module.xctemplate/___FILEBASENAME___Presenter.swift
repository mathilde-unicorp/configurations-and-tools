//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

final class ___VARIABLE_sceneName___Presenter: ObservableObject {

    // Properties used by the view to update its content
    @Published var resultOfRequest: [Result]
    @Published var shouldShowError: Bool = false
    @Puclished var requestState: RequestState = .notSend

    private var interactor: ___VARIABLE_sceneName___Interactor

    init(interactor: ___VARIABLE_sceneName___Interactor) {
        self.interactor = interactor
    }

    func doRequest() {
        Task { [weak self] in
            guard let self = self else { return }

            do {
                let result = try await interactor.doRequest()
                DispatchQueue.main.async {
                    self.resultOfRequest = result
                    self.requestState = .success
                }
            } catch {
              print("Got error during request: \(error)")
              DispatchQueue.main.async {
                  self.requestState = .error
              }
            }
        }

    }

}
