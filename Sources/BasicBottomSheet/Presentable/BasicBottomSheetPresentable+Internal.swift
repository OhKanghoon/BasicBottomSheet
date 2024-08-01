//
//  BasicBottomSheetPresentable+Internal.swift
//
//
//  Created by Kanghoon Oh on 8/1/24.
//

import UIKit

extension BasicBottomSheetPresentable where Self: UIViewController {

  var bottomSheetPresentationController: BasicBottomSheetPresentationController? {
    presentationController as? BasicBottomSheetPresentationController
  }

  var topYPosition: CGFloat {
    max(topMargin(from: containerViewHeight), 0) + bottomSheetTopInset
  }

  private var containerViewHeight: CGFloat {
    bottomSheetHeight
      + BasicBottomSheetHandleMetric.verticalMargin * 2
      + BasicBottomSheetHandleMetric.size.height
  }

  private var bottomYPosition: CGFloat {
    guard let containerView = bottomSheetPresentationController?.containerView
    else { return view.bounds.height }

    return containerView.bounds.size.height - bottomSheetTopInset
  }

  private func topMargin(from height: CGFloat) -> CGFloat {
    bottomYPosition - height
  }
}
