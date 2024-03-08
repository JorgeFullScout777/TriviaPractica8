//
//  ViewController.swift
//  trivia
//
//  Created by Jorge Luna Reyna on 29/02/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var btnsTablero: [UIButton]!

        var backgroundMusic: AVAudioPlayer?
        var buttonSound: AVAudioPlayer?

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            playBackgroundMusic()
            for boton in btnsTablero{
                boton.layer.cornerRadius = 20
                boton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
            }
            loadButtonSound()
        }
        
        func playBackgroundMusic() {
            let path = Bundle.main.path(forResource: "background", ofType: "mp3")!
            let url = URL(fileURLWithPath: path)

            do {
                backgroundMusic = try AVAudioPlayer(contentsOf: url)
                backgroundMusic?.numberOfLoops = -1 // Reproduce en un bucle infinito
                backgroundMusic?.play()
            } catch {
                // Error al cargar el archivo de audio
                print("Error al cargar el archivo de audio: \(error.localizedDescription)")
            }
        }
        
        func loadButtonSound() {
            let path = Bundle.main.path(forResource: "btnsound", ofType: "mp3")!
            let url = URL(fileURLWithPath: path)

            do {
                buttonSound = try AVAudioPlayer(contentsOf: url)
                buttonSound?.prepareToPlay()
            } catch {
                // Error al cargar el archivo de audio
                print("Error al cargar el archivo de audio del botón: \(error.localizedDescription)")
            }
        }

        @objc func buttonClicked(_ sender: UIButton) {
            buttonSound?.play()
            // Aquí puedes agregar la lógica adicional que deseas cuando se hace clic en el botón
        }
}
