//
//  DGCollectionViewLeftAlignFlowLayout.swift
//  DGCollectionViewLeftAlignFlowLayout
//
//  Created by Julien Sarazin on 23/01/2017.
//  Copyright © 2017 Digipolitan. All rights reserved.
//

import UIKit

public class DGCollectionViewLeftAlignFlowLayout: UICollectionViewFlowLayout {

	override public func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
		guard let attributesCollection = super.layoutAttributesForElements(in: rect) else {
			return nil
		}

		var updatedAttributes = [UICollectionViewLayoutAttributes]()
		attributesCollection.forEach({ (originalAttributes) in
			guard originalAttributes.representedElementKind == nil else {
				updatedAttributes.append(originalAttributes)
				return
			}

			if let updatedAttribute = self.layoutAttributesForItem(at: originalAttributes.indexPath) {
				updatedAttributes.append(updatedAttribute)
			}
		})

		return updatedAttributes
	}

	override public func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
		guard let attributes = super.layoutAttributesForItem(at: indexPath)?.copy() as? UICollectionViewLayoutAttributes else {
			return nil
		}

		let firstInSection: Bool = indexPath.item == 0
		guard !firstInSection else {
			return attributes
		}

		let previousAttributes = self.layoutAttributesForItem(at: IndexPath(item: indexPath.item - 1, section: indexPath.section))
		let previousFrame: CGRect = previousAttributes?.frame ?? CGRect()
		let firstInRow = previousFrame.origin.y != attributes.frame.origin.y

		guard !firstInRow else {
			return attributes
		}

		guard let collectionView = self.collectionView else {
			return attributes
		}

		let interItemSpacing: CGFloat = (collectionView.delegate as? UICollectionViewDelegateFlowLayout)?
			.collectionView?(collectionView, layout: self, minimumInteritemSpacingForSectionAt: indexPath.section) ?? self.minimumInteritemSpacing

		let x = previousFrame.origin.x + previousFrame.width + interItemSpacing
		attributes.frame = CGRect(x: x,
		                          y: attributes.frame.origin.y,
		                          width: attributes.frame.width,
		                          height: attributes.frame.height)

		return attributes
	}
}
