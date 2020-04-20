//
//  AlunoAdd.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import SwiftUI

struct AlunoAdd: View {
    @EnvironmentObject var userData: UserData

    @State private var nome: String = ""
    @State private var curso: String = ""
    @State private var tia: String = ""

    @Binding var presentedAsModal: Bool
    
    var body: some View {
        VStack {
            TextField("Nome", text: $nome)
                .padding()
            TextField("Curso", text: $curso)
                .padding()
            TextField("TIA", text: $tia)
                .padding()
            Button("Salvar") {
                let novoAluno = Aluno(nome: self.nome, curso: self.curso, tia: self.tia)
                CloudKitHelper.save(item: novoAluno) { (result) in
                    switch result {
                    case .success(let novoAluno):
                        self.userData.alunos.insert(novoAluno, at: 0)
                        print("Sucesso")
                    case .failure(let err):
                        print(err.localizedDescription)
                    }
                }
                self.presentedAsModal = false
            }
        }
    }
}

struct AlunoAdd_Previews: PreviewProvider {
    static var previews: some View {
        AlunoAdd(presentedAsModal: .constant(true))
    }
}
