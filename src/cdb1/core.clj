(ns cdb1.core
  (:require [yesql.core :refer [defqueries]])
  )

(def db-spec {:classname "org.postgresql.Driver"
              :subprotocol "postgresql"
              :subname "//localhost:5432/heroku_psql_tutorial"
              :user "a"
              ;;:password ""
              })


(defqueries "sql/insert_chords.sql"
  {:connection db-spec})
