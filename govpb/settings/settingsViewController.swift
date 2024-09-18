//
//  settingsViewController.swift
//  govpb
//
//  Created by Sthashy Vieira on 17/09/24.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    var a : [User] = [User(name: "Politica de Privacidade", versao: "1.0.1", image: UIImage(systemName: "gear") ?? UIImage())]
    
    var b : [Avali] = [Avali(nameAva: "Avalie no App Store", image: UIImage(systemName: "square.and.arrow.up") ?? UIImage())]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()


    }
    

    func configTableView(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.Nib(), forCellReuseIdentifier: CustomTableViewCell.id)
        tableView.register(AvaliacaoTableViewCell.Nib(), forCellReuseIdentifier: AvaliacaoTableViewCell.ava)
        
    }
    
    
   

}


extension settingsViewController :  UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.id, for: indexPath) as? CustomTableViewCell
            
            cell?.configSetupCell(date:a[indexPath.row])
            
            return cell ?? UITableViewCell()
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: AvaliacaoTableViewCell.ava, for: indexPath) as? AvaliacaoTableViewCell
        
            cell?.configSetAva(aval: b[indexPath.row - 1])
            
            return cell ?? UITableViewCell()
            
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
            return 1 +  a.count
          
        }
        
        
       
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "SOBRE"
    }
        
                
        
        
        
        
        
    }

