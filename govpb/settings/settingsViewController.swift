//
//  settingsViewController.swift
//  govpb
//
//  Created by Sthashy Vieira on 17/09/24.
//

import UIKit

class settingsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var a : [User] = [User(name: "Versão do App", versao: "1.0.1", image: UIImage(systemName: "gear") ?? UIImage()),User(name: "Sobre Governo da Paraíba", image: UIImage.image )]
    
    var b : [Avali] = [Avali(nameAva: "App Store", image: UIImage(systemName: "storefront") ?? UIImage()),Avali(nameAva: "Compartilhar", image: UIImage(systemName: "square.and.arrow.up") ?? UIImage())]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
        
    }
    
    
    func configTableView(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.Nib(), forCellReuseIdentifier: CustomTableViewCell.id)
        tableView.register(AvaliacaoTableViewCell.Nib(), forCellReuseIdentifier: AvaliacaoTableViewCell.avali)
        
    }
    
    
    
    
}


extension settingsViewController :  UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.id, for: indexPath) as? CustomTableViewCell
            
            cell?.configSetupCell(date:a[indexPath.row ])
            
            return cell ?? UITableViewCell()
            
        } else if indexPath.section == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: AvaliacaoTableViewCell.avali, for: indexPath) as? AvaliacaoTableViewCell
            
            cell?.configSetAva(aval: b[indexPath.row ])
            
            return cell ?? UITableViewCell()
            
            
        }
        
        return UITableViewCell()
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section  == 0 {
            return a.count
        } else if section == 1 {
            return b.count
        }
        return  0
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "SOBRE"
        } else if section == 1 {
            return "AVALIAÇÃO"
        } else {
            return ""
            
            
            
            
        }
        
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
}

