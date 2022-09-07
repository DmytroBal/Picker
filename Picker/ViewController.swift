//
//  ViewController.swift
//  Picker
//
//  Created by Dmytro Bal on 07.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        self.view.addSubview(picker)
        // Subscribing on patterns
        picker.dataSource = self
        picker.delegate = self
    }

}

extension ViewController: UIPickerViewDataSource {
    
    // Number of componets to show
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Number of lines in one component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 8
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "Row = \(row + 1)"
        return result
    }
}
