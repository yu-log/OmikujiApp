//
//  ResultViewController.swift
//  OmikujiApp
//
//  Created by Yuu on 2023/03/18.
//

import UIKit
 
class ResultViewController: UIViewController {
    
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var resultImage: UIImageView!
    
    private let omikujiText: [String] = [
        "大吉",
        "中吉",
        "小吉",
        "吉",
        "末吉",
        "凶",
        "大凶"
    ]
    
    private let omikujiImage: [String] = [
        "daikichi",
        "chuukichi",
        "syoukichi",
        "kichi",
        "suekichi",
        "kyou",
        "daikyou"
    ]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        setOmikujiResult()
    }
    
    @IBAction private func backButtonAction() {
        dismiss(animated: true)
    }
    
    @IBAction private func againButtonAction() {
        setOmikujiResult()
    }
    
    
    private func setOmikujiResult() {
        let randomInt = Int.random(in: 0..<7)
        resultLabel.text = String(omikujiText[randomInt])
        resultImage.image = UIImage(named: omikujiImage[randomInt])
    }
}
