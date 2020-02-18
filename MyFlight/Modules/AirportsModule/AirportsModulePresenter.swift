//
//  MFAirportsModulePresenter.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 04/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation

protocol AirportsModuleViewProtocol: class {
    
}

protocol AirportsModuleViewPresenter: class {
    init(with view: AirportsModuleViewProtocol, router: AirportsModuleRouter)
    func showNewAirportView()
}

final class AirportsModulePresenter: AirportsModuleViewPresenter {

    

    // MARK: Constants

    // MARK: Properties

    weak var view: AirportsModuleViewProtocol?
    var router: AirportsModuleRouter?

    init(with view: AirportsModuleViewProtocol, router: AirportsModuleRouter) {
        self.view = view
        self.router = router
    }
    
    // MARK: Methods
    func showNewAirportView() {
        self.router?.showNewAirport()
    }
}
