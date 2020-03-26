//
//  AlunosRow.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import SwiftUI

struct AlunosRow: View {
    var aluno: Aluno
    
    var body: some View {
        HStack {
            Text(aluno.nome)
            Spacer()
        }
        .padding()
    }
}

struct AlunosRow_Previews: PreviewProvider {
    static var previews: some View {
        AlunosRow(aluno: Aluno(nome: "Lia Kassardjian", curso: "Ciência da Computação", tia: "12345678"))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
