//
//  BasicBottomSheetPresentable+Default.swift
//
//
//  Created by Kanghoon Oh on 8/1/24.
//

import UIKit

extension BasicBottomSheetPresentable where Self: UIViewController {

  public var bottomSheetTopInset: CGFloat {
    safeAreaInsets.top + 42.0
  }

  public var bottomSheetHeight: CGFloat {
    guard let scrollView = bottomSheetScrollable else { return 100 }
    scrollView.layoutIfNeeded()
    return scrollView.contentSize.height
  }

  public var bottomSheetCornerRadius: CGFloat {
    20
  }

  public var bottomSheetDimColor: UIColor {
    UIColor.black.withAlphaComponent(0.5)
  }

  public var bottomSheetHandleColor: UIColor {
    UIColor(lightHex: "#EAEBEE", darkHex: "#34373D")
  }

  public var allowsDragToDismiss: Bool { true }

  public var allowsTapToDismiss: Bool { true }

  public func shouldRespond(to panGestureRecognizer: UIPanGestureRecognizer) -> Bool {
    true
  }

  public func willRespond(to panGestureRecognizer: UIPanGestureRecognizer) {}

  public func shouldPrioritize(panGestureRecognizer: UIPanGestureRecognizer) -> Bool {
    false
  }

  public func bottomSheetWillDismiss() {}

  public func bottomSheetDidDismiss() {}
}


// MARK: - Private

extension BasicBottomSheetPresentable {

  var safeAreaInsets: UIEdgeInsets {
    guard let rootViewController else { return .zero }
    return rootViewController.view.safeAreaInsets
  }

  private var keyWindow: UIWindow? {
    if #available(iOS 15.0, *) {
      return UIApplication.shared.connectedScenes
        .compactMap { ($0 as? UIWindowScene)?.keyWindow }
        .first
    } else {
      return UIApplication.shared.windows.first { $0.isKeyWindow }
    }
  }

  private var rootViewController: UIViewController? {
    keyWindow?.rootViewController
  }
}
