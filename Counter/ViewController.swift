
import Foundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet private var historyList: UITextView!
    @IBOutlet private var resetButton: UIButton!
    @IBOutlet private var minusButton: UIButton!
    @IBOutlet private var plusButton: UIButton!
    @IBOutlet private var mainButton: UIButton!
    @IBOutlet private var counterTitleLabel: UILabel!
    @IBOutlet private var headerTitleLabel: UILabel!
    private var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func date() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDateString = dateFormatter.string(from: Date())
        return currentDateString
    }

    @IBAction private func buttonMainDidTap(_ sender: Any) {
        counter += 1
        counterTitleLabel.text = "\(counter)"
    }

    @IBAction private func buttonPlusDidTap(_ sender: Any) {
        counter += 1
        counterTitleLabel.text = "\(counter)"
        historyList.text += "\(date()):\("\nзначение изменено на +1\n")"
    }

    @IBAction private func buttonMinusDidTap(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            historyList.text += "\(date()):\("\nзначение изменено на -1\n")"
        } else {
            counter = 0
            historyList.text += "\(date()):\("\nпопытка уменьшить значение счётчика ниже 0\n")"
        }
        counterTitleLabel.text = "\(counter)"
    }

    @IBAction private func buttonResetDidTap(_ sender: Any) {
        counter = 0
        counterTitleLabel.text = "\(counter)"
        historyList.text += "\(date()):\("\nзначение сброшено\n")"
    }
}
