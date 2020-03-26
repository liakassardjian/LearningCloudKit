//
//  Data.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import CloudKit

var container: CKContainer?
var privateDB: CKDatabase?

var alunosData = [Aluno]()
var professoresData = [Professor]()

func loadAlunos() {
    
    let predicate = NSPredicate(value: true)
    let query = CKQuery(recordType: "Aluno", predicate: predicate)
    
    privateDB?.perform(query, inZoneWith: nil, completionHandler: { (records, error) in
        guard let alunos = records else {
            if let err = error {
                print(err.localizedDescription)
            }
            return
        }
        
        for a in alunos {
            if let nome = a.value(forKey: "Nome") as? String,
               let curso = a.value(forKey: "Curso") as? String,
               let tia = a.value(forKey: "TIA") as? String,
               let id = a.value(forKey: "recordID") as? CKRecord.ID,
               let professores = a.value(forKey: "Professores") as? [CKRecord.Reference] {
                alunosData.append(Aluno(id: id, nome: nome, curso: curso, tia: tia, idProf: professores))
            }
        }
        print(alunosData)
    })
}

func loadProfessores() {
    let predicate = NSPredicate(value: true)
    let query = CKQuery(recordType: "Professor", predicate: predicate)
    
    privateDB?.perform(query, inZoneWith: nil, completionHandler: { (records, error) in
        guard let alunos = records else {
            if let err = error {
                print(err.localizedDescription)
            }
            return
        }
        
        for a in alunos {
            if let nome = a.value(forKey: "Nome") as? String,
               let drt = a.value(forKey: "DRT") as? String,
               let id = a.value(forKey: "recordID") as? CKRecord.ID,
               let alunos = a.value(forKey: "Alunos") as? [CKRecord.Reference] {
                professoresData.append(Professor(id: id, nome: nome, drt: drt, idAlunos: alunos))
            }
        }
        print(professoresData)
    })
}

