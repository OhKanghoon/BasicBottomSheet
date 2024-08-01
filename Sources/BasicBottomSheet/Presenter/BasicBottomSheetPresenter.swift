//
//  BasicBottomSheetPresenter.swift
//  
//
//  Created by Kanghoon Oh on 8/1/24.
//

import UIKit

/// Protocol for presenting a Basic bottom sheet.
protocol BasicBottomSheetPresenter: AnyObject {

  /// A boolean property indicating whether a Basic bottom sheet is currently presented.
  var isBasicBottomSheetPresented: Bool { get }

  /// Presents a Basic bottom sheet.
  ///
  /// - Parameters:
  ///   - viewControllerToPresent: The BasicBottomSheet view controller to present.
  ///   - completion: A closure to be executed after the presentation is complete.
  func presentBasicBottomSheet(
    _ viewControllerToPresent: BasicBottomSheet,
    completion: (() -> Void)?
  )
}
