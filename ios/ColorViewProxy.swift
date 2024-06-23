import React
import SwiftUI

class ColorDataStore: ObservableObject {
  @Published var color: Color = .red
  @Published var width: CGFloat = 100.0
  @Published var height: CGFloat = 100.0
}

class ColorViewProxy: UIView {
  var returningView: UIView?
  let dataStore: ColorDataStore = .init()

  override init(frame: CGRect) {
    super.init(frame: frame)
    let vc = UIHostingController(rootView: ColorView().environmentObject(dataStore))
    vc.view.frame = bounds
    addSubview(vc.view)

    self.returningView = vc.view
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc var color: UIColor = .red {
    didSet {
      dataStore.color = Color(uiColor: color)
    }
  }

  @objc var width: CGFloat = 100.0 {
    didSet {
      dataStore.width = width
    }
  }

  @objc var height: CGFloat = 100.0 {
    didSet {
      dataStore.height = height
    }
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    returningView?.frame = bounds
  }
}

extension Color {
  init(uiColor: UIColor) {
    let components = uiColor.cgColor.components ?? [0, 0, 0, 1]
    let red = Double(components[0])
    let green = Double(components[1])
    let blue = Double(components[2])
    let alpha = Double(components[3])

    self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
  }
}

extension UIColor {
  var redValue: CGFloat {
    return CIColor(color: self).red
  }

  var greenValue: CGFloat {
    return CIColor(color: self).green
  }

  var blueValue: CGFloat {
    return CIColor(color: self).blue
  }

  var alphaValue: CGFloat {
    return CIColor(color: self).alpha
  }
}
