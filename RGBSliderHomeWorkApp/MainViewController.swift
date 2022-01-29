//
//  ViewController.swift
//  RGBSliderHomeWorkApp
//
//  Created by Алекс Мерсер on 29.01.2022.
//

import UIKit

protocol SettingViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.delegate = self
        settingVC.viewColor = view.backgroundColor
    }
}

extension MainViewController: SettingViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

