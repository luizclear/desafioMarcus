//
//  ViewController.swift
//  ItauDesafio
//
//  Created by Luiz Felipe Clemente Claro on 01/02/23.
//

import UIKit

class TelaInicialVC: UIViewController {
    
    @IBOutlet weak var backUIView: UIView!
    
    @IBOutlet weak var meuSaldoLabel: UILabel!
    
    @IBOutlet weak var saldoLabel: UILabel!
    
    @IBOutlet weak var walletUIImageView: UIImageView!
    
    @IBOutlet weak var extratoTableView: UITableView!
    
//    como setar para receber a API
    var listExtrato:[String] = ["saldo1", "saldo2", "saldo3", "saldo4"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.configTableView()
    }
    func setupUI(){
        view.backgroundColor = UIColor(red: 0.97, green: 0.96, blue: 0.95, alpha: 1.00)
        
        
        backUIView.backgroundColor = UIColor(red: 0.76, green: 0.66, blue: 0.57, alpha: 1.00)
        
        meuSaldoLabel.textColor = .white
        meuSaldoLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        
        saldoLabel.textColor = .white
        saldoLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        walletUIImageView.image = UIImage(named:"wallet" )
        
        walletUIImageView.tintColor = .white
        walletUIImageView.contentMode = .scaleAspectFit
        
        
    }

    
    func configTableView(){
        extratoTableView.delegate = self
        extratoTableView.dataSource = self
        extratoTableView.register(ExtratoTableViewCell.nib(), forCellReuseIdentifier: ExtratoTableViewCell.identifier)
    
    
    }
    
}

extension TelaInicialVC:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ extratoTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listExtrato.count
    }
    
    func tableView(_ extratoTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = extratoTableView.dequeueReusableCell(withIdentifier: ExtratoTableViewCell.identifier, for: indexPath) as? ExtratoTableViewCell
        cell?.setupCell(title: listExtrato[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func extratoTableView(_ extratoTableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("O nome que foi selecionado foi: \(listExtrato[indexPath.row])")
        
    }
}
