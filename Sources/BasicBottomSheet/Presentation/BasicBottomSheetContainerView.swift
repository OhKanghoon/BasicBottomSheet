//
//  BasicBottomSheetContainerView.swift
//
//
//  Created by Kanghoon Oh on 8/1/24.
//

import UIKit

final class BasicBottomSheetContainerView: UIView {

  init(presentedView: UIView, frame: CGRect) {
    super.init(frame: frame)
    addSubview(presentedView)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
