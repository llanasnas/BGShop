//
//  ViewController.swift
//  BGShop
//
//  Created by Alumne on 1/3/18.
//  Copyright © 2018 Alumne.LaSalle.Gerard_Bhupi. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    let dataBaseFileName:String = "task.db"
    var dataBasePath:String=String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpDataBase()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpDataBase(){
        let fileManager = FileManager()
        if let docsDir = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first{
            let dataBaseURL = docsDir.appendingPathComponent(dataBaseFileName)
            dataBasePath = dataBaseURL.absoluteString
            
            if !fileManager.fileExists(atPath: dataBasePath){
                
                if let sourceDataBaseURL = Bundle.main.url(forResource: "task", withExtension: "db"){
                    do{
                        try fileManager.copyItem(at: sourceDataBaseURL, to: dataBaseURL)
                        print("Database copied")
                    }catch{
                        print("Error copyng database")
                    }
                }
                
            }
            
        }
    }
    
    
}

