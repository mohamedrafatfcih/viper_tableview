//
//  ViperTestInteractor.swift
//  Demo
//
//  Created by MohamedRafat on 10/18/2018.
//  Copyright © 2018 slz. All rights reserved.
//

import Foundation

class ViperTestInteractor: ViperTestInteractorInputProtocol, ViperTestLocalDataManagerOutputProtocol, ViperTestAPIDataManagerOutputProtocol {

    weak var presenter: ViperTestInteractorOutputProtocol?
    var APIDataManager: ViperTestAPIDataManagerInputProtocol?
    var localDatamanager: ViperTestLocalDataManagerInputProtocol?

    init() {}
}
