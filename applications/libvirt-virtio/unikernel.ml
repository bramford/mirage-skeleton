open Lwt.Infix

module Hello (Time : Mirage_time_lwt.S) = struct

  let start _time =

    let rec loop n =
      Logs.info (fun f -> f "Hello number %d" n);
      Time.sleep_ns (Duration.of_sec 1) >>= fun () ->
      loop (n+1)
    in

    loop 1

end
