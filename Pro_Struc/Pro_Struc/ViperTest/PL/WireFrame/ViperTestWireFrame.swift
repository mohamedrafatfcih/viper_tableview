//
//  ViperTestWireFrame.swift
//  Demo
//
//  Created by MohamedRafat on 10/18/2018.
//  Copyright © 2018 slz. All rights reserved.
//

import Foundation

class ViperTestWireFrame: ViperTestWireFrameProtocol {

    class func presentViperTestModule(sentData data: [String: Any]) -> ViperTestViewController {

        let view: ViperTestViewController = ViperTestViewController()
        let presenter: ViperTestPresenterProtocol & ViperTestInteractorOutputProtocol = ViperTestPresenter()
        let interactor: ViperTestInteractorInputProtocol & ViperTestLocalDataManagerOutputProtocol & ViperTestAPIDataManagerOutputProtocol = ViperTestInteractor()
        let APIDataManager: ViperTestAPIDataManagerInputProtocol = ViperTestAPIDataManager()
        let localDataManager: ViperTestLocalDataManagerInputProtocol = ViperTestLocalDataManager()
        let wireFrame: ViperTestWireFrameProtocol = ViperTestWireFrame()

        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        APIDataManager.interactor = interactor
        localDataManager.interactor = interactor
        
        return view
    }
}
