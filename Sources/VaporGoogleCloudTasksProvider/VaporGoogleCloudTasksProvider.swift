import Vapor
import SwiftGoogleCloudTasks

extension Application {
    
    public var googleCloudTasks: VaporGoogleCloudTasks {
        .init(application: self)
    }
    
    public struct VaporGoogleCloudTasks {
        public let application: Application
        
         public var client: SwiftGoogleCloudTasksClient {
            initialize()
            return SwiftGoogleCloudTasksClient(
                eventLoopGroup: application.eventLoopGroup.next()
            )
        }
        
        struct Lifecycle: LifecycleHandler {
            func shutdown(_ application: Application) {
                print("🚀 \(type(of: self)) : \(#function)")
                application.googleCloudTasks.client.shutDown()
            }
        }
        
        func initialize() {
            self.application.lifecycle.use(Lifecycle())
        }
    }
}

