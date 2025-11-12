let () = Ppxlib.Driver.standalone()
(* This one-line program is used to obtain an executable command
   [visitors_preprocess] which we use to visualize the result of
   preprocessing. This command is used in [Makefile.preprocess]. *)
(* To obtain a nice-looking result, ppxlib 0.37.0 is required.   *)
