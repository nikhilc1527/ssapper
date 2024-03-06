; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5834 () Bool)

(assert start!5834)

(declare-fun b!44147 () Bool)

(declare-datatypes () ((Unit!441 (Unit!442))))

(declare-fun e!22864 () Unit!441)

(declare-fun Unit!443 () Unit!441)

(assert (=> b!44147 (= e!22864 Unit!443)))

(declare-fun b!44148 () Bool)

(declare-fun e!22866 () Bool)

(declare-datatypes () ((Nat!123 (Zero!107) (Succ!104 (n!1248 Nat!123)))))

(declare-fun n1!48 () Nat!123)

(declare-fun n2!59 () Nat!123)

(declare-fun <=!2 (Nat!123 Nat!123) Bool)

(declare-fun *!4 (Nat!123 Nat!123) Nat!123)

(assert (=> b!44148 (= e!22866 (not (<=!2 n1!48 (*!4 n1!48 n2!59))))))

(declare-fun b!44149 () Bool)

(declare-fun res!20897 () Bool)

(assert (=> b!44149 (=> (not res!20897) (not e!22866))))

(declare-fun t!5126 () Unit!441)

(declare-fun e!22865 () Unit!441)

(assert (=> b!44149 (= res!20897 (= t!5126 e!22865))))

(declare-fun c!9414 () Bool)

(assert (=> b!44149 (= c!9414 (and (is-Succ!104 n1!48) (is-Zero!107 (n!1248 n1!48))))))

(declare-fun res!20899 () Bool)

(assert (=> start!5834 (=> (not res!20899) (not e!22866))))

(declare-fun >!2 (Nat!123 Nat!123) Bool)

(assert (=> start!5834 (= res!20899 (>!2 n1!48 Zero!107))))

(assert (=> start!5834 e!22866))

(assert (=> start!5834 true))

(declare-fun b!44150 () Bool)

(declare-fun Unit!444 () Unit!441)

(assert (=> b!44150 (= e!22865 Unit!444)))

(declare-fun lt!8038 () Unit!441)

(declare-fun Unit!445 () Unit!441)

(assert (=> b!44150 (= lt!8038 Unit!445)))

(assert (=> b!44150 (<=!2 n1!48 (*!4 n1!48 n2!59))))

(declare-fun lt!8034 () Unit!441)

(declare-fun succ_<=!0 (Nat!123 Nat!123) Unit!441)

(declare-fun +!5 (Nat!123 Nat!123) Nat!123)

(assert (=> b!44150 (= lt!8034 (succ_<=!0 (n!1248 n1!48) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))

(declare-fun lt!8037 () Unit!441)

(assert (=> b!44150 (= lt!8037 e!22864)))

(declare-fun c!9413 () Bool)

(assert (=> b!44150 (= c!9413 (not (= (n!1248 n1!48) (*!4 (n!1248 n1!48) n2!59))))))

(declare-fun lt!8036 () Unit!441)

(declare-fun increasing_plus_strict!0 (Nat!123 Nat!123) Unit!441)

(assert (=> b!44150 (= lt!8036 (increasing_plus_strict!0 (*!4 (n!1248 n1!48) n2!59) n2!59))))

(declare-fun lt!8035 () Unit!441)

(declare-fun increasing_times!0 (Nat!123 Nat!123) Unit!441)

(assert (=> b!44150 (= lt!8035 (increasing_times!0 (n!1248 n1!48) n2!59))))

(declare-fun b!44151 () Bool)

(declare-fun Unit!446 () Unit!441)

(assert (=> b!44151 (= e!22865 Unit!446)))

(declare-fun b!44152 () Bool)

(declare-fun res!20900 () Bool)

(assert (=> b!44152 (=> (not res!20900) (not e!22866))))

(declare-fun res!17637 () Unit!441)

(declare-fun x$66!21 () Unit!441)

(assert (=> b!44152 (= res!20900 (and (= res!17637 t!5126) (= x$66!21 res!17637)))))

(declare-fun b!44153 () Bool)

(declare-fun transitive_<!0 (Nat!123 Nat!123 Nat!123) Unit!441)

(assert (=> b!44153 (= e!22864 (transitive_<!0 (n!1248 n1!48) (*!4 (n!1248 n1!48) n2!59) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))

(declare-fun b!44154 () Bool)

(declare-fun res!20898 () Bool)

(assert (=> b!44154 (=> (not res!20898) (not e!22866))))

(assert (=> b!44154 (= res!20898 (>!2 n2!59 Zero!107))))

(assert (= (and start!5834 res!20899) b!44154))

(assert (= (and b!44154 res!20898) b!44149))

(assert (= (and b!44150 c!9413) b!44153))

(assert (= (and b!44150 (not c!9413)) b!44147))

(assert (= (and b!44149 c!9414) b!44151))

(assert (= (and b!44149 (not c!9414)) b!44150))

(assert (= (and b!44149 res!20897) b!44152))

(assert (= (and b!44152 res!20900) b!44148))

(declare-fun m!47349 () Bool)

(assert (=> b!44148 m!47349))

(assert (=> b!44148 m!47349))

(declare-fun m!47351 () Bool)

(assert (=> b!44148 m!47351))

(declare-fun m!47353 () Bool)

(assert (=> start!5834 m!47353))

(declare-fun m!47355 () Bool)

(assert (=> b!44153 m!47355))

(assert (=> b!44153 m!47355))

(declare-fun m!47357 () Bool)

(assert (=> b!44153 m!47357))

(assert (=> b!44153 m!47355))

(assert (=> b!44153 m!47357))

(declare-fun m!47359 () Bool)

(assert (=> b!44153 m!47359))

(assert (=> b!44150 m!47349))

(assert (=> b!44150 m!47351))

(assert (=> b!44150 m!47349))

(declare-fun m!47361 () Bool)

(assert (=> b!44150 m!47361))

(assert (=> b!44150 m!47357))

(declare-fun m!47363 () Bool)

(assert (=> b!44150 m!47363))

(assert (=> b!44150 m!47355))

(declare-fun m!47365 () Bool)

(assert (=> b!44150 m!47365))

(assert (=> b!44150 m!47355))

(assert (=> b!44150 m!47357))

(assert (=> b!44150 m!47355))

(declare-fun m!47367 () Bool)

(assert (=> b!44154 m!47367))

(push 1)

(assert (not b!44148))

(assert (not b!44153))

(assert (not b!44154))

(assert (not b!44150))

(assert (not start!5834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31236 () Bool)

(declare-fun <!2 (Nat!123 Nat!123) Bool)

(assert (=> d!31236 (<!2 (n!1248 n1!48) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))

(assert (=> d!31236 true))

(declare-fun x$47!56 () Unit!441)

(assert (=> d!31236 (= (transitive_<!0 (n!1248 n1!48) (*!4 (n!1248 n1!48) n2!59) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)) x$47!56)))

(declare-fun bs!17745 () Bool)

(assert (= bs!17745 d!31236))

(assert (=> bs!17745 m!47357))

(declare-fun m!47369 () Bool)

(assert (=> bs!17745 m!47369))

(assert (=> b!44153 d!31236))

(declare-fun d!31238 () Bool)

(declare-fun c!9417 () Bool)

(assert (=> d!31238 (= c!9417 (is-Zero!107 (n!1248 n1!48)))))

(declare-fun e!22869 () Nat!123)

(assert (=> d!31238 (= (*!4 (n!1248 n1!48) n2!59) e!22869)))

(declare-fun b!44159 () Bool)

(assert (=> b!44159 (= e!22869 Zero!107)))

(declare-fun b!44160 () Bool)

(assert (=> b!44160 (= e!22869 (+!5 (*!4 (n!1248 (n!1248 n1!48)) n2!59) n2!59))))

(assert (= (and d!31238 c!9417) b!44159))

(assert (= (and d!31238 (not c!9417)) b!44160))

(declare-fun m!47371 () Bool)

(assert (=> b!44160 m!47371))

(assert (=> b!44160 m!47371))

(declare-fun m!47373 () Bool)

(assert (=> b!44160 m!47373))

(assert (=> b!44153 d!31238))

(declare-fun d!31240 () Bool)

(declare-fun c!9420 () Bool)

(assert (=> d!31240 (= c!9420 (is-Zero!107 (*!4 (n!1248 n1!48) n2!59)))))

(declare-fun e!22872 () Nat!123)

(assert (=> d!31240 (= (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59) e!22872)))

(declare-fun b!44165 () Bool)

(assert (=> b!44165 (= e!22872 n2!59)))

(declare-fun b!44166 () Bool)

(assert (=> b!44166 (= e!22872 (Succ!104 (+!5 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59)))))

(assert (= (and d!31240 c!9420) b!44165))

(assert (= (and d!31240 (not c!9420)) b!44166))

(declare-fun m!47375 () Bool)

(assert (=> b!44166 m!47375))

(assert (=> b!44153 d!31240))

(declare-fun d!31242 () Bool)

(declare-fun res!20903 () Bool)

(declare-fun e!22875 () Bool)

(assert (=> d!31242 (=> (not res!20903) (not e!22875))))

(assert (=> d!31242 (= res!20903 (not (<!2 n1!48 Zero!107)))))

(assert (=> d!31242 (= (>!2 n1!48 Zero!107) e!22875)))

(declare-fun b!44169 () Bool)

(assert (=> b!44169 (= e!22875 (not (= n1!48 Zero!107)))))

(assert (= (and d!31242 res!20903) b!44169))

(declare-fun m!47377 () Bool)

(assert (=> d!31242 m!47377))

(assert (=> start!5834 d!31242))

(declare-fun d!31244 () Bool)

(declare-fun res!20906 () Bool)

(declare-fun e!22878 () Bool)

(assert (=> d!31244 (=> res!20906 e!22878)))

(assert (=> d!31244 (= res!20906 (<!2 n1!48 (*!4 n1!48 n2!59)))))

(assert (=> d!31244 (= (<=!2 n1!48 (*!4 n1!48 n2!59)) e!22878)))

(declare-fun b!44172 () Bool)

(assert (=> b!44172 (= e!22878 (= n1!48 (*!4 n1!48 n2!59)))))

(assert (= (and d!31244 (not res!20906)) b!44172))

(assert (=> d!31244 m!47349))

(declare-fun m!47379 () Bool)

(assert (=> d!31244 m!47379))

(assert (=> b!44148 d!31244))

(declare-fun d!31246 () Bool)

(declare-fun c!9421 () Bool)

(assert (=> d!31246 (= c!9421 (is-Zero!107 n1!48))))

(declare-fun e!22879 () Nat!123)

(assert (=> d!31246 (= (*!4 n1!48 n2!59) e!22879)))

(declare-fun b!44173 () Bool)

(assert (=> b!44173 (= e!22879 Zero!107)))

(declare-fun b!44174 () Bool)

(assert (=> b!44174 (= e!22879 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))

(assert (= (and d!31246 c!9421) b!44173))

(assert (= (and d!31246 (not c!9421)) b!44174))

(assert (=> b!44174 m!47355))

(assert (=> b!44174 m!47355))

(assert (=> b!44174 m!47357))

(assert (=> b!44148 d!31246))

(assert (=> b!44150 d!31238))

(declare-fun d!31248 () Bool)

(assert (=> d!31248 (<!2 (*!4 (n!1248 n1!48) n2!59) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))

(declare-fun lt!8043 () Unit!441)

(declare-fun e!22882 () Unit!441)

(assert (=> d!31248 (= lt!8043 e!22882)))

(declare-fun c!9424 () Bool)

(assert (=> d!31248 (= c!9424 (is-Zero!107 (*!4 (n!1248 n1!48) n2!59)))))

(assert (=> d!31248 (>!2 n2!59 Zero!107)))

(assert (=> d!31248 (= (increasing_plus_strict!0 (*!4 (n!1248 n1!48) n2!59) n2!59) lt!8043)))

(declare-fun b!44180 () Bool)

(declare-fun Unit!447 () Unit!441)

(assert (=> b!44180 (= e!22882 Unit!447)))

(declare-fun lt!8044 () Unit!441)

(assert (=> b!44180 (= lt!8044 (increasing_plus_strict!0 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59))))

(declare-fun b!44179 () Bool)

(declare-fun Unit!448 () Unit!441)

(assert (=> b!44179 (= e!22882 Unit!448)))

(assert (= (and d!31248 c!9424) b!44179))

(assert (= (and d!31248 (not c!9424)) b!44180))

(assert (=> d!31248 m!47355))

(assert (=> d!31248 m!47357))

(assert (=> d!31248 m!47355))

(assert (=> d!31248 m!47357))

(declare-fun m!47381 () Bool)

(assert (=> d!31248 m!47381))

(assert (=> d!31248 m!47367))

(declare-fun m!47383 () Bool)

(assert (=> b!44180 m!47383))

(assert (=> b!44150 d!31248))

(assert (=> b!44150 d!31240))

(declare-fun d!31250 () Bool)

(assert (=> d!31250 (<=!2 (Succ!104 (n!1248 n1!48)) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))

(assert (=> d!31250 true))

(declare-fun x$44!58 () Unit!441)

(assert (=> d!31250 (= (succ_<=!0 (n!1248 n1!48) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)) x$44!58)))

(declare-fun bs!17746 () Bool)

(assert (= bs!17746 d!31250))

(assert (=> bs!17746 m!47357))

(declare-fun m!47385 () Bool)

(assert (=> bs!17746 m!47385))

(assert (=> b!44150 d!31250))

(assert (=> b!44150 d!31246))

(declare-fun d!31252 () Bool)

(assert (=> d!31252 (<=!2 (n!1248 n1!48) (*!4 (n!1248 n1!48) n2!59))))

(assert (=> d!31252 true))

(declare-fun x$66!44 () Unit!441)

(assert (=> d!31252 (= (increasing_times!0 (n!1248 n1!48) n2!59) x$66!44)))

(declare-fun bs!17747 () Bool)

(assert (= bs!17747 d!31252))

(assert (=> bs!17747 m!47355))

(assert (=> bs!17747 m!47355))

(declare-fun m!47387 () Bool)

(assert (=> bs!17747 m!47387))

(assert (=> b!44150 d!31252))

(assert (=> b!44150 d!31244))

(declare-fun d!31254 () Bool)

(declare-fun res!20907 () Bool)

(declare-fun e!22883 () Bool)

(assert (=> d!31254 (=> (not res!20907) (not e!22883))))

(assert (=> d!31254 (= res!20907 (not (<!2 n2!59 Zero!107)))))

(assert (=> d!31254 (= (>!2 n2!59 Zero!107) e!22883)))

(declare-fun b!44181 () Bool)

(assert (=> b!44181 (= e!22883 (not (= n2!59 Zero!107)))))

(assert (= (and d!31254 res!20907) b!44181))

(declare-fun m!47389 () Bool)

(assert (=> d!31254 m!47389))

(assert (=> b!44154 d!31254))

(push 1)

(assert (not d!31242))

(assert (not b!44174))

(assert (not d!31252))

(assert (not b!44166))

(assert (not d!31254))

(assert (not d!31236))

(assert (not d!31244))

(assert (not d!31248))

(assert (not b!44180))

(assert (not d!31250))

(assert (not b!44160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31256 () Bool)

(declare-fun lt!8047 () Bool)

(declare-fun repr!0 (Nat!123) Int)

(assert (=> d!31256 (= lt!8047 (< (repr!0 n1!48) (repr!0 Zero!107)))))

(declare-fun e!22886 () Bool)

(assert (=> d!31256 (= lt!8047 e!22886)))

(declare-fun c!9427 () Bool)

(assert (=> d!31256 (= c!9427 (and (is-Succ!104 n1!48) (is-Succ!104 Zero!107)))))

(assert (=> d!31256 (= (<!2 n1!48 Zero!107) lt!8047)))

(declare-fun b!44186 () Bool)

(assert (=> b!44186 (= e!22886 (<!2 (n!1248 n1!48) (n!1248 Zero!107)))))

(declare-fun b!44187 () Bool)

(assert (=> b!44187 (= e!22886 (and (is-Zero!107 n1!48) (is-Succ!104 Zero!107)))))

(assert (= (and d!31256 c!9427) b!44186))

(assert (= (and d!31256 (not c!9427)) b!44187))

(declare-fun m!47391 () Bool)

(assert (=> d!31256 m!47391))

(declare-fun m!47393 () Bool)

(assert (=> d!31256 m!47393))

(declare-fun m!47395 () Bool)

(assert (=> b!44186 m!47395))

(assert (=> d!31242 d!31256))

(declare-fun d!31258 () Bool)

(declare-fun lt!8048 () Bool)

(assert (=> d!31258 (= lt!8048 (< (repr!0 n1!48) (repr!0 (*!4 n1!48 n2!59))))))

(declare-fun e!22887 () Bool)

(assert (=> d!31258 (= lt!8048 e!22887)))

(declare-fun c!9428 () Bool)

(assert (=> d!31258 (= c!9428 (and (is-Succ!104 n1!48) (is-Succ!104 (*!4 n1!48 n2!59))))))

(assert (=> d!31258 (= (<!2 n1!48 (*!4 n1!48 n2!59)) lt!8048)))

(declare-fun b!44188 () Bool)

(assert (=> b!44188 (= e!22887 (<!2 (n!1248 n1!48) (n!1248 (*!4 n1!48 n2!59))))))

(declare-fun b!44189 () Bool)

(assert (=> b!44189 (= e!22887 (and (is-Zero!107 n1!48) (is-Succ!104 (*!4 n1!48 n2!59))))))

(assert (= (and d!31258 c!9428) b!44188))

(assert (= (and d!31258 (not c!9428)) b!44189))

(assert (=> d!31258 m!47391))

(assert (=> d!31258 m!47349))

(declare-fun m!47397 () Bool)

(assert (=> d!31258 m!47397))

(declare-fun m!47399 () Bool)

(assert (=> b!44188 m!47399))

(assert (=> d!31244 d!31258))

(declare-fun d!31260 () Bool)

(assert (=> d!31260 (<!2 (n!1248 (*!4 (n!1248 n1!48) n2!59)) (+!5 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59))))

(declare-fun lt!8049 () Unit!441)

(declare-fun e!22888 () Unit!441)

(assert (=> d!31260 (= lt!8049 e!22888)))

(declare-fun c!9429 () Bool)

(assert (=> d!31260 (= c!9429 (is-Zero!107 (n!1248 (*!4 (n!1248 n1!48) n2!59))))))

(assert (=> d!31260 (>!2 n2!59 Zero!107)))

(assert (=> d!31260 (= (increasing_plus_strict!0 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59) lt!8049)))

(declare-fun b!44191 () Bool)

(declare-fun Unit!449 () Unit!441)

(assert (=> b!44191 (= e!22888 Unit!449)))

(declare-fun lt!8050 () Unit!441)

(assert (=> b!44191 (= lt!8050 (increasing_plus_strict!0 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59))) n2!59))))

(declare-fun b!44190 () Bool)

(declare-fun Unit!450 () Unit!441)

(assert (=> b!44190 (= e!22888 Unit!450)))

(assert (= (and d!31260 c!9429) b!44190))

(assert (= (and d!31260 (not c!9429)) b!44191))

(assert (=> d!31260 m!47375))

(assert (=> d!31260 m!47375))

(declare-fun m!47401 () Bool)

(assert (=> d!31260 m!47401))

(assert (=> d!31260 m!47367))

(declare-fun m!47403 () Bool)

(assert (=> b!44191 m!47403))

(assert (=> b!44180 d!31260))

(declare-fun d!31262 () Bool)

(declare-fun c!9430 () Bool)

(assert (=> d!31262 (= c!9430 (is-Zero!107 (*!4 (n!1248 (n!1248 n1!48)) n2!59)))))

(declare-fun e!22889 () Nat!123)

(assert (=> d!31262 (= (+!5 (*!4 (n!1248 (n!1248 n1!48)) n2!59) n2!59) e!22889)))

(declare-fun b!44192 () Bool)

(assert (=> b!44192 (= e!22889 n2!59)))

(declare-fun b!44193 () Bool)

(assert (=> b!44193 (= e!22889 (Succ!104 (+!5 (n!1248 (*!4 (n!1248 (n!1248 n1!48)) n2!59)) n2!59)))))

(assert (= (and d!31262 c!9430) b!44192))

(assert (= (and d!31262 (not c!9430)) b!44193))

(declare-fun m!47405 () Bool)

(assert (=> b!44193 m!47405))

(assert (=> b!44160 d!31262))

(declare-fun d!31264 () Bool)

(declare-fun c!9431 () Bool)

(assert (=> d!31264 (= c!9431 (is-Zero!107 (n!1248 (n!1248 n1!48))))))

(declare-fun e!22890 () Nat!123)

(assert (=> d!31264 (= (*!4 (n!1248 (n!1248 n1!48)) n2!59) e!22890)))

(declare-fun b!44194 () Bool)

(assert (=> b!44194 (= e!22890 Zero!107)))

(declare-fun b!44195 () Bool)

(assert (=> b!44195 (= e!22890 (+!5 (*!4 (n!1248 (n!1248 (n!1248 n1!48))) n2!59) n2!59))))

(assert (= (and d!31264 c!9431) b!44194))

(assert (= (and d!31264 (not c!9431)) b!44195))

(declare-fun m!47407 () Bool)

(assert (=> b!44195 m!47407))

(assert (=> b!44195 m!47407))

(declare-fun m!47409 () Bool)

(assert (=> b!44195 m!47409))

(assert (=> b!44160 d!31264))

(declare-fun d!31266 () Bool)

(declare-fun res!20908 () Bool)

(declare-fun e!22891 () Bool)

(assert (=> d!31266 (=> res!20908 e!22891)))

(assert (=> d!31266 (= res!20908 (<!2 (n!1248 n1!48) (*!4 (n!1248 n1!48) n2!59)))))

(assert (=> d!31266 (= (<=!2 (n!1248 n1!48) (*!4 (n!1248 n1!48) n2!59)) e!22891)))

(declare-fun b!44196 () Bool)

(assert (=> b!44196 (= e!22891 (= (n!1248 n1!48) (*!4 (n!1248 n1!48) n2!59)))))

(assert (= (and d!31266 (not res!20908)) b!44196))

(assert (=> d!31266 m!47355))

(declare-fun m!47411 () Bool)

(assert (=> d!31266 m!47411))

(assert (=> d!31252 d!31266))

(assert (=> d!31252 d!31238))

(declare-fun d!31268 () Bool)

(declare-fun lt!8051 () Bool)

(assert (=> d!31268 (= lt!8051 (< (repr!0 (*!4 (n!1248 n1!48) n2!59)) (repr!0 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(declare-fun e!22892 () Bool)

(assert (=> d!31268 (= lt!8051 e!22892)))

(declare-fun c!9432 () Bool)

(assert (=> d!31268 (= c!9432 (and (is-Succ!104 (*!4 (n!1248 n1!48) n2!59)) (is-Succ!104 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(assert (=> d!31268 (= (<!2 (*!4 (n!1248 n1!48) n2!59) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)) lt!8051)))

(declare-fun b!44197 () Bool)

(assert (=> b!44197 (= e!22892 (<!2 (n!1248 (*!4 (n!1248 n1!48) n2!59)) (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(declare-fun b!44198 () Bool)

(assert (=> b!44198 (= e!22892 (and (is-Zero!107 (*!4 (n!1248 n1!48) n2!59)) (is-Succ!104 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(assert (= (and d!31268 c!9432) b!44197))

(assert (= (and d!31268 (not c!9432)) b!44198))

(assert (=> d!31268 m!47355))

(declare-fun m!47413 () Bool)

(assert (=> d!31268 m!47413))

(assert (=> d!31268 m!47357))

(declare-fun m!47415 () Bool)

(assert (=> d!31268 m!47415))

(declare-fun m!47417 () Bool)

(assert (=> b!44197 m!47417))

(assert (=> d!31248 d!31268))

(assert (=> d!31248 d!31240))

(assert (=> d!31248 d!31254))

(declare-fun d!31270 () Bool)

(declare-fun c!9433 () Bool)

(assert (=> d!31270 (= c!9433 (is-Zero!107 (n!1248 (*!4 (n!1248 n1!48) n2!59))))))

(declare-fun e!22893 () Nat!123)

(assert (=> d!31270 (= (+!5 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59) e!22893)))

(declare-fun b!44199 () Bool)

(assert (=> b!44199 (= e!22893 n2!59)))

(declare-fun b!44200 () Bool)

(assert (=> b!44200 (= e!22893 (Succ!104 (+!5 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59))) n2!59)))))

(assert (= (and d!31270 c!9433) b!44199))

(assert (= (and d!31270 (not c!9433)) b!44200))

(declare-fun m!47419 () Bool)

(assert (=> b!44200 m!47419))

(assert (=> b!44166 d!31270))

(declare-fun d!31272 () Bool)

(declare-fun lt!8052 () Bool)

(assert (=> d!31272 (= lt!8052 (< (repr!0 (n!1248 n1!48)) (repr!0 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(declare-fun e!22894 () Bool)

(assert (=> d!31272 (= lt!8052 e!22894)))

(declare-fun c!9434 () Bool)

(assert (=> d!31272 (= c!9434 (and (is-Succ!104 (n!1248 n1!48)) (is-Succ!104 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(assert (=> d!31272 (= (<!2 (n!1248 n1!48) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)) lt!8052)))

(declare-fun b!44201 () Bool)

(assert (=> b!44201 (= e!22894 (<!2 (n!1248 (n!1248 n1!48)) (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(declare-fun b!44202 () Bool)

(assert (=> b!44202 (= e!22894 (and (is-Zero!107 (n!1248 n1!48)) (is-Succ!104 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(assert (= (and d!31272 c!9434) b!44201))

(assert (= (and d!31272 (not c!9434)) b!44202))

(declare-fun m!47421 () Bool)

(assert (=> d!31272 m!47421))

(assert (=> d!31272 m!47357))

(assert (=> d!31272 m!47415))

(declare-fun m!47423 () Bool)

(assert (=> b!44201 m!47423))

(assert (=> d!31236 d!31272))

(assert (=> b!44174 d!31240))

(assert (=> b!44174 d!31238))

(declare-fun d!31274 () Bool)

(declare-fun lt!8053 () Bool)

(assert (=> d!31274 (= lt!8053 (< (repr!0 n2!59) (repr!0 Zero!107)))))

(declare-fun e!22895 () Bool)

(assert (=> d!31274 (= lt!8053 e!22895)))

(declare-fun c!9435 () Bool)

(assert (=> d!31274 (= c!9435 (and (is-Succ!104 n2!59) (is-Succ!104 Zero!107)))))

(assert (=> d!31274 (= (<!2 n2!59 Zero!107) lt!8053)))

(declare-fun b!44203 () Bool)

(assert (=> b!44203 (= e!22895 (<!2 (n!1248 n2!59) (n!1248 Zero!107)))))

(declare-fun b!44204 () Bool)

(assert (=> b!44204 (= e!22895 (and (is-Zero!107 n2!59) (is-Succ!104 Zero!107)))))

(assert (= (and d!31274 c!9435) b!44203))

(assert (= (and d!31274 (not c!9435)) b!44204))

(declare-fun m!47425 () Bool)

(assert (=> d!31274 m!47425))

(assert (=> d!31274 m!47393))

(declare-fun m!47427 () Bool)

(assert (=> b!44203 m!47427))

(assert (=> d!31254 d!31274))

(declare-fun d!31276 () Bool)

(declare-fun res!20909 () Bool)

(declare-fun e!22896 () Bool)

(assert (=> d!31276 (=> res!20909 e!22896)))

(assert (=> d!31276 (= res!20909 (<!2 (Succ!104 (n!1248 n1!48)) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))

(assert (=> d!31276 (= (<=!2 (Succ!104 (n!1248 n1!48)) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)) e!22896)))

(declare-fun b!44205 () Bool)

(assert (=> b!44205 (= e!22896 (= (Succ!104 (n!1248 n1!48)) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))

(assert (= (and d!31276 (not res!20909)) b!44205))

(assert (=> d!31276 m!47357))

(declare-fun m!47429 () Bool)

(assert (=> d!31276 m!47429))

(assert (=> d!31250 d!31276))

(push 1)

(assert (not d!31266))

(assert (not b!44186))

(assert (not d!31268))

(assert (not b!44193))

(assert (not b!44203))

(assert (not d!31260))

(assert (not b!44195))

(assert (not d!31274))

(assert (not d!31272))

(assert (not b!44197))

(assert (not d!31276))

(assert (not b!44191))

(assert (not b!44201))

(assert (not d!31256))

(assert (not d!31258))

(assert (not b!44200))

(assert (not b!44188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31278 () Bool)

(declare-fun lt!8054 () Bool)

(assert (=> d!31278 (= lt!8054 (< (repr!0 (Succ!104 (n!1248 n1!48))) (repr!0 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(declare-fun e!22897 () Bool)

(assert (=> d!31278 (= lt!8054 e!22897)))

(declare-fun c!9436 () Bool)

(assert (=> d!31278 (= c!9436 (and (is-Succ!104 (Succ!104 (n!1248 n1!48))) (is-Succ!104 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(assert (=> d!31278 (= (<!2 (Succ!104 (n!1248 n1!48)) (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)) lt!8054)))

(declare-fun b!44206 () Bool)

(assert (=> b!44206 (= e!22897 (<!2 (n!1248 (Succ!104 (n!1248 n1!48))) (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(declare-fun b!44207 () Bool)

(assert (=> b!44207 (= e!22897 (and (is-Zero!107 (Succ!104 (n!1248 n1!48))) (is-Succ!104 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))))))

(assert (= (and d!31278 c!9436) b!44206))

(assert (= (and d!31278 (not c!9436)) b!44207))

(declare-fun m!47431 () Bool)

(assert (=> d!31278 m!47431))

(assert (=> d!31278 m!47357))

(assert (=> d!31278 m!47415))

(declare-fun m!47433 () Bool)

(assert (=> b!44206 m!47433))

(assert (=> d!31276 d!31278))

(declare-fun d!31280 () Bool)

(declare-fun c!9437 () Bool)

(assert (=> d!31280 (= c!9437 (is-Zero!107 (*!4 (n!1248 (n!1248 (n!1248 n1!48))) n2!59)))))

(declare-fun e!22898 () Nat!123)

(assert (=> d!31280 (= (+!5 (*!4 (n!1248 (n!1248 (n!1248 n1!48))) n2!59) n2!59) e!22898)))

(declare-fun b!44208 () Bool)

(assert (=> b!44208 (= e!22898 n2!59)))

(declare-fun b!44209 () Bool)

(assert (=> b!44209 (= e!22898 (Succ!104 (+!5 (n!1248 (*!4 (n!1248 (n!1248 (n!1248 n1!48))) n2!59)) n2!59)))))

(assert (= (and d!31280 c!9437) b!44208))

(assert (= (and d!31280 (not c!9437)) b!44209))

(declare-fun m!47435 () Bool)

(assert (=> b!44209 m!47435))

(assert (=> b!44195 d!31280))

(declare-fun d!31282 () Bool)

(declare-fun c!9438 () Bool)

(assert (=> d!31282 (= c!9438 (is-Zero!107 (n!1248 (n!1248 (n!1248 n1!48)))))))

(declare-fun e!22899 () Nat!123)

(assert (=> d!31282 (= (*!4 (n!1248 (n!1248 (n!1248 n1!48))) n2!59) e!22899)))

(declare-fun b!44210 () Bool)

(assert (=> b!44210 (= e!22899 Zero!107)))

(declare-fun b!44211 () Bool)

(assert (=> b!44211 (= e!22899 (+!5 (*!4 (n!1248 (n!1248 (n!1248 (n!1248 n1!48)))) n2!59) n2!59))))

(assert (= (and d!31282 c!9438) b!44210))

(assert (= (and d!31282 (not c!9438)) b!44211))

(declare-fun m!47437 () Bool)

(assert (=> b!44211 m!47437))

(assert (=> b!44211 m!47437))

(declare-fun m!47439 () Bool)

(assert (=> b!44211 m!47439))

(assert (=> b!44195 d!31282))

(declare-fun d!31284 () Bool)

(assert (not d!31284))

(assert (=> b!44186 d!31284))

(declare-fun d!31286 () Bool)

(declare-fun lt!8055 () Bool)

(assert (=> d!31286 (= lt!8055 (< (repr!0 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (repr!0 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))))

(declare-fun e!22900 () Bool)

(assert (=> d!31286 (= lt!8055 e!22900)))

(declare-fun c!9439 () Bool)

(assert (=> d!31286 (= c!9439 (and (is-Succ!104 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (is-Succ!104 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))))

(assert (=> d!31286 (= (<!2 (n!1248 (*!4 (n!1248 n1!48) n2!59)) (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))) lt!8055)))

(declare-fun b!44212 () Bool)

(assert (=> b!44212 (= e!22900 (<!2 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (n!1248 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))))

(declare-fun b!44213 () Bool)

(assert (=> b!44213 (= e!22900 (and (is-Zero!107 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (is-Succ!104 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))))

(assert (= (and d!31286 c!9439) b!44212))

(assert (= (and d!31286 (not c!9439)) b!44213))

(declare-fun m!47441 () Bool)

(assert (=> d!31286 m!47441))

(declare-fun m!47443 () Bool)

(assert (=> d!31286 m!47443))

(declare-fun m!47445 () Bool)

(assert (=> b!44212 m!47445))

(assert (=> b!44197 d!31286))

(declare-fun d!31288 () Bool)

(declare-fun lt!8056 () Bool)

(assert (=> d!31288 (= lt!8056 (< (repr!0 (n!1248 (n!1248 n1!48))) (repr!0 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))))

(declare-fun e!22901 () Bool)

(assert (=> d!31288 (= lt!8056 e!22901)))

(declare-fun c!9440 () Bool)

(assert (=> d!31288 (= c!9440 (and (is-Succ!104 (n!1248 (n!1248 n1!48))) (is-Succ!104 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))))

(assert (=> d!31288 (= (<!2 (n!1248 (n!1248 n1!48)) (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))) lt!8056)))

(declare-fun b!44214 () Bool)

(assert (=> b!44214 (= e!22901 (<!2 (n!1248 (n!1248 (n!1248 n1!48))) (n!1248 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))))

(declare-fun b!44215 () Bool)

(assert (=> b!44215 (= e!22901 (and (is-Zero!107 (n!1248 (n!1248 n1!48))) (is-Succ!104 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))))

(assert (= (and d!31288 c!9440) b!44214))

(assert (= (and d!31288 (not c!9440)) b!44215))

(declare-fun m!47447 () Bool)

(assert (=> d!31288 m!47447))

(assert (=> d!31288 m!47443))

(declare-fun m!47449 () Bool)

(assert (=> b!44214 m!47449))

(assert (=> b!44201 d!31288))

(declare-fun d!31290 () Bool)

(declare-fun lt!8057 () Bool)

(assert (=> d!31290 (= lt!8057 (< (repr!0 (n!1248 n1!48)) (repr!0 (*!4 (n!1248 n1!48) n2!59))))))

(declare-fun e!22902 () Bool)

(assert (=> d!31290 (= lt!8057 e!22902)))

(declare-fun c!9441 () Bool)

(assert (=> d!31290 (= c!9441 (and (is-Succ!104 (n!1248 n1!48)) (is-Succ!104 (*!4 (n!1248 n1!48) n2!59))))))

(assert (=> d!31290 (= (<!2 (n!1248 n1!48) (*!4 (n!1248 n1!48) n2!59)) lt!8057)))

(declare-fun b!44216 () Bool)

(assert (=> b!44216 (= e!22902 (<!2 (n!1248 (n!1248 n1!48)) (n!1248 (*!4 (n!1248 n1!48) n2!59))))))

(declare-fun b!44217 () Bool)

(assert (=> b!44217 (= e!22902 (and (is-Zero!107 (n!1248 n1!48)) (is-Succ!104 (*!4 (n!1248 n1!48) n2!59))))))

(assert (= (and d!31290 c!9441) b!44216))

(assert (= (and d!31290 (not c!9441)) b!44217))

(assert (=> d!31290 m!47421))

(assert (=> d!31290 m!47355))

(assert (=> d!31290 m!47413))

(declare-fun m!47451 () Bool)

(assert (=> b!44216 m!47451))

(assert (=> d!31266 d!31290))

(declare-fun d!31292 () Bool)

(declare-fun c!9442 () Bool)

(assert (=> d!31292 (= c!9442 (is-Zero!107 (n!1248 (*!4 (n!1248 (n!1248 n1!48)) n2!59))))))

(declare-fun e!22903 () Nat!123)

(assert (=> d!31292 (= (+!5 (n!1248 (*!4 (n!1248 (n!1248 n1!48)) n2!59)) n2!59) e!22903)))

(declare-fun b!44218 () Bool)

(assert (=> b!44218 (= e!22903 n2!59)))

(declare-fun b!44219 () Bool)

(assert (=> b!44219 (= e!22903 (Succ!104 (+!5 (n!1248 (n!1248 (*!4 (n!1248 (n!1248 n1!48)) n2!59))) n2!59)))))

(assert (= (and d!31292 c!9442) b!44218))

(assert (= (and d!31292 (not c!9442)) b!44219))

(declare-fun m!47453 () Bool)

(assert (=> b!44219 m!47453))

(assert (=> b!44193 d!31292))

(declare-fun d!31294 () Bool)

(declare-fun lt!8058 () Bool)

(assert (=> d!31294 (= lt!8058 (< (repr!0 (n!1248 n1!48)) (repr!0 (n!1248 (*!4 n1!48 n2!59)))))))

(declare-fun e!22904 () Bool)

(assert (=> d!31294 (= lt!8058 e!22904)))

(declare-fun c!9443 () Bool)

(assert (=> d!31294 (= c!9443 (and (is-Succ!104 (n!1248 n1!48)) (is-Succ!104 (n!1248 (*!4 n1!48 n2!59)))))))

(assert (=> d!31294 (= (<!2 (n!1248 n1!48) (n!1248 (*!4 n1!48 n2!59))) lt!8058)))

(declare-fun b!44220 () Bool)

(assert (=> b!44220 (= e!22904 (<!2 (n!1248 (n!1248 n1!48)) (n!1248 (n!1248 (*!4 n1!48 n2!59)))))))

(declare-fun b!44221 () Bool)

(assert (=> b!44221 (= e!22904 (and (is-Zero!107 (n!1248 n1!48)) (is-Succ!104 (n!1248 (*!4 n1!48 n2!59)))))))

(assert (= (and d!31294 c!9443) b!44220))

(assert (= (and d!31294 (not c!9443)) b!44221))

(assert (=> d!31294 m!47421))

(declare-fun m!47455 () Bool)

(assert (=> d!31294 m!47455))

(declare-fun m!47457 () Bool)

(assert (=> b!44220 m!47457))

(assert (=> b!44188 d!31294))

(declare-fun d!31296 () Bool)

(declare-fun lt!8061 () Int)

(assert (=> d!31296 (>= lt!8061 0)))

(declare-fun e!22907 () Int)

(assert (=> d!31296 (= lt!8061 e!22907)))

(declare-fun c!9446 () Bool)

(assert (=> d!31296 (= c!9446 (is-Zero!107 n2!59))))

(assert (=> d!31296 (= (repr!0 n2!59) lt!8061)))

(declare-fun b!44226 () Bool)

(assert (=> b!44226 (= e!22907 0)))

(declare-fun b!44227 () Bool)

(assert (=> b!44227 (= e!22907 (+ (repr!0 (n!1248 n2!59)) 1))))

(assert (= (and d!31296 c!9446) b!44226))

(assert (= (and d!31296 (not c!9446)) b!44227))

(declare-fun m!47459 () Bool)

(assert (=> b!44227 m!47459))

(assert (=> d!31274 d!31296))

(declare-fun d!31298 () Bool)

(declare-fun lt!8062 () Int)

(assert (=> d!31298 (>= lt!8062 0)))

(declare-fun e!22908 () Int)

(assert (=> d!31298 (= lt!8062 e!22908)))

(declare-fun c!9447 () Bool)

(assert (=> d!31298 (= c!9447 (is-Zero!107 Zero!107))))

(assert (=> d!31298 (= (repr!0 Zero!107) lt!8062)))

(declare-fun b!44228 () Bool)

(assert (=> b!44228 (= e!22908 0)))

(declare-fun b!44229 () Bool)

(assert (=> b!44229 (= e!22908 (+ (repr!0 (n!1248 Zero!107)) 1))))

(assert (= (and d!31298 c!9447) b!44228))

(assert (= (and d!31298 (not c!9447)) b!44229))

(declare-fun m!47461 () Bool)

(assert (=> b!44229 m!47461))

(assert (=> d!31274 d!31298))

(declare-fun d!31300 () Bool)

(declare-fun lt!8063 () Int)

(assert (=> d!31300 (>= lt!8063 0)))

(declare-fun e!22909 () Int)

(assert (=> d!31300 (= lt!8063 e!22909)))

(declare-fun c!9448 () Bool)

(assert (=> d!31300 (= c!9448 (is-Zero!107 (*!4 (n!1248 n1!48) n2!59)))))

(assert (=> d!31300 (= (repr!0 (*!4 (n!1248 n1!48) n2!59)) lt!8063)))

(declare-fun b!44230 () Bool)

(assert (=> b!44230 (= e!22909 0)))

(declare-fun b!44231 () Bool)

(assert (=> b!44231 (= e!22909 (+ (repr!0 (n!1248 (*!4 (n!1248 n1!48) n2!59))) 1))))

(assert (= (and d!31300 c!9448) b!44230))

(assert (= (and d!31300 (not c!9448)) b!44231))

(assert (=> b!44231 m!47441))

(assert (=> d!31268 d!31300))

(declare-fun d!31302 () Bool)

(declare-fun lt!8064 () Int)

(assert (=> d!31302 (>= lt!8064 0)))

(declare-fun e!22910 () Int)

(assert (=> d!31302 (= lt!8064 e!22910)))

(declare-fun c!9449 () Bool)

(assert (=> d!31302 (= c!9449 (is-Zero!107 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)))))

(assert (=> d!31302 (= (repr!0 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59)) lt!8064)))

(declare-fun b!44232 () Bool)

(assert (=> b!44232 (= e!22910 0)))

(declare-fun b!44233 () Bool)

(assert (=> b!44233 (= e!22910 (+ (repr!0 (n!1248 (+!5 (*!4 (n!1248 n1!48) n2!59) n2!59))) 1))))

(assert (= (and d!31302 c!9449) b!44232))

(assert (= (and d!31302 (not c!9449)) b!44233))

(assert (=> b!44233 m!47443))

(assert (=> d!31268 d!31302))

(declare-fun d!31304 () Bool)

(declare-fun lt!8065 () Bool)

(assert (=> d!31304 (= lt!8065 (< (repr!0 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (repr!0 (+!5 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59))))))

(declare-fun e!22911 () Bool)

(assert (=> d!31304 (= lt!8065 e!22911)))

(declare-fun c!9450 () Bool)

(assert (=> d!31304 (= c!9450 (and (is-Succ!104 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (is-Succ!104 (+!5 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59))))))

(assert (=> d!31304 (= (<!2 (n!1248 (*!4 (n!1248 n1!48) n2!59)) (+!5 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59)) lt!8065)))

(declare-fun b!44234 () Bool)

(assert (=> b!44234 (= e!22911 (<!2 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (n!1248 (+!5 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59))))))

(declare-fun b!44235 () Bool)

(assert (=> b!44235 (= e!22911 (and (is-Zero!107 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (is-Succ!104 (+!5 (n!1248 (*!4 (n!1248 n1!48) n2!59)) n2!59))))))

(assert (= (and d!31304 c!9450) b!44234))

(assert (= (and d!31304 (not c!9450)) b!44235))

(assert (=> d!31304 m!47441))

(assert (=> d!31304 m!47375))

(declare-fun m!47463 () Bool)

(assert (=> d!31304 m!47463))

(declare-fun m!47465 () Bool)

(assert (=> b!44234 m!47465))

(assert (=> d!31260 d!31304))

(assert (=> d!31260 d!31270))

(assert (=> d!31260 d!31254))

(declare-fun d!31306 () Bool)

(declare-fun lt!8066 () Int)

(assert (=> d!31306 (>= lt!8066 0)))

(declare-fun e!22912 () Int)

(assert (=> d!31306 (= lt!8066 e!22912)))

(declare-fun c!9451 () Bool)

(assert (=> d!31306 (= c!9451 (is-Zero!107 n1!48))))

(assert (=> d!31306 (= (repr!0 n1!48) lt!8066)))

(declare-fun b!44236 () Bool)

(assert (=> b!44236 (= e!22912 0)))

(declare-fun b!44237 () Bool)

(assert (=> b!44237 (= e!22912 (+ (repr!0 (n!1248 n1!48)) 1))))

(assert (= (and d!31306 c!9451) b!44236))

(assert (= (and d!31306 (not c!9451)) b!44237))

(assert (=> b!44237 m!47421))

(assert (=> d!31258 d!31306))

(declare-fun d!31308 () Bool)

(declare-fun lt!8067 () Int)

(assert (=> d!31308 (>= lt!8067 0)))

(declare-fun e!22913 () Int)

(assert (=> d!31308 (= lt!8067 e!22913)))

(declare-fun c!9452 () Bool)

(assert (=> d!31308 (= c!9452 (is-Zero!107 (*!4 n1!48 n2!59)))))

(assert (=> d!31308 (= (repr!0 (*!4 n1!48 n2!59)) lt!8067)))

(declare-fun b!44238 () Bool)

(assert (=> b!44238 (= e!22913 0)))

(declare-fun b!44239 () Bool)

(assert (=> b!44239 (= e!22913 (+ (repr!0 (n!1248 (*!4 n1!48 n2!59))) 1))))

(assert (= (and d!31308 c!9452) b!44238))

(assert (= (and d!31308 (not c!9452)) b!44239))

(assert (=> b!44239 m!47455))

(assert (=> d!31258 d!31308))

(declare-fun d!31310 () Bool)

(assert (not d!31310))

(assert (=> b!44203 d!31310))

(declare-fun d!31312 () Bool)

(assert (=> d!31312 (<!2 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59))) (+!5 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59))) n2!59))))

(declare-fun lt!8068 () Unit!441)

(declare-fun e!22914 () Unit!441)

(assert (=> d!31312 (= lt!8068 e!22914)))

(declare-fun c!9453 () Bool)

(assert (=> d!31312 (= c!9453 (is-Zero!107 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59)))))))

(assert (=> d!31312 (>!2 n2!59 Zero!107)))

(assert (=> d!31312 (= (increasing_plus_strict!0 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59))) n2!59) lt!8068)))

(declare-fun b!44241 () Bool)

(declare-fun Unit!451 () Unit!441)

(assert (=> b!44241 (= e!22914 Unit!451)))

(declare-fun lt!8069 () Unit!441)

(assert (=> b!44241 (= lt!8069 (increasing_plus_strict!0 (n!1248 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59)))) n2!59))))

(declare-fun b!44240 () Bool)

(declare-fun Unit!452 () Unit!441)

(assert (=> b!44240 (= e!22914 Unit!452)))

(assert (= (and d!31312 c!9453) b!44240))

(assert (= (and d!31312 (not c!9453)) b!44241))

(assert (=> d!31312 m!47419))

(assert (=> d!31312 m!47419))

(declare-fun m!47467 () Bool)

(assert (=> d!31312 m!47467))

(assert (=> d!31312 m!47367))

(declare-fun m!47469 () Bool)

(assert (=> b!44241 m!47469))

(assert (=> b!44191 d!31312))

(declare-fun d!31314 () Bool)

(declare-fun c!9454 () Bool)

(assert (=> d!31314 (= c!9454 (is-Zero!107 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59)))))))

(declare-fun e!22915 () Nat!123)

(assert (=> d!31314 (= (+!5 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59))) n2!59) e!22915)))

(declare-fun b!44242 () Bool)

(assert (=> b!44242 (= e!22915 n2!59)))

(declare-fun b!44243 () Bool)

(assert (=> b!44243 (= e!22915 (Succ!104 (+!5 (n!1248 (n!1248 (n!1248 (*!4 (n!1248 n1!48) n2!59)))) n2!59)))))

(assert (= (and d!31314 c!9454) b!44242))

(assert (= (and d!31314 (not c!9454)) b!44243))

(declare-fun m!47471 () Bool)

(assert (=> b!44243 m!47471))

(assert (=> b!44200 d!31314))

(assert (=> d!31256 d!31306))

(assert (=> d!31256 d!31298))

(declare-fun d!31316 () Bool)

(declare-fun lt!8070 () Int)

(assert (=> d!31316 (>= lt!8070 0)))

(declare-fun e!22916 () Int)

(assert (=> d!31316 (= lt!8070 e!22916)))

(declare-fun c!9455 () Bool)

(assert (=> d!31316 (= c!9455 (is-Zero!107 (n!1248 n1!48)))))

(assert (=> d!31316 (= (repr!0 (n!1248 n1!48)) lt!8070)))

(declare-fun b!44244 () Bool)

(assert (=> b!44244 (= e!22916 0)))

(declare-fun b!44245 () Bool)

(assert (=> b!44245 (= e!22916 (+ (repr!0 (n!1248 (n!1248 n1!48))) 1))))

(assert (= (and d!31316 c!9455) b!44244))

(assert (= (and d!31316 (not c!9455)) b!44245))

(assert (=> b!44245 m!47447))

(assert (=> d!31272 d!31316))

(assert (=> d!31272 d!31302))

(push 1)

(assert (not b!44229))

(assert (not d!31304))

(assert (not b!44227))

(assert (not b!44211))

(assert (not d!31288))

(assert (not d!31290))

(assert (not b!44212))

(assert (not b!44209))

(assert (not b!44214))

(assert (not b!44243))

(assert (not b!44216))

(assert (not d!31294))

(assert (not b!44219))

(assert (not d!31312))

(assert (not b!44231))

(assert (not b!44241))

(assert (not b!44206))

(assert (not d!31278))

(assert (not b!44233))

(assert (not d!31286))

(assert (not b!44234))

(assert (not b!44239))

(assert (not b!44245))

(assert (not b!44237))

(assert (not b!44220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

