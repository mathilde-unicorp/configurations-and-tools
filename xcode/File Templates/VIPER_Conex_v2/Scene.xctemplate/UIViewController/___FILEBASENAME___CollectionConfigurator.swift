//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

final class ___VARIABLE_sceneName___CollectionConfigurator: TemplateCollectionConfigurator {
    override func createCellHandler(_ collectionView: UICollectionView, _ indexPath: IndexPath, _ item: TemplateCollection.Cell) -> UICollectionViewCell? {

        /// complete with cells to dequeue here
        switch item {
            default:
                assertionFailure("not handled \(item)")
                return nil
        }
    }

    override func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { [weak self] index, _ in
            guard let self = self else { return nil }

            guard let modelSection = self.section(for: index) else { return nil }

            /// complete with  sections
            switch modelSection {
                default: return nil
            }
        }
        return layout
    }
}
