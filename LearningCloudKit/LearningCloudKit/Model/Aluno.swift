//
//  Aluno.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation
import CloudKit

class Aluno {
    var id: CKRecord.ID
    var nome: String
    var curso: String
    var tia: String
    var idProfessores: [CKRecord.Reference]
    var professores = [Professor]()
    
    init(id: CKRecord.ID, nome: String, curso: String, tia: String, idProf: [CKRecord.Reference]) {
        self.id = id
        self.nome = nome
        self.curso = curso
        self.tia = tia
        self.idProfessores = idProf
    }
}
