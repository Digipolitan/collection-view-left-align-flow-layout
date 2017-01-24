//
//  HeaderReusableView.swift
//  DGGridCollectionViewControllerSample-iOS
//
//  Created by Julien Sarazin on 02/01/2017.
//  Copyright © 2017 Digipolitan. All rights reserved.
//

import UIKit

class ReusableView: UICollectionReusableView {
	@IBOutlet weak var textLabel: UILabel!

	static let Identifier = "ReusableViewIdentifier"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
