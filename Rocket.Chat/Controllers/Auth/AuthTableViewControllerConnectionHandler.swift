//
//  AuthTableViewControllerConnectionHandler.swift
//  Rocket.Chat
//
//  Created by Filipe Alvarenga on 06/06/18.
//  Copyright © 2018 Rocket.Chat. All rights reserved.
//

extension AuthTableViewController: SocketConnectionHandler {

    func socketDidConnect(socket: SocketManager) { }
    func socketDidReturnError(socket: SocketManager, error: SocketError) { }

    func socketDidDisconnect(socket: SocketManager) {
        alert(title: localized("error.socket.default_error.title"), message: localized("error.socket.default_error.message")) { _ in
            self.navigationController?.popViewController(animated: true)
        }
    }

}
