; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!504 () Bool)

(assert start!504)

(declare-fun res!1195 () Bool)

(declare-fun e!2212 () Bool)

(assert (=> start!504 (=> (not res!1195) (not e!2212))))

(declare-datatypes () ((List!73 (Cons!73 (head!245 (_ BitVec 32)) (tail!257 List!73)) (Nil!74))))

(declare-datatypes () ((AbsQueue!22 (Queue!21 (front!73 List!73) (rear!75 List!73)))))

(declare-fun queue!16 () AbsQueue!22)

(declare-fun isAmortized!0 (AbsQueue!22) Bool)

(assert (=> start!504 (= res!1195 (isAmortized!0 queue!16))))

(assert (=> start!504 e!2212))

(assert (=> start!504 true))

(declare-fun b!3974 () Bool)

(declare-fun res!1196 () Bool)

(assert (=> b!3974 (=> (not res!1196) (not e!2212))))

(declare-fun isEmpty!12 (AbsQueue!22) Bool)

(assert (=> b!3974 (= res!1196 (not (isEmpty!12 queue!16)))))

(declare-fun b!3975 () Bool)

(declare-fun res!1197 () Bool)

(assert (=> b!3975 (=> (not res!1197) (not e!2212))))

(declare-fun x$5!16 () AbsQueue!22)

(declare-fun amortizedQueue!0 (List!73 List!73) AbsQueue!22)

(assert (=> b!3975 (= res!1197 (= x$5!16 (amortizedQueue!0 (tail!257 (front!73 queue!16)) (rear!75 queue!16))))))

(declare-fun b!3976 () Bool)

(assert (=> b!3976 (= e!2212 (not (isAmortized!0 x$5!16)))))

(assert (= (and start!504 res!1195) b!3974))

(assert (= (and b!3974 res!1196) b!3975))

(assert (= (and b!3975 res!1197) b!3976))

(declare-fun m!6275 () Bool)

(assert (=> start!504 m!6275))

(declare-fun m!6277 () Bool)

(assert (=> b!3974 m!6277))

(declare-fun m!6279 () Bool)

(assert (=> b!3975 m!6279))

(declare-fun m!6281 () Bool)

(assert (=> b!3976 m!6281))

(push 1)

(assert (not b!3976))

(assert (not b!3975))

(assert (not start!504))

(assert (not b!3974))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2904 () Bool)

(declare-fun size!23 (List!73) Int)

(assert (=> d!2904 (= (isAmortized!0 x$5!16) (>= (size!23 (front!73 x$5!16)) (size!23 (rear!75 x$5!16))))))

(declare-fun bs!268 () Bool)

(assert (= bs!268 d!2904))

(declare-fun m!6283 () Bool)

(assert (=> bs!268 m!6283))

(declare-fun m!6285 () Bool)

(assert (=> bs!268 m!6285))

(assert (=> b!3976 d!2904))

(declare-fun d!2906 () Bool)

(declare-fun lt!1134 () AbsQueue!22)

(assert (=> d!2906 (isAmortized!0 lt!1134)))

(declare-fun e!2215 () AbsQueue!22)

(assert (=> d!2906 (= lt!1134 e!2215)))

(declare-fun c!1457 () Bool)

(assert (=> d!2906 (= c!1457 (<= (size!23 (rear!75 queue!16)) (size!23 (tail!257 (front!73 queue!16)))))))

(assert (=> d!2906 (= (amortizedQueue!0 (tail!257 (front!73 queue!16)) (rear!75 queue!16)) lt!1134)))

(declare-fun b!3981 () Bool)

(assert (=> b!3981 (= e!2215 (Queue!21 (tail!257 (front!73 queue!16)) (rear!75 queue!16)))))

(declare-fun b!3982 () Bool)

(declare-fun concat!2 (List!73 List!73) List!73)

(declare-fun reverse!5 (List!73) List!73)

(assert (=> b!3982 (= e!2215 (Queue!21 (concat!2 (tail!257 (front!73 queue!16)) (reverse!5 (rear!75 queue!16))) Nil!74))))

(assert (= (and d!2906 c!1457) b!3981))

(assert (= (and d!2906 (not c!1457)) b!3982))

(declare-fun m!6287 () Bool)

(assert (=> d!2906 m!6287))

(declare-fun m!6289 () Bool)

(assert (=> d!2906 m!6289))

(declare-fun m!6291 () Bool)

(assert (=> d!2906 m!6291))

(declare-fun m!6293 () Bool)

(assert (=> b!3982 m!6293))

(assert (=> b!3982 m!6293))

(declare-fun m!6295 () Bool)

(assert (=> b!3982 m!6295))

(assert (=> b!3975 d!2906))

(declare-fun d!2908 () Bool)

(assert (=> d!2908 (= (isAmortized!0 queue!16) (>= (size!23 (front!73 queue!16)) (size!23 (rear!75 queue!16))))))

(declare-fun bs!269 () Bool)

(assert (= bs!269 d!2908))

(declare-fun m!6297 () Bool)

(assert (=> bs!269 m!6297))

(assert (=> bs!269 m!6289))

(assert (=> start!504 d!2908))

(declare-fun d!2910 () Bool)

(assert (=> d!2910 (= (isEmpty!12 queue!16) (and (is-Nil!74 (front!73 queue!16)) (is-Nil!74 (rear!75 queue!16))))))

(assert (=> b!3974 d!2910))

(push 1)

(assert (not d!2906))

(assert (not b!3982))

(assert (not d!2908))

(assert (not d!2904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

