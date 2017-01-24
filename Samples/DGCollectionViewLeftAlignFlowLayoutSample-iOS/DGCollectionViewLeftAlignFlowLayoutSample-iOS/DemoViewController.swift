//
//  ViewController.swift
//  DGCollectionViewLeftAlignFlowLayoutSample-iOS
//
//  Created by Benoit BRIATTE on 23/12/2016.
//  Copyright © 2016 Digipolitan. All rights reserved.
//

import UIKit
import DGCollectionViewLeftAlignFlowLayout

class DemoViewController: UIViewController {
	@IBOutlet weak var collectionView: UICollectionView!

	override func viewDidLoad() {
		super.viewDidLoad()

		self.collectionView.register(UINib(nibName: String(describing: PathCell.self), bundle: Bundle.main),
		                             forCellWithReuseIdentifier: PathCell.Identifier)
		self.collectionView.register(UINib(nibName: String(describing: ReusableView.self), bundle: Bundle.main),
		                             forSupplementaryViewOfKind: UICollectionElementKindSectionHeader,
		                             withReuseIdentifier: ReusableView.Identifier)
		self.collectionView.delegate = self
		self.collectionView.dataSource = self
	}
}

extension DemoViewController: UICollectionViewDataSource {
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 2
	}

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 10
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let cell: PathCell = collectionView.dequeueReusableCell(withReuseIdentifier: PathCell.Identifier, for: indexPath) as? PathCell else {
			fatalError("Cannot dequeue cell with identifier \(PathCell.Identifier)")
		}

		cell.set(indexPath: indexPath)
		return cell
	}

	func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		guard let view: ReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader,
		                                                                               withReuseIdentifier: ReusableView.Identifier,
		                                                                               for: indexPath) as? ReusableView else {

																						fatalError("Cannot dequeue reusable view with identigier: \(ReusableView.Identifier)")
		}

		return view
	}
}

extension DemoViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		let width: Int = (indexPath.item > 3 && indexPath.item % 2 == 0) ? 150 : 60
		return CGSize(width: width, height: 100)
	}

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		return CGSize(width: self.view.bounds.width, height: 44)
	}
}
