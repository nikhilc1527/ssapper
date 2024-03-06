; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3720 () Bool)

(assert start!3720)

(declare-fun b!24041 () Bool)

(declare-fun e!12483 () Bool)

(declare-fun tp!5177 () Bool)

(declare-fun tp!5176 () Bool)

(assert (=> b!24041 (= e!12483 (and tp!5177 tp!5176))))

(declare-fun b!24042 () Bool)

(declare-fun e!12482 () Bool)

(declare-datatypes () ((T!1799 (T!1800 (val!72 Int)))))

(declare-datatypes () ((Conc!49 (CC!48 (left!693 Conc!49) (right!696 Conc!49)) (Single!48 (x!8858 T!1799)) (Empty!59))))

(declare-fun xs!572 () Conc!49)

(assert (=> b!24042 (= e!12482 (and (not (is-Single!48 xs!572)) (not (is-CC!48 xs!572))))))

(declare-fun b!24043 () Bool)

(declare-fun res!10685 () Bool)

(assert (=> b!24043 (=> (not res!10685) (not e!12482))))

(declare-fun i!252 () Int)

(declare-fun size!256 (Conc!49) Int)

(assert (=> b!24043 (= res!10685 (< i!252 (size!256 xs!572)))))

(declare-fun res!10687 () Bool)

(assert (=> start!3720 (=> (not res!10687) (not e!12482))))

(declare-fun concInv!45 (Conc!49) Bool)

(assert (=> start!3720 (= res!10687 (concInv!45 xs!572))))

(assert (=> start!3720 e!12482))

(assert (=> start!3720 e!12483))

(assert (=> start!3720 true))

(declare-fun b!24044 () Bool)

(declare-fun tp_is_empty!143 () Bool)

(assert (=> b!24044 (= e!12483 tp_is_empty!143)))

(declare-fun b!24045 () Bool)

(declare-fun res!10684 () Bool)

(assert (=> b!24045 (=> (not res!10684) (not e!12482))))

(assert (=> b!24045 (= res!10684 (>= i!252 0))))

(declare-fun b!24046 () Bool)

(declare-fun res!10688 () Bool)

(assert (=> b!24046 (=> (not res!10688) (not e!12482))))

(declare-fun isEmpty!308 (Conc!49) Bool)

(assert (=> b!24046 (= res!10688 (not (isEmpty!308 xs!572)))))

(declare-fun b!24047 () Bool)

(declare-fun res!10686 () Bool)

(assert (=> b!24047 (=> (not res!10686) (not e!12482))))

(declare-fun balanced!46 (Conc!49) Bool)

(assert (=> b!24047 (= res!10686 (balanced!46 xs!572))))

(assert (= (and start!3720 res!10687) b!24047))

(assert (= (and b!24047 res!10686) b!24046))

(assert (= (and b!24046 res!10688) b!24045))

(assert (= (and b!24045 res!10684) b!24043))

(assert (= (and b!24043 res!10685) b!24042))

(assert (= (and start!3720 (is-CC!48 xs!572)) b!24041))

(assert (= (and start!3720 (is-Single!48 xs!572)) b!24044))

(declare-fun m!25413 () Bool)

(assert (=> b!24043 m!25413))

(declare-fun m!25415 () Bool)

(assert (=> start!3720 m!25415))

(declare-fun m!25417 () Bool)

(assert (=> b!24046 m!25417))

(declare-fun m!25419 () Bool)

(assert (=> b!24047 m!25419))

(push 1)

(assert tp_is_empty!143)

(assert (not b!24047))

(assert (not start!3720))

(assert (not b!24046))

(assert (not b!24043))

(assert (not b!24041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!24058 () Bool)

(declare-fun res!10699 () Bool)

(declare-fun e!12489 () Bool)

(assert (=> b!24058 (=> (not res!10699) (not e!12489))))

(assert (=> b!24058 (= res!10699 (concInv!45 (left!693 xs!572)))))

(declare-fun b!24056 () Bool)

(declare-fun e!12488 () Bool)

(assert (=> b!24056 (= e!12488 e!12489)))

(declare-fun res!10698 () Bool)

(assert (=> b!24056 (=> (not res!10698) (not e!12489))))

(assert (=> b!24056 (= res!10698 (not (isEmpty!308 (left!693 xs!572))))))

(declare-fun b!24057 () Bool)

(declare-fun res!10697 () Bool)

(assert (=> b!24057 (=> (not res!10697) (not e!12489))))

(assert (=> b!24057 (= res!10697 (not (isEmpty!308 (right!696 xs!572))))))

(declare-fun b!24059 () Bool)

(assert (=> b!24059 (= e!12489 (concInv!45 (right!696 xs!572)))))

(declare-fun d!13473 () Bool)

(declare-fun res!10700 () Bool)

(assert (=> d!13473 (=> res!10700 e!12488)))

(assert (=> d!13473 (= res!10700 (not (is-CC!48 xs!572)))))

(assert (=> d!13473 (= (concInv!45 xs!572) e!12488)))

(assert (= (and d!13473 (not res!10700)) b!24056))

(assert (= (and b!24056 res!10698) b!24057))

(assert (= (and b!24057 res!10697) b!24058))

(assert (= (and b!24058 res!10699) b!24059))

(declare-fun m!25421 () Bool)

(assert (=> b!24058 m!25421))

(declare-fun m!25423 () Bool)

(assert (=> b!24056 m!25423))

(declare-fun m!25425 () Bool)

(assert (=> b!24057 m!25425))

(declare-fun m!25427 () Bool)

(assert (=> b!24059 m!25427))

(assert (=> start!3720 d!13473))

(declare-fun b!24068 () Bool)

(declare-fun e!12494 () Bool)

(declare-fun e!12495 () Bool)

(assert (=> b!24068 (= e!12494 e!12495)))

(declare-fun res!10712 () Bool)

(assert (=> b!24068 (=> (not res!10712) (not e!12495))))

(declare-fun level!40 (Conc!49) Int)

(assert (=> b!24068 (= res!10712 (>= (- (level!40 (left!693 xs!572)) (level!40 (right!696 xs!572))) (- 1)))))

(declare-fun d!13475 () Bool)

(declare-fun res!10710 () Bool)

(assert (=> d!13475 (=> res!10710 e!12494)))

(assert (=> d!13475 (= res!10710 (not (is-CC!48 xs!572)))))

(assert (=> d!13475 (= (balanced!46 xs!572) e!12494)))

(declare-fun b!24069 () Bool)

(declare-fun res!10709 () Bool)

(assert (=> b!24069 (=> (not res!10709) (not e!12495))))

(assert (=> b!24069 (= res!10709 (<= (- (level!40 (left!693 xs!572)) (level!40 (right!696 xs!572))) 1))))

(declare-fun b!24071 () Bool)

(assert (=> b!24071 (= e!12495 (balanced!46 (right!696 xs!572)))))

(declare-fun b!24070 () Bool)

(declare-fun res!10711 () Bool)

(assert (=> b!24070 (=> (not res!10711) (not e!12495))))

(assert (=> b!24070 (= res!10711 (balanced!46 (left!693 xs!572)))))

(assert (= (and d!13475 (not res!10710)) b!24068))

(assert (= (and b!24068 res!10712) b!24069))

(assert (= (and b!24069 res!10709) b!24070))

(assert (= (and b!24070 res!10711) b!24071))

(declare-fun m!25429 () Bool)

(assert (=> b!24068 m!25429))

(declare-fun m!25431 () Bool)

(assert (=> b!24068 m!25431))

(assert (=> b!24069 m!25429))

(assert (=> b!24069 m!25431))

(declare-fun m!25433 () Bool)

(assert (=> b!24071 m!25433))

(declare-fun m!25435 () Bool)

(assert (=> b!24070 m!25435))

(assert (=> b!24047 d!13475))

(declare-fun d!13477 () Bool)

(assert (=> d!13477 (= (isEmpty!308 xs!572) (= xs!572 Empty!59))))

(assert (=> b!24046 d!13477))

(declare-fun b!24083 () Bool)

(declare-fun e!12500 () Int)

(assert (=> b!24083 (= e!12500 (+ (size!256 (left!693 xs!572)) (size!256 (right!696 xs!572))))))

(declare-fun d!13479 () Bool)

(declare-fun lt!3731 () Int)

(assert (=> d!13479 (>= lt!3731 0)))

(declare-fun e!12501 () Int)

(assert (=> d!13479 (= lt!3731 e!12501)))

(declare-fun c!5602 () Bool)

(assert (=> d!13479 (= c!5602 (is-Empty!59 xs!572))))

(assert (=> d!13479 (= (size!256 xs!572) lt!3731)))

(declare-fun b!24081 () Bool)

(assert (=> b!24081 (= e!12501 e!12500)))

(declare-fun c!5603 () Bool)

(assert (=> b!24081 (= c!5603 (is-Single!48 xs!572))))

(declare-fun b!24082 () Bool)

(assert (=> b!24082 (= e!12500 1)))

(declare-fun b!24080 () Bool)

(assert (=> b!24080 (= e!12501 0)))

(assert (= (and b!24081 c!5603) b!24082))

(assert (= (and b!24081 (not c!5603)) b!24083))

(assert (= (and d!13479 c!5602) b!24080))

(assert (= (and d!13479 (not c!5602)) b!24081))

(declare-fun m!25437 () Bool)

(assert (=> b!24083 m!25437))

(declare-fun m!25439 () Bool)

(assert (=> b!24083 m!25439))

(assert (=> b!24043 d!13479))

(declare-fun b!24090 () Bool)

(declare-fun e!12504 () Bool)

(declare-fun tp!5182 () Bool)

(declare-fun tp!5183 () Bool)

(assert (=> b!24090 (= e!12504 (and tp!5182 tp!5183))))

(declare-fun b!24091 () Bool)

(assert (=> b!24091 (= e!12504 tp_is_empty!143)))

(assert (=> b!24041 (= tp!5177 e!12504)))

(assert (= (and b!24041 (is-CC!48 (left!693 xs!572))) b!24090))

(assert (= (and b!24041 (is-Single!48 (left!693 xs!572))) b!24091))

(declare-fun b!24092 () Bool)

(declare-fun e!12505 () Bool)

(declare-fun tp!5184 () Bool)

(declare-fun tp!5185 () Bool)

(assert (=> b!24092 (= e!12505 (and tp!5184 tp!5185))))

(declare-fun b!24093 () Bool)

(assert (=> b!24093 (= e!12505 tp_is_empty!143)))

(assert (=> b!24041 (= tp!5176 e!12505)))

(assert (= (and b!24041 (is-CC!48 (right!696 xs!572))) b!24092))

(assert (= (and b!24041 (is-Single!48 (right!696 xs!572))) b!24093))

(push 1)

(assert (not b!24057))

(assert tp_is_empty!143)

(assert (not b!24070))

(assert (not b!24056))

(assert (not b!24068))

(assert (not b!24069))

(assert (not b!24090))

(assert (not b!24071))

(assert (not b!24059))

(assert (not b!24083))

(assert (not b!24092))

(assert (not b!24058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

