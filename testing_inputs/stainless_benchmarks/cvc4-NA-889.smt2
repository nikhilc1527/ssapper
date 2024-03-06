; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6796 () Bool)

(assert start!6796)

(declare-fun b!50525 () Bool)

(declare-fun b_free!7041 () Bool)

(declare-fun b_next!37853 () Bool)

(assert (=> b!50525 (= b_free!7041 (not b_next!37853))))

(declare-fun tp!14641 () Bool)

(declare-fun b_and!57033 () Bool)

(assert (=> b!50525 (= tp!14641 b_and!57033)))

(declare-fun b_free!7043 () Bool)

(declare-fun b_next!37855 () Bool)

(assert (=> b!50525 (= b_free!7043 (not b_next!37855))))

(declare-fun tp!14633 () Bool)

(declare-fun b_and!57035 () Bool)

(assert (=> b!50525 (= tp!14633 b_and!57035)))

(declare-fun b_free!7045 () Bool)

(declare-fun b_next!37857 () Bool)

(assert (=> b!50525 (= b_free!7045 (not b_next!37857))))

(declare-fun tp!14637 () Bool)

(declare-fun b_and!57037 () Bool)

(assert (=> b!50525 (= tp!14637 b_and!57037)))

(declare-fun b!50522 () Bool)

(declare-fun b_free!7047 () Bool)

(declare-fun b_next!37859 () Bool)

(assert (=> b!50522 (= b_free!7047 (not b_next!37859))))

(declare-fun tp!14639 () Bool)

(declare-fun b_and!57039 () Bool)

(assert (=> b!50522 (= tp!14639 b_and!57039)))

(declare-fun b_free!7049 () Bool)

(declare-fun b_next!37861 () Bool)

(assert (=> b!50522 (= b_free!7049 (not b_next!37861))))

(declare-fun tp!14636 () Bool)

(declare-fun b_and!57041 () Bool)

(assert (=> b!50522 (= tp!14636 b_and!57041)))

(declare-fun b_free!7051 () Bool)

(declare-fun b_next!37863 () Bool)

(assert (=> b!50522 (= b_free!7051 (not b_next!37863))))

(declare-fun tp!14640 () Bool)

(declare-fun b_and!57043 () Bool)

(assert (=> b!50522 (= tp!14640 b_and!57043)))

(declare-fun b!50521 () Bool)

(declare-fun b_free!7053 () Bool)

(declare-fun b_next!37865 () Bool)

(assert (=> b!50521 (= b_free!7053 (not b_next!37865))))

(declare-fun tp!14634 () Bool)

(declare-fun b_and!57045 () Bool)

(assert (=> b!50521 (= tp!14634 b_and!57045)))

(declare-fun b_free!7055 () Bool)

(declare-fun b_next!37867 () Bool)

(assert (=> b!50521 (= b_free!7055 (not b_next!37867))))

(declare-fun tp!14638 () Bool)

(declare-fun b_and!57047 () Bool)

(assert (=> b!50521 (= tp!14638 b_and!57047)))

(declare-fun b_free!7057 () Bool)

(declare-fun b_next!37869 () Bool)

(assert (=> b!50521 (= b_free!7057 (not b_next!37869))))

(declare-fun tp!14635 () Bool)

(declare-fun b_and!57049 () Bool)

(assert (=> b!50521 (= tp!14635 b_and!57049)))

(declare-fun b!50524 () Bool)

(assert (=> b!50524 true))

(assert (=> b!50524 true))

(assert (=> b!50524 true))

(declare-fun b_next!37871 () Bool)

(declare-datatypes () ((Nat!250 (Zero!234) (Succ!231 (n!1387 Nat!250)))))

(declare-datatypes () ((RAEqEvidence!454 (RAEqEvidence!455 (x!19577 Int) (y!1566 Int) (evidence!679 Int)))))

(declare-fun x$21!39 () RAEqEvidence!454)

(declare-fun lambda!8382 () Int)

(assert (=> b!50525 (= b_next!37853 (or (and b!50524 (= lambda!8382 (x!19577 x$21!39))) b_next!37871))))

(declare-fun b_next!37873 () Bool)

(declare-datatypes () ((Unit!795 (Unit!796))))

(declare-datatypes () ((RAEqEvidence!456 (RAEqEvidence!457 (x!19578 Int) (y!1567 Int) (evidence!680 Int)))))

(declare-fun thiss!4888 () RAEqEvidence!456)

(assert (=> b!50521 (= b_next!37865 (or (and b!50524 (= lambda!8382 (x!19578 thiss!4888))) b_next!37873))))

(declare-fun b_next!37875 () Bool)

(declare-fun prev!409 () RAEqEvidence!454)

(assert (=> b!50522 (= b_next!37861 (or (and b!50524 (= lambda!8382 (y!1566 prev!409))) b_next!37875))))

(declare-fun b_next!37877 () Bool)

(assert (=> b!50525 (= b_next!37855 (or (and b!50524 (= lambda!8382 (y!1566 x$21!39))) b_next!37877))))

(declare-fun b_next!37879 () Bool)

(assert (=> b!50522 (= b_next!37859 (or (and b!50524 (= lambda!8382 (x!19577 prev!409))) b_next!37879))))

(declare-fun b_next!37881 () Bool)

(assert (=> b!50521 (= b_next!37867 (or (and b!50524 (= lambda!8382 (y!1567 thiss!4888))) b_next!37881))))

(declare-fun m!54131 () Bool)

(assert (=> b!50524 m!54131))

(declare-fun lambda!8383 () Int)

(declare-fun dynLambda!868 (Int) Bool)

(assert (=> (and b!50525 b!50524 (= (dynLambda!868 lambda!8383) (dynLambda!868 (evidence!679 x$21!39)))) (= lambda!8383 (evidence!679 x$21!39))))

(assert (=> (and b!50522 b!50524 (= (dynLambda!868 lambda!8383) (dynLambda!868 (evidence!679 prev!409)))) (= lambda!8383 (evidence!679 prev!409))))

(declare-fun b_next!37883 () Bool)

(assert (=> b!50525 (= b_next!37857 (or (and b!50524 (= lambda!8383 (evidence!679 x$21!39))) b_next!37883))))

(declare-fun b_next!37885 () Bool)

(assert (=> b!50522 (= b_next!37863 (or (and b!50524 (= lambda!8383 (evidence!679 prev!409))) b_next!37885))))

(declare-fun bs!23518 () Bool)

(declare-fun b!50526 () Bool)

(assert (= bs!23518 (and b!50526 b!50524)))

(declare-fun lambda!8384 () Int)

(assert (=> bs!23518 (not (= lambda!8384 lambda!8382))))

(assert (=> b!50526 true))

(assert (=> b!50526 true))

(assert (=> b!50526 true))

(declare-fun b_next!37887 () Bool)

(assert (=> b!50525 (= b_next!37871 (or (and b!50526 (= lambda!8384 (x!19577 x$21!39))) b_next!37887))))

(declare-fun b_next!37889 () Bool)

(assert (=> b!50521 (= b_next!37873 (or (and b!50526 (= lambda!8384 (x!19578 thiss!4888))) b_next!37889))))

(declare-fun b_next!37891 () Bool)

(assert (=> b!50522 (= b_next!37875 (or (and b!50526 (= lambda!8384 (y!1566 prev!409))) b_next!37891))))

(declare-fun b_next!37893 () Bool)

(assert (=> b!50525 (= b_next!37877 (or (and b!50526 (= lambda!8384 (y!1566 x$21!39))) b_next!37893))))

(declare-fun b_next!37895 () Bool)

(assert (=> b!50522 (= b_next!37879 (or (and b!50526 (= lambda!8384 (x!19577 prev!409))) b_next!37895))))

(declare-fun b_next!37897 () Bool)

(assert (=> b!50521 (= b_next!37881 (or (and b!50526 (= lambda!8384 (y!1567 thiss!4888))) b_next!37897))))

(declare-fun lambda!8385 () Int)

(assert (=> bs!23518 (not (= lambda!8385 lambda!8382))))

(assert (=> b!50526 (not (= lambda!8385 lambda!8384))))

(assert (=> b!50526 true))

(assert (=> b!50526 true))

(assert (=> b!50526 true))

(declare-fun b_next!37899 () Bool)

(assert (=> b!50525 (= b_next!37887 (or (and b!50526 (= lambda!8385 (x!19577 x$21!39))) b_next!37899))))

(declare-fun b_next!37901 () Bool)

(assert (=> b!50521 (= b_next!37889 (or (and b!50526 (= lambda!8385 (x!19578 thiss!4888))) b_next!37901))))

(declare-fun b_next!37903 () Bool)

(assert (=> b!50522 (= b_next!37891 (or (and b!50526 (= lambda!8385 (y!1566 prev!409))) b_next!37903))))

(declare-fun b_next!37905 () Bool)

(assert (=> b!50525 (= b_next!37893 (or (and b!50526 (= lambda!8385 (y!1566 x$21!39))) b_next!37905))))

(declare-fun b_next!37907 () Bool)

(assert (=> b!50522 (= b_next!37895 (or (and b!50526 (= lambda!8385 (x!19577 prev!409))) b_next!37907))))

(declare-fun b_next!37909 () Bool)

(assert (=> b!50521 (= b_next!37897 (or (and b!50526 (= lambda!8385 (y!1567 thiss!4888))) b_next!37909))))

(assert (=> b!50526 true))

(assert (=> b!50526 true))

(assert (=> b!50526 true))

(declare-fun b_next!37911 () Bool)

(declare-fun lambda!8386 () Int)

(assert (=> b!50521 (= b_next!37869 (or (and b!50526 (= lambda!8386 (evidence!680 thiss!4888))) b_next!37911))))

(declare-fun e!26235 () Bool)

(assert (=> b!50521 (= e!26235 (and tp!14634 tp!14638 tp!14635))))

(declare-fun e!26233 () Bool)

(assert (=> b!50522 (= e!26233 (and tp!14639 tp!14636 tp!14640))))

(declare-fun b!50523 () Bool)

(declare-fun e!26234 () Bool)

(declare-fun dynLambda!869 (Int) Nat!250)

(assert (=> b!50523 (= e!26234 (not (= (dynLambda!869 (y!1566 prev!409)) (dynLambda!869 (x!19578 thiss!4888)))))))

(declare-fun res!23204 () Bool)

(assert (=> start!6796 (=> (not res!23204) (not e!26234))))

(declare-fun n1!77 () Nat!250)

(assert (=> start!6796 (= res!23204 (not (is-Zero!234 n1!77)))))

(assert (=> start!6796 e!26234))

(declare-fun e!26232 () Bool)

(declare-fun inv!876 (RAEqEvidence!454) Bool)

(assert (=> start!6796 (and (inv!876 x$21!39) e!26232)))

(assert (=> start!6796 true))

(assert (=> start!6796 (and (inv!876 prev!409) e!26233)))

(declare-fun inv!877 (RAEqEvidence!456) Bool)

(assert (=> start!6796 (and (inv!877 thiss!4888) e!26235)))

(declare-fun res!23202 () Bool)

(assert (=> b!50524 (=> (not res!23202) (not e!26234))))

(assert (=> b!50524 (= res!23202 (= x$21!39 (RAEqEvidence!455 lambda!8382 lambda!8382 lambda!8383)))))

(assert (=> b!50525 (= e!26232 (and tp!14641 tp!14633 tp!14637))))

(declare-fun res!23201 () Bool)

(assert (=> b!50526 (=> (not res!23201) (not e!26234))))

(assert (=> b!50526 (= res!23201 (= thiss!4888 (RAEqEvidence!457 lambda!8384 lambda!8385 lambda!8386)))))

(declare-fun b!50527 () Bool)

(declare-fun res!23203 () Bool)

(assert (=> b!50527 (=> (not res!23203) (not e!26234))))

(declare-fun keepEvidence!69 (Bool) Bool)

(assert (=> b!50527 (= res!23203 (keepEvidence!69 (dynLambda!868 (evidence!679 prev!409))))))

(declare-fun b!50528 () Bool)

(declare-fun res!23200 () Bool)

(assert (=> b!50528 (=> (not res!23200) (not e!26234))))

(assert (=> b!50528 (= res!23200 (= prev!409 x$21!39))))

(assert (= (and start!6796 res!23204) b!50524))

(assert (= (and b!50524 res!23202) b!50526))

(assert (= (and b!50526 res!23201) b!50528))

(assert (= (and b!50528 res!23200) b!50527))

(assert (= (and b!50527 res!23203) b!50523))

(assert (= start!6796 b!50525))

(assert (= start!6796 b!50522))

(assert (= start!6796 b!50521))

(declare-fun b_lambda!14313 () Bool)

(assert (=> (not b_lambda!14313) (not b!50523)))

(declare-fun t!45769 () Bool)

(declare-fun tb!44947 () Bool)

(assert (=> (and b!50521 (= (x!19578 thiss!4888) (y!1566 prev!409)) t!45769) tb!44947))

(declare-fun result!45223 () Bool)

(assert (=> tb!44947 (= result!45223 true)))

(assert (=> b!50523 t!45769))

(declare-fun b_and!57051 () Bool)

(assert (= b_and!57045 (and (=> t!45769 result!45223) b_and!57051)))

(declare-fun t!45771 () Bool)

(declare-fun tb!44949 () Bool)

(assert (=> (and b!50522 (= (x!19577 prev!409) (y!1566 prev!409)) t!45771) tb!44949))

(declare-fun result!45225 () Bool)

(assert (=> tb!44949 (= result!45225 true)))

(assert (=> b!50523 t!45771))

(declare-fun b_and!57053 () Bool)

(assert (= b_and!57039 (and (=> t!45771 result!45225) b_and!57053)))

(declare-fun t!45773 () Bool)

(declare-fun tb!44951 () Bool)

(assert (=> (and b!50522 (= (y!1566 prev!409) (y!1566 prev!409)) t!45773) tb!44951))

(declare-fun result!45227 () Bool)

(assert (=> tb!44951 (= result!45227 true)))

(assert (=> b!50523 t!45773))

(declare-fun b_and!57055 () Bool)

(assert (= b_and!57041 (and (=> t!45773 result!45227) b_and!57055)))

(declare-fun t!45775 () Bool)

(declare-fun tb!44953 () Bool)

(assert (=> (and b!50521 (= (y!1567 thiss!4888) (y!1566 prev!409)) t!45775) tb!44953))

(declare-fun result!45229 () Bool)

(assert (=> tb!44953 (= result!45229 true)))

(assert (=> b!50523 t!45775))

(declare-fun b_and!57057 () Bool)

(assert (= b_and!57047 (and (=> t!45775 result!45229) b_and!57057)))

(declare-fun t!45777 () Bool)

(declare-fun tb!44955 () Bool)

(assert (=> (and b!50525 (= (y!1566 x$21!39) (y!1566 prev!409)) t!45777) tb!44955))

(declare-fun result!45231 () Bool)

(assert (=> tb!44955 (= result!45231 true)))

(assert (=> b!50523 t!45777))

(declare-fun b_and!57059 () Bool)

(assert (= b_and!57035 (and (=> t!45777 result!45231) b_and!57059)))

(declare-fun tb!44957 () Bool)

(declare-fun t!45779 () Bool)

(assert (=> (and b!50525 (= (x!19577 x$21!39) (y!1566 prev!409)) t!45779) tb!44957))

(declare-fun result!45233 () Bool)

(assert (=> tb!44957 (= result!45233 true)))

(assert (=> b!50523 t!45779))

(declare-fun b_and!57061 () Bool)

(assert (= b_and!57033 (and (=> t!45779 result!45233) b_and!57061)))

(declare-fun b_lambda!14315 () Bool)

(assert (=> (not b_lambda!14315) (not b!50523)))

(declare-fun t!45781 () Bool)

(declare-fun tb!44959 () Bool)

(assert (=> (and b!50521 (= (y!1567 thiss!4888) (x!19578 thiss!4888)) t!45781) tb!44959))

(declare-fun result!45235 () Bool)

(assert (=> tb!44959 (= result!45235 true)))

(assert (=> b!50523 t!45781))

(declare-fun b_and!57063 () Bool)

(assert (= b_and!57057 (and (=> t!45781 result!45235) b_and!57063)))

(declare-fun tb!44961 () Bool)

(declare-fun t!45783 () Bool)

(assert (=> (and b!50522 (= (y!1566 prev!409) (x!19578 thiss!4888)) t!45783) tb!44961))

(declare-fun result!45237 () Bool)

(assert (=> tb!44961 (= result!45237 true)))

(assert (=> b!50523 t!45783))

(declare-fun b_and!57065 () Bool)

(assert (= b_and!57055 (and (=> t!45783 result!45237) b_and!57065)))

(declare-fun tb!44963 () Bool)

(declare-fun t!45785 () Bool)

(assert (=> (and b!50522 (= (x!19577 prev!409) (x!19578 thiss!4888)) t!45785) tb!44963))

(declare-fun result!45239 () Bool)

(assert (=> tb!44963 (= result!45239 true)))

(assert (=> b!50523 t!45785))

(declare-fun b_and!57067 () Bool)

(assert (= b_and!57053 (and (=> t!45785 result!45239) b_and!57067)))

(declare-fun tb!44965 () Bool)

(declare-fun t!45787 () Bool)

(assert (=> (and b!50525 (= (y!1566 x$21!39) (x!19578 thiss!4888)) t!45787) tb!44965))

(declare-fun result!45241 () Bool)

(assert (=> tb!44965 (= result!45241 true)))

(assert (=> b!50523 t!45787))

(declare-fun b_and!57069 () Bool)

(assert (= b_and!57059 (and (=> t!45787 result!45241) b_and!57069)))

(declare-fun t!45789 () Bool)

(declare-fun tb!44967 () Bool)

(assert (=> (and b!50521 (= (x!19578 thiss!4888) (x!19578 thiss!4888)) t!45789) tb!44967))

(declare-fun result!45243 () Bool)

(assert (=> tb!44967 (= result!45243 true)))

(assert (=> b!50523 t!45789))

(declare-fun b_and!57071 () Bool)

(assert (= b_and!57051 (and (=> t!45789 result!45243) b_and!57071)))

(declare-fun tb!44969 () Bool)

(declare-fun t!45791 () Bool)

(assert (=> (and b!50525 (= (x!19577 x$21!39) (x!19578 thiss!4888)) t!45791) tb!44969))

(declare-fun result!45245 () Bool)

(assert (=> tb!44969 (= result!45245 true)))

(assert (=> b!50523 t!45791))

(declare-fun b_and!57073 () Bool)

(assert (= b_and!57061 (and (=> t!45791 result!45245) b_and!57073)))

(declare-fun b_lambda!14317 () Bool)

(assert (=> (not b_lambda!14317) (not b!50527)))

(declare-fun t!45793 () Bool)

(declare-fun tb!44971 () Bool)

(assert (=> (and b!50525 (= (evidence!679 x$21!39) (evidence!679 prev!409)) t!45793) tb!44971))

(declare-fun result!45247 () Bool)

(assert (=> tb!44971 (= result!45247 true)))

(assert (=> b!50527 t!45793))

(declare-fun b_and!57075 () Bool)

(assert (= b_and!57037 (and (=> t!45793 result!45247) b_and!57075)))

(declare-fun t!45795 () Bool)

(declare-fun tb!44973 () Bool)

(assert (=> (and b!50522 (= (evidence!679 prev!409) (evidence!679 prev!409)) t!45795) tb!44973))

(declare-fun result!45249 () Bool)

(assert (=> tb!44973 (= result!45249 true)))

(assert (=> b!50527 t!45795))

(declare-fun b_and!57077 () Bool)

(assert (= b_and!57043 (and (=> t!45795 result!45249) b_and!57077)))

(declare-fun m!54133 () Bool)

(assert (=> b!50523 m!54133))

(declare-fun m!54135 () Bool)

(assert (=> b!50523 m!54135))

(declare-fun m!54137 () Bool)

(assert (=> start!6796 m!54137))

(declare-fun m!54139 () Bool)

(assert (=> start!6796 m!54139))

(declare-fun m!54141 () Bool)

(assert (=> start!6796 m!54141))

(declare-fun m!54143 () Bool)

(assert (=> b!50527 m!54143))

(assert (=> b!50527 m!54143))

(declare-fun m!54145 () Bool)

(assert (=> b!50527 m!54145))

(push 1)

(assert (not b_next!37903))

(assert (not b_lambda!14313))

(assert (not b_next!37885))

(assert b_and!57073)

(assert (not b_lambda!14317))

(assert (not b_next!37911))

(assert (not b_lambda!14315))

(assert b_and!57069)

(assert (not b_next!37905))

(assert (not start!6796))

(assert (not b_next!37883))

(assert (not b_next!37907))

(assert b_and!57049)

(assert b_and!57065)

(assert b_and!57063)

(assert b_and!57071)

(assert (not b_next!37899))

(assert (not b!50524))

(assert (not b_next!37901))

(assert b_and!57077)

(assert (not b!50527))

(assert b_and!57067)

(assert b_and!57075)

(assert (not b_next!37909))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37903))

(assert (not b_next!37885))

(assert b_and!57073)

(assert (not b_next!37911))

(assert b_and!57069)

(assert (not b_next!37905))

(assert (not b_next!37883))

(assert (not b_next!37907))

(assert b_and!57049)

(assert b_and!57065)

(assert b_and!57063)

(assert b_and!57071)

(assert (not b_next!37899))

(assert (not b_next!37901))

(assert b_and!57077)

(assert b_and!57067)

(assert b_and!57075)

(assert (not b_next!37909))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14319 () Bool)

(assert (= b_lambda!14315 (or (and b!50526 (= lambda!8385 (x!19578 thiss!4888))) (and b!50522 b_free!7047 (= (x!19577 prev!409) (x!19578 thiss!4888))) (and b!50522 b_free!7049 (= (y!1566 prev!409) (x!19578 thiss!4888))) (and b!50521 b_free!7053) (and b!50524 (= lambda!8382 (x!19578 thiss!4888))) (and b!50525 b_free!7043 (= (y!1566 x$21!39) (x!19578 thiss!4888))) (and b!50526 (= lambda!8384 (x!19578 thiss!4888))) (and b!50525 b_free!7041 (= (x!19577 x$21!39) (x!19578 thiss!4888))) (and b!50521 b_free!7055 (= (y!1567 thiss!4888) (x!19578 thiss!4888))) b_lambda!14319)))

(declare-fun bs!23519 () Bool)

(declare-fun d!43050 () Bool)

(assert (= bs!23519 (and d!43050 b!50524)))

(declare-fun n2!88 () Nat!250)

(declare-fun n3!17 () Nat!250)

(declare-fun *!4 (Nat!250 Nat!250) Nat!250)

(declare-fun +!5 (Nat!250 Nat!250) Nat!250)

(assert (=> bs!23519 (= (dynLambda!869 lambda!8382) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(declare-fun m!54147 () Bool)

(assert (=> bs!23519 m!54147))

(assert (=> bs!23519 m!54147))

(declare-fun m!54149 () Bool)

(assert (=> bs!23519 m!54149))

(assert (=> (and b!50524 (= lambda!8382 (x!19578 thiss!4888)) b!50523) d!43050))

(declare-fun bs!23520 () Bool)

(declare-fun d!43052 () Bool)

(assert (= bs!23520 (and d!43052 b!50526)))

(assert (=> bs!23520 (= (dynLambda!869 lambda!8384) (+!5 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23520 m!54147))

(assert (=> bs!23520 m!54147))

(declare-fun m!54151 () Bool)

(assert (=> bs!23520 m!54151))

(assert (=> bs!23520 m!54151))

(assert (=> bs!23520 m!54147))

(declare-fun m!54153 () Bool)

(assert (=> bs!23520 m!54153))

(assert (=> (and b!50526 (= lambda!8384 (x!19578 thiss!4888)) b!50523) d!43052))

(declare-fun bs!23521 () Bool)

(declare-fun d!43054 () Bool)

(assert (= bs!23521 (and d!43054 b!50526)))

(assert (=> bs!23521 (= (dynLambda!869 lambda!8385) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(declare-fun m!54155 () Bool)

(assert (=> bs!23521 m!54155))

(declare-fun m!54157 () Bool)

(assert (=> bs!23521 m!54157))

(assert (=> bs!23521 m!54155))

(assert (=> bs!23521 m!54157))

(declare-fun m!54159 () Bool)

(assert (=> bs!23521 m!54159))

(assert (=> (and b!50526 (= lambda!8385 (x!19578 thiss!4888)) b!50523) d!43054))

(declare-fun b_lambda!14321 () Bool)

(assert (= b_lambda!14317 (or (and b!50524 (= lambda!8383 (evidence!679 prev!409))) (and b!50525 b_free!7045 (= (evidence!679 x$21!39) (evidence!679 prev!409))) (and b!50522 b_free!7051) b_lambda!14321)))

(declare-fun bs!23522 () Bool)

(declare-fun d!43056 () Bool)

(assert (= bs!23522 (and d!43056 b!50524)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!23522 (= (dynLambda!868 lambda!8383) trivial!1)))

(assert (=> (and b!50524 (= lambda!8383 (evidence!679 prev!409)) b!50527) d!43056))

(declare-fun b_lambda!14323 () Bool)

(assert (= b_lambda!14313 (or (and b!50526 (= lambda!8384 (y!1566 prev!409))) (and b!50522 b_free!7049) (and b!50522 b_free!7047 (= (x!19577 prev!409) (y!1566 prev!409))) (and b!50525 b_free!7043 (= (y!1566 x$21!39) (y!1566 prev!409))) (and b!50521 b_free!7053 (= (x!19578 thiss!4888) (y!1566 prev!409))) (and b!50525 b_free!7041 (= (x!19577 x$21!39) (y!1566 prev!409))) (and b!50526 (= lambda!8385 (y!1566 prev!409))) (and b!50521 b_free!7055 (= (y!1567 thiss!4888) (y!1566 prev!409))) (and b!50524 (= lambda!8382 (y!1566 prev!409))) b_lambda!14323)))

(declare-fun bs!23523 () Bool)

(declare-fun d!43058 () Bool)

(assert (= bs!23523 (and d!43058 b!50524)))

(assert (=> bs!23523 (= (dynLambda!869 lambda!8382) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23523 m!54147))

(assert (=> bs!23523 m!54147))

(assert (=> bs!23523 m!54149))

(assert (=> (and b!50524 (= lambda!8382 (y!1566 prev!409)) b!50523) d!43058))

(declare-fun bs!23524 () Bool)

(declare-fun d!43060 () Bool)

(assert (= bs!23524 (and d!43060 b!50526)))

(assert (=> bs!23524 (= (dynLambda!869 lambda!8384) (+!5 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23524 m!54147))

(assert (=> bs!23524 m!54147))

(assert (=> bs!23524 m!54151))

(assert (=> bs!23524 m!54151))

(assert (=> bs!23524 m!54147))

(assert (=> bs!23524 m!54153))

(assert (=> (and b!50526 (= lambda!8384 (y!1566 prev!409)) b!50523) d!43060))

(declare-fun bs!23525 () Bool)

(declare-fun d!43062 () Bool)

(assert (= bs!23525 (and d!43062 b!50526)))

(assert (=> bs!23525 (= (dynLambda!869 lambda!8385) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23525 m!54155))

(assert (=> bs!23525 m!54157))

(assert (=> bs!23525 m!54155))

(assert (=> bs!23525 m!54157))

(assert (=> bs!23525 m!54159))

(assert (=> (and b!50526 (= lambda!8385 (y!1566 prev!409)) b!50523) d!43062))

(push 1)

(assert (not b_next!37903))

(assert (not b_next!37885))

(assert b_and!57073)

(assert (not b_next!37911))

(assert b_and!57069)

(assert (not b_next!37905))

(assert (not bs!23524))

(assert (not start!6796))

(assert (not b_next!37883))

(assert (not b_next!37907))

(assert (not bs!23519))

(assert b_and!57049)

(assert b_and!57065)

(assert (not b_lambda!14319))

(assert (not b_lambda!14323))

(assert (not b_lambda!14321))

(assert b_and!57063)

(assert b_and!57071)

(assert (not b_next!37899))

(assert (not b!50524))

(assert (not bs!23523))

(assert (not b_next!37901))

(assert b_and!57077)

(assert (not b!50527))

(assert b_and!57067)

(assert b_and!57075)

(assert (not bs!23521))

(assert (not bs!23525))

(assert (not bs!23520))

(assert (not b_next!37909))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37903))

(assert (not b_next!37885))

(assert b_and!57073)

(assert (not b_next!37911))

(assert b_and!57069)

(assert (not b_next!37905))

(assert (not b_next!37883))

(assert (not b_next!37907))

(assert b_and!57049)

(assert b_and!57065)

(assert b_and!57063)

(assert b_and!57071)

(assert (not b_next!37899))

(assert (not b_next!37901))

(assert b_and!57077)

(assert b_and!57067)

(assert b_and!57075)

(assert (not b_next!37909))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43064 () Bool)

(declare-fun c!10701 () Bool)

(assert (=> d!43064 (= c!10701 (is-Zero!234 n1!77))))

(declare-fun e!26238 () Nat!250)

(assert (=> d!43064 (= (*!4 n1!77 (+!5 n2!88 n3!17)) e!26238)))

(declare-fun b!50537 () Bool)

(assert (=> b!50537 (= e!26238 Zero!234)))

(declare-fun b!50538 () Bool)

(assert (=> b!50538 (= e!26238 (+!5 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (= (and d!43064 c!10701) b!50537))

(assert (= (and d!43064 (not c!10701)) b!50538))

(assert (=> b!50538 m!54147))

(assert (=> b!50538 m!54151))

(assert (=> b!50538 m!54151))

(assert (=> b!50538 m!54147))

(assert (=> b!50538 m!54153))

(assert (=> bs!23523 d!43064))

(declare-fun d!43066 () Bool)

(declare-fun c!10704 () Bool)

(assert (=> d!43066 (= c!10704 (is-Zero!234 n2!88))))

(declare-fun e!26241 () Nat!250)

(assert (=> d!43066 (= (+!5 n2!88 n3!17) e!26241)))

(declare-fun b!50543 () Bool)

(assert (=> b!50543 (= e!26241 n3!17)))

(declare-fun b!50544 () Bool)

(assert (=> b!50544 (= e!26241 (Succ!231 (+!5 (n!1387 n2!88) n3!17)))))

(assert (= (and d!43066 c!10704) b!50543))

(assert (= (and d!43066 (not c!10704)) b!50544))

(declare-fun m!54161 () Bool)

(assert (=> b!50544 m!54161))

(assert (=> bs!23523 d!43066))

(declare-fun d!43068 () Bool)

(declare-fun c!10705 () Bool)

(assert (=> d!43068 (= c!10705 (is-Zero!234 (*!4 n1!77 n2!88)))))

(declare-fun e!26242 () Nat!250)

(assert (=> d!43068 (= (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)) e!26242)))

(declare-fun b!50545 () Bool)

(assert (=> b!50545 (= e!26242 (*!4 n1!77 n3!17))))

(declare-fun b!50546 () Bool)

(assert (=> b!50546 (= e!26242 (Succ!231 (+!5 (n!1387 (*!4 n1!77 n2!88)) (*!4 n1!77 n3!17))))))

(assert (= (and d!43068 c!10705) b!50545))

(assert (= (and d!43068 (not c!10705)) b!50546))

(assert (=> b!50546 m!54157))

(declare-fun m!54163 () Bool)

(assert (=> b!50546 m!54163))

(assert (=> bs!23525 d!43068))

(declare-fun d!43070 () Bool)

(declare-fun c!10706 () Bool)

(assert (=> d!43070 (= c!10706 (is-Zero!234 n1!77))))

(declare-fun e!26243 () Nat!250)

(assert (=> d!43070 (= (*!4 n1!77 n2!88) e!26243)))

(declare-fun b!50547 () Bool)

(assert (=> b!50547 (= e!26243 Zero!234)))

(declare-fun b!50548 () Bool)

(assert (=> b!50548 (= e!26243 (+!5 (*!4 (n!1387 n1!77) n2!88) n2!88))))

(assert (= (and d!43070 c!10706) b!50547))

(assert (= (and d!43070 (not c!10706)) b!50548))

(declare-fun m!54165 () Bool)

(assert (=> b!50548 m!54165))

(assert (=> b!50548 m!54165))

(declare-fun m!54167 () Bool)

(assert (=> b!50548 m!54167))

(assert (=> bs!23525 d!43070))

(declare-fun d!43072 () Bool)

(declare-fun c!10707 () Bool)

(assert (=> d!43072 (= c!10707 (is-Zero!234 n1!77))))

(declare-fun e!26244 () Nat!250)

(assert (=> d!43072 (= (*!4 n1!77 n3!17) e!26244)))

(declare-fun b!50549 () Bool)

(assert (=> b!50549 (= e!26244 Zero!234)))

(declare-fun b!50550 () Bool)

(assert (=> b!50550 (= e!26244 (+!5 (*!4 (n!1387 n1!77) n3!17) n3!17))))

(assert (= (and d!43072 c!10707) b!50549))

(assert (= (and d!43072 (not c!10707)) b!50550))

(declare-fun m!54169 () Bool)

(assert (=> b!50550 m!54169))

(assert (=> b!50550 m!54169))

(declare-fun m!54171 () Bool)

(assert (=> b!50550 m!54171))

(assert (=> bs!23525 d!43072))

(assert (=> bs!23521 d!43068))

(assert (=> bs!23521 d!43070))

(assert (=> bs!23521 d!43072))

(declare-fun d!43074 () Bool)

(declare-fun c!10708 () Bool)

(assert (=> d!43074 (= c!10708 (is-Zero!234 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17))))))

(declare-fun e!26245 () Nat!250)

(assert (=> d!43074 (= (+!5 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)) e!26245)))

(declare-fun b!50551 () Bool)

(assert (=> b!50551 (= e!26245 (+!5 n2!88 n3!17))))

(declare-fun b!50552 () Bool)

(assert (=> b!50552 (= e!26245 (Succ!231 (+!5 (n!1387 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17))) (+!5 n2!88 n3!17))))))

(assert (= (and d!43074 c!10708) b!50551))

(assert (= (and d!43074 (not c!10708)) b!50552))

(assert (=> b!50552 m!54147))

(declare-fun m!54173 () Bool)

(assert (=> b!50552 m!54173))

(assert (=> bs!23520 d!43074))

(declare-fun d!43076 () Bool)

(declare-fun c!10709 () Bool)

(assert (=> d!43076 (= c!10709 (is-Zero!234 (n!1387 n1!77)))))

(declare-fun e!26246 () Nat!250)

(assert (=> d!43076 (= (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) e!26246)))

(declare-fun b!50553 () Bool)

(assert (=> b!50553 (= e!26246 Zero!234)))

(declare-fun b!50554 () Bool)

(assert (=> b!50554 (= e!26246 (+!5 (*!4 (n!1387 (n!1387 n1!77)) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (= (and d!43076 c!10709) b!50553))

(assert (= (and d!43076 (not c!10709)) b!50554))

(assert (=> b!50554 m!54147))

(declare-fun m!54175 () Bool)

(assert (=> b!50554 m!54175))

(assert (=> b!50554 m!54175))

(assert (=> b!50554 m!54147))

(declare-fun m!54177 () Bool)

(assert (=> b!50554 m!54177))

(assert (=> bs!23520 d!43076))

(assert (=> bs!23520 d!43066))

(declare-fun d!43078 () Bool)

(assert (=> d!43078 (= (inv!876 x$21!39) (= (dynLambda!869 (x!19577 x$21!39)) (dynLambda!869 (y!1566 x$21!39))))))

(declare-fun b_lambda!14325 () Bool)

(assert (=> (not b_lambda!14325) (not d!43078)))

(declare-fun t!45797 () Bool)

(declare-fun tb!44975 () Bool)

(assert (=> (and b!50525 (= (y!1566 x$21!39) (x!19577 x$21!39)) t!45797) tb!44975))

(declare-fun result!45251 () Bool)

(assert (=> tb!44975 (= result!45251 true)))

(assert (=> d!43078 t!45797))

(declare-fun b_and!57079 () Bool)

(assert (= b_and!57069 (and (=> t!45797 result!45251) b_and!57079)))

(declare-fun t!45799 () Bool)

(declare-fun tb!44977 () Bool)

(assert (=> (and b!50525 (= (x!19577 x$21!39) (x!19577 x$21!39)) t!45799) tb!44977))

(declare-fun result!45253 () Bool)

(assert (=> tb!44977 (= result!45253 true)))

(assert (=> d!43078 t!45799))

(declare-fun b_and!57081 () Bool)

(assert (= b_and!57073 (and (=> t!45799 result!45253) b_and!57081)))

(declare-fun tb!44979 () Bool)

(declare-fun t!45801 () Bool)

(assert (=> (and b!50521 (= (x!19578 thiss!4888) (x!19577 x$21!39)) t!45801) tb!44979))

(declare-fun result!45255 () Bool)

(assert (=> tb!44979 (= result!45255 true)))

(assert (=> d!43078 t!45801))

(declare-fun b_and!57083 () Bool)

(assert (= b_and!57071 (and (=> t!45801 result!45255) b_and!57083)))

(declare-fun tb!44981 () Bool)

(declare-fun t!45803 () Bool)

(assert (=> (and b!50522 (= (y!1566 prev!409) (x!19577 x$21!39)) t!45803) tb!44981))

(declare-fun result!45257 () Bool)

(assert (=> tb!44981 (= result!45257 true)))

(assert (=> d!43078 t!45803))

(declare-fun b_and!57085 () Bool)

(assert (= b_and!57065 (and (=> t!45803 result!45257) b_and!57085)))

(declare-fun tb!44983 () Bool)

(declare-fun t!45805 () Bool)

(assert (=> (and b!50521 (= (y!1567 thiss!4888) (x!19577 x$21!39)) t!45805) tb!44983))

(declare-fun result!45259 () Bool)

(assert (=> tb!44983 (= result!45259 true)))

(assert (=> d!43078 t!45805))

(declare-fun b_and!57087 () Bool)

(assert (= b_and!57063 (and (=> t!45805 result!45259) b_and!57087)))

(declare-fun tb!44985 () Bool)

(declare-fun t!45807 () Bool)

(assert (=> (and b!50522 (= (x!19577 prev!409) (x!19577 x$21!39)) t!45807) tb!44985))

(declare-fun result!45261 () Bool)

(assert (=> tb!44985 (= result!45261 true)))

(assert (=> d!43078 t!45807))

(declare-fun b_and!57089 () Bool)

(assert (= b_and!57067 (and (=> t!45807 result!45261) b_and!57089)))

(declare-fun b_lambda!14327 () Bool)

(assert (=> (not b_lambda!14327) (not d!43078)))

(declare-fun t!45809 () Bool)

(declare-fun tb!44987 () Bool)

(assert (=> (and b!50525 (= (y!1566 x$21!39) (y!1566 x$21!39)) t!45809) tb!44987))

(declare-fun result!45263 () Bool)

(assert (=> tb!44987 (= result!45263 true)))

(assert (=> d!43078 t!45809))

(declare-fun b_and!57091 () Bool)

(assert (= b_and!57079 (and (=> t!45809 result!45263) b_and!57091)))

(declare-fun t!45811 () Bool)

(declare-fun tb!44989 () Bool)

(assert (=> (and b!50521 (= (y!1567 thiss!4888) (y!1566 x$21!39)) t!45811) tb!44989))

(declare-fun result!45265 () Bool)

(assert (=> tb!44989 (= result!45265 true)))

(assert (=> d!43078 t!45811))

(declare-fun b_and!57093 () Bool)

(assert (= b_and!57087 (and (=> t!45811 result!45265) b_and!57093)))

(declare-fun t!45813 () Bool)

(declare-fun tb!44991 () Bool)

(assert (=> (and b!50522 (= (x!19577 prev!409) (y!1566 x$21!39)) t!45813) tb!44991))

(declare-fun result!45267 () Bool)

(assert (=> tb!44991 (= result!45267 true)))

(assert (=> d!43078 t!45813))

(declare-fun b_and!57095 () Bool)

(assert (= b_and!57089 (and (=> t!45813 result!45267) b_and!57095)))

(declare-fun t!45815 () Bool)

(declare-fun tb!44993 () Bool)

(assert (=> (and b!50525 (= (x!19577 x$21!39) (y!1566 x$21!39)) t!45815) tb!44993))

(declare-fun result!45269 () Bool)

(assert (=> tb!44993 (= result!45269 true)))

(assert (=> d!43078 t!45815))

(declare-fun b_and!57097 () Bool)

(assert (= b_and!57081 (and (=> t!45815 result!45269) b_and!57097)))

(declare-fun tb!44995 () Bool)

(declare-fun t!45817 () Bool)

(assert (=> (and b!50521 (= (x!19578 thiss!4888) (y!1566 x$21!39)) t!45817) tb!44995))

(declare-fun result!45271 () Bool)

(assert (=> tb!44995 (= result!45271 true)))

(assert (=> d!43078 t!45817))

(declare-fun b_and!57099 () Bool)

(assert (= b_and!57083 (and (=> t!45817 result!45271) b_and!57099)))

(declare-fun tb!44997 () Bool)

(declare-fun t!45819 () Bool)

(assert (=> (and b!50522 (= (y!1566 prev!409) (y!1566 x$21!39)) t!45819) tb!44997))

(declare-fun result!45273 () Bool)

(assert (=> tb!44997 (= result!45273 true)))

(assert (=> d!43078 t!45819))

(declare-fun b_and!57101 () Bool)

(assert (= b_and!57085 (and (=> t!45819 result!45273) b_and!57101)))

(declare-fun m!54179 () Bool)

(assert (=> d!43078 m!54179))

(declare-fun m!54181 () Bool)

(assert (=> d!43078 m!54181))

(assert (=> start!6796 d!43078))

(declare-fun d!43080 () Bool)

(assert (=> d!43080 (= (inv!876 prev!409) (= (dynLambda!869 (x!19577 prev!409)) (dynLambda!869 (y!1566 prev!409))))))

(declare-fun b_lambda!14329 () Bool)

(assert (=> (not b_lambda!14329) (not d!43080)))

(declare-fun tb!44999 () Bool)

(declare-fun t!45821 () Bool)

(assert (=> (and b!50521 (= (y!1567 thiss!4888) (x!19577 prev!409)) t!45821) tb!44999))

(declare-fun result!45275 () Bool)

(assert (=> tb!44999 (= result!45275 true)))

(assert (=> d!43080 t!45821))

(declare-fun b_and!57103 () Bool)

(assert (= b_and!57093 (and (=> t!45821 result!45275) b_and!57103)))

(declare-fun t!45823 () Bool)

(declare-fun tb!45001 () Bool)

(assert (=> (and b!50525 (= (x!19577 x$21!39) (x!19577 prev!409)) t!45823) tb!45001))

(declare-fun result!45277 () Bool)

(assert (=> tb!45001 (= result!45277 true)))

(assert (=> d!43080 t!45823))

(declare-fun b_and!57105 () Bool)

(assert (= b_and!57097 (and (=> t!45823 result!45277) b_and!57105)))

(declare-fun t!45825 () Bool)

(declare-fun tb!45003 () Bool)

(assert (=> (and b!50521 (= (x!19578 thiss!4888) (x!19577 prev!409)) t!45825) tb!45003))

(declare-fun result!45279 () Bool)

(assert (=> tb!45003 (= result!45279 true)))

(assert (=> d!43080 t!45825))

(declare-fun b_and!57107 () Bool)

(assert (= b_and!57099 (and (=> t!45825 result!45279) b_and!57107)))

(declare-fun t!45827 () Bool)

(declare-fun tb!45005 () Bool)

(assert (=> (and b!50522 (= (y!1566 prev!409) (x!19577 prev!409)) t!45827) tb!45005))

(declare-fun result!45281 () Bool)

(assert (=> tb!45005 (= result!45281 true)))

(assert (=> d!43080 t!45827))

(declare-fun b_and!57109 () Bool)

(assert (= b_and!57101 (and (=> t!45827 result!45281) b_and!57109)))

(declare-fun tb!45007 () Bool)

(declare-fun t!45829 () Bool)

(assert (=> (and b!50525 (= (y!1566 x$21!39) (x!19577 prev!409)) t!45829) tb!45007))

(declare-fun result!45283 () Bool)

(assert (=> tb!45007 (= result!45283 true)))

(assert (=> d!43080 t!45829))

(declare-fun b_and!57111 () Bool)

(assert (= b_and!57091 (and (=> t!45829 result!45283) b_and!57111)))

(declare-fun t!45831 () Bool)

(declare-fun tb!45009 () Bool)

(assert (=> (and b!50522 (= (x!19577 prev!409) (x!19577 prev!409)) t!45831) tb!45009))

(declare-fun result!45285 () Bool)

(assert (=> tb!45009 (= result!45285 true)))

(assert (=> d!43080 t!45831))

(declare-fun b_and!57113 () Bool)

(assert (= b_and!57095 (and (=> t!45831 result!45285) b_and!57113)))

(declare-fun b_lambda!14331 () Bool)

(assert (=> (not b_lambda!14331) (not d!43080)))

(assert (=> d!43080 t!45775))

(declare-fun b_and!57115 () Bool)

(assert (= b_and!57103 (and (=> t!45775 result!45229) b_and!57115)))

(assert (=> d!43080 t!45771))

(declare-fun b_and!57117 () Bool)

(assert (= b_and!57113 (and (=> t!45771 result!45225) b_and!57117)))

(assert (=> d!43080 t!45773))

(declare-fun b_and!57119 () Bool)

(assert (= b_and!57109 (and (=> t!45773 result!45227) b_and!57119)))

(assert (=> d!43080 t!45769))

(declare-fun b_and!57121 () Bool)

(assert (= b_and!57107 (and (=> t!45769 result!45223) b_and!57121)))

(assert (=> d!43080 t!45779))

(declare-fun b_and!57123 () Bool)

(assert (= b_and!57105 (and (=> t!45779 result!45233) b_and!57123)))

(assert (=> d!43080 t!45777))

(declare-fun b_and!57125 () Bool)

(assert (= b_and!57111 (and (=> t!45777 result!45231) b_and!57125)))

(declare-fun m!54183 () Bool)

(assert (=> d!43080 m!54183))

(assert (=> d!43080 m!54133))

(assert (=> start!6796 d!43080))

(declare-fun d!43082 () Bool)

(assert (=> d!43082 (= (inv!877 thiss!4888) (= (dynLambda!869 (x!19578 thiss!4888)) (dynLambda!869 (y!1567 thiss!4888))))))

(declare-fun b_lambda!14333 () Bool)

(assert (=> (not b_lambda!14333) (not d!43082)))

(assert (=> d!43082 t!45785))

(declare-fun b_and!57127 () Bool)

(assert (= b_and!57117 (and (=> t!45785 result!45239) b_and!57127)))

(assert (=> d!43082 t!45781))

(declare-fun b_and!57129 () Bool)

(assert (= b_and!57115 (and (=> t!45781 result!45235) b_and!57129)))

(assert (=> d!43082 t!45783))

(declare-fun b_and!57131 () Bool)

(assert (= b_and!57119 (and (=> t!45783 result!45237) b_and!57131)))

(assert (=> d!43082 t!45787))

(declare-fun b_and!57133 () Bool)

(assert (= b_and!57125 (and (=> t!45787 result!45241) b_and!57133)))

(assert (=> d!43082 t!45789))

(declare-fun b_and!57135 () Bool)

(assert (= b_and!57121 (and (=> t!45789 result!45243) b_and!57135)))

(assert (=> d!43082 t!45791))

(declare-fun b_and!57137 () Bool)

(assert (= b_and!57123 (and (=> t!45791 result!45245) b_and!57137)))

(declare-fun b_lambda!14335 () Bool)

(assert (=> (not b_lambda!14335) (not d!43082)))

(declare-fun tb!45011 () Bool)

(declare-fun t!45833 () Bool)

(assert (=> (and b!50522 (= (y!1566 prev!409) (y!1567 thiss!4888)) t!45833) tb!45011))

(declare-fun result!45287 () Bool)

(assert (=> tb!45011 (= result!45287 true)))

(assert (=> d!43082 t!45833))

(declare-fun b_and!57139 () Bool)

(assert (= b_and!57131 (and (=> t!45833 result!45287) b_and!57139)))

(declare-fun tb!45013 () Bool)

(declare-fun t!45835 () Bool)

(assert (=> (and b!50522 (= (x!19577 prev!409) (y!1567 thiss!4888)) t!45835) tb!45013))

(declare-fun result!45289 () Bool)

(assert (=> tb!45013 (= result!45289 true)))

(assert (=> d!43082 t!45835))

(declare-fun b_and!57141 () Bool)

(assert (= b_and!57127 (and (=> t!45835 result!45289) b_and!57141)))

(declare-fun t!45837 () Bool)

(declare-fun tb!45015 () Bool)

(assert (=> (and b!50521 (= (x!19578 thiss!4888) (y!1567 thiss!4888)) t!45837) tb!45015))

(declare-fun result!45291 () Bool)

(assert (=> tb!45015 (= result!45291 true)))

(assert (=> d!43082 t!45837))

(declare-fun b_and!57143 () Bool)

(assert (= b_and!57135 (and (=> t!45837 result!45291) b_and!57143)))

(declare-fun t!45839 () Bool)

(declare-fun tb!45017 () Bool)

(assert (=> (and b!50521 (= (y!1567 thiss!4888) (y!1567 thiss!4888)) t!45839) tb!45017))

(declare-fun result!45293 () Bool)

(assert (=> tb!45017 (= result!45293 true)))

(assert (=> d!43082 t!45839))

(declare-fun b_and!57145 () Bool)

(assert (= b_and!57129 (and (=> t!45839 result!45293) b_and!57145)))

(declare-fun t!45841 () Bool)

(declare-fun tb!45019 () Bool)

(assert (=> (and b!50525 (= (x!19577 x$21!39) (y!1567 thiss!4888)) t!45841) tb!45019))

(declare-fun result!45295 () Bool)

(assert (=> tb!45019 (= result!45295 true)))

(assert (=> d!43082 t!45841))

(declare-fun b_and!57147 () Bool)

(assert (= b_and!57137 (and (=> t!45841 result!45295) b_and!57147)))

(declare-fun tb!45021 () Bool)

(declare-fun t!45843 () Bool)

(assert (=> (and b!50525 (= (y!1566 x$21!39) (y!1567 thiss!4888)) t!45843) tb!45021))

(declare-fun result!45297 () Bool)

(assert (=> tb!45021 (= result!45297 true)))

(assert (=> d!43082 t!45843))

(declare-fun b_and!57149 () Bool)

(assert (= b_and!57133 (and (=> t!45843 result!45297) b_and!57149)))

(assert (=> d!43082 m!54135))

(declare-fun m!54185 () Bool)

(assert (=> d!43082 m!54185))

(assert (=> start!6796 d!43082))

(declare-fun d!43084 () Bool)

(assert (=> d!43084 (= trivial!1 true)))

(assert (=> b!50524 d!43084))

(assert (=> bs!23519 d!43064))

(assert (=> bs!23519 d!43066))

(declare-fun d!43086 () Bool)

(assert (=> d!43086 (= (keepEvidence!69 (dynLambda!868 (evidence!679 prev!409))) true)))

(assert (=> b!50527 d!43086))

(assert (=> bs!23524 d!43074))

(assert (=> bs!23524 d!43076))

(assert (=> bs!23524 d!43066))

(declare-fun b_lambda!14337 () Bool)

(assert (= b_lambda!14335 (or (and b!50525 b_free!7043 (= (y!1566 x$21!39) (y!1567 thiss!4888))) (and b!50521 b_free!7055) (and b!50525 b_free!7041 (= (x!19577 x$21!39) (y!1567 thiss!4888))) (and b!50524 (= lambda!8382 (y!1567 thiss!4888))) (and b!50522 b_free!7049 (= (y!1566 prev!409) (y!1567 thiss!4888))) (and b!50526 (= lambda!8384 (y!1567 thiss!4888))) (and b!50526 (= lambda!8385 (y!1567 thiss!4888))) (and b!50521 b_free!7053 (= (x!19578 thiss!4888) (y!1567 thiss!4888))) (and b!50522 b_free!7047 (= (x!19577 prev!409) (y!1567 thiss!4888))) b_lambda!14337)))

(declare-fun bs!23526 () Bool)

(declare-fun d!43088 () Bool)

(assert (= bs!23526 (and d!43088 b!50524)))

(assert (=> bs!23526 (= (dynLambda!869 lambda!8382) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23526 m!54147))

(assert (=> bs!23526 m!54147))

(assert (=> bs!23526 m!54149))

(assert (=> (and b!50524 (= lambda!8382 (y!1567 thiss!4888)) d!43082) d!43088))

(declare-fun bs!23527 () Bool)

(declare-fun d!43090 () Bool)

(assert (= bs!23527 (and d!43090 b!50526)))

(assert (=> bs!23527 (= (dynLambda!869 lambda!8385) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23527 m!54155))

(assert (=> bs!23527 m!54157))

(assert (=> bs!23527 m!54155))

(assert (=> bs!23527 m!54157))

(assert (=> bs!23527 m!54159))

(assert (=> (and b!50526 (= lambda!8385 (y!1567 thiss!4888)) d!43082) d!43090))

(declare-fun bs!23528 () Bool)

(declare-fun d!43092 () Bool)

(assert (= bs!23528 (and d!43092 b!50526)))

(assert (=> bs!23528 (= (dynLambda!869 lambda!8384) (+!5 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23528 m!54147))

(assert (=> bs!23528 m!54147))

(assert (=> bs!23528 m!54151))

(assert (=> bs!23528 m!54151))

(assert (=> bs!23528 m!54147))

(assert (=> bs!23528 m!54153))

(assert (=> (and b!50526 (= lambda!8384 (y!1567 thiss!4888)) d!43082) d!43092))

(declare-fun b_lambda!14339 () Bool)

(assert (= b_lambda!14327 (or (and b!50526 (= lambda!8385 (y!1566 x$21!39))) (and b!50524 (= lambda!8382 (y!1566 x$21!39))) (and b!50525 b_free!7041 (= (x!19577 x$21!39) (y!1566 x$21!39))) (and b!50521 b_free!7053 (= (x!19578 thiss!4888) (y!1566 x$21!39))) (and b!50522 b_free!7047 (= (x!19577 prev!409) (y!1566 x$21!39))) (and b!50522 b_free!7049 (= (y!1566 prev!409) (y!1566 x$21!39))) (and b!50521 b_free!7055 (= (y!1567 thiss!4888) (y!1566 x$21!39))) (and b!50525 b_free!7043) (and b!50526 (= lambda!8384 (y!1566 x$21!39))) b_lambda!14339)))

(declare-fun bs!23529 () Bool)

(declare-fun d!43094 () Bool)

(assert (= bs!23529 (and d!43094 b!50524)))

(assert (=> bs!23529 (= (dynLambda!869 lambda!8382) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23529 m!54147))

(assert (=> bs!23529 m!54147))

(assert (=> bs!23529 m!54149))

(assert (=> (and b!50524 (= lambda!8382 (y!1566 x$21!39)) d!43078) d!43094))

(declare-fun bs!23530 () Bool)

(declare-fun d!43096 () Bool)

(assert (= bs!23530 (and d!43096 b!50526)))

(assert (=> bs!23530 (= (dynLambda!869 lambda!8384) (+!5 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23530 m!54147))

(assert (=> bs!23530 m!54147))

(assert (=> bs!23530 m!54151))

(assert (=> bs!23530 m!54151))

(assert (=> bs!23530 m!54147))

(assert (=> bs!23530 m!54153))

(assert (=> (and b!50526 (= lambda!8384 (y!1566 x$21!39)) d!43078) d!43096))

(declare-fun bs!23531 () Bool)

(declare-fun d!43098 () Bool)

(assert (= bs!23531 (and d!43098 b!50526)))

(assert (=> bs!23531 (= (dynLambda!869 lambda!8385) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23531 m!54155))

(assert (=> bs!23531 m!54157))

(assert (=> bs!23531 m!54155))

(assert (=> bs!23531 m!54157))

(assert (=> bs!23531 m!54159))

(assert (=> (and b!50526 (= lambda!8385 (y!1566 x$21!39)) d!43078) d!43098))

(declare-fun b_lambda!14341 () Bool)

(assert (= b_lambda!14333 (or (and b!50526 (= lambda!8385 (x!19578 thiss!4888))) (and b!50522 b_free!7047 (= (x!19577 prev!409) (x!19578 thiss!4888))) (and b!50522 b_free!7049 (= (y!1566 prev!409) (x!19578 thiss!4888))) (and b!50521 b_free!7053) (and b!50524 (= lambda!8382 (x!19578 thiss!4888))) (and b!50525 b_free!7043 (= (y!1566 x$21!39) (x!19578 thiss!4888))) (and b!50526 (= lambda!8384 (x!19578 thiss!4888))) (and b!50525 b_free!7041 (= (x!19577 x$21!39) (x!19578 thiss!4888))) (and b!50521 b_free!7055 (= (y!1567 thiss!4888) (x!19578 thiss!4888))) b_lambda!14341)))

(assert (=> (and b!50524 (= lambda!8382 (x!19578 thiss!4888)) d!43082) d!43050))

(assert (=> (and b!50526 (= lambda!8384 (x!19578 thiss!4888)) d!43082) d!43052))

(assert (=> (and b!50526 (= lambda!8385 (x!19578 thiss!4888)) d!43082) d!43054))

(declare-fun b_lambda!14343 () Bool)

(assert (= b_lambda!14331 (or (and b!50526 (= lambda!8384 (y!1566 prev!409))) (and b!50522 b_free!7049) (and b!50522 b_free!7047 (= (x!19577 prev!409) (y!1566 prev!409))) (and b!50525 b_free!7043 (= (y!1566 x$21!39) (y!1566 prev!409))) (and b!50521 b_free!7053 (= (x!19578 thiss!4888) (y!1566 prev!409))) (and b!50525 b_free!7041 (= (x!19577 x$21!39) (y!1566 prev!409))) (and b!50526 (= lambda!8385 (y!1566 prev!409))) (and b!50521 b_free!7055 (= (y!1567 thiss!4888) (y!1566 prev!409))) (and b!50524 (= lambda!8382 (y!1566 prev!409))) b_lambda!14343)))

(assert (=> (and b!50524 (= lambda!8382 (y!1566 prev!409)) d!43080) d!43058))

(assert (=> (and b!50526 (= lambda!8384 (y!1566 prev!409)) d!43080) d!43060))

(assert (=> (and b!50526 (= lambda!8385 (y!1566 prev!409)) d!43080) d!43062))

(declare-fun b_lambda!14345 () Bool)

(assert (= b_lambda!14325 (or (and b!50526 (= lambda!8385 (x!19577 x$21!39))) (and b!50525 b_free!7041) (and b!50521 b_free!7055 (= (y!1567 thiss!4888) (x!19577 x$21!39))) (and b!50521 b_free!7053 (= (x!19578 thiss!4888) (x!19577 x$21!39))) (and b!50525 b_free!7043 (= (y!1566 x$21!39) (x!19577 x$21!39))) (and b!50524 (= lambda!8382 (x!19577 x$21!39))) (and b!50522 b_free!7049 (= (y!1566 prev!409) (x!19577 x$21!39))) (and b!50526 (= lambda!8384 (x!19577 x$21!39))) (and b!50522 b_free!7047 (= (x!19577 prev!409) (x!19577 x$21!39))) b_lambda!14345)))

(declare-fun bs!23532 () Bool)

(declare-fun d!43100 () Bool)

(assert (= bs!23532 (and d!43100 b!50526)))

(assert (=> bs!23532 (= (dynLambda!869 lambda!8384) (+!5 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23532 m!54147))

(assert (=> bs!23532 m!54147))

(assert (=> bs!23532 m!54151))

(assert (=> bs!23532 m!54151))

(assert (=> bs!23532 m!54147))

(assert (=> bs!23532 m!54153))

(assert (=> (and b!50526 (= lambda!8384 (x!19577 x$21!39)) d!43078) d!43100))

(declare-fun bs!23533 () Bool)

(declare-fun d!43102 () Bool)

(assert (= bs!23533 (and d!43102 b!50524)))

(assert (=> bs!23533 (= (dynLambda!869 lambda!8382) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23533 m!54147))

(assert (=> bs!23533 m!54147))

(assert (=> bs!23533 m!54149))

(assert (=> (and b!50524 (= lambda!8382 (x!19577 x$21!39)) d!43078) d!43102))

(declare-fun bs!23534 () Bool)

(declare-fun d!43104 () Bool)

(assert (= bs!23534 (and d!43104 b!50526)))

(assert (=> bs!23534 (= (dynLambda!869 lambda!8385) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23534 m!54155))

(assert (=> bs!23534 m!54157))

(assert (=> bs!23534 m!54155))

(assert (=> bs!23534 m!54157))

(assert (=> bs!23534 m!54159))

(assert (=> (and b!50526 (= lambda!8385 (x!19577 x$21!39)) d!43078) d!43104))

(declare-fun b_lambda!14347 () Bool)

(assert (= b_lambda!14329 (or (and b!50525 b_free!7043 (= (y!1566 x$21!39) (x!19577 prev!409))) (and b!50522 b_free!7049 (= (y!1566 prev!409) (x!19577 prev!409))) (and b!50526 (= lambda!8384 (x!19577 prev!409))) (and b!50521 b_free!7055 (= (y!1567 thiss!4888) (x!19577 prev!409))) (and b!50526 (= lambda!8385 (x!19577 prev!409))) (and b!50524 (= lambda!8382 (x!19577 prev!409))) (and b!50522 b_free!7047) (and b!50525 b_free!7041 (= (x!19577 x$21!39) (x!19577 prev!409))) (and b!50521 b_free!7053 (= (x!19578 thiss!4888) (x!19577 prev!409))) b_lambda!14347)))

(declare-fun bs!23535 () Bool)

(declare-fun d!43106 () Bool)

(assert (= bs!23535 (and d!43106 b!50526)))

(assert (=> bs!23535 (= (dynLambda!869 lambda!8384) (+!5 (*!4 (n!1387 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23535 m!54147))

(assert (=> bs!23535 m!54147))

(assert (=> bs!23535 m!54151))

(assert (=> bs!23535 m!54151))

(assert (=> bs!23535 m!54147))

(assert (=> bs!23535 m!54153))

(assert (=> (and b!50526 (= lambda!8384 (x!19577 prev!409)) d!43080) d!43106))

(declare-fun bs!23536 () Bool)

(declare-fun d!43108 () Bool)

(assert (= bs!23536 (and d!43108 b!50526)))

(assert (=> bs!23536 (= (dynLambda!869 lambda!8385) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23536 m!54155))

(assert (=> bs!23536 m!54157))

(assert (=> bs!23536 m!54155))

(assert (=> bs!23536 m!54157))

(assert (=> bs!23536 m!54159))

(assert (=> (and b!50526 (= lambda!8385 (x!19577 prev!409)) d!43080) d!43108))

(declare-fun bs!23537 () Bool)

(declare-fun d!43110 () Bool)

(assert (= bs!23537 (and d!43110 b!50524)))

(assert (=> bs!23537 (= (dynLambda!869 lambda!8382) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23537 m!54147))

(assert (=> bs!23537 m!54147))

(assert (=> bs!23537 m!54149))

(assert (=> (and b!50524 (= lambda!8382 (x!19577 prev!409)) d!43080) d!43110))

(push 1)

(assert (not b_next!37903))

(assert (not b_lambda!14339))

(assert (not bs!23532))

(assert (not b_lambda!14347))

(assert b_and!57145)

(assert (not bs!23529))

(assert (not b_lambda!14343))

(assert (not bs!23531))

(assert (not b!50546))

(assert b_and!57139)

(assert (not b_next!37885))

(assert (not b_lambda!14345))

(assert (not bs!23527))

(assert (not bs!23537))

(assert (not b_next!37911))

(assert (not b!50552))

(assert (not b!50554))

(assert (not b_next!37905))

(assert b_and!57149)

(assert (not b!50550))

(assert (not b_next!37883))

(assert (not b!50538))

(assert (not bs!23530))

(assert (not b_next!37907))

(assert (not bs!23528))

(assert b_and!57049)

(assert (not b_lambda!14337))

(assert (not bs!23536))

(assert (not b_lambda!14319))

(assert (not b_lambda!14323))

(assert (not b_lambda!14321))

(assert b_and!57147)

(assert (not b_next!37899))

(assert (not b!50544))

(assert (not b_next!37901))

(assert b_and!57077)

(assert (not b!50548))

(assert b_and!57141)

(assert (not b_lambda!14341))

(assert (not bs!23526))

(assert (not bs!23533))

(assert b_and!57075)

(assert (not bs!23535))

(assert b_and!57143)

(assert (not bs!23534))

(assert (not b_next!37909))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37903))

(assert b_and!57145)

(assert b_and!57139)

(assert (not b_next!37885))

(assert (not b_next!37911))

(assert (not b_next!37905))

(assert b_and!57149)

(assert (not b_next!37883))

(assert (not b_next!37907))

(assert b_and!57049)

(assert b_and!57147)

(assert (not b_next!37899))

(assert (not b_next!37901))

(assert b_and!57077)

(assert b_and!57141)

(assert b_and!57075)

(assert b_and!57143)

(assert (not b_next!37909))

(check-sat)

(pop 1)

