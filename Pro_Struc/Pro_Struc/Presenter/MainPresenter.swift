//
//  MainPresenter.swift
//  Pro_Struc
//
//  Created by Mohamed Rafat on 10/18/18.
//  Copyright © 2018 slz. All rights reserved.
//

import Foundation


class MainPresenter {
    
   weak var _viewControllerDelegate: MainViewController?
    var _item: Item?
    
    init(viewController: MainViewController){
       _viewControllerDelegate = viewController
    }
    
    func setItem(item: Item) {
        self._item = item
    }
    
    func getItem()-> Item?{
        return self._item
    }
    
    func GetItemsFromAPI(){
        ///
    }
    
    func getMainLbl(){
        // 1- get from DB
        //2 -  set txt to lbl
        _viewControllerDelegate?.setMainLblTxt(Txt: "")
    }
    
    
}
