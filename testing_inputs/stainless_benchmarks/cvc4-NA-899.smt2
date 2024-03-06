; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6868 () Bool)

(assert start!6868)

(declare-fun b!50878 () Bool)

(declare-fun b_free!7215 () Bool)

(declare-fun b_next!38513 () Bool)

(assert (=> b!50878 (= b_free!7215 (not b_next!38513))))

(declare-fun tp!14884 () Bool)

(declare-fun b_and!58163 () Bool)

(assert (=> b!50878 (= tp!14884 b_and!58163)))

(declare-fun b_free!7217 () Bool)

(declare-fun b_next!38515 () Bool)

(assert (=> b!50878 (= b_free!7217 (not b_next!38515))))

(declare-fun tp!14882 () Bool)

(declare-fun b_and!58165 () Bool)

(assert (=> b!50878 (= tp!14882 b_and!58165)))

(declare-fun b_free!7219 () Bool)

(declare-fun b_next!38517 () Bool)

(assert (=> b!50878 (= b_free!7219 (not b_next!38517))))

(declare-fun tp!14883 () Bool)

(declare-fun b_and!58167 () Bool)

(assert (=> b!50878 (= tp!14883 b_and!58167)))

(declare-fun b!50879 () Bool)

(assert (=> b!50879 true))

(assert (=> b!50879 true))

(declare-datatypes () ((Nat!260 (Zero!244) (Succ!241 (n!1398 Nat!260)))))

(declare-datatypes () ((RAEqEvidence!478 (RAEqEvidence!479 (x!19735 Int) (y!1578 Int) (evidence!691 Int)))))

(declare-fun thiss!5579 () RAEqEvidence!478)

(declare-fun lambda!8552 () Int)

(declare-fun b_next!38519 () Bool)

(assert (=> b!50878 (= b_next!38513 (or (and b!50879 (= lambda!8552 (x!19735 thiss!5579))) b_next!38519))))

(declare-fun b_next!38521 () Bool)

(assert (=> b!50878 (= b_next!38515 (or (and b!50879 (= lambda!8552 (y!1578 thiss!5579))) b_next!38521))))

(declare-fun lambda!8553 () Int)

(declare-fun n1!178 () Nat!260)

(declare-fun n2!189 () Nat!260)

(assert (=> b!50879 (= (and (= n2!189 n1!178) (= n1!178 n2!189)) (= lambda!8553 lambda!8552))))

(assert (=> b!50879 true))

(assert (=> b!50879 true))

(declare-fun b_next!38523 () Bool)

(assert (=> b!50878 (= b_next!38519 (or (and b!50879 (= lambda!8553 (x!19735 thiss!5579))) b_next!38523))))

(declare-fun b_next!38525 () Bool)

(assert (=> b!50878 (= b_next!38521 (or (and b!50879 (= lambda!8553 (y!1578 thiss!5579))) b_next!38525))))

(declare-fun m!54455 () Bool)

(assert (=> b!50879 m!54455))

(declare-fun lambda!8554 () Int)

(declare-fun dynLambda!885 (Int) Bool)

(assert (=> (and b!50878 b!50879 (= (dynLambda!885 lambda!8554) (dynLambda!885 (evidence!691 thiss!5579)))) (= lambda!8554 (evidence!691 thiss!5579))))

(declare-fun b_next!38527 () Bool)

(assert (=> b!50878 (= b_next!38517 (or (and b!50879 (= lambda!8554 (evidence!691 thiss!5579))) b_next!38527))))

(declare-fun res!23349 () Bool)

(declare-fun e!26395 () Bool)

(assert (=> start!6868 (=> (not res!23349) (not e!26395))))

(assert (=> start!6868 (= res!23349 (not (is-Zero!244 n1!178)))))

(assert (=> start!6868 e!26395))

(declare-fun e!26396 () Bool)

(declare-fun inv!888 (RAEqEvidence!478) Bool)

(assert (=> start!6868 (and (inv!888 thiss!5579) e!26396)))

(assert (=> start!6868 true))

(declare-fun b!50876 () Bool)

(declare-fun +!5 (Nat!260 Nat!260) Nat!260)

(assert (=> b!50876 (= e!26395 (not (= (+!5 n1!178 n2!189) (+!5 n2!189 n1!178))))))

(declare-fun b!50877 () Bool)

(declare-fun res!23348 () Bool)

(assert (=> b!50877 (=> (not res!23348) (not e!26395))))

(declare-datatypes () ((Unit!820 (Unit!821))))

(declare-fun inlined!4681 () Unit!820)

(declare-fun Unit!822 () Unit!820)

(assert (=> b!50877 (= res!23348 (= inlined!4681 Unit!822))))

(declare-fun dynLambda!886 (Int) Nat!260)

(assert (=> b!50877 (= (dynLambda!886 (x!19735 thiss!5579)) (dynLambda!886 (y!1578 thiss!5579)))))

(assert (=> b!50878 (= e!26396 (and tp!14884 tp!14882 tp!14883))))

(declare-fun res!23351 () Bool)

(assert (=> b!50879 (=> (not res!23351) (not e!26395))))

(assert (=> b!50879 (= res!23351 (= thiss!5579 (RAEqEvidence!479 lambda!8552 lambda!8553 lambda!8554)))))

(declare-fun b!50880 () Bool)

(declare-fun res!23350 () Bool)

(assert (=> b!50880 (=> (not res!23350) (not e!26395))))

(declare-fun x$13!41 () Unit!820)

(assert (=> b!50880 (= res!23350 (= x$13!41 inlined!4681))))

(assert (= (and start!6868 res!23349) b!50879))

(assert (= (and b!50879 res!23351) b!50877))

(assert (= (and b!50877 res!23348) b!50880))

(assert (= (and b!50880 res!23350) b!50876))

(assert (= start!6868 b!50878))

(declare-fun b_lambda!14525 () Bool)

(assert (=> (not b_lambda!14525) (not b!50877)))

(declare-fun t!46581 () Bool)

(declare-fun tb!45759 () Bool)

(assert (=> (and b!50878 (= (x!19735 thiss!5579) (x!19735 thiss!5579)) t!46581) tb!45759))

(declare-fun result!46035 () Bool)

(assert (=> tb!45759 (= result!46035 true)))

(assert (=> b!50877 t!46581))

(declare-fun b_and!58169 () Bool)

(assert (= b_and!58163 (and (=> t!46581 result!46035) b_and!58169)))

(declare-fun t!46583 () Bool)

(declare-fun tb!45761 () Bool)

(assert (=> (and b!50878 (= (y!1578 thiss!5579) (x!19735 thiss!5579)) t!46583) tb!45761))

(declare-fun result!46037 () Bool)

(assert (=> tb!45761 (= result!46037 true)))

(assert (=> b!50877 t!46583))

(declare-fun b_and!58171 () Bool)

(assert (= b_and!58165 (and (=> t!46583 result!46037) b_and!58171)))

(declare-fun b_lambda!14527 () Bool)

(assert (=> (not b_lambda!14527) (not b!50877)))

(declare-fun t!46585 () Bool)

(declare-fun tb!45763 () Bool)

(assert (=> (and b!50878 (= (x!19735 thiss!5579) (y!1578 thiss!5579)) t!46585) tb!45763))

(declare-fun result!46039 () Bool)

(assert (=> tb!45763 (= result!46039 true)))

(assert (=> b!50877 t!46585))

(declare-fun b_and!58173 () Bool)

(assert (= b_and!58169 (and (=> t!46585 result!46039) b_and!58173)))

(declare-fun t!46587 () Bool)

(declare-fun tb!45765 () Bool)

(assert (=> (and b!50878 (= (y!1578 thiss!5579) (y!1578 thiss!5579)) t!46587) tb!45765))

(declare-fun result!46041 () Bool)

(assert (=> tb!45765 (= result!46041 true)))

(assert (=> b!50877 t!46587))

(declare-fun b_and!58175 () Bool)

(assert (= b_and!58171 (and (=> t!46587 result!46041) b_and!58175)))

(declare-fun m!54457 () Bool)

(assert (=> start!6868 m!54457))

(declare-fun m!54459 () Bool)

(assert (=> b!50876 m!54459))

(declare-fun m!54461 () Bool)

(assert (=> b!50876 m!54461))

(declare-fun m!54463 () Bool)

(assert (=> b!50877 m!54463))

(declare-fun m!54465 () Bool)

(assert (=> b!50877 m!54465))

(push 1)

(assert (not b_lambda!14525))

(assert (not b_next!38523))

(assert (not b_next!38525))

(assert b_and!58173)

(assert (not b_next!38527))

(assert (not b!50876))

(assert (not b_lambda!14527))

(assert b_and!58167)

(assert (not start!6868))

(assert (not b!50879))

(assert b_and!58175)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38523))

(assert (not b_next!38525))

(assert b_and!58173)

(assert (not b_next!38527))

(assert b_and!58167)

(assert b_and!58175)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14529 () Bool)

(assert (= b_lambda!14525 (or (and b!50879 (= lambda!8552 (x!19735 thiss!5579))) (and b!50879 (= lambda!8553 (x!19735 thiss!5579))) (and b!50878 b_free!7215) (and b!50878 b_free!7217 (= (y!1578 thiss!5579) (x!19735 thiss!5579))) b_lambda!14529)))

(declare-fun bs!23692 () Bool)

(declare-fun d!43450 () Bool)

(assert (= bs!23692 (and d!43450 b!50879)))

(assert (=> bs!23692 (= (dynLambda!886 lambda!8552) (+!5 n1!178 n2!189))))

(assert (=> bs!23692 m!54459))

(assert (=> (and b!50879 (= lambda!8552 (x!19735 thiss!5579)) b!50877) d!43450))

(declare-fun bs!23693 () Bool)

(declare-fun d!43452 () Bool)

(assert (= bs!23693 (and d!43452 b!50879)))

(assert (=> bs!23693 (= (dynLambda!886 lambda!8553) (+!5 n2!189 n1!178))))

(assert (=> bs!23693 m!54461))

(assert (=> (and b!50879 (= lambda!8553 (x!19735 thiss!5579)) b!50877) d!43452))

(declare-fun b_lambda!14531 () Bool)

(assert (= b_lambda!14527 (or (and b!50879 (= lambda!8552 (y!1578 thiss!5579))) (and b!50879 (= lambda!8553 (y!1578 thiss!5579))) (and b!50878 b_free!7215 (= (x!19735 thiss!5579) (y!1578 thiss!5579))) (and b!50878 b_free!7217) b_lambda!14531)))

(declare-fun bs!23694 () Bool)

(declare-fun d!43454 () Bool)

(assert (= bs!23694 (and d!43454 b!50879)))

(assert (=> bs!23694 (= (dynLambda!886 lambda!8552) (+!5 n1!178 n2!189))))

(assert (=> bs!23694 m!54459))

(assert (=> (and b!50879 (= lambda!8552 (y!1578 thiss!5579)) b!50877) d!43454))

(declare-fun bs!23695 () Bool)

(declare-fun d!43456 () Bool)

(assert (= bs!23695 (and d!43456 b!50879)))

(assert (=> bs!23695 (= (dynLambda!886 lambda!8553) (+!5 n2!189 n1!178))))

(assert (=> bs!23695 m!54461))

(assert (=> (and b!50879 (= lambda!8553 (y!1578 thiss!5579)) b!50877) d!43456))

(push 1)

(assert (not b_next!38523))

(assert (not b_next!38525))

(assert b_and!58173)

(assert (not bs!23692))

(assert (not b_lambda!14529))

(assert (not bs!23693))

(assert (not b_next!38527))

(assert (not b!50876))

(assert (not bs!23695))

(assert b_and!58167)

(assert (not start!6868))

(assert (not b!50879))

(assert (not bs!23694))

(assert b_and!58175)

(assert (not b_lambda!14531))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38523))

(assert (not b_next!38525))

(assert b_and!58173)

(assert (not b_next!38527))

(assert b_and!58167)

(assert b_and!58175)

(check-sat)

(pop 1)

