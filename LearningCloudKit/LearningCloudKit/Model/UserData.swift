//
//  UserData.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import Foundation
import Combine

final class UserData: ObservableObject {
    @Published var alunos = [Aluno]()
}
