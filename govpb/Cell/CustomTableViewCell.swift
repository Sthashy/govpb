//
//  CustomTableViewCell.swift
//  govpb
//
//  Created by Sthashy Vieira on 17/09/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static var id : String = String(describing: CustomTableViewCell.self)
    
    static func Nib() -> UINib {
        
        return UINib(nibName: id, bundle: nil)
        
        
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var versaoDoAPP: UILabel!
    @IBOutlet weak var viewImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configVersao()
        
        configImage()
        
    }
    
    func configSetupCell(date : User){
        
        nameLabel.text = date.name
        versaoDoAPP.text = date.versao
        viewImage.image = date.image
        
    }
    
   
  
    
    func configVersao(){
        
        versaoDoAPP.textColor = .gray
        
    }
    
    func configImage(){
        
        viewImage.tintColor = .gray
        
        
        
    }
}
