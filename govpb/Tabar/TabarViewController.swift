//
//  TabarViewController.swift
//  govpb
//
//  Created by Sthashy Vieira on 16/09/24.
//

import UIKit

class TabarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AddController()
        configTabar()
        
    }
    
    
    private func AddController(){
        
        var primeiroController :  UINavigationController {
            
            let controller = UIStoryboard(name: String(describing: telaHomeViewController.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: telaHomeViewController.self)) as? telaHomeViewController
            
            let navegation = UINavigationController(rootViewController: controller ?? UIViewController())
            navegation.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
            
            return navegation
            
            
            
        }
        
        var segundoController :  UINavigationController {
            
            let controller = UIStoryboard(name: String(describing: settingsViewController.self), bundle: nil).instantiateViewController(withIdentifier: String(describing: settingsViewController.self)) as? settingsViewController
            
            let navegation = UINavigationController(rootViewController: controller ?? UIViewController())
            navegation.tabBarItem = UITabBarItem(title: "Configuração", image: UIImage(systemName: "gear"), tag: 2)
            
            return navegation
            
            
        }
        
        viewControllers = [primeiroController,segundoController]
        
    }
    
    
    func configTabar(){
        
        self.tabBar.backgroundColor = .white
        
    }
}
