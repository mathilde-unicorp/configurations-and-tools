//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

final class ___VARIABLE_sceneName___Interactor: NSObject {

    private var worker: ___VARIABLE_sceneName___WorkerProtocol

    init(worker: ___VARIABLE_sceneName___WorkerProtocol) {
      self.worker = worker
    }

    func doRequest() async throws -> [Result] {
        return try await self.worker.doRequest()
    }
}
