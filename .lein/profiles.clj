{:user
 {:dependencies [[org.clojure/tools.namespace "0.2.3"]]
  :plugins [[lein-midje "3.1.0"]
            [cider/cider-nrepl "0.10.0-SNAPSHOT"]]
  :injections [(require '(clojure.tools.namespace repl find))]}}
