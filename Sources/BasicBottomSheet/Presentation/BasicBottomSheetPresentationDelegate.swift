//
//  BasicBottomSheetPresentationDelegate.swift
//  
//
//  Created by Kanghoon Oh on 8/1/24.
//

import UIKit

public final class BasicBottomSheetPresentationDelegate: NSObject {

  public static var `default` = BasicBottomSheetPresentationDelegate()
}


// MARK: - UIViewControllerTransitioningDelegate

extension BasicBottomSheetPresentationDelegate: UIViewControllerTransitioningDelegate {

  public func animationController(
    forPresented presented: UIViewController,
    presenting: UIViewController,
    source: UIViewController
  ) -> UIViewControllerAnimatedTransitioning? {
    BasicBottomSheetPresentationAnimator(transitionDirection: .present)
  }

  public func animationController(
    forDismissed dismissed: UIViewController
  ) -> UIViewControllerAnimatedTransitioning? {
    BasicBottomSheetPresentationAnimator(transitionDirection: .dismiss)
  }

  public func presentationController(
    forPresented presented: UIViewController,
    presenting: UIViewController?,
    source: UIViewController
  ) -> UIPresentationController? {
    let controller = BasicBottomSheetPresentationController(
      presentedViewController: presented,
      presenting: presenting
    )
    controller.delegate = self
    return controller
  }
}


// MARK: - UIAdaptivePresentationControllerDelegate

extension BasicBottomSheetPresentationDelegate: UIAdaptivePresentationControllerDelegate {

  public func adaptivePresentationStyle(
    for controller: UIPresentationController,
    traitCollection: UITraitCollection
  ) -> UIModalPresentationStyle {
    .none
  }
}
