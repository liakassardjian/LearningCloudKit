//
//  Aluno.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation
import CloudKit

struct Aluno: Identifiable {
    var id: CKRecord.ID?
    var nome: String
    var curso: String
    var tia: String
}
