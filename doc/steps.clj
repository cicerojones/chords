(use 'overtone.live)

(use 'overtone.inst.sampled-piano)

(def ^:const trichords '((0 1 2) (0 1 3) (0 1 4) (0 1 5) (0 1 6) (0 2 4) (0 2 5) (0 2 6) (0 2 7) (0 3 6) (0 3 7) (0 4 8)))

(defn sequencer-500 [midis]
  (map #(do (Thread/sleep 500) (sampled-piano %)) midis))

(def pc-octaves (into {} (for [n (range 12)] (hash-map (keyword (str n)) (range n 108 12)))))
(first pc-octaves)

(def tris-octaves
  (for [pcset trichords]
    (let [[a b c] pcset] [(into [] ((keyword (str a)) pc-octaves))
                          (into [] ((keyword (str b)) pc-octaves))
                          (into [] ((keyword (str c)) pc-octaves))])))
(first tris-octaves)

(defn big-one [octave-collec] 
  (for [oc octave-collec]
    (let [[a b c] oc]
      (for [aa a bb b cc c] [aa bb cc]))))

(def all-trichord-midi-voicings (big-one tris-octaves))

(defn rand-seq-debug [v v-length]
  (let [start (rand-int (dec (count v)))
        end (+ start v-length)]
(println (str "START: " start " end: " end))
    (subvec v start end)))

(defn play-piano-chord [a-chord]
        (doseq [note a-chord] (sampled-piano note)))
