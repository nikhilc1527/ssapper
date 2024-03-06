; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4204 () Bool)

(assert start!4204)

(declare-fun b!33799 () Bool)

(declare-fun e!17091 () Bool)

(declare-fun tp!6954 () Bool)

(declare-fun tp!6955 () Bool)

(assert (=> b!33799 (= e!17091 (and tp!6954 tp!6955))))

(declare-fun b!33797 () Bool)

(declare-fun res!15616 () Bool)

(declare-fun e!17090 () Bool)

(assert (=> b!33797 (=> (not res!15616) (not e!17090))))

(declare-fun lt!6362 () Int)

(declare-fun lt!6363 () Int)

(declare-fun x$1!414 () Int)

(assert (=> b!33797 (= res!15616 (= x$1!414 (+ 1 (ite (>= lt!6363 lt!6362) lt!6363 lt!6362))))))

(declare-datatypes () ((T!1871 (T!1872 (val!108 Int)))))

(declare-datatypes () ((Conc!85 (CC!84 (left!729 Conc!85) (right!732 Conc!85)) (Single!84 (x!9017 T!1871)) (Empty!95))))

(declare-fun thiss!3254 () Conc!85)

(declare-fun level!66 (Conc!85) Int)

(assert (=> b!33797 (= lt!6362 (level!66 (right!732 thiss!3254)))))

(assert (=> b!33797 (= lt!6363 (level!66 (left!729 thiss!3254)))))

(declare-fun b!33800 () Bool)

(declare-fun tp_is_empty!215 () Bool)

(assert (=> b!33800 (= e!17091 tp_is_empty!215)))

(declare-fun b!33798 () Bool)

(assert (=> b!33798 (= e!17090 (< x$1!414 0))))

(declare-fun res!15615 () Bool)

(assert (=> start!4204 (=> (not res!15615) (not e!17090))))

(assert (=> start!4204 (= res!15615 (and (not (is-Empty!95 thiss!3254)) (not (is-Single!84 thiss!3254))))))

(assert (=> start!4204 e!17090))

(assert (=> start!4204 e!17091))

(assert (=> start!4204 true))

(assert (= (and start!4204 res!15615) b!33797))

(assert (= (and b!33797 res!15616) b!33798))

(assert (= (and start!4204 (is-CC!84 thiss!3254)) b!33799))

(assert (= (and start!4204 (is-Single!84 thiss!3254)) b!33800))

(declare-fun m!36043 () Bool)

(assert (=> b!33797 m!36043))

(declare-fun m!36045 () Bool)

(assert (=> b!33797 m!36045))

(push 1)

(assert (not b!33797))

(assert (not b!33799))

(assert tp_is_empty!215)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!33806 () Bool)

(declare-fun e!17094 () Int)

(declare-fun lt!6371 () Int)

(declare-fun lt!6370 () Int)

(assert (=> b!33806 (= e!17094 (+ 1 (ite (>= lt!6371 lt!6370) lt!6371 lt!6370)))))

(assert (=> b!33806 (= lt!6370 (level!66 (right!732 (right!732 thiss!3254))))))

(assert (=> b!33806 (= lt!6371 (level!66 (left!729 (right!732 thiss!3254))))))

(declare-fun d!16915 () Bool)

(declare-fun lt!6372 () Int)

(assert (=> d!16915 (>= lt!6372 0)))

(assert (=> d!16915 (= lt!6372 e!17094)))

(declare-fun c!7256 () Bool)

(assert (=> d!16915 (= c!7256 (or (is-Empty!95 (right!732 thiss!3254)) (is-Single!84 (right!732 thiss!3254))))))

(assert (=> d!16915 (= (level!66 (right!732 thiss!3254)) lt!6372)))

(declare-fun b!33805 () Bool)

(assert (=> b!33805 (= e!17094 0)))

(assert (= (and d!16915 c!7256) b!33805))

(assert (= (and d!16915 (not c!7256)) b!33806))

(declare-fun m!36047 () Bool)

(assert (=> b!33806 m!36047))

(declare-fun m!36049 () Bool)

(assert (=> b!33806 m!36049))

(assert (=> b!33797 d!16915))

(declare-fun b!33808 () Bool)

(declare-fun e!17095 () Int)

(declare-fun lt!6374 () Int)

(declare-fun lt!6373 () Int)

(assert (=> b!33808 (= e!17095 (+ 1 (ite (>= lt!6374 lt!6373) lt!6374 lt!6373)))))

(assert (=> b!33808 (= lt!6373 (level!66 (right!732 (left!729 thiss!3254))))))

(assert (=> b!33808 (= lt!6374 (level!66 (left!729 (left!729 thiss!3254))))))

(declare-fun d!16917 () Bool)

(declare-fun lt!6375 () Int)

(assert (=> d!16917 (>= lt!6375 0)))

(assert (=> d!16917 (= lt!6375 e!17095)))

(declare-fun c!7257 () Bool)

(assert (=> d!16917 (= c!7257 (or (is-Empty!95 (left!729 thiss!3254)) (is-Single!84 (left!729 thiss!3254))))))

(assert (=> d!16917 (= (level!66 (left!729 thiss!3254)) lt!6375)))

(declare-fun b!33807 () Bool)

(assert (=> b!33807 (= e!17095 0)))

(assert (= (and d!16917 c!7257) b!33807))

(assert (= (and d!16917 (not c!7257)) b!33808))

(declare-fun m!36051 () Bool)

(assert (=> b!33808 m!36051))

(declare-fun m!36053 () Bool)

(assert (=> b!33808 m!36053))

(assert (=> b!33797 d!16917))

(declare-fun b!33815 () Bool)

(declare-fun e!17098 () Bool)

(declare-fun tp!6960 () Bool)

(declare-fun tp!6961 () Bool)

(assert (=> b!33815 (= e!17098 (and tp!6960 tp!6961))))

(declare-fun b!33816 () Bool)

(assert (=> b!33816 (= e!17098 tp_is_empty!215)))

(assert (=> b!33799 (= tp!6954 e!17098)))

(assert (= (and b!33799 (is-CC!84 (left!729 thiss!3254))) b!33815))

(assert (= (and b!33799 (is-Single!84 (left!729 thiss!3254))) b!33816))

(declare-fun b!33817 () Bool)

(declare-fun e!17099 () Bool)

(declare-fun tp!6962 () Bool)

(declare-fun tp!6963 () Bool)

(assert (=> b!33817 (= e!17099 (and tp!6962 tp!6963))))

(declare-fun b!33818 () Bool)

(assert (=> b!33818 (= e!17099 tp_is_empty!215)))

(assert (=> b!33799 (= tp!6955 e!17099)))

(assert (= (and b!33799 (is-CC!84 (right!732 thiss!3254))) b!33817))

(assert (= (and b!33799 (is-Single!84 (right!732 thiss!3254))) b!33818))

(push 1)

(assert (not b!33815))

(assert tp_is_empty!215)

(assert (not b!33806))

(assert (not b!33808))

(assert (not b!33817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

