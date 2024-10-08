//
//  BasicBottomSheetPresentable+UIViewController.swift
//
//
//  Created by Kanghoon Oh on 8/1/24.
//

import UIKit

extension BasicBottomSheetPresentable where Self: UIViewController {

  /// Triggers layout changes for the bottom sheet presentation controller.
  ///
  /// This method can be called to initiate layout changes for the bottom sheet presentation controller.
  /// The `animated` parameter determines whether the layout updates should be performed with animation.
  ///
  /// - Parameter animated: A Boolean value indicating whether the layout changes should be performed with animation.
  public func bottomSheetPerformLayout(animated: Bool) {
    bottomSheetPresentationController?.performLayout(animated: animated)
  }
}
