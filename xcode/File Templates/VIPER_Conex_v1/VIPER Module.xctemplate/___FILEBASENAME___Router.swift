//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

final class ___VARIABLE_sceneName___Router {
    static func createModule(
        worker: ___VARIABLE_sceneName___WorkerProtocol = ___VARIABLE_sceneName___Worker()
    ) -> ___VARIABLE_sceneName___ {
        let interactor = ___VARIABLE_sceneName___Interactor(worker: worker)
        let presenter = ___VARIABLE_sceneName___Presenter(interactor: interactor)
        return ___VARIABLE_sceneName___(presenter: presenter)
    }
}
