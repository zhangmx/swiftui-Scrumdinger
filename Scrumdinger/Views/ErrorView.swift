//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by mingxing zhang on 2024/5/23.
//

import SwiftUI

struct ErrorView: View {
    
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("An error has occurred!")
                    .font(.title)
                    .padding(.bottom)
                Text(errorWrapper.error.localizedDescription)
                    .font(.headline)
                Text(errorWrapper.guidance)
                    .font(.caption)
                    .padding(.top)
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Dismiss"){
                        dismiss()
                    }
                }
            }
        }
    }
}



#Preview {
    
    enum SampleError: Error {
        case errorRequired
    }

    var wrapper: ErrorWrapper{
        ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safely ignore this error.")
    }
    
    let errorView = ErrorView(errorWrapper: wrapper)
    
    return errorView
}
