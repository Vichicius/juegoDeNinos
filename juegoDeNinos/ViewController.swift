//
//  ViewController.swift
//  juegoDeNinos
//
//  Created by APPS2M on 21/10/21.
//

import UIKit

class ViewController: UIViewController {

    var figureName = ""
    
    let arrayFigures = ["circulo","cuadrado","estrella","triangulo"]
    
    @IBOutlet var fondo: UIView!
    @IBOutlet weak var puntuacion: UILabel!
    var puntuacionInt = 0
    
    @IBOutlet weak var figure: UIImageView!
    
    @IBAction func buttonCircle(_ sender: UIButton) {
        clickOnFigure("circulo")
    }
    
    @IBAction func buttonTriangle(_ sender: UIButton) {
        clickOnFigure("triangulo")
    }
    
    @IBAction func buttonSquare(_ sender: UIButton) {
        clickOnFigure("cuadrado")
    }
    
    @IBAction func buttonPentagon(_ sender: UIButton) {
        clickOnFigure("estrella")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateFigure()
        // Do any additional setup after loading the view.
    }
    
    func clickOnFigure(_ buttonName: String){
        if(buttonName == figureName){
            fondo.backgroundColor = UIColor.systemGreen
            updateFigure()
            puntuacionInt += 100
            print("prueba")
        }else{
            fondo.backgroundColor = UIColor.systemRed
            puntuacionInt = 0
            print("error")
        }
        puntuacion.text = String(puntuacionInt)
        print(buttonName,figureName)
    }
    
    func updateFigure() {
        figureName = arrayFigures.randomElement()!
        figure.image = UIImage.init(named: figureName)
        
    }
    
}

