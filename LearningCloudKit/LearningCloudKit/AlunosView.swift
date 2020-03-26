//
//  ContentView.swift
//  LearningCloudKit
//
//  Created by Lia Kassardjian on 26/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import SwiftUI

struct AlunosView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List(userData.alunos) { aluno in
                NavigationLink(destination: AlunoDetail(aluno: aluno)) {
                    AlunosRow(aluno: aluno)                 
                }
            }
            .navigationBarTitle(Text("Alunos"))
        }
        .onAppear {
            CloudKitHelper.fetch { (result) in
                switch result {
                case .success(let newItem):
                    self.userData.alunos.append(newItem)
                case .failure(let err):
                    print(err.localizedDescription)
                }
            }
        }
    }
}

struct AlunosView_Previews: PreviewProvider {
    static var previews: some View {
        AlunosView()
            .environmentObject(UserData())
    }
}
