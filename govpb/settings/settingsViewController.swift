//
//  settingsViewController.swift
//  govpb
//
//  Created by Sthashy Vieira on 17/09/24.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    var info : [User] = [User(name: "Versão do aplicativo", versao: "1.0.1",image: UIImage(systemName: "gear") ?? UIImage()),User(name: "Privacidade", image: UIImage(systemName: "lock") ?? UIImage())]
    
    var avalia : [Avaliacao] = [Avaliacao(name: "Avalie na App Store ", image: UIImage(systemName: "square.and.arrow.up") ?? UIImage())]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()


    }
    

    func configTableView(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.Nib(), forCellReuseIdentifier: CustomTableViewCell.id)
        tableView.register(Avalic_a_oTableViewCell.Nib(), forCellReuseIdentifier: Avalic_a_oTableViewCell.avalia)
        
    }
    
    
   

}


extension settingsViewController :  UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return info.count
        } else if section == 1{
            
            return avalia.count
        } else {
            return 0
        }


    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.id, for: indexPath) as? CustomTableViewCell
            
            cell?.configSetupCell(date: info[indexPath.row])
            
            return cell ?? UITableViewCell()
            
        } else if indexPath.section == 1 {
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Avalic_a_oTableViewCell.avalia, for: indexPath) as? Avalic_a_oTableViewCell
            
            cell?.configSetAvalia(ava: avalia[indexPath.row])
            
            return cell ?? UITableViewCell()
            
        }
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            
            return "SOBRE"
            
        } else if section == 1 {
            
            return "AVALIAÇÃO"
        } else  {
            
            return ""
            
        }
    
        
    }
    
    
    }
