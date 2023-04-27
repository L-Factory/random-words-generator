(defun random-word (len)
  "Generate a random word with the given length."
  (with-output-to-string (s)
    (dotimes (i len)
      (write-char (code-char (+ 97 (random 26))) s))))

(defun random-words (n len)
  "Generate a list of N random words with the given length."
  (loop repeat n collect (random-word len)))
