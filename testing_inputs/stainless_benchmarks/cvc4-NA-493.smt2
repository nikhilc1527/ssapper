; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3308 () Bool)

(assert start!3308)

(declare-fun b!18867 () Bool)

(declare-fun res!8006 () Bool)

(declare-fun e!10026 () Bool)

(assert (=> b!18867 (=> (not res!8006) (not e!10026))))

(declare-datatypes () ((T!1741 (T!1742 (val!43 Int)))))

(declare-fun y!859 () T!1741)

(declare-fun y!824 () T!1741)

(declare-fun i!315 () Int)

(declare-fun i!298 () Int)

(assert (=> b!18867 (= res!8006 (and (= i!315 i!298) (= y!859 y!824)))))

(declare-fun b!18868 () Bool)

(declare-fun res!8010 () Bool)

(assert (=> b!18868 (=> (not res!8010) (not e!10026))))

(declare-datatypes () ((Conc!25 (CC!24 (left!669 Conc!25) (right!672 Conc!25)) (Single!24 (x!8760 T!1741)) (Empty!35))))

(declare-fun xs!604 () Conc!25)

(declare-fun res!5609 () Conc!25)

(declare-fun concatNonEmpty!7 (Conc!25 Conc!25) Conc!25)

(declare-fun insert!16 (Conc!25 Int T!1741) Conc!25)

(assert (=> b!18868 (= res!8010 (= res!5609 (concatNonEmpty!7 (insert!16 (left!669 xs!604) i!298 y!824) (right!672 xs!604))))))

(declare-fun b!18869 () Bool)

(declare-fun e!10025 () Bool)

(assert (=> b!18869 (= e!10026 e!10025)))

(declare-fun res!8014 () Bool)

(assert (=> b!18869 (=> res!8014 e!10025)))

(assert (=> b!18869 (= res!8014 (> 0 i!315))))

(declare-fun b!18870 () Bool)

(declare-fun res!8013 () Bool)

(assert (=> b!18870 (=> (not res!8013) (not e!10026))))

(declare-fun size!212 (Conc!25) Int)

(assert (=> b!18870 (= res!8013 (< i!298 (size!212 (left!669 xs!604))))))

(declare-fun b!18871 () Bool)

(declare-fun e!10028 () Bool)

(declare-fun tp!4427 () Bool)

(declare-fun tp!4428 () Bool)

(assert (=> b!18871 (= e!10028 (and tp!4427 tp!4428))))

(declare-fun b!18872 () Bool)

(declare-fun res!8012 () Bool)

(assert (=> b!18872 (=> (not res!8012) (not e!10026))))

(declare-datatypes () ((List!332 (Cons!326 (h!240 T!1741) (t!4327 List!332)) (Nil!327))))

(declare-fun l!787 () List!332)

(declare-fun toList!92 (Conc!25) List!332)

(assert (=> b!18872 (= res!8012 (= l!787 (toList!92 xs!604)))))

(declare-fun b!18873 () Bool)

(declare-fun tp_is_empty!85 () Bool)

(assert (=> b!18873 (= e!10028 tp_is_empty!85)))

(declare-fun b!18874 () Bool)

(declare-fun size!213 (List!332) Int)

(assert (=> b!18874 (= e!10025 (> i!315 (size!213 l!787)))))

(declare-fun b!18875 () Bool)

(declare-fun res!8005 () Bool)

(assert (=> b!18875 (=> (not res!8005) (not e!10026))))

(declare-fun balanced!24 (Conc!25) Bool)

(assert (=> b!18875 (= res!8005 (balanced!24 res!5609))))

(declare-fun b!18876 () Bool)

(declare-fun e!10029 () Bool)

(declare-fun tp!4425 () Bool)

(assert (=> b!18876 (= e!10029 (and tp_is_empty!85 tp!4425))))

(declare-fun res!8015 () Bool)

(assert (=> start!3308 (=> (not res!8015) (not e!10026))))

(declare-fun concInv!23 (Conc!25) Bool)

(assert (=> start!3308 (= res!8015 (concInv!23 xs!604))))

(assert (=> start!3308 e!10026))

(assert (=> start!3308 tp_is_empty!85))

(assert (=> start!3308 true))

(declare-fun e!10027 () Bool)

(assert (=> start!3308 e!10027))

(assert (=> start!3308 e!10029))

(assert (=> start!3308 e!10028))

(declare-fun b!18877 () Bool)

(declare-fun res!8001 () Bool)

(assert (=> b!18877 (=> (not res!8001) (not e!10026))))

(assert (=> b!18877 (= res!8001 (balanced!24 xs!604))))

(declare-fun b!18878 () Bool)

(declare-fun res!8009 () Bool)

(assert (=> b!18878 (=> (not res!8009) (not e!10026))))

(declare-fun level!22 (Conc!25) Int)

(assert (=> b!18878 (= res!8009 (<= (- (level!22 res!5609) (level!22 xs!604)) 1))))

(declare-fun b!18879 () Bool)

(assert (=> b!18879 (= e!10027 tp_is_empty!85)))

(declare-fun b!18880 () Bool)

(declare-fun res!8007 () Bool)

(assert (=> b!18880 (=> (not res!8007) (not e!10026))))

(assert (=> b!18880 (= res!8007 (concInv!23 res!5609))))

(declare-fun b!18881 () Bool)

(declare-fun tp!4426 () Bool)

(declare-fun tp!4429 () Bool)

(assert (=> b!18881 (= e!10027 (and tp!4426 tp!4429))))

(declare-fun b!18882 () Bool)

(declare-fun res!8004 () Bool)

(assert (=> b!18882 (=> (not res!8004) (not e!10026))))

(assert (=> b!18882 (= res!8004 (>= i!298 0))))

(declare-fun b!18883 () Bool)

(declare-fun res!8003 () Bool)

(assert (=> b!18883 (=> (not res!8003) (not e!10026))))

(declare-fun isEmpty!287 (Conc!25) Bool)

(assert (=> b!18883 (= res!8003 (not (isEmpty!287 res!5609)))))

(declare-fun b!18884 () Bool)

(declare-fun res!8000 () Bool)

(assert (=> b!18884 (=> (not res!8000) (not e!10026))))

(declare-fun insertAppendAxiomInst!7 (Conc!25 Int T!1741) Bool)

(assert (=> b!18884 (= res!8000 (insertAppendAxiomInst!7 xs!604 i!298 y!824))))

(declare-fun b!18885 () Bool)

(declare-fun res!8002 () Bool)

(assert (=> b!18885 (=> (not res!8002) (not e!10026))))

(assert (=> b!18885 (= res!8002 (and (not (is-Empty!35 xs!604)) (not (is-Single!24 xs!604))))))

(declare-fun b!18886 () Bool)

(declare-fun res!8008 () Bool)

(assert (=> b!18886 (=> (not res!8008) (not e!10026))))

(assert (=> b!18886 (= res!8008 (>= (level!22 res!5609) (level!22 xs!604)))))

(declare-fun b!18887 () Bool)

(declare-fun res!8011 () Bool)

(assert (=> b!18887 (=> (not res!8011) (not e!10026))))

(assert (=> b!18887 (= res!8011 (<= i!298 (size!212 xs!604)))))

(assert (= (and start!3308 res!8015) b!18877))

(assert (= (and b!18877 res!8001) b!18882))

(assert (= (and b!18882 res!8004) b!18887))

(assert (= (and b!18887 res!8011) b!18885))

(assert (= (and b!18885 res!8002) b!18870))

(assert (= (and b!18870 res!8013) b!18868))

(assert (= (and b!18868 res!8010) b!18880))

(assert (= (and b!18880 res!8007) b!18875))

(assert (= (and b!18875 res!8005) b!18878))

(assert (= (and b!18878 res!8009) b!18886))

(assert (= (and b!18886 res!8008) b!18883))

(assert (= (and b!18883 res!8003) b!18884))

(assert (= (and b!18884 res!8000) b!18872))

(assert (= (and b!18872 res!8012) b!18867))

(assert (= (and b!18867 res!8006) b!18869))

(assert (= (and b!18869 (not res!8014)) b!18874))

(assert (= (and start!3308 (is-CC!24 xs!604)) b!18881))

(assert (= (and start!3308 (is-Single!24 xs!604)) b!18879))

(assert (= (and start!3308 (is-Cons!326 l!787)) b!18876))

(assert (= (and start!3308 (is-CC!24 res!5609)) b!18871))

(assert (= (and start!3308 (is-Single!24 res!5609)) b!18873))

(declare-fun m!21437 () Bool)

(assert (=> b!18883 m!21437))

(declare-fun m!21439 () Bool)

(assert (=> b!18872 m!21439))

(declare-fun m!21441 () Bool)

(assert (=> b!18875 m!21441))

(declare-fun m!21443 () Bool)

(assert (=> start!3308 m!21443))

(declare-fun m!21445 () Bool)

(assert (=> b!18870 m!21445))

(declare-fun m!21447 () Bool)

(assert (=> b!18878 m!21447))

(declare-fun m!21449 () Bool)

(assert (=> b!18878 m!21449))

(declare-fun m!21451 () Bool)

(assert (=> b!18884 m!21451))

(declare-fun m!21453 () Bool)

(assert (=> b!18868 m!21453))

(assert (=> b!18868 m!21453))

(declare-fun m!21455 () Bool)

(assert (=> b!18868 m!21455))

(assert (=> b!18886 m!21447))

(assert (=> b!18886 m!21449))

(declare-fun m!21457 () Bool)

(assert (=> b!18877 m!21457))

(declare-fun m!21459 () Bool)

(assert (=> b!18887 m!21459))

(declare-fun m!21461 () Bool)

(assert (=> b!18880 m!21461))

(declare-fun m!21463 () Bool)

(assert (=> b!18874 m!21463))

(push 1)

(assert (not b!18872))

(assert (not b!18870))

(assert tp_is_empty!85)

(assert (not b!18886))

(assert (not b!18878))

(assert (not b!18877))

(assert (not b!18874))

(assert (not b!18887))

(assert (not start!3308))

(assert (not b!18876))

(assert (not b!18868))

(assert (not b!18880))

(assert (not b!18871))

(assert (not b!18883))

(assert (not b!18884))

(assert (not b!18881))

(assert (not b!18875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!12233 () Bool)

(declare-fun lt!2797 () List!332)

(assert (=> d!12233 (= (size!213 lt!2797) (size!212 xs!604))))

(declare-fun e!10035 () List!332)

(assert (=> d!12233 (= lt!2797 e!10035)))

(declare-fun c!4659 () Bool)

(assert (=> d!12233 (= c!4659 (is-Empty!35 xs!604))))

(assert (=> d!12233 (= (toList!92 xs!604) lt!2797)))

(declare-fun b!18899 () Bool)

(declare-fun e!10034 () List!332)

(declare-fun ++!16 (List!332 List!332) List!332)

(assert (=> b!18899 (= e!10034 (++!16 (toList!92 (left!669 xs!604)) (toList!92 (right!672 xs!604))))))

(declare-fun b!18897 () Bool)

(assert (=> b!18897 (= e!10035 e!10034)))

(declare-fun c!4658 () Bool)

(assert (=> b!18897 (= c!4658 (is-Single!24 xs!604))))

(declare-fun b!18898 () Bool)

(assert (=> b!18898 (= e!10034 (Cons!326 (x!8760 xs!604) Nil!327))))

(declare-fun b!18896 () Bool)

(assert (=> b!18896 (= e!10035 Nil!327)))

(assert (= (and b!18897 c!4658) b!18898))

(assert (= (and b!18897 (not c!4658)) b!18899))

(assert (= (and d!12233 c!4659) b!18896))

(assert (= (and d!12233 (not c!4659)) b!18897))

(declare-fun m!21465 () Bool)

(assert (=> d!12233 m!21465))

(assert (=> d!12233 m!21459))

(declare-fun m!21467 () Bool)

(assert (=> b!18899 m!21467))

(declare-fun m!21469 () Bool)

(assert (=> b!18899 m!21469))

(assert (=> b!18899 m!21467))

(assert (=> b!18899 m!21469))

(declare-fun m!21471 () Bool)

(assert (=> b!18899 m!21471))

(assert (=> b!18872 d!12233))

(declare-fun b!18908 () Bool)

(declare-fun e!10040 () Bool)

(declare-fun e!10041 () Bool)

(assert (=> b!18908 (= e!10040 e!10041)))

(declare-fun res!8027 () Bool)

(assert (=> b!18908 (=> (not res!8027) (not e!10041))))

(assert (=> b!18908 (= res!8027 (>= (- (level!22 (left!669 res!5609)) (level!22 (right!672 res!5609))) (- 1)))))

(declare-fun b!18910 () Bool)

(declare-fun res!8026 () Bool)

(assert (=> b!18910 (=> (not res!8026) (not e!10041))))

(assert (=> b!18910 (= res!8026 (balanced!24 (left!669 res!5609)))))

(declare-fun b!18911 () Bool)

(assert (=> b!18911 (= e!10041 (balanced!24 (right!672 res!5609)))))

(declare-fun b!18909 () Bool)

(declare-fun res!8025 () Bool)

(assert (=> b!18909 (=> (not res!8025) (not e!10041))))

(assert (=> b!18909 (= res!8025 (<= (- (level!22 (left!669 res!5609)) (level!22 (right!672 res!5609))) 1))))

(declare-fun d!12235 () Bool)

(declare-fun res!8028 () Bool)

(assert (=> d!12235 (=> res!8028 e!10040)))

(assert (=> d!12235 (= res!8028 (not (is-CC!24 res!5609)))))

(assert (=> d!12235 (= (balanced!24 res!5609) e!10040)))

(assert (= (and d!12235 (not res!8028)) b!18908))

(assert (= (and b!18908 res!8027) b!18909))

(assert (= (and b!18909 res!8025) b!18910))

(assert (= (and b!18910 res!8026) b!18911))

(declare-fun m!21473 () Bool)

(assert (=> b!18908 m!21473))

(declare-fun m!21475 () Bool)

(assert (=> b!18908 m!21475))

(declare-fun m!21477 () Bool)

(assert (=> b!18910 m!21477))

(declare-fun m!21479 () Bool)

(assert (=> b!18911 m!21479))

(assert (=> b!18909 m!21473))

(assert (=> b!18909 m!21475))

(assert (=> b!18875 d!12235))

(declare-fun d!12237 () Bool)

(assert (=> d!12237 (= (isEmpty!287 res!5609) (= res!5609 Empty!35))))

(assert (=> b!18883 d!12237))

(declare-fun b!18923 () Bool)

(declare-fun e!10046 () Bool)

(assert (=> b!18923 (= e!10046 (concInv!23 (right!672 res!5609)))))

(declare-fun b!18921 () Bool)

(declare-fun res!8039 () Bool)

(assert (=> b!18921 (=> (not res!8039) (not e!10046))))

(assert (=> b!18921 (= res!8039 (not (isEmpty!287 (right!672 res!5609))))))

(declare-fun d!12239 () Bool)

(declare-fun res!8037 () Bool)

(declare-fun e!10047 () Bool)

(assert (=> d!12239 (=> res!8037 e!10047)))

(assert (=> d!12239 (= res!8037 (not (is-CC!24 res!5609)))))

(assert (=> d!12239 (= (concInv!23 res!5609) e!10047)))

(declare-fun b!18922 () Bool)

(declare-fun res!8038 () Bool)

(assert (=> b!18922 (=> (not res!8038) (not e!10046))))

(assert (=> b!18922 (= res!8038 (concInv!23 (left!669 res!5609)))))

(declare-fun b!18920 () Bool)

(assert (=> b!18920 (= e!10047 e!10046)))

(declare-fun res!8040 () Bool)

(assert (=> b!18920 (=> (not res!8040) (not e!10046))))

(assert (=> b!18920 (= res!8040 (not (isEmpty!287 (left!669 res!5609))))))

(assert (= (and d!12239 (not res!8037)) b!18920))

(assert (= (and b!18920 res!8040) b!18921))

(assert (= (and b!18921 res!8039) b!18922))

(assert (= (and b!18922 res!8038) b!18923))

(declare-fun m!21481 () Bool)

(assert (=> b!18923 m!21481))

(declare-fun m!21483 () Bool)

(assert (=> b!18921 m!21483))

(declare-fun m!21485 () Bool)

(assert (=> b!18922 m!21485))

(declare-fun m!21487 () Bool)

(assert (=> b!18920 m!21487))

(assert (=> b!18880 d!12239))

(declare-fun d!12241 () Bool)

(declare-fun e!10053 () Bool)

(assert (=> d!12241 e!10053))

(declare-fun res!8046 () Bool)

(assert (=> d!12241 (=> res!8046 e!10053)))

(assert (=> d!12241 (= res!8046 (not (is-CC!24 xs!604)))))

(declare-fun e!10052 () Bool)

(assert (=> d!12241 e!10052))

(declare-fun res!8045 () Bool)

(assert (=> d!12241 (=> (not res!8045) (not e!10052))))

(assert (=> d!12241 (= res!8045 (>= i!298 0))))

(assert (=> d!12241 (= (insertAppendAxiomInst!7 xs!604 i!298 y!824) true)))

(declare-fun b!18928 () Bool)

(assert (=> b!18928 (= e!10052 (<= i!298 (size!212 xs!604)))))

(declare-fun b!18929 () Bool)

(declare-fun appendInsertIndex!7 (List!332 List!332 Int T!1741) Bool)

(assert (=> b!18929 (= e!10053 (appendInsertIndex!7 (toList!92 (left!669 xs!604)) (toList!92 (right!672 xs!604)) i!298 y!824))))

(assert (= (and d!12241 res!8045) b!18928))

(assert (= (and d!12241 (not res!8046)) b!18929))

(assert (=> b!18928 m!21459))

(assert (=> b!18929 m!21467))

(assert (=> b!18929 m!21469))

(assert (=> b!18929 m!21467))

(assert (=> b!18929 m!21469))

(declare-fun m!21489 () Bool)

(assert (=> b!18929 m!21489))

(assert (=> b!18884 d!12241))

(declare-fun d!12243 () Bool)

(declare-fun lt!2800 () Int)

(assert (=> d!12243 (>= lt!2800 0)))

(declare-fun e!10056 () Int)

(assert (=> d!12243 (= lt!2800 e!10056)))

(declare-fun c!4662 () Bool)

(assert (=> d!12243 (= c!4662 (is-Nil!327 l!787))))

(assert (=> d!12243 (= (size!213 l!787) lt!2800)))

(declare-fun b!18934 () Bool)

(assert (=> b!18934 (= e!10056 0)))

(declare-fun b!18935 () Bool)

(assert (=> b!18935 (= e!10056 (+ 1 (size!213 (t!4327 l!787))))))

(assert (= (and d!12243 c!4662) b!18934))

(assert (= (and d!12243 (not c!4662)) b!18935))

(declare-fun m!21491 () Bool)

(assert (=> b!18935 m!21491))

(assert (=> b!18874 d!12243))

(declare-fun b!18941 () Bool)

(declare-fun e!10059 () Int)

(declare-fun lt!2809 () Int)

(declare-fun lt!2808 () Int)

(assert (=> b!18941 (= e!10059 (+ 1 (ite (>= lt!2809 lt!2808) lt!2809 lt!2808)))))

(assert (=> b!18941 (= lt!2808 (level!22 (right!672 res!5609)))))

(assert (=> b!18941 (= lt!2809 (level!22 (left!669 res!5609)))))

(declare-fun d!12245 () Bool)

(declare-fun lt!2807 () Int)

(assert (=> d!12245 (>= lt!2807 0)))

(assert (=> d!12245 (= lt!2807 e!10059)))

(declare-fun c!4665 () Bool)

(assert (=> d!12245 (= c!4665 (or (is-Empty!35 res!5609) (is-Single!24 res!5609)))))

(assert (=> d!12245 (= (level!22 res!5609) lt!2807)))

(declare-fun b!18940 () Bool)

(assert (=> b!18940 (= e!10059 0)))

(assert (= (and d!12245 c!4665) b!18940))

(assert (= (and d!12245 (not c!4665)) b!18941))

(assert (=> b!18941 m!21475))

(assert (=> b!18941 m!21473))

(assert (=> b!18878 d!12245))

(declare-fun b!18943 () Bool)

(declare-fun e!10060 () Int)

(declare-fun lt!2812 () Int)

(declare-fun lt!2811 () Int)

(assert (=> b!18943 (= e!10060 (+ 1 (ite (>= lt!2812 lt!2811) lt!2812 lt!2811)))))

(assert (=> b!18943 (= lt!2811 (level!22 (right!672 xs!604)))))

(assert (=> b!18943 (= lt!2812 (level!22 (left!669 xs!604)))))

(declare-fun d!12247 () Bool)

(declare-fun lt!2810 () Int)

(assert (=> d!12247 (>= lt!2810 0)))

(assert (=> d!12247 (= lt!2810 e!10060)))

(declare-fun c!4666 () Bool)

(assert (=> d!12247 (= c!4666 (or (is-Empty!35 xs!604) (is-Single!24 xs!604)))))

(assert (=> d!12247 (= (level!22 xs!604) lt!2810)))

(declare-fun b!18942 () Bool)

(assert (=> b!18942 (= e!10060 0)))

(assert (= (and d!12247 c!4666) b!18942))

(assert (= (and d!12247 (not c!4666)) b!18943))

(declare-fun m!21493 () Bool)

(assert (=> b!18943 m!21493))

(declare-fun m!21495 () Bool)

(assert (=> b!18943 m!21495))

(assert (=> b!18878 d!12247))

(declare-fun b!18944 () Bool)

(declare-fun e!10061 () Bool)

(declare-fun e!10062 () Bool)

(assert (=> b!18944 (= e!10061 e!10062)))

(declare-fun res!8049 () Bool)

(assert (=> b!18944 (=> (not res!8049) (not e!10062))))

(assert (=> b!18944 (= res!8049 (>= (- (level!22 (left!669 xs!604)) (level!22 (right!672 xs!604))) (- 1)))))

(declare-fun b!18946 () Bool)

(declare-fun res!8048 () Bool)

(assert (=> b!18946 (=> (not res!8048) (not e!10062))))

(assert (=> b!18946 (= res!8048 (balanced!24 (left!669 xs!604)))))

(declare-fun b!18947 () Bool)

(assert (=> b!18947 (= e!10062 (balanced!24 (right!672 xs!604)))))

(declare-fun b!18945 () Bool)

(declare-fun res!8047 () Bool)

(assert (=> b!18945 (=> (not res!8047) (not e!10062))))

(assert (=> b!18945 (= res!8047 (<= (- (level!22 (left!669 xs!604)) (level!22 (right!672 xs!604))) 1))))

(declare-fun d!12249 () Bool)

(declare-fun res!8050 () Bool)

(assert (=> d!12249 (=> res!8050 e!10061)))

(assert (=> d!12249 (= res!8050 (not (is-CC!24 xs!604)))))

(assert (=> d!12249 (= (balanced!24 xs!604) e!10061)))

(assert (= (and d!12249 (not res!8050)) b!18944))

(assert (= (and b!18944 res!8049) b!18945))

(assert (= (and b!18945 res!8047) b!18946))

(assert (= (and b!18946 res!8048) b!18947))

(assert (=> b!18944 m!21495))

(assert (=> b!18944 m!21493))

(declare-fun m!21497 () Bool)

(assert (=> b!18946 m!21497))

(declare-fun m!21499 () Bool)

(assert (=> b!18947 m!21499))

(assert (=> b!18945 m!21495))

(assert (=> b!18945 m!21493))

(assert (=> b!18877 d!12249))

(declare-fun b!18951 () Bool)

(declare-fun e!10063 () Bool)

(assert (=> b!18951 (= e!10063 (concInv!23 (right!672 xs!604)))))

(declare-fun b!18949 () Bool)

(declare-fun res!8053 () Bool)

(assert (=> b!18949 (=> (not res!8053) (not e!10063))))

(assert (=> b!18949 (= res!8053 (not (isEmpty!287 (right!672 xs!604))))))

(declare-fun d!12251 () Bool)

(declare-fun res!8051 () Bool)

(declare-fun e!10064 () Bool)

(assert (=> d!12251 (=> res!8051 e!10064)))

(assert (=> d!12251 (= res!8051 (not (is-CC!24 xs!604)))))

(assert (=> d!12251 (= (concInv!23 xs!604) e!10064)))

(declare-fun b!18950 () Bool)

(declare-fun res!8052 () Bool)

(assert (=> b!18950 (=> (not res!8052) (not e!10063))))

(assert (=> b!18950 (= res!8052 (concInv!23 (left!669 xs!604)))))

(declare-fun b!18948 () Bool)

(assert (=> b!18948 (= e!10064 e!10063)))

(declare-fun res!8054 () Bool)

(assert (=> b!18948 (=> (not res!8054) (not e!10063))))

(assert (=> b!18948 (= res!8054 (not (isEmpty!287 (left!669 xs!604))))))

(assert (= (and d!12251 (not res!8051)) b!18948))

(assert (= (and b!18948 res!8054) b!18949))

(assert (= (and b!18949 res!8053) b!18950))

(assert (= (and b!18950 res!8052) b!18951))

(declare-fun m!21501 () Bool)

(assert (=> b!18951 m!21501))

(declare-fun m!21503 () Bool)

(assert (=> b!18949 m!21503))

(declare-fun m!21505 () Bool)

(assert (=> b!18950 m!21505))

(declare-fun m!21507 () Bool)

(assert (=> b!18948 m!21507))

(assert (=> start!3308 d!12251))

(declare-fun b!18994 () Bool)

(declare-fun res!8113 () Bool)

(declare-fun e!10087 () Bool)

(assert (=> b!18994 (=> (not res!8113) (not e!10087))))

(declare-fun lt!2857 () Conc!25)

(assert (=> b!18994 (= res!8113 (balanced!24 lt!2857))))

(declare-fun b!18995 () Bool)

(declare-fun e!10088 () Conc!25)

(declare-fun res!8115 () Conc!25)

(assert (=> b!18995 (= e!10088 res!8115)))

(assert (=> b!18995 true))

(declare-fun e!10084 () Bool)

(assert (=> b!18995 e!10084))

(declare-fun b!18996 () Bool)

(declare-fun res!8116 () Bool)

(assert (=> b!18996 (=> (not res!8116) (not e!10087))))

(declare-fun lt!2856 () Int)

(declare-fun lt!2853 () Int)

(declare-fun lt!2855 () Int)

(assert (=> b!18996 (= res!8116 (>= lt!2856 (ite (>= lt!2853 lt!2855) lt!2853 lt!2855)))))

(assert (=> b!18996 (= lt!2855 (level!22 (right!672 xs!604)))))

(assert (=> b!18996 (= lt!2853 (level!22 (insert!16 (left!669 xs!604) i!298 y!824)))))

(assert (=> b!18996 (= lt!2856 (level!22 lt!2857))))

(declare-fun b!18997 () Bool)

(declare-fun e!10091 () Bool)

(assert (=> b!18997 (= e!10091 (balanced!24 (insert!16 (left!669 xs!604) i!298 y!824)))))

(declare-fun e!10089 () Int)

(declare-fun b!18998 () Bool)

(declare-fun lt!2858 () Bool)

(assert (=> b!18998 (= e!10089 (level!22 (ite lt!2858 (insert!16 (left!669 xs!604) i!298 y!824) (right!672 xs!604))))))

(declare-fun b!18999 () Bool)

(declare-fun e!10090 () Bool)

(assert (=> b!18999 (= e!10090 e!10087)))

(declare-fun res!8122 () Bool)

(assert (=> b!18999 (=> (not res!8122) (not e!10087))))

(declare-fun lt!2860 () Int)

(declare-fun lt!2852 () Int)

(declare-fun lt!2859 () Int)

(assert (=> b!18999 (= res!8122 (<= lt!2860 (+ (ite (>= lt!2859 lt!2852) lt!2859 lt!2852) 1)))))

(assert (=> b!18999 (= lt!2852 (level!22 (right!672 xs!604)))))

(assert (=> b!18999 (= lt!2859 (level!22 (insert!16 (left!669 xs!604) i!298 y!824)))))

(assert (=> b!18999 (= lt!2860 (level!22 lt!2857))))

(declare-fun b!19000 () Bool)

(declare-fun e!10086 () Int)

(declare-fun lt!2848 () Conc!25)

(assert (=> b!19000 (= e!10086 (level!22 lt!2848))))

(declare-fun b!19001 () Bool)

(declare-fun res!8117 () Bool)

(declare-fun e!10085 () Bool)

(assert (=> b!19001 (=> (not res!8117) (not e!10085))))

(assert (=> b!19001 (= res!8117 (balanced!24 (right!672 xs!604)))))

(declare-fun b!19002 () Bool)

(declare-fun tp!4435 () Bool)

(declare-fun tp!4434 () Bool)

(assert (=> b!19002 (= e!10084 (and tp!4435 tp!4434))))

(declare-fun b!19003 () Bool)

(declare-fun res!8118 () Int)

(assert (=> b!19003 (= e!10089 res!8118)))

(assert (=> b!19003 true))

(assert (=> b!19003 true))

(declare-fun b!19004 () Bool)

(declare-fun concatCorrectness!3 (Conc!25 Conc!25 Conc!25) Bool)

(assert (=> b!19004 (= e!10087 (concatCorrectness!3 lt!2857 (insert!16 (left!669 xs!604) i!298 y!824) (right!672 xs!604)))))

(declare-fun d!12253 () Bool)

(assert (=> d!12253 e!10090))

(declare-fun res!8119 () Bool)

(assert (=> d!12253 (=> (not res!8119) (not e!10090))))

(assert (=> d!12253 (= res!8119 (is-CC!24 lt!2857))))

(declare-fun e!10083 () Conc!25)

(assert (=> d!12253 (= lt!2857 e!10083)))

(declare-fun c!4677 () Bool)

(declare-fun lt!2845 () Int)

(assert (=> d!12253 (= c!4677 (and (>= lt!2845 (- 1)) (<= lt!2845 1)))))

(assert (=> d!12253 (= lt!2845 (- (level!22 (right!672 xs!604)) (level!22 (insert!16 (left!669 xs!604) i!298 y!824))))))

(assert (=> d!12253 e!10085))

(declare-fun res!8109 () Bool)

(assert (=> d!12253 (=> (not res!8109) (not e!10085))))

(assert (=> d!12253 (= res!8109 e!10091)))

(declare-fun res!8111 () Bool)

(assert (=> d!12253 (=> (not res!8111) (not e!10091))))

(assert (=> d!12253 (= res!8111 (concInv!23 (insert!16 (left!669 xs!604) i!298 y!824)))))

(assert (=> d!12253 (= (concatNonEmpty!7 (insert!16 (left!669 xs!604) i!298 y!824) (right!672 xs!604)) lt!2857)))

(declare-fun b!19005 () Bool)

(assert (=> b!19005 (= e!10084 tp_is_empty!85)))

(declare-fun b!19006 () Bool)

(assert (=> b!19006 (= e!10083 (CC!24 (insert!16 (left!669 xs!604) i!298 y!824) (right!672 xs!604)))))

(declare-fun b!19007 () Bool)

(declare-fun res!8120 () Bool)

(assert (=> b!19007 (=> (not res!8120) (not e!10087))))

(assert (=> b!19007 (= res!8120 (concInv!23 lt!2857))))

(declare-fun b!19008 () Bool)

(declare-fun res!8121 () Int)

(assert (=> b!19008 (= e!10086 res!8121)))

(assert (=> b!19008 true))

(declare-fun b!19009 () Bool)

(declare-fun res!8112 () Bool)

(assert (=> b!19009 (=> (not res!8112) (not e!10085))))

(assert (=> b!19009 (= res!8112 (concInv!23 (right!672 xs!604)))))

(declare-fun lt!2850 () Int)

(declare-fun lt!2849 () Bool)

(declare-fun b!19010 () Bool)

(declare-fun lt!2854 () Int)

(declare-fun lt!2851 () Int)

(declare-fun lt!2846 () Int)

(assert (=> b!19010 (= e!10083 (ite lt!2849 (let ((res!8058 lt!2848)) (ite (>= lt!2846 lt!2854) (CC!24 (left!669 (insert!16 (left!669 xs!604) i!298 y!824)) res!8058) (ite (= lt!2851 (- lt!2850 3)) (CC!24 (left!669 (insert!16 (left!669 xs!604) i!298 y!824)) (CC!24 (left!669 (right!672 (insert!16 (left!669 xs!604) i!298 y!824))) res!8058)) (CC!24 (CC!24 (left!669 (insert!16 (left!669 xs!604) i!298 y!824)) (left!669 (right!672 (insert!16 (left!669 xs!604) i!298 y!824)))) res!8058)))) (let ((res!8061 lt!2848)) (ite (>= lt!2846 lt!2854) (CC!24 res!8061 (right!672 (right!672 xs!604))) (ite (= lt!2851 (- lt!2850 3)) (CC!24 (CC!24 res!8061 (right!672 (left!669 (right!672 xs!604)))) (right!672 (right!672 xs!604))) (CC!24 res!8061 (CC!24 (right!672 (left!669 (right!672 xs!604))) (right!672 (right!672 xs!604)))))))))))

(assert (=> b!19010 (= lt!2850 e!10089)))

(declare-fun c!4678 () Bool)

(assert (=> b!19010 (= c!4678 (or lt!2858 (and (not lt!2849) (not (>= lt!2846 lt!2854)))))))

(assert (=> b!19010 (= lt!2858 (and lt!2849 (not (>= lt!2846 lt!2854))))))

(assert (=> b!19010 (= lt!2851 e!10086)))

(declare-fun c!4675 () Bool)

(assert (=> b!19010 (= c!4675 (or (and lt!2849 (not (>= lt!2846 lt!2854))) (and (not lt!2849) (not (>= lt!2846 lt!2854)))))))

(assert (=> b!19010 (= lt!2848 e!10088)))

(declare-fun c!4676 () Bool)

(declare-fun lt!2847 () Bool)

(assert (=> b!19010 (= c!4676 (or lt!2847 (not lt!2849)))))

(assert (=> b!19010 (= lt!2847 lt!2849)))

(assert (=> b!19010 (= lt!2854 (level!22 (ite lt!2849 (right!672 (insert!16 (left!669 xs!604) i!298 y!824)) (left!669 (right!672 xs!604)))))))

(assert (=> b!19010 (= lt!2846 (level!22 (ite lt!2849 (left!669 (insert!16 (left!669 xs!604) i!298 y!824)) (right!672 (right!672 xs!604)))))))

(assert (=> b!19010 (= lt!2849 (< lt!2845 (- 1)))))

(declare-fun b!19011 () Bool)

(declare-fun res!8110 () Bool)

(assert (=> b!19011 (=> (not res!8110) (not e!10087))))

(declare-fun appendAssocInst!5 (Conc!25 Conc!25) Bool)

(assert (=> b!19011 (= res!8110 (appendAssocInst!5 (insert!16 (left!669 xs!604) i!298 y!824) (right!672 xs!604)))))

(declare-fun b!19012 () Bool)

(assert (=> b!19012 (= e!10088 (concatNonEmpty!7 (ite lt!2847 (ite (>= lt!2846 lt!2854) (right!672 (insert!16 (left!669 xs!604) i!298 y!824)) (right!672 (right!672 (insert!16 (left!669 xs!604) i!298 y!824)))) (insert!16 (left!669 xs!604) i!298 y!824)) (ite lt!2847 (right!672 xs!604) (ite (>= lt!2846 lt!2854) (left!669 (right!672 xs!604)) (left!669 (left!669 (right!672 xs!604)))))))))

(declare-fun b!19013 () Bool)

(declare-fun res!8114 () Bool)

(assert (=> b!19013 (=> (not res!8114) (not e!10085))))

(assert (=> b!19013 (= res!8114 (not (isEmpty!287 (insert!16 (left!669 xs!604) i!298 y!824))))))

(declare-fun b!19014 () Bool)

(assert (=> b!19014 (= e!10085 (not (isEmpty!287 (right!672 xs!604))))))

(assert (= (and d!12253 res!8111) b!18997))

(assert (= (and d!12253 res!8109) b!19009))

(assert (= (and b!19009 res!8112) b!19001))

(assert (= (and b!19001 res!8117) b!19013))

(assert (= (and b!19013 res!8114) b!19014))

(assert (= (and b!18995 (is-CC!24 res!8115)) b!19002))

(assert (= (and b!18995 (is-Single!24 res!8115)) b!19005))

(assert (= (and b!19010 c!4676) b!19012))

(assert (= (and b!19010 (not c!4676)) b!18995))

(assert (= (and b!19010 c!4675) b!19000))

(assert (= (and b!19010 (not c!4675)) b!19008))

(assert (= (and b!19010 c!4678) b!18998))

(assert (= (and b!19010 (not c!4678)) b!19003))

(assert (= (and d!12253 c!4677) b!19006))

(assert (= (and d!12253 (not c!4677)) b!19010))

(assert (= (and d!12253 res!8119) b!18999))

(assert (= (and b!18999 res!8122) b!18996))

(assert (= (and b!18996 res!8116) b!19007))

(assert (= (and b!19007 res!8120) b!18994))

(assert (= (and b!18994 res!8113) b!19011))

(assert (= (and b!19011 res!8110) b!19004))

(assert (=> b!18999 m!21493))

(assert (=> b!18999 m!21453))

(declare-fun m!21509 () Bool)

(assert (=> b!18999 m!21509))

(declare-fun m!21511 () Bool)

(assert (=> b!18999 m!21511))

(assert (=> b!19009 m!21501))

(assert (=> b!19004 m!21453))

(declare-fun m!21513 () Bool)

(assert (=> b!19004 m!21513))

(declare-fun m!21515 () Bool)

(assert (=> b!19010 m!21515))

(declare-fun m!21517 () Bool)

(assert (=> b!19010 m!21517))

(assert (=> b!19011 m!21453))

(declare-fun m!21519 () Bool)

(assert (=> b!19011 m!21519))

(assert (=> b!18997 m!21453))

(declare-fun m!21521 () Bool)

(assert (=> b!18997 m!21521))

(assert (=> d!12253 m!21493))

(assert (=> d!12253 m!21453))

(assert (=> d!12253 m!21509))

(assert (=> d!12253 m!21453))

(declare-fun m!21523 () Bool)

(assert (=> d!12253 m!21523))

(assert (=> b!19014 m!21503))

(declare-fun m!21525 () Bool)

(assert (=> b!19007 m!21525))

(declare-fun m!21527 () Bool)

(assert (=> b!19012 m!21527))

(declare-fun m!21529 () Bool)

(assert (=> b!18998 m!21529))

(assert (=> b!19013 m!21453))

(declare-fun m!21531 () Bool)

(assert (=> b!19013 m!21531))

(declare-fun m!21533 () Bool)

(assert (=> b!18994 m!21533))

(assert (=> b!19001 m!21499))

(assert (=> b!18996 m!21493))

(assert (=> b!18996 m!21453))

(assert (=> b!18996 m!21509))

(assert (=> b!18996 m!21511))

(declare-fun m!21535 () Bool)

(assert (=> b!19000 m!21535))

(assert (=> b!18868 d!12253))

(declare-fun b!19045 () Bool)

(declare-fun e!10110 () Conc!25)

(assert (=> b!19045 (= e!10110 (concatNonEmpty!7 (insert!16 (left!669 (left!669 xs!604)) i!298 y!824) (right!672 (left!669 xs!604))))))

(declare-fun b!19046 () Bool)

(declare-fun e!10112 () Conc!25)

(assert (=> b!19046 (= e!10112 e!10110)))

(declare-fun c!4686 () Bool)

(assert (=> b!19046 (= c!4686 (< i!298 (size!212 (left!669 (left!669 xs!604)))))))

(declare-fun b!19047 () Bool)

(declare-fun res!8143 () Bool)

(declare-fun e!10106 () Bool)

(assert (=> b!19047 (=> (not res!8143) (not e!10106))))

(declare-fun lt!2863 () Conc!25)

(assert (=> b!19047 (= res!8143 (>= (level!22 lt!2863) (level!22 (left!669 xs!604))))))

(declare-fun b!19048 () Bool)

(declare-fun res!8142 () Bool)

(assert (=> b!19048 (=> (not res!8142) (not e!10106))))

(assert (=> b!19048 (= res!8142 (insertAppendAxiomInst!7 (left!669 xs!604) i!298 y!824))))

(declare-fun b!19049 () Bool)

(declare-fun insertAtIndex!5 (List!332 Int T!1741) List!332)

(assert (=> b!19049 (= e!10106 (= (toList!92 lt!2863) (insertAtIndex!5 (toList!92 (left!669 xs!604)) i!298 y!824)))))

(declare-fun b!19050 () Bool)

(assert (=> b!19050 (= e!10112 (ite (= i!298 0) (CC!24 (Single!24 y!824) (left!669 xs!604)) (CC!24 (left!669 xs!604) (Single!24 y!824))))))

(declare-fun b!19051 () Bool)

(declare-fun e!10109 () Bool)

(assert (=> b!19051 (= e!10109 (balanced!24 lt!2863))))

(declare-fun b!19052 () Bool)

(declare-fun e!10111 () Bool)

(assert (=> b!19052 (= e!10111 (balanced!24 (left!669 xs!604)))))

(declare-fun b!19053 () Bool)

(assert (=> b!19053 (= e!10110 (concatNonEmpty!7 (left!669 (left!669 xs!604)) (insert!16 (right!672 (left!669 xs!604)) (- i!298 (size!212 (left!669 (left!669 xs!604)))) y!824)))))

(declare-fun b!19054 () Bool)

(declare-fun res!8150 () Bool)

(declare-fun e!10108 () Bool)

(assert (=> b!19054 (=> (not res!8150) (not e!10108))))

(assert (=> b!19054 (= res!8150 (>= i!298 0))))

(declare-fun b!19055 () Bool)

(declare-fun e!10107 () Conc!25)

(assert (=> b!19055 (= e!10107 e!10112)))

(declare-fun c!4685 () Bool)

(assert (=> b!19055 (= c!4685 (is-Single!24 (left!669 xs!604)))))

(declare-fun d!12255 () Bool)

(assert (=> d!12255 e!10106))

(declare-fun res!8149 () Bool)

(assert (=> d!12255 (=> (not res!8149) (not e!10106))))

(assert (=> d!12255 (= res!8149 e!10109)))

(declare-fun res!8144 () Bool)

(assert (=> d!12255 (=> (not res!8144) (not e!10109))))

(assert (=> d!12255 (= res!8144 (concInv!23 lt!2863))))

(assert (=> d!12255 (= lt!2863 e!10107)))

(declare-fun c!4687 () Bool)

(assert (=> d!12255 (= c!4687 (is-Empty!35 (left!669 xs!604)))))

(assert (=> d!12255 e!10108))

(declare-fun res!8146 () Bool)

(assert (=> d!12255 (=> (not res!8146) (not e!10108))))

(assert (=> d!12255 (= res!8146 e!10111)))

(declare-fun res!8148 () Bool)

(assert (=> d!12255 (=> (not res!8148) (not e!10111))))

(assert (=> d!12255 (= res!8148 (concInv!23 (left!669 xs!604)))))

(assert (=> d!12255 (= (insert!16 (left!669 xs!604) i!298 y!824) lt!2863)))

(declare-fun b!19056 () Bool)

(assert (=> b!19056 (= e!10108 (<= i!298 (size!212 (left!669 xs!604))))))

(declare-fun b!19057 () Bool)

(declare-fun res!8147 () Bool)

(assert (=> b!19057 (=> (not res!8147) (not e!10106))))

(assert (=> b!19057 (= res!8147 (not (isEmpty!287 lt!2863)))))

(declare-fun b!19058 () Bool)

(assert (=> b!19058 (= e!10107 (Single!24 y!824))))

(declare-fun b!19059 () Bool)

(declare-fun res!8145 () Bool)

(assert (=> b!19059 (=> (not res!8145) (not e!10106))))

(assert (=> b!19059 (= res!8145 (<= (- (level!22 lt!2863) (level!22 (left!669 xs!604))) 1))))

(assert (= (and d!12255 res!8148) b!19052))

(assert (= (and d!12255 res!8146) b!19054))

(assert (= (and b!19054 res!8150) b!19056))

(assert (= (and b!19046 c!4686) b!19045))

(assert (= (and b!19046 (not c!4686)) b!19053))

(assert (= (and b!19055 c!4685) b!19050))

(assert (= (and b!19055 (not c!4685)) b!19046))

(assert (= (and d!12255 c!4687) b!19058))

(assert (= (and d!12255 (not c!4687)) b!19055))

(assert (= (and d!12255 res!8144) b!19051))

(assert (= (and d!12255 res!8149) b!19059))

(assert (= (and b!19059 res!8145) b!19047))

(assert (= (and b!19047 res!8143) b!19057))

(assert (= (and b!19057 res!8147) b!19048))

(assert (= (and b!19048 res!8142) b!19049))

(assert (=> b!19052 m!21497))

(declare-fun m!21537 () Bool)

(assert (=> b!19059 m!21537))

(assert (=> b!19059 m!21495))

(declare-fun m!21539 () Bool)

(assert (=> b!19048 m!21539))

(declare-fun m!21541 () Bool)

(assert (=> b!19051 m!21541))

(declare-fun m!21543 () Bool)

(assert (=> b!19049 m!21543))

(assert (=> b!19049 m!21467))

(assert (=> b!19049 m!21467))

(declare-fun m!21545 () Bool)

(assert (=> b!19049 m!21545))

(declare-fun m!21547 () Bool)

(assert (=> b!19045 m!21547))

(assert (=> b!19045 m!21547))

(declare-fun m!21549 () Bool)

(assert (=> b!19045 m!21549))

(assert (=> b!19047 m!21537))

(assert (=> b!19047 m!21495))

(declare-fun m!21551 () Bool)

(assert (=> b!19046 m!21551))

(declare-fun m!21553 () Bool)

(assert (=> b!19057 m!21553))

(assert (=> b!19056 m!21445))

(assert (=> b!19053 m!21551))

(declare-fun m!21555 () Bool)

(assert (=> b!19053 m!21555))

(assert (=> b!19053 m!21555))

(declare-fun m!21557 () Bool)

(assert (=> b!19053 m!21557))

(declare-fun m!21559 () Bool)

(assert (=> d!12255 m!21559))

(assert (=> d!12255 m!21505))

(assert (=> b!18868 d!12255))

(declare-fun b!19070 () Bool)

(declare-fun e!10117 () Int)

(assert (=> b!19070 (= e!10117 1)))

(declare-fun b!19069 () Bool)

(declare-fun e!10118 () Int)

(assert (=> b!19069 (= e!10118 e!10117)))

(declare-fun c!4692 () Bool)

(assert (=> b!19069 (= c!4692 (is-Single!24 xs!604))))

(declare-fun b!19068 () Bool)

(assert (=> b!19068 (= e!10118 0)))

(declare-fun d!12257 () Bool)

(declare-fun lt!2866 () Int)

(assert (=> d!12257 (>= lt!2866 0)))

(assert (=> d!12257 (= lt!2866 e!10118)))

(declare-fun c!4693 () Bool)

(assert (=> d!12257 (= c!4693 (is-Empty!35 xs!604))))

(assert (=> d!12257 (= (size!212 xs!604) lt!2866)))

(declare-fun b!19071 () Bool)

(assert (=> b!19071 (= e!10117 (+ (size!212 (left!669 xs!604)) (size!212 (right!672 xs!604))))))

(assert (= (and b!19069 c!4692) b!19070))

(assert (= (and b!19069 (not c!4692)) b!19071))

(assert (= (and d!12257 c!4693) b!19068))

(assert (= (and d!12257 (not c!4693)) b!19069))

(assert (=> b!19071 m!21445))

(declare-fun m!21561 () Bool)

(assert (=> b!19071 m!21561))

(assert (=> b!18887 d!12257))

(declare-fun b!19074 () Bool)

(declare-fun e!10119 () Int)

(assert (=> b!19074 (= e!10119 1)))

(declare-fun b!19073 () Bool)

(declare-fun e!10120 () Int)

(assert (=> b!19073 (= e!10120 e!10119)))

(declare-fun c!4694 () Bool)

(assert (=> b!19073 (= c!4694 (is-Single!24 (left!669 xs!604)))))

(declare-fun b!19072 () Bool)

(assert (=> b!19072 (= e!10120 0)))

(declare-fun d!12259 () Bool)

(declare-fun lt!2867 () Int)

(assert (=> d!12259 (>= lt!2867 0)))

(assert (=> d!12259 (= lt!2867 e!10120)))

(declare-fun c!4695 () Bool)

(assert (=> d!12259 (= c!4695 (is-Empty!35 (left!669 xs!604)))))

(assert (=> d!12259 (= (size!212 (left!669 xs!604)) lt!2867)))

(declare-fun b!19075 () Bool)

(assert (=> b!19075 (= e!10119 (+ (size!212 (left!669 (left!669 xs!604))) (size!212 (right!672 (left!669 xs!604)))))))

(assert (= (and b!19073 c!4694) b!19074))

(assert (= (and b!19073 (not c!4694)) b!19075))

(assert (= (and d!12259 c!4695) b!19072))

(assert (= (and d!12259 (not c!4695)) b!19073))

(assert (=> b!19075 m!21551))

(declare-fun m!21563 () Bool)

(assert (=> b!19075 m!21563))

(assert (=> b!18870 d!12259))

(assert (=> b!18886 d!12245))

(assert (=> b!18886 d!12247))

(declare-fun b!19082 () Bool)

(declare-fun e!10123 () Bool)

(declare-fun tp!4440 () Bool)

(declare-fun tp!4441 () Bool)

(assert (=> b!19082 (= e!10123 (and tp!4440 tp!4441))))

(declare-fun b!19083 () Bool)

(assert (=> b!19083 (= e!10123 tp_is_empty!85)))

(assert (=> b!18871 (= tp!4427 e!10123)))

(assert (= (and b!18871 (is-CC!24 (left!669 res!5609))) b!19082))

(assert (= (and b!18871 (is-Single!24 (left!669 res!5609))) b!19083))

(declare-fun b!19084 () Bool)

(declare-fun e!10124 () Bool)

(declare-fun tp!4442 () Bool)

(declare-fun tp!4443 () Bool)

(assert (=> b!19084 (= e!10124 (and tp!4442 tp!4443))))

(declare-fun b!19085 () Bool)

(assert (=> b!19085 (= e!10124 tp_is_empty!85)))

(assert (=> b!18871 (= tp!4428 e!10124)))

(assert (= (and b!18871 (is-CC!24 (right!672 res!5609))) b!19084))

(assert (= (and b!18871 (is-Single!24 (right!672 res!5609))) b!19085))

(declare-fun b!19090 () Bool)

(declare-fun e!10127 () Bool)

(declare-fun tp!4446 () Bool)

(assert (=> b!19090 (= e!10127 (and tp_is_empty!85 tp!4446))))

(assert (=> b!18876 (= tp!4425 e!10127)))

(assert (= (and b!18876 (is-Cons!326 (t!4327 l!787))) b!19090))

(declare-fun b!19091 () Bool)

(declare-fun e!10128 () Bool)

(declare-fun tp!4447 () Bool)

(declare-fun tp!4448 () Bool)

(assert (=> b!19091 (= e!10128 (and tp!4447 tp!4448))))

(declare-fun b!19092 () Bool)

(assert (=> b!19092 (= e!10128 tp_is_empty!85)))

(assert (=> b!18881 (= tp!4426 e!10128)))

(assert (= (and b!18881 (is-CC!24 (left!669 xs!604))) b!19091))

(assert (= (and b!18881 (is-Single!24 (left!669 xs!604))) b!19092))

(declare-fun b!19093 () Bool)

(declare-fun e!10129 () Bool)

(declare-fun tp!4449 () Bool)

(declare-fun tp!4450 () Bool)

(assert (=> b!19093 (= e!10129 (and tp!4449 tp!4450))))

(declare-fun b!19094 () Bool)

(assert (=> b!19094 (= e!10129 tp_is_empty!85)))

(assert (=> b!18881 (= tp!4429 e!10129)))

(assert (= (and b!18881 (is-CC!24 (right!672 xs!604))) b!19093))

(assert (= (and b!18881 (is-Single!24 (right!672 xs!604))) b!19094))

(push 1)

(assert (not b!19051))

(assert (not b!19059))

(assert (not b!18921))

(assert (not b!18998))

(assert (not b!18920))

(assert (not b!18999))

(assert (not b!18997))

(assert (not b!19013))

(assert (not b!19002))

(assert (not b!19049))

(assert (not b!18911))

(assert (not b!18945))

(assert (not b!19045))

(assert (not b!19014))

(assert (not b!19057))

(assert (not b!19046))

(assert (not b!19075))

(assert (not b!18950))

(assert tp_is_empty!85)

(assert (not b!18909))

(assert (not b!19000))

(assert (not b!19010))

(assert (not b!18948))

(assert (not b!19053))

(assert (not b!19048))

(assert (not b!19091))

(assert (not b!18941))

(assert (not b!18908))

(assert (not b!19052))

(assert (not b!18923))

(assert (not b!19084))

(assert (not b!19009))

(assert (not d!12255))

(assert (not b!19047))

(assert (not b!18949))

(assert (not b!19004))

(assert (not d!12253))

(assert (not b!18994))

(assert (not b!19007))

(assert (not b!19056))

(assert (not b!19093))

(assert (not b!18929))

(assert (not b!18951))

(assert (not b!19071))

(assert (not b!18922))

(assert (not b!18928))

(assert (not b!18899))

(assert (not b!18910))

(assert (not b!19001))

(assert (not b!18943))

(assert (not b!18946))

(assert (not b!19082))

(assert (not b!18947))

(assert (not b!19011))

(assert (not d!12233))

(assert (not b!18944))

(assert (not b!19012))

(assert (not b!18996))

(assert (not b!19090))

(assert (not b!18935))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

