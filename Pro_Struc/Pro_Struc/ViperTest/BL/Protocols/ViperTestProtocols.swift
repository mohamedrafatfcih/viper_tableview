//
//  ViperTestProtocols.swift
//  Demo
//
//  Created by MohamedRafat on 10/18/2018.
//  Copyright © 2018 slz. All rights reserved.
//

import Foundation

protocol ViperTestViewProtocol: class {
    var presenter: ViperTestPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol ViperTestWireFrameProtocol: class {
    static func presentViperTestModule(sentData data: [String: Any])-> ViperTestViewController
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol ViperTestPresenterProtocol: class {
    var view: ViperTestViewProtocol? { get set }
    var interactor: ViperTestInteractorInputProtocol? { get set }
    var wireFrame: ViperTestWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol ViperTestInteractorOutputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol ViperTestInteractorInputProtocol: class
{
    var presenter: ViperTestInteractorOutputProtocol? { get set }
    var APIDataManager: ViperTestAPIDataManagerInputProtocol? { get set }
    var localDatamanager: ViperTestLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol ViperTestDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol ViperTestAPIDataManagerInputProtocol: class
{
    var interactor: ViperTestAPIDataManagerOutputProtocol? { get set }
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol ViperTestAPIDataManagerOutputProtocol: class
{
    /**
     * Add here your methods for communication APIDATAMANAGER -> INTERACTOR
     */
}

protocol ViperTestLocalDataManagerInputProtocol: class
{
    var interactor: ViperTestLocalDataManagerOutputProtocol? { get set }
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}

protocol ViperTestLocalDataManagerOutputProtocol: class
{
    /**
     * Add here your methods for communication LOCALDATAMANAGER -> INTERACTOR
     */
}
