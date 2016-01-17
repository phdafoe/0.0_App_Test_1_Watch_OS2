//
//  InterfaceController.swift
//  App_Test_1_Watch_OS2 WatchKit Extension
//
//  Created by User on 17/1/16.
//  Copyright © 2016 iCologic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    //MARK: - VARIABLES LOCALES GLOBALES
    let someString = "Andres"
    let orangeColor : UIColor = UIColor.orangeColor()
    let blueColor : UIColor = UIColor.blueColor()
    var sliderValue : Float = 0
    
    
    //MARK: - IBOUTLET
    
    @IBOutlet var myButton: WKInterfaceButton!
    @IBOutlet var mySwitch: WKInterfaceSwitch!
    @IBOutlet var mySlider: WKInterfaceSlider!
    @IBOutlet var myLabel: WKInterfaceLabel!
    
    //MARK: - IBACTION
    
    @IBAction func myButtonAction() {
       
        action1()
        
        
    }
    
    @IBAction func mySwitchACTION(value: Bool) {

        if value == true{
            
            action2()
        }
        if value == false{
            
            action1()
        }
        
        
    }
    
    
    @IBAction func mySliderACTION(value: Float) {
        
        sliderValue = value
        action3()
        print(sliderValue)
        
    }

    
    override func awakeWithContext(context: AnyObject?) {
        //"Despierta" con el contexto
        super.awakeWithContext(context)
        
        action3()
        
        
        
        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    //MARK: - UTILS
    
    func action1(){
        
        myButton.setTitle("CICE")
        myButton.setBackgroundColor(orangeColor)
        myLabel.setText("Hola Mundo")
        myLabel.setTextColor(orangeColor)
        mySlider.setColor(orangeColor)
        mySwitch.setColor(orangeColor)
        mySwitch.setOn(false)
        
    }
    
    func action2(){
        
        myButton.setTitle("ICOLOGIC")
        myButton.setBackgroundColor(blueColor)
        myLabel.setText("Hola Andres")
        myLabel.setTextColor(blueColor)
        mySlider.setColor(blueColor)
   
        
    }
    
    
    
    func action3(){
        
        if sliderValue == 1{
            mySlider.setColor(UIColor.blueColor())
            
        }else if sliderValue == 3{
            mySlider.setColor(UIColor.greenColor())
        }else if sliderValue == 5{
            mySlider.setColor(UIColor.orangeColor())
        }else if sliderValue == 7{
            mySlider.setColor(UIColor.magentaColor())
        }else if sliderValue == 10{
            mySlider.setColor(UIColor.redColor())
        }
    }
    

}
