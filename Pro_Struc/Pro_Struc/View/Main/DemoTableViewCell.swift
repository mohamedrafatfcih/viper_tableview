//
//  DemoTableViewCell.swift
//  Pro_Struc
//
//  Created by Mohamed Rafat on 10/18/18.
//  Copyright © 2018 slz. All rights reserved.
//

import UIKit

protocol DemoTableViewCellDelegate: class{
    func delete(indexPath: IndexPath)
}

class DemoTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var cellLbl: UILabel!
    
    // Preperties
    var delegate: DemoTableViewCellDelegate?
    var index: IndexPath?
    
    // MARK: - Actions
    @IBAction func onDeletePressed(_ sender: UIButton) {
        delegate?.delete(indexPath: index!)
    }
    
    func setupCellConfig(txt: String, indexPath: IndexPath) {
        cellLbl.text = txt
        index = indexPath
    }
    
}
