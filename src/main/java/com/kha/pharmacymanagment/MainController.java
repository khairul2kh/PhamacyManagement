/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kha.pharmacymanagment;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Khairul
 */
@Controller
public class MainController {
    @RequestMapping("/")
    public String view(Model model){
        return "welcome";
    }
            
    
}
