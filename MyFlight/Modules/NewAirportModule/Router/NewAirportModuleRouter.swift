//
//  MFNewAirportModuleRouter.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 16/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation
import UIKit

protocol NewAirportModuleRouter: class {

}

final class NewAirportModuleRouterImplementation: NewAirportModuleRouter {
    
    // MARK: Properties
    weak var view: NewAirportModuleViewController?
    weak var presenter: NewAirportModulePresenter? 
    
    init(with viewController: NewAirportModuleViewController) {
        self.view = viewController
    }
    // MARK: Internal helpers

}

