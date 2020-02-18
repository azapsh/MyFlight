//
//  MFLaunchModulePresenter.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 16/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation

protocol LaunchModuleViewProtocol: class {

}

protocol LaunchModuleViewPresenter: class {
    init(with view: LaunchModuleViewProtocol, router: LaunchModuleRouter)
    func start()
}

final class LaunchModulePresenter: LaunchModuleViewPresenter {

    // MARK: Constants

    // MARK: Properties

    weak var view: LaunchModuleViewProtocol?
    var router: LaunchModuleRouter!

    init(with view: LaunchModuleViewProtocol, router: LaunchModuleRouter) {
        self.view = view
        self.router = router
    }
    
    // MARK: Methods
    func start() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let savedSettings = UserDefaultsWrapper.getBool(key: "savedSettings")
            if savedSettings {
                self.router?.showAirportsMudule()
            } else {
                self.router?.showAirportsMudule()
            }
        }
    }
}
