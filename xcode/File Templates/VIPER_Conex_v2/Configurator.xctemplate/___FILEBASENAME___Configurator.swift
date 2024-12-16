//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

final class ___VARIABLE_sceneName___Configurator {

    @discardableResult
    static func configure() -> ___VARIABLE_sceneName___ViewController {

        let viewController = ___VARIABLE_sceneName___ViewController()
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        let configurator = ___VARIABLE_sceneName___CollectionConfigurator()

        viewController.interactor = interactor
        viewController.router = router
        viewController.configurator = configurator

        configurator.viewController = viewController

        interactor.presenter = presenter

        presenter.viewController = viewController

        router.viewController = viewController
        router.dataStore = interactor

        return viewController
    }
}
