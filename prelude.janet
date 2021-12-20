# Janet functions that I always want available
(defn binds-like [s]
  "Returns a list of bindings that contain the pattern `s` in their name"
  (filter 
    |(peg/match ~{:main (thru ,s)} $) 
    (all-bindings)))

(defn const [_ c] c)
