//
//  Professor.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation
import CloudKit

class Professor {
    var id: CKRecord.ID
    var nome: String
    var drt: String
    var idAlunos: [CKRecord.Reference]
    var alunos = [Aluno]()
    
    init(id: CKRecord.ID, nome: String, drt: String, idAlunos: [CKRecord.Reference]) {
        self.id = id
        self.nome = nome
        self.drt = drt
        self.idAlunos = idAlunos
    }
}
