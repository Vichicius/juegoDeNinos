//
//  ViewController.swift
//  juegoDeNinos
//
//  Created by APPS2M on 21/10/21.
//

import UIKit

class ViewController: UIViewController {

    var figureName = ""
    
    //array con los nombres de las imagenes para llamarlas
    let arrayFigures = ["circulo","cuadrado","pentagono","triangulo"]
    
    //referenciar el fondo para cambiarle el color y la puntuación para actualizarla
    @IBOutlet var fondo: UIView!
    @IBOutlet weak var puntuacion: UILabel!
    var puntuacionInt = 0
    //referenciar la figura para cambiarla
    @IBOutlet weak var figure: UIImageView!
    
    //Al hacer click en cualquier figura, llamar a la funcion clickOnFigure() y pasarle el nombre de la figura del boton
    @IBAction func buttonCircle(_ sender: UIButton) {
        clickOnFigure("circulo")
    }
    
    @IBAction func buttonTriangle(_ sender: UIButton) {
        clickOnFigure("triangulo")
    }
    
    @IBAction func buttonSquare(_ sender: UIButton) {
        clickOnFigure("pentagono")
    }
    
    @IBAction func buttonPentagon(_ sender: UIButton) {
        clickOnFigure("estrella")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //actualizar la figura nada más abrir la aplicación para que siempre sea diferente
        updateFigure()
        // Do any additional setup after loading the view.
    }
    
    //al hacer click en la figura
    func clickOnFigure(_ buttonName: String){
        //comprueba que has acertado y actualiza todo
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
    //actualizar la imagen
    func updateFigure() {
        figureName = arrayFigures.randomElement()!
        figure.image = UIImage.init(named: figureName)
        
    }
    
}

