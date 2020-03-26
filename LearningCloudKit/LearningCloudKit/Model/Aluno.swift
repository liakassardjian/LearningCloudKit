//
//  Aluno.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation

class Aluno {
    var id: String
    var nome: String
    var curso: String
    var tia: String
    var professores = [Professor]()
    
    init(id: String, nome: String, curso: String, tia: String) {
        self.id = id
        self.nome = nome
        self.curso = curso
        self.tia = tia
    }
}
