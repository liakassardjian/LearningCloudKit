//
//  AlunoDetail.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import SwiftUI

struct AlunoDetail: View {
    var aluno: Aluno
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(aluno.nome)
                        .font(.title)
                }
                
                HStack {
                    Text(aluno.curso)
                        .font(.subheadline)
                    Spacer()
                    Text(aluno.tia)
                        .font(.subheadline)
                }
                
            }
            .padding()
            Spacer()
        }
    }
}

struct AlunoDetail_Previews: PreviewProvider {
    static var previews: some View {
        AlunoDetail(aluno: Aluno(nome: "Lia Kassardjian", curso: "Ciência da Computação", tia: "12345678"))
    }
}
