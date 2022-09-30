//
//  FrasesScreen.swift
//  App3Viewcode
//
//  Created by Yan Alejandro on 28/09/22.
//

import UIKit

class FrasesScreen: UIView {
    
    lazy var frasesImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var frasesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Nova Frase", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 82/255.0, green: 149/255.0, blue: 58/255.0, alpha: 1.0)
        button.addTarget(self, action: #selector(self.tappedFrasesButton), for: .touchUpInside)
        return button
    }()
    
    lazy var aspasEImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "aspas-esquerda")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var frasesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "Não é a linguagem de programação que define o programador, mas sim sua lógica."
        label.textAlignment = .center
        label.numberOfLines = 5
        return label
    }()
    
    lazy var aspasDImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "aspas-direita")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    @objc private func tappedFrasesButton() {
        let frases: [String] = [
            "Não é a linguagem de programação que define o programador, mas sim sua lógica.",
            "Programador: “É simples, pode ser composto. Se firma no concreto e torna-se, abstrato.”",
            "O resultado do programa é relativo o nível de conhecimento do programador.",
            "Ser desenvolvedor é uma viagem onde a próxima parada é a solução de um problema.",
            "Se até as variáveis precisam ser declaradas porque não me declarar pra você?",
            "⁠A questão não é saber os códigos ou linhas de comando, é saber o que fazer com eles.",
            "Linguagens não morrem mas sim seus programadores.",
            "Programadores e artistas são os únicos profissionais que tem como hobby a própria profissão."
        ]
        let numeroAleatorio = arc4random_uniform(8)
        self.frasesLabel.text = frases[Int(numeroAleatorio)]
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 189/255.0, green: 255/255.0, blue: 194/255.0, alpha: 1.0)
        self.addSubview(self.frasesImageView)
        self.addSubview(self.frasesButton)
        self.addSubview(self.aspasEImageView)
        self.addSubview(self.frasesLabel)
        self.addSubview(self.aspasDImageView)
        self.setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpContraints() {
        NSLayoutConstraint.activate([
            self.frasesImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.frasesImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),

            self.frasesButton.topAnchor.constraint(equalTo: self.frasesImageView.bottomAnchor, constant: 40),
            self.frasesButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            self.frasesButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            self.frasesButton.heightAnchor.constraint(equalToConstant: 50),
            
            self.aspasEImageView.topAnchor.constraint(equalTo: self.frasesButton.bottomAnchor, constant: 60),
            self.aspasEImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.aspasEImageView.heightAnchor.constraint(equalToConstant: 50),
            
            self.frasesLabel.topAnchor.constraint(equalTo: self.aspasEImageView.bottomAnchor, constant: 20),
            self.frasesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            self.frasesLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            self.frasesLabel.heightAnchor.constraint(equalToConstant: 150),
            
            self.aspasDImageView.topAnchor.constraint(equalTo: self.frasesLabel.bottomAnchor, constant: 20),
            self.aspasDImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.aspasDImageView.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
