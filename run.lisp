#+sbcl(unless (eq sb-impl::*default-external-format* :UTF-8)
        (setf sb-impl::*default-external-format* :UTF-8))

(push :prod *features*)

(push (merge-pathnames "../ann/") asdf:*central-registry*)

(ql:quickload :ann)

#+dev(hunch:start-web 7001)
