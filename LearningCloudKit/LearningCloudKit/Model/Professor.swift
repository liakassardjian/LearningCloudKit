//
//  Professor.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation

class Professor {
    var id: String
    var nome: String
    var drt: String
    var alunos = [Aluno]()
    
    init(id: String, nome: String, drt: String) {
        self.id = id
        self.nome = nome
        self.drt = drt
    }
}
