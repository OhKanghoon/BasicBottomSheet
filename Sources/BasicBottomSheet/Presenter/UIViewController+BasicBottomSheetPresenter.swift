//
//  UIViewController+BasicBottomSheetPresenter.swift
//
//
//  Created by Kanghoon Oh on 8/1/24.
//

import UIKit

extension UIViewController: BasicBottomSheetPresenter {

  /// A flag that returns true if the topmost view controller in the navigation stack
  /// was presented using the custom BasicBottomSheet transition.
  ///
  /// - Warning: ⚠️ Calling `transitioningDelegate` in this function may cause a memory leak. ⚠️
  ///
  /// In most cases, this check will be used early in the view lifecycle and unfortunately,
  /// there's a potential issue that causes a memory leak if the `transitioningDelegate` is
  /// referenced here and called too early, resulting in a strong reference to this view controller.
  public var isBasicBottomSheetPresented: Bool {
    (transitioningDelegate as? BasicBottomSheetPresentationDelegate) != nil
  }

  /// Configures a view controller for presentation using the BasicBottomSheet transition.
  ///
  /// - Parameters:
  ///   - viewControllerToPresent: The view controller to be presented.
  ///   - completion: The block to execute after the presentation finishes. You may specify nil for this parameter.
  ///
  /// The function sets the modal presentation style and related properties for the specified view controller
  /// to achieve a BasicBottomSheet presentation. It also assigns the appropriate transitioning delegate
  /// for the presentation style.
  public func presentBasicBottomSheet(
    _ viewControllerToPresent: BasicBottomSheet,
    completion: (() -> Void)? = nil
  ) {
    viewControllerToPresent.modalPresentationStyle = .custom
    viewControllerToPresent.modalPresentationCapturesStatusBarAppearance = true
    viewControllerToPresent.transitioningDelegate = BasicBottomSheetPresentationDelegate.default

    present(viewControllerToPresent, animated: true, completion: completion)
  }
}
