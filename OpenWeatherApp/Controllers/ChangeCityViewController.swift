//
//  ChangeCityViewController.swift
//  OpenWeatherApp
//
//  Created by liene.krista.neimane on 19/05/2023.
//

import UIKit

protocol ChangeCityDelegate {
    func userEnterCityName(city: String)
}

class ChangeCityViewController: UIViewController {

    var delegate: ChangeCityDelegate?
    @IBOutlet weak var cityTextField: DesignableTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func getWeatherTapped(_ sender: Any) {
        
        guard let cityName = cityTextField.text, !cityName.isEmpty else {
            // Homework, there is alert if text field is empty
            let alertController = UIAlertController(title: "Empty Field", message: "Please enter a city name", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            
            self.present(alertController, animated: true, completion: nil)
            return
        }

        delegate?.userEnterCityName(city: cityName)
        self.dismiss(animated: true)
        
    }
    

}
