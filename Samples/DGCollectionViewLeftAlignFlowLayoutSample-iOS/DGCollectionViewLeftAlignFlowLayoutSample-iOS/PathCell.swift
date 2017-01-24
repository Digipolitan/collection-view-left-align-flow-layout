//
//  PathCell.swift
//  DGGridCollectionViewControllerSample-iOS
//
//  Created by Julien Sarazin on 03/01/2017.
//  Copyright © 2017 Digipolitan. All rights reserved.
//

import UIKit

private let kReuseIdentifier = "ReuseIdentifier"

class PathCell: UICollectionViewCell {
	@IBOutlet private weak var textLabrel: UILabel!

	override var bounds: CGRect {
		didSet {
			contentView.frame = bounds
		}
	}

	fileprivate var indexPath: IndexPath?
	fileprivate var numberOfSection: Int = 0
	fileprivate var numberOfRow: Int = 0

	@IBOutlet weak var widthConstraint: NSLayoutConstraint!
	static let Identifier: String = "PathCellReuseIdentifier"

	func set(indexPath: IndexPath) {
		self.numberOfSection = indexPath.section
		self.numberOfRow = indexPath.row
		self.indexPath = indexPath

		self.textLabrel.text = "[\(indexPath.section), \(indexPath.item)]"
	}

	func estimatedHeight(estimatedWidth: CGFloat) -> CGFloat {
		return 100
	}
}

extension PathCell : UICollectionViewDataSource {
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return (self.numberOfSection + 1) * self.numberOfRow
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: kReuseIdentifier, for: indexPath)
		cell.backgroundColor = (indexPath.section % 2 == 0) ? .blue : .yellow
		return cell
	}
}

extension PathCell: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 50, height: 50)
	}
}
