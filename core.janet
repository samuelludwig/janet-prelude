# Janet functions that I always want available
(defn i [x] "The I combinator, the identity function" x)

(defn k [x]
  "The K combinator, takes the first of the two arguments its given"
  (fn [y] x))

(defn s [x]
  "The S combinator, can't really explain this one in a concise one-liner"
  (fn [y]
    (fn [z]
      (x z (y z)))))

(def . comp)

(def not-nil? (. not nil?))

(defn exec [& args] (os/execute [;args] :p))

(defn with-default
  ``
  We could typically use a more concise `(or x default-val)` -thus making the
  function trivial-, but we would like to retain falsey values besides `nil`.
  ``
  [x default-val] (if (not-nil? x) x default-val))
