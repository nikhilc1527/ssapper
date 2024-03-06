; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4224 () Bool)

(assert start!4224)

(declare-fun b!33977 () Bool)

(declare-fun e!17180 () Bool)

(declare-datatypes () ((T!1877 (T!1878 (val!111 Int)))))

(declare-datatypes () ((List!375 (Cons!369 (h!286 T!1877) (t!4401 List!375)) (Nil!370))))

(declare-fun res!5560 () List!375)

(declare-datatypes () ((Conc!88 (CC!87 (left!732 Conc!88) (right!735 Conc!88)) (Single!87 (x!9029 T!1877)) (Empty!98))))

(declare-fun thiss!2730 () Conc!88)

(declare-fun size!302 (List!375) Int)

(declare-fun size!303 (Conc!88) Int)

(assert (=> b!33977 (= e!17180 (not (= (size!302 res!5560) (size!303 thiss!2730))))))

(declare-fun b!33979 () Bool)

(declare-fun e!17181 () Bool)

(declare-fun tp_is_empty!221 () Bool)

(assert (=> b!33979 (= e!17181 tp_is_empty!221)))

(declare-fun res!15661 () Bool)

(assert (=> start!4224 (=> (not res!15661) (not e!17180))))

(assert (=> start!4224 (= res!15661 (and (is-Empty!98 thiss!2730) (= res!5560 Nil!370)))))

(assert (=> start!4224 e!17180))

(assert (=> start!4224 e!17181))

(declare-fun e!17182 () Bool)

(assert (=> start!4224 e!17182))

(declare-fun b!33980 () Bool)

(declare-fun tp!7008 () Bool)

(assert (=> b!33980 (= e!17182 (and tp_is_empty!221 tp!7008))))

(declare-fun b!33978 () Bool)

(declare-fun tp!7010 () Bool)

(declare-fun tp!7009 () Bool)

(assert (=> b!33978 (= e!17181 (and tp!7010 tp!7009))))

(assert (= (and start!4224 res!15661) b!33977))

(assert (= (and start!4224 (is-CC!87 thiss!2730)) b!33978))

(assert (= (and start!4224 (is-Single!87 thiss!2730)) b!33979))

(assert (= (and start!4224 (is-Cons!369 res!5560)) b!33980))

(declare-fun m!36135 () Bool)

(assert (=> b!33977 m!36135))

(declare-fun m!36137 () Bool)

(assert (=> b!33977 m!36137))

(push 1)

(assert (not b!33977))

(assert (not b!33978))

(assert (not b!33980))

(assert tp_is_empty!221)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16937 () Bool)

(declare-fun lt!6399 () Int)

(assert (=> d!16937 (>= lt!6399 0)))

(declare-fun e!17185 () Int)

(assert (=> d!16937 (= lt!6399 e!17185)))

(declare-fun c!7295 () Bool)

(assert (=> d!16937 (= c!7295 (is-Nil!370 res!5560))))

(assert (=> d!16937 (= (size!302 res!5560) lt!6399)))

(declare-fun b!33985 () Bool)

(assert (=> b!33985 (= e!17185 0)))

(declare-fun b!33986 () Bool)

(assert (=> b!33986 (= e!17185 (+ 1 (size!302 (t!4401 res!5560))))))

(assert (= (and d!16937 c!7295) b!33985))

(assert (= (and d!16937 (not c!7295)) b!33986))

(declare-fun m!36139 () Bool)

(assert (=> b!33986 m!36139))

(assert (=> b!33977 d!16937))

(declare-fun b!33995 () Bool)

(declare-fun e!17191 () Int)

(assert (=> b!33995 (= e!17191 0)))

(declare-fun b!33996 () Bool)

(declare-fun e!17190 () Int)

(assert (=> b!33996 (= e!17191 e!17190)))

(declare-fun c!7300 () Bool)

(assert (=> b!33996 (= c!7300 (is-Single!87 thiss!2730))))

(declare-fun d!16939 () Bool)

(declare-fun lt!6402 () Int)

(assert (=> d!16939 (>= lt!6402 0)))

(assert (=> d!16939 (= lt!6402 e!17191)))

(declare-fun c!7301 () Bool)

(assert (=> d!16939 (= c!7301 (is-Empty!98 thiss!2730))))

(assert (=> d!16939 (= (size!303 thiss!2730) lt!6402)))

(declare-fun b!33998 () Bool)

(assert (=> b!33998 (= e!17190 (+ (size!303 (left!732 thiss!2730)) (size!303 (right!735 thiss!2730))))))

(declare-fun b!33997 () Bool)

(assert (=> b!33997 (= e!17190 1)))

(assert (= (and b!33996 c!7300) b!33997))

(assert (= (and b!33996 (not c!7300)) b!33998))

(assert (= (and d!16939 c!7301) b!33995))

(assert (= (and d!16939 (not c!7301)) b!33996))

(declare-fun m!36141 () Bool)

(assert (=> b!33998 m!36141))

(declare-fun m!36143 () Bool)

(assert (=> b!33998 m!36143))

(assert (=> b!33977 d!16939))

(declare-fun b!34005 () Bool)

(declare-fun e!17194 () Bool)

(declare-fun tp!7015 () Bool)

(declare-fun tp!7016 () Bool)

(assert (=> b!34005 (= e!17194 (and tp!7015 tp!7016))))

(declare-fun b!34006 () Bool)

(assert (=> b!34006 (= e!17194 tp_is_empty!221)))

(assert (=> b!33978 (= tp!7010 e!17194)))

(assert (= (and b!33978 (is-CC!87 (left!732 thiss!2730))) b!34005))

(assert (= (and b!33978 (is-Single!87 (left!732 thiss!2730))) b!34006))

(declare-fun b!34007 () Bool)

(declare-fun e!17195 () Bool)

(declare-fun tp!7017 () Bool)

(declare-fun tp!7018 () Bool)

(assert (=> b!34007 (= e!17195 (and tp!7017 tp!7018))))

(declare-fun b!34008 () Bool)

(assert (=> b!34008 (= e!17195 tp_is_empty!221)))

(assert (=> b!33978 (= tp!7009 e!17195)))

(assert (= (and b!33978 (is-CC!87 (right!735 thiss!2730))) b!34007))

(assert (= (and b!33978 (is-Single!87 (right!735 thiss!2730))) b!34008))

(declare-fun b!34013 () Bool)

(declare-fun e!17198 () Bool)

(declare-fun tp!7021 () Bool)

(assert (=> b!34013 (= e!17198 (and tp_is_empty!221 tp!7021))))

(assert (=> b!33980 (= tp!7008 e!17198)))

(assert (= (and b!33980 (is-Cons!369 (t!4401 res!5560))) b!34013))

(push 1)

(assert (not b!34007))

(assert (not b!33986))

(assert (not b!34013))

(assert (not b!34005))

(assert (not b!33998))

(assert tp_is_empty!221)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

