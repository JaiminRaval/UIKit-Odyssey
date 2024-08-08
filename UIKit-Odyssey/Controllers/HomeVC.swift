//
//  ViewController.swift
//  UIKit-Odyssey
//
//  Created by Jaimin Raval on 05/08/24.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var rSlider: UISlider!
    
    @IBOutlet weak var gSlider: UISlider!
    
    @IBOutlet weak var bSlider: UISlider!
    
    @IBOutlet weak var opacitySlider: UISlider!
    
    private var rValue: CGFloat!
    private var gValue: CGFloat!
    private var bValue: CGFloat!
    private var opacityValue: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setColor(r: 0, g: 0, b: 0, o: 0)
    }
    
    func setColor(r: CGFloat, g: CGFloat, b: CGFloat, o: CGFloat) {
        colorView.backgroundColor =  UIColor(red: r/255, green: g/255, blue: b/255, alpha: o)
    }
    
    
    @IBAction func rSliderChanged(_ sender: Any) {
        
        rValue =  CGFloat(rSlider.value)
        gValue =  CGFloat(gSlider.value)
        bValue =  CGFloat(bSlider.value)
        opacityValue =  CGFloat(opacitySlider.value)
        
        setColor(r: rValue, g: gValue, b: bValue, o: opacityValue)
        
    }
    
    @IBAction func gSliderChanged(_ sender: Any) {
        
        rValue =  CGFloat(rSlider.value)
        gValue =  CGFloat(gSlider.value)
        bValue =  CGFloat(bSlider.value)
        opacityValue =  CGFloat(opacitySlider.value)
        
        setColor(r: rValue, g: gValue, b: bValue, o: opacityValue)

    }
    
    @IBAction func bSliderChanged(_ sender: Any) {
        
        rValue =  CGFloat(rSlider.value)
        gValue =  CGFloat(gSlider.value)
        bValue =  CGFloat(bSlider.value)
        opacityValue =  CGFloat(opacitySlider.value)
        
        setColor(r: rValue, g: gValue, b: bValue, o: opacityValue)

    }
    
    @IBAction func opacitySliderChanged(_ sender: Any) {
        
        rValue =  CGFloat(rSlider.value)
        gValue =  CGFloat(gSlider.value)
        bValue =  CGFloat(bSlider.value)
        opacityValue =  CGFloat(opacitySlider.value)
        
        setColor(r: rValue, g: gValue, b: bValue, o: opacityValue)

    }
    


}

