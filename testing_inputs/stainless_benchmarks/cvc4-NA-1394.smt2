; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9708 () Bool)

(assert start!9708)

(declare-fun b!71024 () Bool)

(declare-fun e!38419 () Bool)

(declare-fun tp_is_empty!349 () Bool)

(declare-fun tp!16779 () Bool)

(assert (=> b!71024 (= e!38419 (and tp_is_empty!349 tp!16779))))

(declare-fun b!71022 () Bool)

(declare-fun e!38421 () Bool)

(declare-fun x$2!392 () Int)

(declare-datatypes () ((A!3040 (A!3041 (val!177 Int)))))

(declare-datatypes () ((List!583 (Cons!543 (h!798 A!3040) (t!47432 List!583)) (Nil!544))))

(declare-fun i!558 () List!583)

(declare-fun size!580 (List!583) Int)

(assert (=> b!71022 (= e!38421 (not (= x$2!392 (+ (* 2 (size!580 i!558)) 9))))))

(declare-fun res!34781 () Bool)

(assert (=> start!9708 (=> (not res!34781) (not e!38421))))

(declare-fun n!1654 () List!583)

(assert (=> start!9708 (= res!34781 (= n!1654 i!558))))

(assert (=> start!9708 e!38421))

(declare-fun e!38420 () Bool)

(assert (=> start!9708 e!38420))

(assert (=> start!9708 e!38419))

(assert (=> start!9708 true))

(declare-fun b!71021 () Bool)

(declare-fun res!34782 () Bool)

(assert (=> b!71021 (=> (not res!34782) (not e!38421))))

(declare-datatypes () ((List!584 (Cons!544 (h!799 (_ BitVec 32)) (t!47433 List!584)) (Nil!545))))

(declare-fun rec2!10 (List!583 List!584 Int) Int)

(assert (=> b!71021 (= res!34782 (= x$2!392 (rec2!10 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) 2)))))

(declare-fun b!71023 () Bool)

(declare-fun tp!16780 () Bool)

(assert (=> b!71023 (= e!38420 (and tp_is_empty!349 tp!16780))))

(assert (= (and start!9708 res!34781) b!71021))

(assert (= (and b!71021 res!34782) b!71022))

(assert (= (and start!9708 (is-Cons!543 n!1654)) b!71023))

(assert (= (and start!9708 (is-Cons!543 i!558)) b!71024))

(declare-fun m!70966 () Bool)

(assert (=> b!71022 m!70966))

(declare-fun m!70968 () Bool)

(assert (=> b!71021 m!70968))

(push 1)

(assert (not b!71024))

(assert (not b!71021))

(assert (not b!71023))

(assert tp_is_empty!349)

(assert (not b!71022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53870 () Bool)

(declare-fun size!581 (List!584) Int)

(declare-fun rec3!5 (List!583 List!584 (_ BitVec 32)) List!584)

(declare-fun head!888 (List!584) (_ BitVec 32))

(assert (=> d!53870 (= (rec2!10 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) 2) (+ (+ (+ (size!581 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) 2) (size!580 i!558)) (size!580 i!558)))))

(declare-fun bs!37680 () Bool)

(assert (= bs!37680 d!53870))

(declare-fun m!70970 () Bool)

(assert (=> bs!37680 m!70970))

(declare-fun m!70972 () Bool)

(assert (=> bs!37680 m!70972))

(assert (=> bs!37680 m!70970))

(assert (=> bs!37680 m!70972))

(declare-fun m!70974 () Bool)

(assert (=> bs!37680 m!70974))

(assert (=> bs!37680 m!70966))

(assert (=> b!71021 d!53870))

(declare-fun d!53872 () Bool)

(declare-fun lt!15114 () Int)

(assert (=> d!53872 (>= lt!15114 0)))

(declare-fun e!38424 () Int)

(assert (=> d!53872 (= lt!15114 e!38424)))

(declare-fun c!16991 () Bool)

(assert (=> d!53872 (= c!16991 (is-Nil!544 i!558))))

(assert (=> d!53872 (= (size!580 i!558) lt!15114)))

(declare-fun b!71029 () Bool)

(assert (=> b!71029 (= e!38424 0)))

(declare-fun b!71030 () Bool)

(assert (=> b!71030 (= e!38424 (+ 1 (size!580 (t!47432 i!558))))))

(assert (= (and d!53872 c!16991) b!71029))

(assert (= (and d!53872 (not c!16991)) b!71030))

(declare-fun m!70976 () Bool)

(assert (=> b!71030 m!70976))

(assert (=> b!71022 d!53872))

(declare-fun b!71035 () Bool)

(declare-fun e!38427 () Bool)

(declare-fun tp!16783 () Bool)

(assert (=> b!71035 (= e!38427 (and tp_is_empty!349 tp!16783))))

(assert (=> b!71024 (= tp!16779 e!38427)))

(assert (= (and b!71024 (is-Cons!543 (t!47432 i!558))) b!71035))

(declare-fun b!71036 () Bool)

(declare-fun e!38428 () Bool)

(declare-fun tp!16784 () Bool)

(assert (=> b!71036 (= e!38428 (and tp_is_empty!349 tp!16784))))

(assert (=> b!71023 (= tp!16780 e!38428)))

(assert (= (and b!71023 (is-Cons!543 (t!47432 n!1654))) b!71036))

(push 1)

(assert (not d!53870))

(assert (not b!71035))

(assert (not b!71036))

(assert (not b!71030))

(assert tp_is_empty!349)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53874 () Bool)

(assert (=> d!53874 (= (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) #b00000000000000000000000000000001)))

(assert (=> d!53870 d!53874))

(assert (=> d!53870 d!53872))

(declare-fun d!53876 () Bool)

(declare-fun $colon$colon!15 (List!584 (_ BitVec 32)) List!584)

(declare-fun rec1!14 (List!583 List!584) List!584)

(assert (=> d!53876 (= (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) ($colon$colon!15 (rec1!14 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(declare-fun bs!37681 () Bool)

(assert (= bs!37681 d!53876))

(declare-fun m!70978 () Bool)

(assert (=> bs!37681 m!70978))

(assert (=> bs!37681 m!70978))

(assert (=> bs!37681 m!70970))

(declare-fun m!70980 () Bool)

(assert (=> bs!37681 m!70980))

(assert (=> d!53870 d!53876))

(declare-fun d!53878 () Bool)

(declare-fun lt!15117 () Int)

(assert (=> d!53878 (>= lt!15117 0)))

(declare-fun e!38431 () Int)

(assert (=> d!53878 (= lt!15117 e!38431)))

(declare-fun c!16994 () Bool)

(assert (=> d!53878 (= c!16994 (is-Nil!545 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(assert (=> d!53878 (= (size!581 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) lt!15117)))

(declare-fun b!71041 () Bool)

(assert (=> b!71041 (= e!38431 0)))

(declare-fun b!71042 () Bool)

(assert (=> b!71042 (= e!38431 (+ 1 (size!581 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))))

(assert (= (and d!53878 c!16994) b!71041))

(assert (= (and d!53878 (not c!16994)) b!71042))

(declare-fun m!70982 () Bool)

(assert (=> b!71042 m!70982))

(assert (=> d!53870 d!53878))

(declare-fun d!53880 () Bool)

(declare-fun lt!15118 () Int)

(assert (=> d!53880 (>= lt!15118 0)))

(declare-fun e!38432 () Int)

(assert (=> d!53880 (= lt!15118 e!38432)))

(declare-fun c!16995 () Bool)

(assert (=> d!53880 (= c!16995 (is-Nil!544 (t!47432 i!558)))))

(assert (=> d!53880 (= (size!580 (t!47432 i!558)) lt!15118)))

(declare-fun b!71043 () Bool)

(assert (=> b!71043 (= e!38432 0)))

(declare-fun b!71044 () Bool)

(assert (=> b!71044 (= e!38432 (+ 1 (size!580 (t!47432 (t!47432 i!558)))))))

(assert (= (and d!53880 c!16995) b!71043))

(assert (= (and d!53880 (not c!16995)) b!71044))

(declare-fun m!70984 () Bool)

(assert (=> b!71044 m!70984))

(assert (=> b!71030 d!53880))

(declare-fun b!71045 () Bool)

(declare-fun e!38433 () Bool)

(declare-fun tp!16785 () Bool)

(assert (=> b!71045 (= e!38433 (and tp_is_empty!349 tp!16785))))

(assert (=> b!71035 (= tp!16783 e!38433)))

(assert (= (and b!71035 (is-Cons!543 (t!47432 (t!47432 i!558)))) b!71045))

(declare-fun b!71046 () Bool)

(declare-fun e!38434 () Bool)

(declare-fun tp!16786 () Bool)

(assert (=> b!71046 (= e!38434 (and tp_is_empty!349 tp!16786))))

(assert (=> b!71036 (= tp!16784 e!38434)))

(assert (= (and b!71036 (is-Cons!543 (t!47432 (t!47432 n!1654)))) b!71046))

(push 1)

(assert (not d!53876))

(assert (not b!71045))

(assert (not b!71044))

(assert (not b!71042))

(assert tp_is_empty!349)

(assert (not b!71046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53882 () Bool)

(declare-fun lt!15119 () Int)

(assert (=> d!53882 (>= lt!15119 0)))

(declare-fun e!38435 () Int)

(assert (=> d!53882 (= lt!15119 e!38435)))

(declare-fun c!16996 () Bool)

(assert (=> d!53882 (= c!16996 (is-Nil!545 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))

(assert (=> d!53882 (= (size!581 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))) lt!15119)))

(declare-fun b!71047 () Bool)

(assert (=> b!71047 (= e!38435 0)))

(declare-fun b!71048 () Bool)

(assert (=> b!71048 (= e!38435 (+ 1 (size!581 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))))

(assert (= (and d!53882 c!16996) b!71047))

(assert (= (and d!53882 (not c!16996)) b!71048))

(declare-fun m!70986 () Bool)

(assert (=> b!71048 m!70986))

(assert (=> b!71042 d!53882))

(declare-fun d!53884 () Bool)

(declare-fun lt!15120 () Int)

(assert (=> d!53884 (>= lt!15120 0)))

(declare-fun e!38436 () Int)

(assert (=> d!53884 (= lt!15120 e!38436)))

(declare-fun c!16997 () Bool)

(assert (=> d!53884 (= c!16997 (is-Nil!544 (t!47432 (t!47432 i!558))))))

(assert (=> d!53884 (= (size!580 (t!47432 (t!47432 i!558))) lt!15120)))

(declare-fun b!71049 () Bool)

(assert (=> b!71049 (= e!38436 0)))

(declare-fun b!71050 () Bool)

(assert (=> b!71050 (= e!38436 (+ 1 (size!580 (t!47432 (t!47432 (t!47432 i!558))))))))

(assert (= (and d!53884 c!16997) b!71049))

(assert (= (and d!53884 (not c!16997)) b!71050))

(declare-fun m!70988 () Bool)

(assert (=> b!71050 m!70988))

(assert (=> b!71044 d!53884))

(declare-fun d!53886 () Bool)

(assert (=> d!53886 (= ($colon$colon!15 (rec1!14 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) (Cons!544 (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (rec1!14 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(assert (=> d!53876 d!53886))

(declare-fun d!53888 () Bool)

(declare-fun ++!65 (List!584 List!584) List!584)

(assert (=> d!53888 (= (rec1!14 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (++!65 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))

(declare-fun bs!37682 () Bool)

(assert (= bs!37682 d!53888))

(declare-fun m!70990 () Bool)

(assert (=> bs!37682 m!70990))

(assert (=> d!53876 d!53888))

(declare-fun b!71051 () Bool)

(declare-fun e!38437 () Bool)

(declare-fun tp!16787 () Bool)

(assert (=> b!71051 (= e!38437 (and tp_is_empty!349 tp!16787))))

(assert (=> b!71046 (= tp!16786 e!38437)))

(assert (= (and b!71046 (is-Cons!543 (t!47432 (t!47432 (t!47432 n!1654))))) b!71051))

(declare-fun b!71052 () Bool)

(declare-fun e!38438 () Bool)

(declare-fun tp!16788 () Bool)

(assert (=> b!71052 (= e!38438 (and tp_is_empty!349 tp!16788))))

(assert (=> b!71045 (= tp!16785 e!38438)))

(assert (= (and b!71045 (is-Cons!543 (t!47432 (t!47432 (t!47432 i!558))))) b!71052))

(push 1)

(assert (not d!53888))

(assert (not b!71052))

(assert (not b!71050))

(assert (not b!71048))

(assert tp_is_empty!349)

(assert (not b!71051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53890 () Bool)

(declare-fun lt!15121 () Int)

(assert (=> d!53890 (>= lt!15121 0)))

(declare-fun e!38439 () Int)

(assert (=> d!53890 (= lt!15121 e!38439)))

(declare-fun c!16998 () Bool)

(assert (=> d!53890 (= c!16998 (is-Nil!545 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))))

(assert (=> d!53890 (= (size!581 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))) lt!15121)))

(declare-fun b!71053 () Bool)

(assert (=> b!71053 (= e!38439 0)))

(declare-fun b!71054 () Bool)

(assert (=> b!71054 (= e!38439 (+ 1 (size!581 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))))))

(assert (= (and d!53890 c!16998) b!71053))

(assert (= (and d!53890 (not c!16998)) b!71054))

(declare-fun m!70992 () Bool)

(assert (=> b!71054 m!70992))

(assert (=> b!71048 d!53890))

(declare-fun b!71065 () Bool)

(declare-fun res!34789 () Bool)

(declare-fun e!38444 () Bool)

(assert (=> b!71065 (=> (not res!34789) (not e!38444))))

(declare-fun lt!15124 () List!584)

(assert (=> b!71065 (= res!34789 (= (size!581 lt!15124) (+ (size!581 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (size!581 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(declare-fun b!71063 () Bool)

(declare-fun e!38445 () List!584)

(assert (=> b!71063 (= e!38445 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))

(declare-fun b!71066 () Bool)

(assert (=> b!71066 (= e!38444 (or (not (= (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) Nil!545)) (= lt!15124 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(declare-fun b!71064 () Bool)

(assert (=> b!71064 (= e!38445 (Cons!544 (h!799 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (++!65 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(declare-fun d!53892 () Bool)

(assert (=> d!53892 e!38444))

(declare-fun res!34788 () Bool)

(assert (=> d!53892 (=> (not res!34788) (not e!38444))))

(declare-fun content!105 (List!584) (Set (_ BitVec 32)))

(assert (=> d!53892 (= res!34788 (= (content!105 lt!15124) (union (content!105 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (content!105 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(assert (=> d!53892 (= lt!15124 e!38445)))

(declare-fun c!17001 () Bool)

(assert (=> d!53892 (= c!17001 (is-Nil!545 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))

(assert (=> d!53892 (= (++!65 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) lt!15124)))

(assert (= (and d!53892 c!17001) b!71063))

(assert (= (and d!53892 (not c!17001)) b!71064))

(assert (= (and d!53892 res!34788) b!71065))

(assert (= (and b!71065 res!34789) b!71066))

(declare-fun m!70994 () Bool)

(assert (=> b!71065 m!70994))

(declare-fun m!70996 () Bool)

(assert (=> b!71065 m!70996))

(assert (=> b!71065 m!70996))

(declare-fun m!70998 () Bool)

(assert (=> b!71064 m!70998))

(declare-fun m!71000 () Bool)

(assert (=> d!53892 m!71000))

(declare-fun m!71002 () Bool)

(assert (=> d!53892 m!71002))

(assert (=> d!53892 m!71002))

(assert (=> d!53888 d!53892))

(declare-fun d!53894 () Bool)

(declare-fun lt!15125 () Int)

(assert (=> d!53894 (>= lt!15125 0)))

(declare-fun e!38446 () Int)

(assert (=> d!53894 (= lt!15125 e!38446)))

(declare-fun c!17002 () Bool)

(assert (=> d!53894 (= c!17002 (is-Nil!544 (t!47432 (t!47432 (t!47432 i!558)))))))

(assert (=> d!53894 (= (size!580 (t!47432 (t!47432 (t!47432 i!558)))) lt!15125)))

(declare-fun b!71067 () Bool)

(assert (=> b!71067 (= e!38446 0)))

(declare-fun b!71068 () Bool)

(assert (=> b!71068 (= e!38446 (+ 1 (size!580 (t!47432 (t!47432 (t!47432 (t!47432 i!558)))))))))

(assert (= (and d!53894 c!17002) b!71067))

(assert (= (and d!53894 (not c!17002)) b!71068))

(declare-fun m!71004 () Bool)

(assert (=> b!71068 m!71004))

(assert (=> b!71050 d!53894))

(declare-fun b!71069 () Bool)

(declare-fun e!38447 () Bool)

(declare-fun tp!16789 () Bool)

(assert (=> b!71069 (= e!38447 (and tp_is_empty!349 tp!16789))))

(assert (=> b!71052 (= tp!16788 e!38447)))

(assert (= (and b!71052 (is-Cons!543 (t!47432 (t!47432 (t!47432 (t!47432 i!558)))))) b!71069))

(declare-fun b!71070 () Bool)

(declare-fun e!38448 () Bool)

(declare-fun tp!16790 () Bool)

(assert (=> b!71070 (= e!38448 (and tp_is_empty!349 tp!16790))))

(assert (=> b!71051 (= tp!16787 e!38448)))

(assert (= (and b!71051 (is-Cons!543 (t!47432 (t!47432 (t!47432 (t!47432 n!1654)))))) b!71070))

(push 1)

(assert (not b!71064))

(assert (not d!53892))

(assert (not b!71068))

(assert (not b!71069))

(assert (not b!71054))

(assert (not b!71070))

(assert tp_is_empty!349)

(assert (not b!71065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53896 () Bool)

(declare-fun lt!15126 () Int)

(assert (=> d!53896 (>= lt!15126 0)))

(declare-fun e!38449 () Int)

(assert (=> d!53896 (= lt!15126 e!38449)))

(declare-fun c!17003 () Bool)

(assert (=> d!53896 (= c!17003 (is-Nil!544 (t!47432 (t!47432 (t!47432 (t!47432 i!558))))))))

(assert (=> d!53896 (= (size!580 (t!47432 (t!47432 (t!47432 (t!47432 i!558))))) lt!15126)))

(declare-fun b!71071 () Bool)

(assert (=> b!71071 (= e!38449 0)))

(declare-fun b!71072 () Bool)

(assert (=> b!71072 (= e!38449 (+ 1 (size!580 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558))))))))))

(assert (= (and d!53896 c!17003) b!71071))

(assert (= (and d!53896 (not c!17003)) b!71072))

(declare-fun m!71006 () Bool)

(assert (=> b!71072 m!71006))

(assert (=> b!71068 d!53896))

(declare-fun d!53898 () Bool)

(declare-fun lt!15127 () Int)

(assert (=> d!53898 (>= lt!15127 0)))

(declare-fun e!38450 () Int)

(assert (=> d!53898 (= lt!15127 e!38450)))

(declare-fun c!17004 () Bool)

(assert (=> d!53898 (= c!17004 (is-Nil!545 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))))

(assert (=> d!53898 (= (size!581 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))) lt!15127)))

(declare-fun b!71073 () Bool)

(assert (=> b!71073 (= e!38450 0)))

(declare-fun b!71074 () Bool)

(assert (=> b!71074 (= e!38450 (+ 1 (size!581 (t!47433 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))))))

(assert (= (and d!53898 c!17004) b!71073))

(assert (= (and d!53898 (not c!17004)) b!71074))

(declare-fun m!71008 () Bool)

(assert (=> b!71074 m!71008))

(assert (=> b!71054 d!53898))

(declare-fun b!71077 () Bool)

(declare-fun res!34791 () Bool)

(declare-fun e!38451 () Bool)

(assert (=> b!71077 (=> (not res!34791) (not e!38451))))

(declare-fun lt!15128 () List!584)

(assert (=> b!71077 (= res!34791 (= (size!581 lt!15128) (+ (size!581 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) (size!581 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(declare-fun b!71075 () Bool)

(declare-fun e!38452 () List!584)

(assert (=> b!71075 (= e!38452 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))

(declare-fun b!71078 () Bool)

(assert (=> b!71078 (= e!38451 (or (not (= (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) Nil!545)) (= lt!15128 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(declare-fun b!71076 () Bool)

(assert (=> b!71076 (= e!38452 (Cons!544 (h!799 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) (++!65 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(declare-fun d!53900 () Bool)

(assert (=> d!53900 e!38451))

(declare-fun res!34790 () Bool)

(assert (=> d!53900 (=> (not res!34790) (not e!38451))))

(assert (=> d!53900 (= res!34790 (= (content!105 lt!15128) (union (content!105 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) (content!105 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(assert (=> d!53900 (= lt!15128 e!38452)))

(declare-fun c!17005 () Bool)

(assert (=> d!53900 (= c!17005 (is-Nil!545 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(assert (=> d!53900 (= (++!65 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) lt!15128)))

(assert (= (and d!53900 c!17005) b!71075))

(assert (= (and d!53900 (not c!17005)) b!71076))

(assert (= (and d!53900 res!34790) b!71077))

(assert (= (and b!71077 res!34791) b!71078))

(declare-fun m!71010 () Bool)

(assert (=> b!71077 m!71010))

(declare-fun m!71012 () Bool)

(assert (=> b!71077 m!71012))

(assert (=> b!71077 m!70996))

(declare-fun m!71014 () Bool)

(assert (=> b!71076 m!71014))

(declare-fun m!71016 () Bool)

(assert (=> d!53900 m!71016))

(declare-fun m!71018 () Bool)

(assert (=> d!53900 m!71018))

(assert (=> d!53900 m!71002))

(assert (=> b!71064 d!53900))

(declare-fun d!53902 () Bool)

(declare-fun lt!15129 () Int)

(assert (=> d!53902 (>= lt!15129 0)))

(declare-fun e!38453 () Int)

(assert (=> d!53902 (= lt!15129 e!38453)))

(declare-fun c!17006 () Bool)

(assert (=> d!53902 (= c!17006 (is-Nil!545 lt!15124))))

(assert (=> d!53902 (= (size!581 lt!15124) lt!15129)))

(declare-fun b!71079 () Bool)

(assert (=> b!71079 (= e!38453 0)))

(declare-fun b!71080 () Bool)

(assert (=> b!71080 (= e!38453 (+ 1 (size!581 (t!47433 lt!15124))))))

(assert (= (and d!53902 c!17006) b!71079))

(assert (= (and d!53902 (not c!17006)) b!71080))

(declare-fun m!71020 () Bool)

(assert (=> b!71080 m!71020))

(assert (=> b!71065 d!53902))

(declare-fun d!53904 () Bool)

(declare-fun lt!15130 () Int)

(assert (=> d!53904 (>= lt!15130 0)))

(declare-fun e!38454 () Int)

(assert (=> d!53904 (= lt!15130 e!38454)))

(declare-fun c!17007 () Bool)

(assert (=> d!53904 (= c!17007 (is-Nil!545 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))

(assert (=> d!53904 (= (size!581 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) lt!15130)))

(declare-fun b!71081 () Bool)

(assert (=> b!71081 (= e!38454 0)))

(declare-fun b!71082 () Bool)

(assert (=> b!71082 (= e!38454 (+ 1 (size!581 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(assert (= (and d!53904 c!17007) b!71081))

(assert (= (and d!53904 (not c!17007)) b!71082))

(assert (=> b!71082 m!71012))

(assert (=> b!71065 d!53904))

(declare-fun d!53906 () Bool)

(declare-fun c!17010 () Bool)

(assert (=> d!53906 (= c!17010 (is-Nil!545 lt!15124))))

(declare-fun e!38457 () (Set (_ BitVec 32)))

(assert (=> d!53906 (= (content!105 lt!15124) e!38457)))

(declare-fun b!71087 () Bool)

(assert (=> b!71087 (= e!38457 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!71088 () Bool)

(assert (=> b!71088 (= e!38457 (union (insert (h!799 lt!15124) (as emptyset (Set (_ BitVec 32)))) (content!105 (t!47433 lt!15124))))))

(assert (= (and d!53906 c!17010) b!71087))

(assert (= (and d!53906 (not c!17010)) b!71088))

(declare-fun m!71022 () Bool)

(assert (=> b!71088 m!71022))

(declare-fun m!71024 () Bool)

(assert (=> b!71088 m!71024))

(assert (=> d!53892 d!53906))

(declare-fun d!53908 () Bool)

(assert (=> d!53908 (= (content!105 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) (insert #b00000000000000000000000000000010 #b00000000000000000000000000000011 (singleton #b00000000000000000000000000000001)))))

(assert (=> d!53892 d!53908))

(declare-fun b!71089 () Bool)

(declare-fun e!38458 () Bool)

(declare-fun tp!16791 () Bool)

(assert (=> b!71089 (= e!38458 (and tp_is_empty!349 tp!16791))))

(assert (=> b!71070 (= tp!16790 e!38458)))

(assert (= (and b!71070 (is-Cons!543 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 n!1654))))))) b!71089))

(declare-fun b!71090 () Bool)

(declare-fun e!38459 () Bool)

(declare-fun tp!16792 () Bool)

(assert (=> b!71090 (= e!38459 (and tp_is_empty!349 tp!16792))))

(assert (=> b!71069 (= tp!16789 e!38459)))

(assert (= (and b!71069 (is-Cons!543 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558))))))) b!71090))

(push 1)

(assert (not b!71080))

(assert (not b!71088))

(assert (not b!71072))

(assert (not d!53900))

(assert (not b!71076))

(assert (not b!71074))

(assert tp_is_empty!349)

(assert (not b!71082))

(assert (not b!71090))

(assert (not b!71077))

(assert (not b!71089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53910 () Bool)

(declare-fun c!17011 () Bool)

(assert (=> d!53910 (= c!17011 (is-Nil!545 lt!15128))))

(declare-fun e!38460 () (Set (_ BitVec 32)))

(assert (=> d!53910 (= (content!105 lt!15128) e!38460)))

(declare-fun b!71091 () Bool)

(assert (=> b!71091 (= e!38460 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!71092 () Bool)

(assert (=> b!71092 (= e!38460 (union (insert (h!799 lt!15128) (as emptyset (Set (_ BitVec 32)))) (content!105 (t!47433 lt!15128))))))

(assert (= (and d!53910 c!17011) b!71091))

(assert (= (and d!53910 (not c!17011)) b!71092))

(declare-fun m!71026 () Bool)

(assert (=> b!71092 m!71026))

(declare-fun m!71028 () Bool)

(assert (=> b!71092 m!71028))

(assert (=> d!53900 d!53910))

(declare-fun d!53912 () Bool)

(assert (=> d!53912 (= (content!105 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) (insert #b00000000000000000000000000000011 (singleton #b00000000000000000000000000000010)))))

(assert (=> d!53900 d!53912))

(assert (=> d!53900 d!53908))

(declare-fun d!53914 () Bool)

(declare-fun lt!15131 () Int)

(assert (=> d!53914 (>= lt!15131 0)))

(declare-fun e!38461 () Int)

(assert (=> d!53914 (= lt!15131 e!38461)))

(declare-fun c!17012 () Bool)

(assert (=> d!53914 (= c!17012 (is-Nil!545 lt!15128))))

(assert (=> d!53914 (= (size!581 lt!15128) lt!15131)))

(declare-fun b!71093 () Bool)

(assert (=> b!71093 (= e!38461 0)))

(declare-fun b!71094 () Bool)

(assert (=> b!71094 (= e!38461 (+ 1 (size!581 (t!47433 lt!15128))))))

(assert (= (and d!53914 c!17012) b!71093))

(assert (= (and d!53914 (not c!17012)) b!71094))

(declare-fun m!71030 () Bool)

(assert (=> b!71094 m!71030))

(assert (=> b!71077 d!53914))

(declare-fun d!53916 () Bool)

(declare-fun lt!15132 () Int)

(assert (=> d!53916 (>= lt!15132 0)))

(declare-fun e!38462 () Int)

(assert (=> d!53916 (= lt!15132 e!38462)))

(declare-fun c!17013 () Bool)

(assert (=> d!53916 (= c!17013 (is-Nil!545 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(assert (=> d!53916 (= (size!581 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) lt!15132)))

(declare-fun b!71095 () Bool)

(assert (=> b!71095 (= e!38462 0)))

(declare-fun b!71096 () Bool)

(assert (=> b!71096 (= e!38462 (+ 1 (size!581 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))

(assert (= (and d!53916 c!17013) b!71095))

(assert (= (and d!53916 (not c!17013)) b!71096))

(declare-fun m!71032 () Bool)

(assert (=> b!71096 m!71032))

(assert (=> b!71077 d!53916))

(assert (=> b!71077 d!53904))

(declare-fun d!53918 () Bool)

(declare-fun lt!15133 () Int)

(assert (=> d!53918 (>= lt!15133 0)))

(declare-fun e!38463 () Int)

(assert (=> d!53918 (= lt!15133 e!38463)))

(declare-fun c!17014 () Bool)

(assert (=> d!53918 (= c!17014 (is-Nil!544 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558)))))))))

(assert (=> d!53918 (= (size!580 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558)))))) lt!15133)))

(declare-fun b!71097 () Bool)

(assert (=> b!71097 (= e!38463 0)))

(declare-fun b!71098 () Bool)

(assert (=> b!71098 (= e!38463 (+ 1 (size!580 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558)))))))))))

(assert (= (and d!53918 c!17014) b!71097))

(assert (= (and d!53918 (not c!17014)) b!71098))

(declare-fun m!71034 () Bool)

(assert (=> b!71098 m!71034))

(assert (=> b!71072 d!53918))

(declare-fun d!53920 () Bool)

(declare-fun c!17015 () Bool)

(assert (=> d!53920 (= c!17015 (is-Nil!545 (t!47433 lt!15124)))))

(declare-fun e!38464 () (Set (_ BitVec 32)))

(assert (=> d!53920 (= (content!105 (t!47433 lt!15124)) e!38464)))

(declare-fun b!71099 () Bool)

(assert (=> b!71099 (= e!38464 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!71100 () Bool)

(assert (=> b!71100 (= e!38464 (union (insert (h!799 (t!47433 lt!15124)) (as emptyset (Set (_ BitVec 32)))) (content!105 (t!47433 (t!47433 lt!15124)))))))

(assert (= (and d!53920 c!17015) b!71099))

(assert (= (and d!53920 (not c!17015)) b!71100))

(declare-fun m!71036 () Bool)

(assert (=> b!71100 m!71036))

(declare-fun m!71038 () Bool)

(assert (=> b!71100 m!71038))

(assert (=> b!71088 d!53920))

(declare-fun d!53922 () Bool)

(declare-fun lt!15134 () Int)

(assert (=> d!53922 (>= lt!15134 0)))

(declare-fun e!38465 () Int)

(assert (=> d!53922 (= lt!15134 e!38465)))

(declare-fun c!17016 () Bool)

(assert (=> d!53922 (= c!17016 (is-Nil!545 (t!47433 lt!15124)))))

(assert (=> d!53922 (= (size!581 (t!47433 lt!15124)) lt!15134)))

(declare-fun b!71101 () Bool)

(assert (=> b!71101 (= e!38465 0)))

(declare-fun b!71102 () Bool)

(assert (=> b!71102 (= e!38465 (+ 1 (size!581 (t!47433 (t!47433 lt!15124)))))))

(assert (= (and d!53922 c!17016) b!71101))

(assert (= (and d!53922 (not c!17016)) b!71102))

(declare-fun m!71040 () Bool)

(assert (=> b!71102 m!71040))

(assert (=> b!71080 d!53922))

(declare-fun d!53924 () Bool)

(declare-fun lt!15135 () Int)

(assert (=> d!53924 (>= lt!15135 0)))

(declare-fun e!38466 () Int)

(assert (=> d!53924 (= lt!15135 e!38466)))

(declare-fun c!17017 () Bool)

(assert (=> d!53924 (= c!17017 (is-Nil!545 (t!47433 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))))))

(assert (=> d!53924 (= (size!581 (t!47433 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))) lt!15135)))

(declare-fun b!71103 () Bool)

(assert (=> b!71103 (= e!38466 0)))

(declare-fun b!71104 () Bool)

(assert (=> b!71104 (= e!38466 (+ 1 (size!581 (t!47433 (t!47433 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))))))))

(assert (= (and d!53924 c!17017) b!71103))

(assert (= (and d!53924 (not c!17017)) b!71104))

(declare-fun m!71042 () Bool)

(assert (=> b!71104 m!71042))

(assert (=> b!71074 d!53924))

(assert (=> b!71082 d!53916))

(declare-fun b!71107 () Bool)

(declare-fun res!34793 () Bool)

(declare-fun e!38467 () Bool)

(assert (=> b!71107 (=> (not res!34793) (not e!38467))))

(declare-fun lt!15136 () List!584)

(assert (=> b!71107 (= res!34793 (= (size!581 lt!15136) (+ (size!581 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) (size!581 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(declare-fun b!71105 () Bool)

(declare-fun e!38468 () List!584)

(assert (=> b!71105 (= e!38468 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))

(declare-fun b!71108 () Bool)

(assert (=> b!71108 (= e!38467 (or (not (= (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) Nil!545)) (= lt!15136 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))

(declare-fun b!71106 () Bool)

(assert (=> b!71106 (= e!38468 (Cons!544 (h!799 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) (++!65 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(declare-fun d!53926 () Bool)

(assert (=> d!53926 e!38467))

(declare-fun res!34792 () Bool)

(assert (=> d!53926 (=> (not res!34792) (not e!38467))))

(assert (=> d!53926 (= res!34792 (= (content!105 lt!15136) (union (content!105 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) (content!105 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(assert (=> d!53926 (= lt!15136 e!38468)))

(declare-fun c!17018 () Bool)

(assert (=> d!53926 (= c!17018 (is-Nil!545 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(assert (=> d!53926 (= (++!65 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) lt!15136)))

(assert (= (and d!53926 c!17018) b!71105))

(assert (= (and d!53926 (not c!17018)) b!71106))

(assert (= (and d!53926 res!34792) b!71107))

(assert (= (and b!71107 res!34793) b!71108))

(declare-fun m!71044 () Bool)

(assert (=> b!71107 m!71044))

(assert (=> b!71107 m!71032))

(assert (=> b!71107 m!70996))

(declare-fun m!71046 () Bool)

(assert (=> b!71106 m!71046))

(declare-fun m!71048 () Bool)

(assert (=> d!53926 m!71048))

(declare-fun m!71050 () Bool)

(assert (=> d!53926 m!71050))

(assert (=> d!53926 m!71002))

(assert (=> b!71076 d!53926))

(declare-fun b!71109 () Bool)

(declare-fun e!38469 () Bool)

(declare-fun tp!16793 () Bool)

(assert (=> b!71109 (= e!38469 (and tp_is_empty!349 tp!16793))))

(assert (=> b!71090 (= tp!16792 e!38469)))

(assert (= (and b!71090 (is-Cons!543 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558)))))))) b!71109))

(declare-fun b!71110 () Bool)

(declare-fun e!38470 () Bool)

(declare-fun tp!16794 () Bool)

(assert (=> b!71110 (= e!38470 (and tp_is_empty!349 tp!16794))))

(assert (=> b!71089 (= tp!16791 e!38470)))

(assert (= (and b!71089 (is-Cons!543 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 n!1654)))))))) b!71110))

(push 1)

(assert (not b!71092))

(assert (not b!71094))

(assert (not b!71107))

(assert (not b!71110))

(assert (not b!71109))

(assert (not b!71106))

(assert (not d!53926))

(assert (not b!71098))

(assert tp_is_empty!349)

(assert (not b!71096))

(assert (not b!71102))

(assert (not b!71100))

(assert (not b!71104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53928 () Bool)

(declare-fun lt!15137 () Int)

(assert (=> d!53928 (>= lt!15137 0)))

(declare-fun e!38471 () Int)

(assert (=> d!53928 (= lt!15137 e!38471)))

(declare-fun c!17019 () Bool)

(assert (=> d!53928 (= c!17019 (is-Nil!545 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(assert (=> d!53928 (= (size!581 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) lt!15137)))

(declare-fun b!71111 () Bool)

(assert (=> b!71111 (= e!38471 0)))

(declare-fun b!71112 () Bool)

(assert (=> b!71112 (= e!38471 (+ 1 (size!581 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))))

(assert (= (and d!53928 c!17019) b!71111))

(assert (= (and d!53928 (not c!17019)) b!71112))

(declare-fun m!71052 () Bool)

(assert (=> b!71112 m!71052))

(assert (=> b!71096 d!53928))

(declare-fun b!71115 () Bool)

(declare-fun res!34795 () Bool)

(declare-fun e!38472 () Bool)

(assert (=> b!71115 (=> (not res!34795) (not e!38472))))

(declare-fun lt!15138 () List!584)

(assert (=> b!71115 (= res!34795 (= (size!581 lt!15138) (+ (size!581 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))) (size!581 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(declare-fun b!71113 () Bool)

(declare-fun e!38473 () List!584)

(assert (=> b!71113 (= e!38473 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))

(declare-fun b!71116 () Bool)

(assert (=> b!71116 (= e!38472 (or (not (= (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) Nil!545)) (= lt!15138 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))))

(declare-fun b!71114 () Bool)

(assert (=> b!71114 (= e!38473 (Cons!544 (h!799 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))) (++!65 (t!47433 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))

(declare-fun d!53930 () Bool)

(assert (=> d!53930 e!38472))

(declare-fun res!34794 () Bool)

(assert (=> d!53930 (=> (not res!34794) (not e!38472))))

(assert (=> d!53930 (= res!34794 (= (content!105 lt!15138) (union (content!105 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))) (content!105 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))))))

(assert (=> d!53930 (= lt!15138 e!38473)))

(declare-fun c!17020 () Bool)

(assert (=> d!53930 (= c!17020 (is-Nil!545 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))

(assert (=> d!53930 (= (++!65 (t!47433 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))) lt!15138)))

(assert (= (and d!53930 c!17020) b!71113))

(assert (= (and d!53930 (not c!17020)) b!71114))

(assert (= (and d!53930 res!34794) b!71115))

(assert (= (and b!71115 res!34795) b!71116))

(declare-fun m!71054 () Bool)

(assert (=> b!71115 m!71054))

(assert (=> b!71115 m!71052))

(assert (=> b!71115 m!70996))

(declare-fun m!71056 () Bool)

(assert (=> b!71114 m!71056))

(declare-fun m!71058 () Bool)

(assert (=> d!53930 m!71058))

(declare-fun m!71060 () Bool)

(assert (=> d!53930 m!71060))

(assert (=> d!53930 m!71002))

(assert (=> b!71106 d!53930))

(declare-fun d!53932 () Bool)

(declare-fun lt!15139 () Int)

(assert (=> d!53932 (>= lt!15139 0)))

(declare-fun e!38474 () Int)

(assert (=> d!53932 (= lt!15139 e!38474)))

(declare-fun c!17021 () Bool)

(assert (=> d!53932 (= c!17021 (is-Nil!545 (t!47433 lt!15128)))))

(assert (=> d!53932 (= (size!581 (t!47433 lt!15128)) lt!15139)))

(declare-fun b!71117 () Bool)

(assert (=> b!71117 (= e!38474 0)))

(declare-fun b!71118 () Bool)

(assert (=> b!71118 (= e!38474 (+ 1 (size!581 (t!47433 (t!47433 lt!15128)))))))

(assert (= (and d!53932 c!17021) b!71117))

(assert (= (and d!53932 (not c!17021)) b!71118))

(declare-fun m!71062 () Bool)

(assert (=> b!71118 m!71062))

(assert (=> b!71094 d!53932))

(declare-fun d!53934 () Bool)

(declare-fun lt!15140 () Int)

(assert (=> d!53934 (>= lt!15140 0)))

(declare-fun e!38475 () Int)

(assert (=> d!53934 (= lt!15140 e!38475)))

(declare-fun c!17022 () Bool)

(assert (=> d!53934 (= c!17022 (is-Nil!545 (t!47433 (t!47433 lt!15124))))))

(assert (=> d!53934 (= (size!581 (t!47433 (t!47433 lt!15124))) lt!15140)))

(declare-fun b!71119 () Bool)

(assert (=> b!71119 (= e!38475 0)))

(declare-fun b!71120 () Bool)

(assert (=> b!71120 (= e!38475 (+ 1 (size!581 (t!47433 (t!47433 (t!47433 lt!15124))))))))

(assert (= (and d!53934 c!17022) b!71119))

(assert (= (and d!53934 (not c!17022)) b!71120))

(declare-fun m!71064 () Bool)

(assert (=> b!71120 m!71064))

(assert (=> b!71102 d!53934))

(declare-fun d!53936 () Bool)

(declare-fun lt!15141 () Int)

(assert (=> d!53936 (>= lt!15141 0)))

(declare-fun e!38476 () Int)

(assert (=> d!53936 (= lt!15141 e!38476)))

(declare-fun c!17023 () Bool)

(assert (=> d!53936 (= c!17023 (is-Nil!545 (t!47433 (t!47433 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))))))

(assert (=> d!53936 (= (size!581 (t!47433 (t!47433 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))) lt!15141)))

(declare-fun b!71121 () Bool)

(assert (=> b!71121 (= e!38476 0)))

(declare-fun b!71122 () Bool)

(assert (=> b!71122 (= e!38476 (+ 1 (size!581 (t!47433 (t!47433 (t!47433 (t!47433 (t!47433 (t!47433 (rec3!5 i!558 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))) (head!888 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545))))))))))))))))

(assert (= (and d!53936 c!17023) b!71121))

(assert (= (and d!53936 (not c!17023)) b!71122))

(declare-fun m!71066 () Bool)

(assert (=> b!71122 m!71066))

(assert (=> b!71104 d!53936))

(declare-fun d!53938 () Bool)

(declare-fun lt!15142 () Int)

(assert (=> d!53938 (>= lt!15142 0)))

(declare-fun e!38477 () Int)

(assert (=> d!53938 (= lt!15142 e!38477)))

(declare-fun c!17024 () Bool)

(assert (=> d!53938 (= c!17024 (is-Nil!545 lt!15136))))

(assert (=> d!53938 (= (size!581 lt!15136) lt!15142)))

(declare-fun b!71123 () Bool)

(assert (=> b!71123 (= e!38477 0)))

(declare-fun b!71124 () Bool)

(assert (=> b!71124 (= e!38477 (+ 1 (size!581 (t!47433 lt!15136))))))

(assert (= (and d!53938 c!17024) b!71123))

(assert (= (and d!53938 (not c!17024)) b!71124))

(declare-fun m!71068 () Bool)

(assert (=> b!71124 m!71068))

(assert (=> b!71107 d!53938))

(assert (=> b!71107 d!53928))

(assert (=> b!71107 d!53904))

(declare-fun d!53940 () Bool)

(declare-fun c!17025 () Bool)

(assert (=> d!53940 (= c!17025 (is-Nil!545 (t!47433 lt!15128)))))

(declare-fun e!38478 () (Set (_ BitVec 32)))

(assert (=> d!53940 (= (content!105 (t!47433 lt!15128)) e!38478)))

(declare-fun b!71125 () Bool)

(assert (=> b!71125 (= e!38478 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!71126 () Bool)

(assert (=> b!71126 (= e!38478 (union (insert (h!799 (t!47433 lt!15128)) (as emptyset (Set (_ BitVec 32)))) (content!105 (t!47433 (t!47433 lt!15128)))))))

(assert (= (and d!53940 c!17025) b!71125))

(assert (= (and d!53940 (not c!17025)) b!71126))

(declare-fun m!71070 () Bool)

(assert (=> b!71126 m!71070))

(declare-fun m!71072 () Bool)

(assert (=> b!71126 m!71072))

(assert (=> b!71092 d!53940))

(declare-fun d!53942 () Bool)

(declare-fun c!17026 () Bool)

(assert (=> d!53942 (= c!17026 (is-Nil!545 (t!47433 (t!47433 lt!15124))))))

(declare-fun e!38479 () (Set (_ BitVec 32)))

(assert (=> d!53942 (= (content!105 (t!47433 (t!47433 lt!15124))) e!38479)))

(declare-fun b!71127 () Bool)

(assert (=> b!71127 (= e!38479 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!71128 () Bool)

(assert (=> b!71128 (= e!38479 (union (insert (h!799 (t!47433 (t!47433 lt!15124))) (as emptyset (Set (_ BitVec 32)))) (content!105 (t!47433 (t!47433 (t!47433 lt!15124))))))))

(assert (= (and d!53942 c!17026) b!71127))

(assert (= (and d!53942 (not c!17026)) b!71128))

(declare-fun m!71074 () Bool)

(assert (=> b!71128 m!71074))

(declare-fun m!71076 () Bool)

(assert (=> b!71128 m!71076))

(assert (=> b!71100 d!53942))

(declare-fun d!53944 () Bool)

(declare-fun lt!15143 () Int)

(assert (=> d!53944 (>= lt!15143 0)))

(declare-fun e!38480 () Int)

(assert (=> d!53944 (= lt!15143 e!38480)))

(declare-fun c!17027 () Bool)

(assert (=> d!53944 (= c!17027 (is-Nil!544 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558))))))))))

(assert (=> d!53944 (= (size!580 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558))))))) lt!15143)))

(declare-fun b!71129 () Bool)

(assert (=> b!71129 (= e!38480 0)))

(declare-fun b!71130 () Bool)

(assert (=> b!71130 (= e!38480 (+ 1 (size!580 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558))))))))))))

(assert (= (and d!53944 c!17027) b!71129))

(assert (= (and d!53944 (not c!17027)) b!71130))

(declare-fun m!71078 () Bool)

(assert (=> b!71130 m!71078))

(assert (=> b!71098 d!53944))

(declare-fun d!53946 () Bool)

(declare-fun c!17028 () Bool)

(assert (=> d!53946 (= c!17028 (is-Nil!545 lt!15136))))

(declare-fun e!38481 () (Set (_ BitVec 32)))

(assert (=> d!53946 (= (content!105 lt!15136) e!38481)))

(declare-fun b!71131 () Bool)

(assert (=> b!71131 (= e!38481 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!71132 () Bool)

(assert (=> b!71132 (= e!38481 (union (insert (h!799 lt!15136) (as emptyset (Set (_ BitVec 32)))) (content!105 (t!47433 lt!15136))))))

(assert (= (and d!53946 c!17028) b!71131))

(assert (= (and d!53946 (not c!17028)) b!71132))

(declare-fun m!71080 () Bool)

(assert (=> b!71132 m!71080))

(declare-fun m!71082 () Bool)

(assert (=> b!71132 m!71082))

(assert (=> d!53926 d!53946))

(declare-fun d!53948 () Bool)

(assert (=> d!53948 (= (content!105 (t!47433 (t!47433 (Cons!544 #b00000000000000000000000000000001 (Cons!544 #b00000000000000000000000000000010 (Cons!544 #b00000000000000000000000000000011 Nil!545)))))) (singleton #b00000000000000000000000000000011))))

(assert (=> d!53926 d!53948))

(assert (=> d!53926 d!53908))

(declare-fun b!71133 () Bool)

(declare-fun e!38482 () Bool)

(declare-fun tp!16795 () Bool)

(assert (=> b!71133 (= e!38482 (and tp_is_empty!349 tp!16795))))

(assert (=> b!71109 (= tp!16793 e!38482)))

(assert (= (and b!71109 (is-Cons!543 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 i!558))))))))) b!71133))

(declare-fun b!71134 () Bool)

(declare-fun e!38483 () Bool)

(declare-fun tp!16796 () Bool)

(assert (=> b!71134 (= e!38483 (and tp_is_empty!349 tp!16796))))

(assert (=> b!71110 (= tp!16794 e!38483)))

(assert (= (and b!71110 (is-Cons!543 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 (t!47432 n!1654))))))))) b!71134))

(push 1)

(assert (not b!71133))

(assert (not b!71126))

(assert (not b!71115))

(assert (not b!71130))

(assert (not b!71114))

(assert (not d!53930))

(assert (not b!71132))

(assert (not b!71120))

(assert (not b!71134))

(assert (not b!71122))

(assert (not b!71124))

(assert (not b!71112))

(assert tp_is_empty!349)

(assert (not b!71118))

(assert (not b!71128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

