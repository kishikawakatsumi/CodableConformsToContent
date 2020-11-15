import Vapor
import LanguageServerProtocol

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}

extension InitializeRequest.Response: Content {}
extension DocumentSymbolRequest.Response: Content {}
extension CompletionRequest.Response: Content {}
extension CompletionItem: Content {}
