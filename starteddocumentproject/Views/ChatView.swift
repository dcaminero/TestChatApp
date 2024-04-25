//
//  ChatView.swift
//  starteddocumentproject
//
//  Created by Daniel Caminero on 2/4/24.
//

import SwiftUI

struct ChatView: View {
    
    @State var chatMessages: [ChatMessage] = ChatMessage.sampleMessages
    @State var messageText: String = ""
    @State private var navigationSelection: Int? = nil
    
    extension ChatMessage {
        static let sampleMessages = [
            ChatMessage(id: UUID().uuidString, content: "Sample message from me", dateCreated: Date(), sender: .me),
            ChatMessage(id: UUID().uuidString, content: "Sample message from gpt", dateCreated: Date(), sender: .gpt),
            ChatMessage(id: UUID().uuidString, content: "Sample message from me", dateCreated: Date(), sender: .me),
            ChatMessage(id: UUID().uuidString, content: "Sample message from gpt", dateCreated: Date(), sender: .gpt)
        ]
    }
    
    var body: some View {
        VStack {
            ScrollView{
                LazyVStack {
                    ForEach(chatMessages, id: \.id){ message in
                        messageView(message: message)
                    }
                }
            }
            HStack {
                TextField("Enter a message", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(12)
                
                Button(action: {
                    sendMessage()
                    navigationSelection = 1
                }) {
                    Text("Send")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                }
                // Wrap the button in a NavigationLink
                .background(NavigationLink("", destination: ContentView(), tag: 1, selection: $navigationSelection))
            }
        }
        .padding()
    }
    
    func messageView(message: ChatMessage) -> some View {
        HStack{
            if message.sender == .me { Spacer() }
            Text(message.content)
                .foregroundColor(message.sender == .me ? .white : .black)
                .padding()
                .background(message.sender == .me ? .blue : .gray.opacity(0.1))
                .cornerRadius(16)
                
            if message.sender == .gpt { Spacer() }
        }
    }
    
    func sendMessage() {
        messageText = " "
        print(messageText)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

struct ChatMessage {
    let id: String
    let content: String
    let dateCreated: Date
    let sender: MessageSender
}

enum MessageSender {
    case me
    case gpt
}


