//
//  Creatix.swift
//  Creatix
//
//  Created by Alex Nagy on 31/03/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit

enum CreatixGame {
  case candyCrushSaga
  case clashOfClans
  case monumentValley
  case minecraft
  case doodleJump
  case homescapes
  case bubbleWitchSaga
  case bejeweledBlitz
  case lifeIsStrange
  case golfClash
  case pokemonGo
  case hayDay
  case candleman
  case umiro
  case cutTheRope
  case jetpackJoyRide
  case flappyBird
  case _2048
  case marvelStrikeForce
}

enum CreatixDatabase {
  case firebase
  case iCloud
  case parseServer
  case customServer
}

enum CreatixLogin {
  case firebase
  case iCloud
  case parseServer
  case customServer
}

enum CreatixPlayer {
  case single
  case multiplayer
  case mmo
}

class Creatix: UIViewController {
  
  var game: CreatixGame?
  var database: CreatixDatabase?
  var login: CreatixLogin?
  var player: CreatixPlayer?
  
  let label: UILabel = {
    let label = UILabel()
    label.font = UIFont.boldSystemFont(ofSize: 48)
    label.numberOfLines = 0
    label.text = "Happy\nApril Fools\nDay\n😁"
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .yellow
    
    view.addSubview(label)
    
    label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    label.shake(count: 50, for: 5, withTranslation: nil)
  }
}

extension UIView {
  
  func shake(count : Float? = nil,for duration : TimeInterval? = nil,withTranslation translation : Float? = nil) {
    let animation : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.y")
    animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
    
    animation.repeatCount = count ?? 2
    animation.duration = (duration ?? 0.5)/TimeInterval(animation.repeatCount)
    animation.autoreverses = true
    animation.byValue = translation ?? -5
    layer.add(animation, forKey: "shake")
  }
}
