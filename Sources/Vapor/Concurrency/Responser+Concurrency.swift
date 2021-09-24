#if compiler(>=5.5) && canImport(_Concurrency)
import NIOCore

@available(macOS 12, iOS 15, watchOS 8, tvOS 15, *)
extension Responder {
    public func respond(to request: Request) async throws -> Response {
        try await self.respond(to: request).get()
    }
}

#endif
