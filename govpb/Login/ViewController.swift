//
//  ViewController.swift
//  govpb
//
//  Created by Sthashy Vieira on 16/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var loginTextFiel: UITextField!
    
    @IBOutlet weak var senhaTextFiel: UITextField!
    
    @IBOutlet weak var appendButtonConfirmar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configTextFiel(placeholderlogin: loginTextFiel, placeholderSenha: senhaTextFiel,nameButton: appendButtonConfirmar )
    }
    
    
    func configTextFiel(placeholderlogin: UITextField,placeholderSenha:UITextField, nameButton : UIButton){
        
        loginTextFiel.placeholder = "Digite seu email"
        senhaTextFiel.placeholder = "Digite sua senha"
        appendButtonConfirmar.setTitle("Confirmar", for: .normal)
        senhaTextFiel.isSecureTextEntry = true
        
        loginTextFiel.delegate = self
        senhaTextFiel.delegate = self
        
    }
    
    
    
    
    
    @IBAction func apppendButtonConfirmar(_ sender: UIButton) {
        
        let controller = UIStoryboard(name: String(describing: TabarViewController.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: TabarViewController.self)) as?
        TabarViewController
        
        navigationController?.pushViewController(controller ?? UIViewController(), animated: true)
        navigationController?.navigationBar.isHidden = true
        navigationItem.backButtonTitle = "Voltar"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
}


extension ViewController : UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loginTextFiel.resignFirstResponder()
        senhaTextFiel.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        self.loginTextFiel.keyboardType = .emailAddress
        self.senhaTextFiel.keyboardType = .default
        
        
    }
    
    
}
