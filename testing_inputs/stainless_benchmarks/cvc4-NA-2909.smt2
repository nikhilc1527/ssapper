; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14926 () Bool)

(assert start!14926)

(declare-fun res!49321 () Bool)

(declare-fun e!51634 () Bool)

(assert (=> start!14926 (=> res!49321 e!51634)))

(declare-datatypes () ((P!63 (Charlie!63) (Alice!63) (Bob!63))))

(declare-datatypes () ((tuple2!472 (tuple2!473 (_1!275 P!63) (_2!275 P!63)))))

(declare-datatypes () ((List!877 (Cons!815 (h!5314 tuple2!472) (t!53607 List!877)) (Nil!817))))

(declare-fun lt!21642 () List!877)

(declare-fun lt!21640 () List!877)

(declare-fun lt!21641 () List!877)

(declare-fun content!198 (List!877) (Set tuple2!472))

(assert (=> start!14926 (= res!49321 (not (= (content!198 lt!21640) (union (content!198 lt!21642) (content!198 lt!21641)))))))

(assert (=> start!14926 (= lt!21640 (Cons!815 (h!5314 lt!21642) (Cons!815 (h!5314 (t!53607 lt!21642)) lt!21641)))))

(assert (=> start!14926 (= lt!21641 Nil!817)))

(assert (=> start!14926 (= lt!21642 (Cons!815 (tuple2!473 Charlie!63 Alice!63) (Cons!815 (tuple2!473 Charlie!63 Charlie!63) Nil!817)))))

(assert (=> start!14926 e!51634))

(declare-fun b!94417 () Bool)

(declare-fun res!49320 () Bool)

(assert (=> b!94417 (=> res!49320 e!51634)))

(declare-fun size!988 (List!877) Int)

(assert (=> b!94417 (= res!49320 (not (= (size!988 lt!21640) (+ (size!988 lt!21642) (size!988 lt!21641)))))))

(declare-fun b!94418 () Bool)

(assert (=> b!94418 (= e!51634 (and (= lt!21641 Nil!817) (not (= lt!21640 lt!21642))))))

(assert (= (and start!14926 (not res!49321)) b!94417))

(assert (= (and b!94417 (not res!49320)) b!94418))

(declare-fun m!89853 () Bool)

(assert (=> start!14926 m!89853))

(declare-fun m!89855 () Bool)

(assert (=> start!14926 m!89855))

(declare-fun m!89857 () Bool)

(assert (=> start!14926 m!89857))

(declare-fun m!89859 () Bool)

(assert (=> b!94417 m!89859))

(declare-fun m!89861 () Bool)

(assert (=> b!94417 m!89861))

(declare-fun m!89863 () Bool)

(assert (=> b!94417 m!89863))

(push 1)

(assert (not b!94417))

(assert (not start!14926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61516 () Bool)

(declare-fun lt!21645 () Int)

(assert (=> d!61516 (>= lt!21645 0)))

(declare-fun e!51637 () Int)

(assert (=> d!61516 (= lt!21645 e!51637)))

(declare-fun c!23220 () Bool)

(assert (=> d!61516 (= c!23220 (is-Nil!817 lt!21640))))

(assert (=> d!61516 (= (size!988 lt!21640) lt!21645)))

(declare-fun b!94423 () Bool)

(assert (=> b!94423 (= e!51637 0)))

(declare-fun b!94424 () Bool)

(assert (=> b!94424 (= e!51637 (+ 1 (size!988 (t!53607 lt!21640))))))

(assert (= (and d!61516 c!23220) b!94423))

(assert (= (and d!61516 (not c!23220)) b!94424))

(declare-fun m!89865 () Bool)

(assert (=> b!94424 m!89865))

(assert (=> b!94417 d!61516))

(declare-fun d!61518 () Bool)

(declare-fun lt!21646 () Int)

(assert (=> d!61518 (>= lt!21646 0)))

(declare-fun e!51638 () Int)

(assert (=> d!61518 (= lt!21646 e!51638)))

(declare-fun c!23221 () Bool)

(assert (=> d!61518 (= c!23221 (is-Nil!817 lt!21642))))

(assert (=> d!61518 (= (size!988 lt!21642) lt!21646)))

(declare-fun b!94425 () Bool)

(assert (=> b!94425 (= e!51638 0)))

(declare-fun b!94426 () Bool)

(assert (=> b!94426 (= e!51638 (+ 1 (size!988 (t!53607 lt!21642))))))

(assert (= (and d!61518 c!23221) b!94425))

(assert (= (and d!61518 (not c!23221)) b!94426))

(declare-fun m!89867 () Bool)

(assert (=> b!94426 m!89867))

(assert (=> b!94417 d!61518))

(declare-fun d!61520 () Bool)

(declare-fun lt!21647 () Int)

(assert (=> d!61520 (>= lt!21647 0)))

(declare-fun e!51639 () Int)

(assert (=> d!61520 (= lt!21647 e!51639)))

(declare-fun c!23222 () Bool)

(assert (=> d!61520 (= c!23222 (is-Nil!817 lt!21641))))

(assert (=> d!61520 (= (size!988 lt!21641) lt!21647)))

(declare-fun b!94427 () Bool)

(assert (=> b!94427 (= e!51639 0)))

(declare-fun b!94428 () Bool)

(assert (=> b!94428 (= e!51639 (+ 1 (size!988 (t!53607 lt!21641))))))

(assert (= (and d!61520 c!23222) b!94427))

(assert (= (and d!61520 (not c!23222)) b!94428))

(declare-fun m!89869 () Bool)

(assert (=> b!94428 m!89869))

(assert (=> b!94417 d!61520))

(declare-fun d!61522 () Bool)

(declare-fun c!23225 () Bool)

(assert (=> d!61522 (= c!23225 (is-Nil!817 lt!21640))))

(declare-fun e!51642 () (Set tuple2!472))

(assert (=> d!61522 (= (content!198 lt!21640) e!51642)))

(declare-fun b!94433 () Bool)

(assert (=> b!94433 (= e!51642 (as emptyset (Set tuple2!472)))))

(declare-fun b!94434 () Bool)

(assert (=> b!94434 (= e!51642 (union (insert (h!5314 lt!21640) (as emptyset (Set tuple2!472))) (content!198 (t!53607 lt!21640))))))

(assert (= (and d!61522 c!23225) b!94433))

(assert (= (and d!61522 (not c!23225)) b!94434))

(declare-fun m!89871 () Bool)

(assert (=> b!94434 m!89871))

(declare-fun m!89873 () Bool)

(assert (=> b!94434 m!89873))

(assert (=> start!14926 d!61522))

(declare-fun d!61524 () Bool)

(declare-fun c!23226 () Bool)

(assert (=> d!61524 (= c!23226 (is-Nil!817 lt!21642))))

(declare-fun e!51643 () (Set tuple2!472))

(assert (=> d!61524 (= (content!198 lt!21642) e!51643)))

(declare-fun b!94435 () Bool)

(assert (=> b!94435 (= e!51643 (as emptyset (Set tuple2!472)))))

(declare-fun b!94436 () Bool)

(assert (=> b!94436 (= e!51643 (union (insert (h!5314 lt!21642) (as emptyset (Set tuple2!472))) (content!198 (t!53607 lt!21642))))))

(assert (= (and d!61524 c!23226) b!94435))

(assert (= (and d!61524 (not c!23226)) b!94436))

(declare-fun m!89875 () Bool)

(assert (=> b!94436 m!89875))

(declare-fun m!89877 () Bool)

(assert (=> b!94436 m!89877))

(assert (=> start!14926 d!61524))

(declare-fun d!61526 () Bool)

(declare-fun c!23227 () Bool)

(assert (=> d!61526 (= c!23227 (is-Nil!817 lt!21641))))

(declare-fun e!51644 () (Set tuple2!472))

(assert (=> d!61526 (= (content!198 lt!21641) e!51644)))

(declare-fun b!94437 () Bool)

(assert (=> b!94437 (= e!51644 (as emptyset (Set tuple2!472)))))

(declare-fun b!94438 () Bool)

(assert (=> b!94438 (= e!51644 (union (insert (h!5314 lt!21641) (as emptyset (Set tuple2!472))) (content!198 (t!53607 lt!21641))))))

(assert (= (and d!61526 c!23227) b!94437))

(assert (= (and d!61526 (not c!23227)) b!94438))

(declare-fun m!89879 () Bool)

(assert (=> b!94438 m!89879))

(declare-fun m!89881 () Bool)

(assert (=> b!94438 m!89881))

(assert (=> start!14926 d!61526))

(push 1)

(assert (not b!94428))

(assert (not b!94436))

(assert (not b!94424))

(assert (not b!94438))

(assert (not b!94426))

(assert (not b!94434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

