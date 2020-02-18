//
//  MFNewAirportModulePresenter.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 16/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation

protocol NewAirportModuleViewProtocol: class {

}

protocol NewAirportModuleViewPresenter: class {
    init(with view: NewAirportModuleViewProtocol, router: NewAirportModuleRouter)
}

final class NewAirportModulePresenter: NewAirportModuleViewPresenter {

    // MARK: Constants

    // MARK: Properties

    weak var view: NewAirportModuleViewProtocol?
    var router: NewAirportModuleRouter!

    init(with view: NewAirportModuleViewProtocol, router: NewAirportModuleRouter) {
        self.view = view
        self.router = router
    }
    
    // MARK: Methods
    
}
