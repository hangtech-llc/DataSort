//
//  ViewController.swift
//  RelevanceAPP
//
//  Created by Sean Hall on 4/6/22.
// at UF

import UIKit

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        irrelevantOut.backgroundColor = .blue
        relevantOut.backgroundColor = .orange
        
        
        view.backgroundColor = .darkGray
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var relevantOut: UIButton!
    @IBOutlet weak var irrelevantOut: UIButton!
    @IBOutlet weak var imageLoad: UIImageView!
    @IBAction func irrelevantButton(_ sender: UIButton) {
        //hitting this button will trigger two functions to send the image to one folder
         //and then get a new image from the database
        saveImagetoIrrelevantFolder()
        getImageFromDB()
        
    }
    
    @IBAction func relevantButton(_ sender: UIButton) {
       //hitting this button will trigger two functions to send the image to one folder
        //and then get a new image from the database
        saveImagetoRelevantFolder()
        getImageFromDB()
    }
    func getImageFromDB() {
        //imageArray will actually load from folder on ios device
        let imageArray = [UIImage(named: "IM-0003-82"), UIImage(named: "IM-0001-14"), UIImage(named: "IM-0003-82")]
        if let ourImage = imageArray.randomElement() {
        imageLoad.image = ourImage
        
        }
        //pull jgp slice from db or as asset in main
        print("could not get image to load")
    }
    func saveImagetoRelevantFolder() {
        let fileManager = NSFileProviderManager.default
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        //send the current image to the correct folder
        print("relevant")
        
    }
    func saveImagetoIrrelevantFolder() {
        //send the current image to the correct folder
        print("irrelevant")
    }
}

