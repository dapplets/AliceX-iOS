//
//  NetworkTableViewCell.swift
//  AliceX
//
//  Created by lmcmz on 4/7/19.
//  Copyright © 2019 lmcmz. All rights reserved.
//

import UIKit

class NetworkTableViewCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var selectLabel: UILabel!
    @IBOutlet var colorView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        selectLabel.isHidden = !selected
    }

    func configure(network: String) {
//        if network.lowercased() == Web3Net.currentNetwork.rawValue {
//            selectLabel.isHidden = false
//            isSelected = true
//        }
        colorView.backgroundColor = Web3NetEnum(rawValue: network.lowercased())?.color
        nameLabel.text = network
    }

//    @IBAction func cellClicked() {
//        let netName = nameLabel.text?.lowercased()
//        Web3Net.upodateNetworkSelection(type: Web3NetEnum(rawValue: netName!)!)
//    }
}
