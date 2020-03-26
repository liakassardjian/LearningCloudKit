//
//  Data.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import CloudKit

struct CloudKitHelper {
    
    enum CloudKitHelperError: Error {
        case recordFailure
        case recordIDFailure
        case castFailure
        case cursorFailure
    }
    
    static func fetch(completion: @escaping (Result<Aluno, Error>) -> ()) {
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Aluno", predicate: predicate)
        
        let operation = CKQueryOperation(query: query)
        operation.desiredKeys = ["Nome", "Curso", "TIA"]
        operation.resultsLimit = 50
        
        operation.recordFetchedBlock = { record in
            DispatchQueue.main.async {
                let recordID = record.recordID
                guard let nome = record["Nome"] as? String else { return }
                guard let curso = record["Curso"] as? String else { return }
                guard let tia = record["TIA"] as? String else { return }

                let listElement = Aluno(id: recordID, nome: nome, curso: curso, tia: tia)
                completion(.success(listElement))
            }
        }
        
        operation.queryCompletionBlock = { (_, err) in
            DispatchQueue.main.async {
                if let err = err {
                    completion(.failure(err))
                    return
                }
            }
            
        }
        CKContainer.default().privateCloudDatabase.add(operation)
    }
}
