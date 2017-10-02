**Redis**
Redis is an in-memory database that persists on disk. The data model is key-value, but also supports: String, Lists, Sets, Sorted Sets, Hasher, HyperLogLogs, Bitmaps

Redis is a data structures server, meaning that Redis provides access to mutable data structures, which are sent using a server-client model with TCP sockets and a simple protocol.

Redis stores data structures on a disk even if they are always served and modified into the server memory. This means that Redis is fast, but that is also non-volatile.

**Resque**
Resque is a Redis-backed library for creating background jobs, placing those jobs on multiple queues, and processing them later.

Background jobs can be any Ruby class or module that responds to perform. Your existing classes can easily be converted to background jobs or you can create new classes specifically to do work. Or, you can do both.

Resque is heavily inspired by DelayedJob (which rocks) and comprises three parts:

A Ruby library for creating, querying, and processing jobs
A Rake task for starting a worker which processes jobs
A Sinatra app for monitoring queues, jobs, and workers.
