//
//  ViperTestPresenter.swift
//  Demo
//
//  Created by MohamedRafat on 10/18/2018.
//  Copyright © 2018 slz. All rights reserved.
//

import Foundation

class ViperTestPresenter: ViperTestPresenterProtocol, ViperTestInteractorOutputProtocol {
    weak var view: ViperTestViewProtocol?
    var interactor: ViperTestInteractorInputProtocol?
    var wireFrame: ViperTestWireFrameProtocol?

    init() {}
}
