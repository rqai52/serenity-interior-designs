module Listen
  class Record
    class SymlinkDetector
      def _fail(_, _)
        fail Error, "Don't watch