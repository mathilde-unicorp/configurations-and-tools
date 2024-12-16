//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

final class ___VARIABLE_sceneName___Configurator {

    @discardableResult
    static func configure(
        _ vc: ___VARIABLE_sceneName___ViewController
    ) -> ___VARIABLE_sceneName___ViewController {

        let viewController = vc
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        viewController.interactor = interactor
        viewController.router = router

        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor

        return viewController
    }
}
