//
//  ViewController.swift
//  Counter
//
//  Created by Алена Апарина on 27.07.2025.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var historyList: UITextView!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var counterTitleLabel: UILabel!
    @IBOutlet var headerTitleLabel: UILabel!
    private var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonMainDidTap(_ sender: Any) {
        counter += 1
        counterTitleLabel.text = "\(counter)"
    }

    @IBAction func buttonPlusDidTap(_ sender: Any) {
        counter += 1
        counterTitleLabel.text = "\(counter)"
        historyList.text += "\(date()):\("\nзначение изменено на +1\n")"
    }

    @IBAction func buttonMinusDidTap(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            historyList.text += "\(date()):\("\nзначение изменено на -1\n")"
        } else {
            counter = 0
            historyList.text += "\(date()):\("\nпопытка уменьшить значение счётчика ниже 0\n")"
        }
        counterTitleLabel.text = "\(counter)"
    }
    
    @IBAction func buttonResetDidTap(_ sender: Any) {
        counter = 0
        counterTitleLabel.text = "\(counter)"
        historyList.text += "\(date()):\("\nзначение сброшено\n")"
    }
    
    func date() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDateString = dateFormatter.string(from: Date())
        return currentDateString
    }
}
