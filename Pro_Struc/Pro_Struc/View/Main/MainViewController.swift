//
//  ViewController.swift
//  Pro_Struc
//
//  Created by Mohamed Rafat on 10/18/18.
//  Copyright © 2018 slz. All rights reserved.
//

import UIKit

protocol A {
    func play()
}

class MainViewController: UIViewController{
    
    @IBOutlet weak var mainSceneLbl: UILabel!
    @IBOutlet weak var demoTblView: UITableView!
    
    
    var _presenter: MainPresenter?
    var data = ["Cell 1", "Cell 2", "Cell 1", "Cell 2", "Cell 1", "Cell 2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _presenter = MainPresenter(viewController: self)
        
        _presenter?.GetItemsFromAPI()
        _presenter?.setItem(item: Item())
        
        // table
        demoTblView.delegate = self
        demoTblView.dataSource = self
    }
    
    func setMainLblTxt(Txt: String) {
        mainSceneLbl.text = Txt
    }
}

extension MainViewController: A {
    func play() {
        print("Playing")
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "demoCellID", for: indexPath) as! DemoTableViewCell
        cell.setupCellConfig(txt: data[indexPath.row], indexPath: indexPath)
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
//        return 5
    }
}

extension MainViewController: DemoTableViewCellDelegate {
    func delete(indexPath: IndexPath) {
        print("Deleting")
        data.remove(at: indexPath.row)
        demoTblView.deleteRows(at: [indexPath], with: .fade)
    }
}

