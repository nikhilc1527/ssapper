; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6302 () Bool)

(assert start!6302)

(declare-fun b!46874 () Bool)

(declare-fun b_free!5655 () Bool)

(declare-fun b_next!25311 () Bool)

(assert (=> b!46874 (= b_free!5655 (not b_next!25311))))

(declare-fun tp!12562 () Bool)

(declare-fun b_and!36687 () Bool)

(assert (=> b!46874 (= tp!12562 b_and!36687)))

(declare-fun b_free!5657 () Bool)

(declare-fun b_next!25313 () Bool)

(assert (=> b!46874 (= b_free!5657 (not b_next!25313))))

(declare-fun tp!12561 () Bool)

(declare-fun b_and!36689 () Bool)

(assert (=> b!46874 (= tp!12561 b_and!36689)))

(declare-fun b_free!5659 () Bool)

(declare-fun b_next!25315 () Bool)

(assert (=> b!46874 (= b_free!5659 (not b_next!25315))))

(declare-fun tp!12557 () Bool)

(declare-fun b_and!36691 () Bool)

(assert (=> b!46874 (= tp!12557 b_and!36691)))

(declare-fun b!46876 () Bool)

(declare-fun b_free!5661 () Bool)

(declare-fun b_next!25317 () Bool)

(assert (=> b!46876 (= b_free!5661 (not b_next!25317))))

(declare-fun tp!12558 () Bool)

(declare-fun b_and!36693 () Bool)

(assert (=> b!46876 (= tp!12558 b_and!36693)))

(declare-fun b_free!5663 () Bool)

(declare-fun b_next!25319 () Bool)

(assert (=> b!46876 (= b_free!5663 (not b_next!25319))))

(declare-fun tp!12554 () Bool)

(declare-fun b_and!36695 () Bool)

(assert (=> b!46876 (= tp!12554 b_and!36695)))

(declare-fun b_free!5665 () Bool)

(declare-fun b_next!25321 () Bool)

(assert (=> b!46876 (= b_free!5665 (not b_next!25321))))

(declare-fun tp!12560 () Bool)

(declare-fun b_and!36697 () Bool)

(assert (=> b!46876 (= tp!12560 b_and!36697)))

(declare-fun b!46870 () Bool)

(declare-fun b_free!5667 () Bool)

(declare-fun b_next!25323 () Bool)

(assert (=> b!46870 (= b_free!5667 (not b_next!25323))))

(declare-fun tp!12559 () Bool)

(declare-fun b_and!36699 () Bool)

(assert (=> b!46870 (= tp!12559 b_and!36699)))

(declare-fun b_free!5669 () Bool)

(declare-fun b_next!25325 () Bool)

(assert (=> b!46870 (= b_free!5669 (not b_next!25325))))

(declare-fun tp!12556 () Bool)

(declare-fun b_and!36701 () Bool)

(assert (=> b!46870 (= tp!12556 b_and!36701)))

(declare-fun b_free!5671 () Bool)

(declare-fun b_next!25327 () Bool)

(assert (=> b!46870 (= b_free!5671 (not b_next!25327))))

(declare-fun tp!12555 () Bool)

(declare-fun b_and!36703 () Bool)

(assert (=> b!46870 (= tp!12555 b_and!36703)))

(declare-fun b!46878 () Bool)

(assert (=> b!46878 true))

(assert (=> b!46878 true))

(assert (=> b!46878 true))

(declare-fun lambda!6815 () Int)

(declare-datatypes () ((Nat!203 (Zero!187) (Succ!184 (n!1339 Nat!203)))))

(declare-datatypes () ((Unit!629 (Unit!630))))

(declare-datatypes () ((RAEqEvidence!350 (RAEqEvidence!351 (x!17338 Int) (y!1514 Int) (evidence!627 Int)))))

(declare-fun x$56!25 () RAEqEvidence!350)

(declare-fun b_next!25329 () Bool)

(assert (=> b!46876 (= b_next!25317 (or (and b!46878 (= lambda!6815 (x!17338 x$56!25))) b_next!25329))))

(declare-fun b_next!25331 () Bool)

(declare-fun prev!431 () RAEqEvidence!350)

(assert (=> b!46870 (= b_next!25323 (or (and b!46878 (= lambda!6815 (x!17338 prev!431))) b_next!25331))))

(declare-fun b_next!25333 () Bool)

(assert (=> b!46876 (= b_next!25319 (or (and b!46878 (= lambda!6815 (y!1514 x$56!25))) b_next!25333))))

(declare-fun thiss!5056 () RAEqEvidence!350)

(declare-fun b_next!25335 () Bool)

(assert (=> b!46874 (= b_next!25311 (or (and b!46878 (= lambda!6815 (x!17338 thiss!5056))) b_next!25335))))

(declare-fun b_next!25337 () Bool)

(assert (=> b!46874 (= b_next!25313 (or (and b!46878 (= lambda!6815 (y!1514 thiss!5056))) b_next!25337))))

(declare-fun b_next!25339 () Bool)

(assert (=> b!46870 (= b_next!25325 (or (and b!46878 (= lambda!6815 (y!1514 prev!431))) b_next!25339))))

(assert (=> b!46878 true))

(declare-fun b_next!25341 () Bool)

(declare-fun lambda!6816 () Int)

(assert (=> b!46874 (= b_next!25315 (or (and b!46878 (= lambda!6816 (evidence!627 thiss!5056))) b_next!25341))))

(declare-fun b_next!25343 () Bool)

(assert (=> b!46876 (= b_next!25321 (or (and b!46878 (= lambda!6816 (evidence!627 x$56!25))) b_next!25343))))

(declare-fun b_next!25345 () Bool)

(assert (=> b!46870 (= b_next!25327 (or (and b!46878 (= lambda!6816 (evidence!627 prev!431))) b_next!25345))))

(declare-fun bs!18452 () Bool)

(declare-fun b!46872 () Bool)

(assert (= bs!18452 (and b!46872 b!46878)))

(declare-fun lambda!6817 () Int)

(assert (=> bs!18452 (not (= lambda!6817 lambda!6815))))

(assert (=> b!46872 true))

(assert (=> b!46872 true))

(assert (=> b!46872 true))

(declare-fun b_next!25347 () Bool)

(assert (=> b!46876 (= b_next!25329 (or (and b!46872 (= lambda!6817 (x!17338 x$56!25))) b_next!25347))))

(declare-fun b_next!25349 () Bool)

(assert (=> b!46870 (= b_next!25331 (or (and b!46872 (= lambda!6817 (x!17338 prev!431))) b_next!25349))))

(declare-fun b_next!25351 () Bool)

(assert (=> b!46876 (= b_next!25333 (or (and b!46872 (= lambda!6817 (y!1514 x$56!25))) b_next!25351))))

(declare-fun b_next!25353 () Bool)

(assert (=> b!46874 (= b_next!25335 (or (and b!46872 (= lambda!6817 (x!17338 thiss!5056))) b_next!25353))))

(declare-fun b_next!25355 () Bool)

(assert (=> b!46874 (= b_next!25337 (or (and b!46872 (= lambda!6817 (y!1514 thiss!5056))) b_next!25355))))

(declare-fun b_next!25357 () Bool)

(assert (=> b!46870 (= b_next!25339 (or (and b!46872 (= lambda!6817 (y!1514 prev!431))) b_next!25357))))

(declare-fun lambda!6818 () Int)

(assert (=> bs!18452 (not (= lambda!6818 lambda!6815))))

(assert (=> b!46872 (not (= lambda!6818 lambda!6817))))

(assert (=> b!46872 true))

(assert (=> b!46872 true))

(assert (=> b!46872 true))

(declare-fun b_next!25359 () Bool)

(assert (=> b!46876 (= b_next!25347 (or (and b!46872 (= lambda!6818 (x!17338 x$56!25))) b_next!25359))))

(declare-fun b_next!25361 () Bool)

(assert (=> b!46870 (= b_next!25349 (or (and b!46872 (= lambda!6818 (x!17338 prev!431))) b_next!25361))))

(declare-fun b_next!25363 () Bool)

(assert (=> b!46876 (= b_next!25351 (or (and b!46872 (= lambda!6818 (y!1514 x$56!25))) b_next!25363))))

(declare-fun b_next!25365 () Bool)

(assert (=> b!46874 (= b_next!25353 (or (and b!46872 (= lambda!6818 (x!17338 thiss!5056))) b_next!25365))))

(declare-fun b_next!25367 () Bool)

(assert (=> b!46874 (= b_next!25355 (or (and b!46872 (= lambda!6818 (y!1514 thiss!5056))) b_next!25367))))

(declare-fun b_next!25369 () Bool)

(assert (=> b!46870 (= b_next!25357 (or (and b!46872 (= lambda!6818 (y!1514 prev!431))) b_next!25369))))

(declare-fun lambda!6819 () Int)

(assert (=> bs!18452 (not (= lambda!6819 lambda!6816))))

(assert (=> b!46872 true))

(assert (=> b!46872 true))

(declare-fun b_next!25371 () Bool)

(assert (=> b!46874 (= b_next!25341 (or (and b!46872 (= lambda!6819 (evidence!627 thiss!5056))) b_next!25371))))

(declare-fun b_next!25373 () Bool)

(assert (=> b!46876 (= b_next!25343 (or (and b!46872 (= lambda!6819 (evidence!627 x$56!25))) b_next!25373))))

(declare-fun b_next!25375 () Bool)

(assert (=> b!46870 (= b_next!25345 (or (and b!46872 (= lambda!6819 (evidence!627 prev!431))) b_next!25375))))

(declare-fun e!24414 () Bool)

(assert (=> b!46870 (= e!24414 (and tp!12559 tp!12556 tp!12555))))

(declare-fun b!46871 () Bool)

(declare-fun res!22044 () Bool)

(declare-fun e!24411 () Bool)

(assert (=> b!46871 (=> (not res!22044) (not e!24411))))

(declare-fun keepEvidence!44 (Unit!629) Bool)

(declare-fun dynLambda!795 (Int) Unit!629)

(assert (=> b!46871 (= res!22044 (keepEvidence!44 (dynLambda!795 (evidence!627 prev!431))))))

(declare-fun res!22039 () Bool)

(assert (=> b!46872 (=> (not res!22039) (not e!24411))))

(assert (=> b!46872 (= res!22039 (= thiss!5056 (RAEqEvidence!351 lambda!6817 lambda!6818 lambda!6819)))))

(declare-fun b!46873 () Bool)

(declare-fun res!22040 () Bool)

(assert (=> b!46873 (=> (not res!22040) (not e!24411))))

(declare-fun n2!101 () Nat!203)

(declare-fun n3!28 () Nat!203)

(assert (=> b!46873 (= res!22040 (and (is-Succ!184 n2!101) (is-Succ!184 n3!28)))))

(declare-fun e!24413 () Bool)

(assert (=> b!46874 (= e!24413 (and tp!12562 tp!12561 tp!12557))))

(declare-fun b!46875 () Bool)

(declare-fun res!22041 () Bool)

(assert (=> b!46875 (=> (not res!22041) (not e!24411))))

(assert (=> b!46875 (= res!22041 (= prev!431 x$56!25))))

(declare-fun e!24412 () Bool)

(assert (=> b!46876 (= e!24412 (and tp!12558 tp!12554 tp!12560))))

(declare-fun res!22043 () Bool)

(assert (=> start!6302 (=> (not res!22043) (not e!24411))))

(declare-fun >=!2 (Nat!203 Nat!203) Bool)

(assert (=> start!6302 (= res!22043 (>=!2 n2!101 n3!28))))

(assert (=> start!6302 e!24411))

(declare-fun inv!824 (RAEqEvidence!350) Bool)

(assert (=> start!6302 (and (inv!824 thiss!5056) e!24413)))

(assert (=> start!6302 true))

(assert (=> start!6302 (and (inv!824 x$56!25) e!24412)))

(assert (=> start!6302 (and (inv!824 prev!431) e!24414)))

(declare-fun b!46877 () Bool)

(declare-fun dynLambda!796 (Int) Nat!203)

(assert (=> b!46877 (= e!24411 (not (= (dynLambda!796 (y!1514 prev!431)) (dynLambda!796 (x!17338 thiss!5056)))))))

(declare-fun res!22042 () Bool)

(assert (=> b!46878 (=> (not res!22042) (not e!24411))))

(assert (=> b!46878 (= res!22042 (= x$56!25 (RAEqEvidence!351 lambda!6815 lambda!6815 lambda!6816)))))

(assert (= (and start!6302 res!22043) b!46873))

(assert (= (and b!46873 res!22040) b!46878))

(assert (= (and b!46878 res!22042) b!46872))

(assert (= (and b!46872 res!22039) b!46875))

(assert (= (and b!46875 res!22041) b!46871))

(assert (= (and b!46871 res!22044) b!46877))

(assert (= start!6302 b!46874))

(assert (= start!6302 b!46876))

(assert (= start!6302 b!46870))

(declare-fun b_lambda!12439 () Bool)

(assert (=> (not b_lambda!12439) (not b!46871)))

(declare-fun tb!27563 () Bool)

(declare-fun t!28385 () Bool)

(assert (=> (and b!46874 (= (evidence!627 thiss!5056) (evidence!627 prev!431)) t!28385) tb!27563))

(declare-fun result!27839 () Bool)

(assert (=> tb!27563 (= result!27839 true)))

(assert (=> b!46871 t!28385))

(declare-fun b_and!36705 () Bool)

(assert (= b_and!36691 (and (=> t!28385 result!27839) b_and!36705)))

(declare-fun t!28387 () Bool)

(declare-fun tb!27565 () Bool)

(assert (=> (and b!46876 (= (evidence!627 x$56!25) (evidence!627 prev!431)) t!28387) tb!27565))

(declare-fun result!27841 () Bool)

(assert (=> tb!27565 (= result!27841 true)))

(assert (=> b!46871 t!28387))

(declare-fun b_and!36707 () Bool)

(assert (= b_and!36697 (and (=> t!28387 result!27841) b_and!36707)))

(declare-fun t!28389 () Bool)

(declare-fun tb!27567 () Bool)

(assert (=> (and b!46870 (= (evidence!627 prev!431) (evidence!627 prev!431)) t!28389) tb!27567))

(declare-fun result!27843 () Bool)

(assert (=> tb!27567 (= result!27843 true)))

(assert (=> b!46871 t!28389))

(declare-fun b_and!36709 () Bool)

(assert (= b_and!36703 (and (=> t!28389 result!27843) b_and!36709)))

(declare-fun b_lambda!12441 () Bool)

(assert (=> (not b_lambda!12441) (not b!46877)))

(declare-fun tb!27569 () Bool)

(declare-fun t!28391 () Bool)

(assert (=> (and b!46876 (= (y!1514 x$56!25) (y!1514 prev!431)) t!28391) tb!27569))

(declare-fun result!27845 () Bool)

(assert (=> tb!27569 (= result!27845 true)))

(assert (=> b!46877 t!28391))

(declare-fun b_and!36711 () Bool)

(assert (= b_and!36695 (and (=> t!28391 result!27845) b_and!36711)))

(declare-fun tb!27571 () Bool)

(declare-fun t!28393 () Bool)

(assert (=> (and b!46876 (= (x!17338 x$56!25) (y!1514 prev!431)) t!28393) tb!27571))

(declare-fun result!27847 () Bool)

(assert (=> tb!27571 (= result!27847 true)))

(assert (=> b!46877 t!28393))

(declare-fun b_and!36713 () Bool)

(assert (= b_and!36693 (and (=> t!28393 result!27847) b_and!36713)))

(declare-fun tb!27573 () Bool)

(declare-fun t!28395 () Bool)

(assert (=> (and b!46874 (= (y!1514 thiss!5056) (y!1514 prev!431)) t!28395) tb!27573))

(declare-fun result!27849 () Bool)

(assert (=> tb!27573 (= result!27849 true)))

(assert (=> b!46877 t!28395))

(declare-fun b_and!36715 () Bool)

(assert (= b_and!36689 (and (=> t!28395 result!27849) b_and!36715)))

(declare-fun tb!27575 () Bool)

(declare-fun t!28397 () Bool)

(assert (=> (and b!46874 (= (x!17338 thiss!5056) (y!1514 prev!431)) t!28397) tb!27575))

(declare-fun result!27851 () Bool)

(assert (=> tb!27575 (= result!27851 true)))

(assert (=> b!46877 t!28397))

(declare-fun b_and!36717 () Bool)

(assert (= b_and!36687 (and (=> t!28397 result!27851) b_and!36717)))

(declare-fun t!28399 () Bool)

(declare-fun tb!27577 () Bool)

(assert (=> (and b!46870 (= (x!17338 prev!431) (y!1514 prev!431)) t!28399) tb!27577))

(declare-fun result!27853 () Bool)

(assert (=> tb!27577 (= result!27853 true)))

(assert (=> b!46877 t!28399))

(declare-fun b_and!36719 () Bool)

(assert (= b_and!36699 (and (=> t!28399 result!27853) b_and!36719)))

(declare-fun t!28401 () Bool)

(declare-fun tb!27579 () Bool)

(assert (=> (and b!46870 (= (y!1514 prev!431) (y!1514 prev!431)) t!28401) tb!27579))

(declare-fun result!27855 () Bool)

(assert (=> tb!27579 (= result!27855 true)))

(assert (=> b!46877 t!28401))

(declare-fun b_and!36721 () Bool)

(assert (= b_and!36701 (and (=> t!28401 result!27855) b_and!36721)))

(declare-fun b_lambda!12443 () Bool)

(assert (=> (not b_lambda!12443) (not b!46877)))

(declare-fun t!28403 () Bool)

(declare-fun tb!27581 () Bool)

(assert (=> (and b!46876 (= (x!17338 x$56!25) (x!17338 thiss!5056)) t!28403) tb!27581))

(declare-fun result!27857 () Bool)

(assert (=> tb!27581 (= result!27857 true)))

(assert (=> b!46877 t!28403))

(declare-fun b_and!36723 () Bool)

(assert (= b_and!36713 (and (=> t!28403 result!27857) b_and!36723)))

(declare-fun t!28405 () Bool)

(declare-fun tb!27583 () Bool)

(assert (=> (and b!46874 (= (x!17338 thiss!5056) (x!17338 thiss!5056)) t!28405) tb!27583))

(declare-fun result!27859 () Bool)

(assert (=> tb!27583 (= result!27859 true)))

(assert (=> b!46877 t!28405))

(declare-fun b_and!36725 () Bool)

(assert (= b_and!36717 (and (=> t!28405 result!27859) b_and!36725)))

(declare-fun t!28407 () Bool)

(declare-fun tb!27585 () Bool)

(assert (=> (and b!46876 (= (y!1514 x$56!25) (x!17338 thiss!5056)) t!28407) tb!27585))

(declare-fun result!27861 () Bool)

(assert (=> tb!27585 (= result!27861 true)))

(assert (=> b!46877 t!28407))

(declare-fun b_and!36727 () Bool)

(assert (= b_and!36711 (and (=> t!28407 result!27861) b_and!36727)))

(declare-fun t!28409 () Bool)

(declare-fun tb!27587 () Bool)

(assert (=> (and b!46870 (= (y!1514 prev!431) (x!17338 thiss!5056)) t!28409) tb!27587))

(declare-fun result!27863 () Bool)

(assert (=> tb!27587 (= result!27863 true)))

(assert (=> b!46877 t!28409))

(declare-fun b_and!36729 () Bool)

(assert (= b_and!36721 (and (=> t!28409 result!27863) b_and!36729)))

(declare-fun t!28411 () Bool)

(declare-fun tb!27589 () Bool)

(assert (=> (and b!46870 (= (x!17338 prev!431) (x!17338 thiss!5056)) t!28411) tb!27589))

(declare-fun result!27865 () Bool)

(assert (=> tb!27589 (= result!27865 true)))

(assert (=> b!46877 t!28411))

(declare-fun b_and!36731 () Bool)

(assert (= b_and!36719 (and (=> t!28411 result!27865) b_and!36731)))

(declare-fun t!28413 () Bool)

(declare-fun tb!27591 () Bool)

(assert (=> (and b!46874 (= (y!1514 thiss!5056) (x!17338 thiss!5056)) t!28413) tb!27591))

(declare-fun result!27867 () Bool)

(assert (=> tb!27591 (= result!27867 true)))

(assert (=> b!46877 t!28413))

(declare-fun b_and!36733 () Bool)

(assert (= b_and!36715 (and (=> t!28413 result!27867) b_and!36733)))

(declare-fun m!49757 () Bool)

(assert (=> b!46871 m!49757))

(assert (=> b!46871 m!49757))

(declare-fun m!49759 () Bool)

(assert (=> b!46871 m!49759))

(declare-fun m!49761 () Bool)

(assert (=> start!6302 m!49761))

(declare-fun m!49763 () Bool)

(assert (=> start!6302 m!49763))

(declare-fun m!49765 () Bool)

(assert (=> start!6302 m!49765))

(declare-fun m!49767 () Bool)

(assert (=> start!6302 m!49767))

(declare-fun m!49769 () Bool)

(assert (=> b!46877 m!49769))

(declare-fun m!49771 () Bool)

(assert (=> b!46877 m!49771))

(push 1)

(assert b_and!36733)

(assert (not start!6302))

(assert b_and!36729)

(assert (not b_next!25359))

(assert (not b_next!25367))

(assert (not b_next!25375))

(assert b_and!36723)

(assert b_and!36705)

(assert b_and!36707)

(assert (not b_next!25365))

(assert (not b_lambda!12439))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert b_and!36709)

(assert b_and!36727)

(assert (not b_lambda!12441))

(assert (not b_next!25371))

(assert (not b_next!25363))

(assert (not b_lambda!12443))

(assert (not b!46871))

(assert b_and!36725)

(assert (not b_next!25361))

(assert b_and!36731)

(check-sat)

(pop 1)

(push 1)

(assert b_and!36733)

(assert b_and!36729)

(assert (not b_next!25359))

(assert (not b_next!25367))

(assert (not b_next!25375))

(assert b_and!36723)

(assert b_and!36705)

(assert b_and!36707)

(assert (not b_next!25365))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert b_and!36709)

(assert b_and!36727)

(assert (not b_next!25371))

(assert (not b_next!25363))

(assert b_and!36725)

(assert (not b_next!25361))

(assert b_and!36731)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!12445 () Bool)

(assert (= b_lambda!12443 (or (and b!46870 b_free!5669 (= (y!1514 prev!431) (x!17338 thiss!5056))) (and b!46876 b_free!5663 (= (y!1514 x$56!25) (x!17338 thiss!5056))) (and b!46874 b_free!5657 (= (y!1514 thiss!5056) (x!17338 thiss!5056))) (and b!46870 b_free!5667 (= (x!17338 prev!431) (x!17338 thiss!5056))) (and b!46872 (= lambda!6818 (x!17338 thiss!5056))) (and b!46878 (= lambda!6815 (x!17338 thiss!5056))) (and b!46876 b_free!5661 (= (x!17338 x$56!25) (x!17338 thiss!5056))) (and b!46874 b_free!5655) (and b!46872 (= lambda!6817 (x!17338 thiss!5056))) b_lambda!12445)))

(declare-fun bs!18453 () Bool)

(declare-fun d!32922 () Bool)

(assert (= bs!18453 (and d!32922 b!46872)))

(declare-fun n1!90 () Nat!203)

(declare-fun -!4 (Nat!203 Nat!203) Nat!203)

(declare-fun +!5 (Nat!203 Nat!203) Nat!203)

(assert (=> bs!18453 (= (dynLambda!796 lambda!6817) (-!4 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) n3!28))))

(declare-fun m!49773 () Bool)

(assert (=> bs!18453 m!49773))

(assert (=> bs!18453 m!49773))

(declare-fun m!49775 () Bool)

(assert (=> bs!18453 m!49775))

(assert (=> bs!18453 m!49775))

(declare-fun m!49777 () Bool)

(assert (=> bs!18453 m!49777))

(assert (=> (and b!46872 (= lambda!6817 (x!17338 thiss!5056)) b!46877) d!32922))

(declare-fun bs!18454 () Bool)

(declare-fun d!32924 () Bool)

(assert (= bs!18454 (and d!32924 b!46872)))

(assert (=> bs!18454 (= (dynLambda!796 lambda!6818) (+!5 n1!90 (-!4 n2!101 n3!28)))))

(declare-fun m!49779 () Bool)

(assert (=> bs!18454 m!49779))

(assert (=> bs!18454 m!49779))

(declare-fun m!49781 () Bool)

(assert (=> bs!18454 m!49781))

(assert (=> (and b!46872 (= lambda!6818 (x!17338 thiss!5056)) b!46877) d!32924))

(declare-fun bs!18455 () Bool)

(declare-fun d!32926 () Bool)

(assert (= bs!18455 (and d!32926 b!46878)))

(assert (=> bs!18455 (= (dynLambda!796 lambda!6815) (-!4 (+!5 n1!90 n2!101) n3!28))))

(declare-fun m!49783 () Bool)

(assert (=> bs!18455 m!49783))

(assert (=> bs!18455 m!49783))

(declare-fun m!49785 () Bool)

(assert (=> bs!18455 m!49785))

(assert (=> (and b!46878 (= lambda!6815 (x!17338 thiss!5056)) b!46877) d!32926))

(declare-fun b_lambda!12447 () Bool)

(assert (= b_lambda!12439 (or (and b!46876 b_free!5665 (= (evidence!627 x$56!25) (evidence!627 prev!431))) (and b!46874 b_free!5659 (= (evidence!627 thiss!5056) (evidence!627 prev!431))) (and b!46872 (= lambda!6819 (evidence!627 prev!431))) (and b!46870 b_free!5671) (and b!46878 (= lambda!6816 (evidence!627 prev!431))) b_lambda!12447)))

(declare-fun bs!18456 () Bool)

(declare-fun d!32928 () Bool)

(assert (= bs!18456 (and d!32928 b!46878)))

(declare-fun commutative_plus!0 (Nat!203 Nat!203) Unit!629)

(assert (=> bs!18456 (= (dynLambda!795 lambda!6816) (commutative_plus!0 (Succ!184 Zero!187) (n!1339 n2!101)))))

(declare-fun m!49787 () Bool)

(assert (=> bs!18456 m!49787))

(assert (=> (and b!46878 (= lambda!6816 (evidence!627 prev!431)) b!46871) d!32928))

(declare-fun bs!18457 () Bool)

(declare-fun d!32930 () Bool)

(assert (= bs!18457 (and d!32930 b!46872)))

(declare-fun associative_plus!0 (Nat!203 Nat!203 Nat!203) Unit!629)

(assert (=> bs!18457 (= (dynLambda!795 lambda!6819) (associative_plus!0 n1!90 (n!1339 n2!101) (Succ!184 Zero!187)))))

(declare-fun m!49789 () Bool)

(assert (=> bs!18457 m!49789))

(assert (=> (and b!46872 (= lambda!6819 (evidence!627 prev!431)) b!46871) d!32930))

(declare-fun b_lambda!12449 () Bool)

(assert (= b_lambda!12441 (or (and b!46872 (= lambda!6818 (y!1514 prev!431))) (and b!46874 b_free!5655 (= (x!17338 thiss!5056) (y!1514 prev!431))) (and b!46870 b_free!5667 (= (x!17338 prev!431) (y!1514 prev!431))) (and b!46870 b_free!5669) (and b!46872 (= lambda!6817 (y!1514 prev!431))) (and b!46876 b_free!5661 (= (x!17338 x$56!25) (y!1514 prev!431))) (and b!46878 (= lambda!6815 (y!1514 prev!431))) (and b!46876 b_free!5663 (= (y!1514 x$56!25) (y!1514 prev!431))) (and b!46874 b_free!5657 (= (y!1514 thiss!5056) (y!1514 prev!431))) b_lambda!12449)))

(declare-fun bs!18458 () Bool)

(declare-fun d!32932 () Bool)

(assert (= bs!18458 (and d!32932 b!46878)))

(assert (=> bs!18458 (= (dynLambda!796 lambda!6815) (-!4 (+!5 n1!90 n2!101) n3!28))))

(assert (=> bs!18458 m!49783))

(assert (=> bs!18458 m!49783))

(assert (=> bs!18458 m!49785))

(assert (=> (and b!46878 (= lambda!6815 (y!1514 prev!431)) b!46877) d!32932))

(declare-fun bs!18459 () Bool)

(declare-fun d!32934 () Bool)

(assert (= bs!18459 (and d!32934 b!46872)))

(assert (=> bs!18459 (= (dynLambda!796 lambda!6818) (+!5 n1!90 (-!4 n2!101 n3!28)))))

(assert (=> bs!18459 m!49779))

(assert (=> bs!18459 m!49779))

(assert (=> bs!18459 m!49781))

(assert (=> (and b!46872 (= lambda!6818 (y!1514 prev!431)) b!46877) d!32934))

(declare-fun bs!18460 () Bool)

(declare-fun d!32936 () Bool)

(assert (= bs!18460 (and d!32936 b!46872)))

(assert (=> bs!18460 (= (dynLambda!796 lambda!6817) (-!4 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) n3!28))))

(assert (=> bs!18460 m!49773))

(assert (=> bs!18460 m!49773))

(assert (=> bs!18460 m!49775))

(assert (=> bs!18460 m!49775))

(assert (=> bs!18460 m!49777))

(assert (=> (and b!46872 (= lambda!6817 (y!1514 prev!431)) b!46877) d!32936))

(push 1)

(assert b_and!36733)

(assert (not bs!18454))

(assert (not start!6302))

(assert b_and!36729)

(assert (not bs!18458))

(assert (not bs!18459))

(assert (not b_next!25359))

(assert (not b_next!25367))

(assert (not b_next!25375))

(assert (not bs!18453))

(assert b_and!36723)

(assert b_and!36705)

(assert b_and!36707)

(assert (not bs!18455))

(assert (not b_lambda!12447))

(assert (not b_next!25365))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert (not bs!18460))

(assert b_and!36709)

(assert b_and!36727)

(assert (not b_lambda!12449))

(assert (not b_next!25371))

(assert (not b_next!25363))

(assert (not b!46871))

(assert (not bs!18456))

(assert (not b_lambda!12445))

(assert b_and!36725)

(assert (not bs!18457))

(assert (not b_next!25361))

(assert b_and!36731)

(check-sat)

(pop 1)

(push 1)

(assert b_and!36733)

(assert b_and!36729)

(assert (not b_next!25359))

(assert (not b_next!25367))

(assert (not b_next!25375))

(assert b_and!36723)

(assert b_and!36705)

(assert b_and!36707)

(assert (not b_next!25365))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert b_and!36709)

(assert b_and!36727)

(assert (not b_next!25371))

(assert (not b_next!25363))

(assert b_and!36725)

(assert (not b_next!25361))

(assert b_and!36731)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32938 () Bool)

(assert (=> d!32938 (= (+!5 (Succ!184 Zero!187) (n!1339 n2!101)) (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))

(assert (=> d!32938 true))

(declare-fun x$13!121 () Unit!629)

(assert (=> d!32938 (= (commutative_plus!0 (Succ!184 Zero!187) (n!1339 n2!101)) x$13!121)))

(declare-fun bs!18461 () Bool)

(assert (= bs!18461 d!32938))

(declare-fun m!49791 () Bool)

(assert (=> bs!18461 m!49791))

(assert (=> bs!18461 m!49773))

(assert (=> bs!18456 d!32938))

(declare-fun d!32940 () Bool)

(declare-fun res!22047 () Bool)

(declare-fun e!24417 () Bool)

(assert (=> d!32940 (=> res!22047 e!24417)))

(declare-fun >!2 (Nat!203 Nat!203) Bool)

(assert (=> d!32940 (= res!22047 (>!2 n2!101 n3!28))))

(assert (=> d!32940 (= (>=!2 n2!101 n3!28) e!24417)))

(declare-fun b!46885 () Bool)

(assert (=> b!46885 (= e!24417 (= n2!101 n3!28))))

(assert (= (and d!32940 (not res!22047)) b!46885))

(declare-fun m!49793 () Bool)

(assert (=> d!32940 m!49793))

(assert (=> start!6302 d!32940))

(declare-fun d!32942 () Bool)

(assert (=> d!32942 (= (inv!824 thiss!5056) (= (dynLambda!796 (x!17338 thiss!5056)) (dynLambda!796 (y!1514 thiss!5056))))))

(declare-fun b_lambda!12451 () Bool)

(assert (=> (not b_lambda!12451) (not d!32942)))

(assert (=> d!32942 t!28405))

(declare-fun b_and!36735 () Bool)

(assert (= b_and!36725 (and (=> t!28405 result!27859) b_and!36735)))

(assert (=> d!32942 t!28413))

(declare-fun b_and!36737 () Bool)

(assert (= b_and!36733 (and (=> t!28413 result!27867) b_and!36737)))

(assert (=> d!32942 t!28411))

(declare-fun b_and!36739 () Bool)

(assert (= b_and!36731 (and (=> t!28411 result!27865) b_and!36739)))

(assert (=> d!32942 t!28407))

(declare-fun b_and!36741 () Bool)

(assert (= b_and!36727 (and (=> t!28407 result!27861) b_and!36741)))

(assert (=> d!32942 t!28403))

(declare-fun b_and!36743 () Bool)

(assert (= b_and!36723 (and (=> t!28403 result!27857) b_and!36743)))

(assert (=> d!32942 t!28409))

(declare-fun b_and!36745 () Bool)

(assert (= b_and!36729 (and (=> t!28409 result!27863) b_and!36745)))

(declare-fun b_lambda!12453 () Bool)

(assert (=> (not b_lambda!12453) (not d!32942)))

(declare-fun t!28415 () Bool)

(declare-fun tb!27593 () Bool)

(assert (=> (and b!46876 (= (x!17338 x$56!25) (y!1514 thiss!5056)) t!28415) tb!27593))

(declare-fun result!27869 () Bool)

(assert (=> tb!27593 (= result!27869 true)))

(assert (=> d!32942 t!28415))

(declare-fun b_and!36747 () Bool)

(assert (= b_and!36743 (and (=> t!28415 result!27869) b_and!36747)))

(declare-fun t!28417 () Bool)

(declare-fun tb!27595 () Bool)

(assert (=> (and b!46874 (= (x!17338 thiss!5056) (y!1514 thiss!5056)) t!28417) tb!27595))

(declare-fun result!27871 () Bool)

(assert (=> tb!27595 (= result!27871 true)))

(assert (=> d!32942 t!28417))

(declare-fun b_and!36749 () Bool)

(assert (= b_and!36735 (and (=> t!28417 result!27871) b_and!36749)))

(declare-fun t!28419 () Bool)

(declare-fun tb!27597 () Bool)

(assert (=> (and b!46876 (= (y!1514 x$56!25) (y!1514 thiss!5056)) t!28419) tb!27597))

(declare-fun result!27873 () Bool)

(assert (=> tb!27597 (= result!27873 true)))

(assert (=> d!32942 t!28419))

(declare-fun b_and!36751 () Bool)

(assert (= b_and!36741 (and (=> t!28419 result!27873) b_and!36751)))

(declare-fun t!28421 () Bool)

(declare-fun tb!27599 () Bool)

(assert (=> (and b!46874 (= (y!1514 thiss!5056) (y!1514 thiss!5056)) t!28421) tb!27599))

(declare-fun result!27875 () Bool)

(assert (=> tb!27599 (= result!27875 true)))

(assert (=> d!32942 t!28421))

(declare-fun b_and!36753 () Bool)

(assert (= b_and!36737 (and (=> t!28421 result!27875) b_and!36753)))

(declare-fun t!28423 () Bool)

(declare-fun tb!27601 () Bool)

(assert (=> (and b!46870 (= (y!1514 prev!431) (y!1514 thiss!5056)) t!28423) tb!27601))

(declare-fun result!27877 () Bool)

(assert (=> tb!27601 (= result!27877 true)))

(assert (=> d!32942 t!28423))

(declare-fun b_and!36755 () Bool)

(assert (= b_and!36745 (and (=> t!28423 result!27877) b_and!36755)))

(declare-fun tb!27603 () Bool)

(declare-fun t!28425 () Bool)

(assert (=> (and b!46870 (= (x!17338 prev!431) (y!1514 thiss!5056)) t!28425) tb!27603))

(declare-fun result!27879 () Bool)

(assert (=> tb!27603 (= result!27879 true)))

(assert (=> d!32942 t!28425))

(declare-fun b_and!36757 () Bool)

(assert (= b_and!36739 (and (=> t!28425 result!27879) b_and!36757)))

(assert (=> d!32942 m!49771))

(declare-fun m!49795 () Bool)

(assert (=> d!32942 m!49795))

(assert (=> start!6302 d!32942))

(declare-fun d!32944 () Bool)

(assert (=> d!32944 (= (inv!824 x$56!25) (= (dynLambda!796 (x!17338 x$56!25)) (dynLambda!796 (y!1514 x$56!25))))))

(declare-fun b_lambda!12455 () Bool)

(assert (=> (not b_lambda!12455) (not d!32944)))

(declare-fun t!28427 () Bool)

(declare-fun tb!27605 () Bool)

(assert (=> (and b!46874 (= (x!17338 thiss!5056) (x!17338 x$56!25)) t!28427) tb!27605))

(declare-fun result!27881 () Bool)

(assert (=> tb!27605 (= result!27881 true)))

(assert (=> d!32944 t!28427))

(declare-fun b_and!36759 () Bool)

(assert (= b_and!36749 (and (=> t!28427 result!27881) b_and!36759)))

(declare-fun t!28429 () Bool)

(declare-fun tb!27607 () Bool)

(assert (=> (and b!46876 (= (x!17338 x$56!25) (x!17338 x$56!25)) t!28429) tb!27607))

(declare-fun result!27883 () Bool)

(assert (=> tb!27607 (= result!27883 true)))

(assert (=> d!32944 t!28429))

(declare-fun b_and!36761 () Bool)

(assert (= b_and!36747 (and (=> t!28429 result!27883) b_and!36761)))

(declare-fun tb!27609 () Bool)

(declare-fun t!28431 () Bool)

(assert (=> (and b!46870 (= (y!1514 prev!431) (x!17338 x$56!25)) t!28431) tb!27609))

(declare-fun result!27885 () Bool)

(assert (=> tb!27609 (= result!27885 true)))

(assert (=> d!32944 t!28431))

(declare-fun b_and!36763 () Bool)

(assert (= b_and!36755 (and (=> t!28431 result!27885) b_and!36763)))

(declare-fun tb!27611 () Bool)

(declare-fun t!28433 () Bool)

(assert (=> (and b!46874 (= (y!1514 thiss!5056) (x!17338 x$56!25)) t!28433) tb!27611))

(declare-fun result!27887 () Bool)

(assert (=> tb!27611 (= result!27887 true)))

(assert (=> d!32944 t!28433))

(declare-fun b_and!36765 () Bool)

(assert (= b_and!36753 (and (=> t!28433 result!27887) b_and!36765)))

(declare-fun tb!27613 () Bool)

(declare-fun t!28435 () Bool)

(assert (=> (and b!46870 (= (x!17338 prev!431) (x!17338 x$56!25)) t!28435) tb!27613))

(declare-fun result!27889 () Bool)

(assert (=> tb!27613 (= result!27889 true)))

(assert (=> d!32944 t!28435))

(declare-fun b_and!36767 () Bool)

(assert (= b_and!36757 (and (=> t!28435 result!27889) b_and!36767)))

(declare-fun t!28437 () Bool)

(declare-fun tb!27615 () Bool)

(assert (=> (and b!46876 (= (y!1514 x$56!25) (x!17338 x$56!25)) t!28437) tb!27615))

(declare-fun result!27891 () Bool)

(assert (=> tb!27615 (= result!27891 true)))

(assert (=> d!32944 t!28437))

(declare-fun b_and!36769 () Bool)

(assert (= b_and!36751 (and (=> t!28437 result!27891) b_and!36769)))

(declare-fun b_lambda!12457 () Bool)

(assert (=> (not b_lambda!12457) (not d!32944)))

(declare-fun tb!27617 () Bool)

(declare-fun t!28439 () Bool)

(assert (=> (and b!46874 (= (x!17338 thiss!5056) (y!1514 x$56!25)) t!28439) tb!27617))

(declare-fun result!27893 () Bool)

(assert (=> tb!27617 (= result!27893 true)))

(assert (=> d!32944 t!28439))

(declare-fun b_and!36771 () Bool)

(assert (= b_and!36759 (and (=> t!28439 result!27893) b_and!36771)))

(declare-fun t!28441 () Bool)

(declare-fun tb!27619 () Bool)

(assert (=> (and b!46876 (= (y!1514 x$56!25) (y!1514 x$56!25)) t!28441) tb!27619))

(declare-fun result!27895 () Bool)

(assert (=> tb!27619 (= result!27895 true)))

(assert (=> d!32944 t!28441))

(declare-fun b_and!36773 () Bool)

(assert (= b_and!36769 (and (=> t!28441 result!27895) b_and!36773)))

(declare-fun tb!27621 () Bool)

(declare-fun t!28443 () Bool)

(assert (=> (and b!46870 (= (x!17338 prev!431) (y!1514 x$56!25)) t!28443) tb!27621))

(declare-fun result!27897 () Bool)

(assert (=> tb!27621 (= result!27897 true)))

(assert (=> d!32944 t!28443))

(declare-fun b_and!36775 () Bool)

(assert (= b_and!36767 (and (=> t!28443 result!27897) b_and!36775)))

(declare-fun t!28445 () Bool)

(declare-fun tb!27623 () Bool)

(assert (=> (and b!46876 (= (x!17338 x$56!25) (y!1514 x$56!25)) t!28445) tb!27623))

(declare-fun result!27899 () Bool)

(assert (=> tb!27623 (= result!27899 true)))

(assert (=> d!32944 t!28445))

(declare-fun b_and!36777 () Bool)

(assert (= b_and!36761 (and (=> t!28445 result!27899) b_and!36777)))

(declare-fun t!28447 () Bool)

(declare-fun tb!27625 () Bool)

(assert (=> (and b!46874 (= (y!1514 thiss!5056) (y!1514 x$56!25)) t!28447) tb!27625))

(declare-fun result!27901 () Bool)

(assert (=> tb!27625 (= result!27901 true)))

(assert (=> d!32944 t!28447))

(declare-fun b_and!36779 () Bool)

(assert (= b_and!36765 (and (=> t!28447 result!27901) b_and!36779)))

(declare-fun t!28449 () Bool)

(declare-fun tb!27627 () Bool)

(assert (=> (and b!46870 (= (y!1514 prev!431) (y!1514 x$56!25)) t!28449) tb!27627))

(declare-fun result!27903 () Bool)

(assert (=> tb!27627 (= result!27903 true)))

(assert (=> d!32944 t!28449))

(declare-fun b_and!36781 () Bool)

(assert (= b_and!36763 (and (=> t!28449 result!27903) b_and!36781)))

(declare-fun m!49797 () Bool)

(assert (=> d!32944 m!49797))

(declare-fun m!49799 () Bool)

(assert (=> d!32944 m!49799))

(assert (=> start!6302 d!32944))

(declare-fun d!32946 () Bool)

(assert (=> d!32946 (= (inv!824 prev!431) (= (dynLambda!796 (x!17338 prev!431)) (dynLambda!796 (y!1514 prev!431))))))

(declare-fun b_lambda!12459 () Bool)

(assert (=> (not b_lambda!12459) (not d!32946)))

(declare-fun tb!27629 () Bool)

(declare-fun t!28451 () Bool)

(assert (=> (and b!46874 (= (y!1514 thiss!5056) (x!17338 prev!431)) t!28451) tb!27629))

(declare-fun result!27905 () Bool)

(assert (=> tb!27629 (= result!27905 true)))

(assert (=> d!32946 t!28451))

(declare-fun b_and!36783 () Bool)

(assert (= b_and!36779 (and (=> t!28451 result!27905) b_and!36783)))

(declare-fun t!28453 () Bool)

(declare-fun tb!27631 () Bool)

(assert (=> (and b!46870 (= (x!17338 prev!431) (x!17338 prev!431)) t!28453) tb!27631))

(declare-fun result!27907 () Bool)

(assert (=> tb!27631 (= result!27907 true)))

(assert (=> d!32946 t!28453))

(declare-fun b_and!36785 () Bool)

(assert (= b_and!36775 (and (=> t!28453 result!27907) b_and!36785)))

(declare-fun t!28455 () Bool)

(declare-fun tb!27633 () Bool)

(assert (=> (and b!46874 (= (x!17338 thiss!5056) (x!17338 prev!431)) t!28455) tb!27633))

(declare-fun result!27909 () Bool)

(assert (=> tb!27633 (= result!27909 true)))

(assert (=> d!32946 t!28455))

(declare-fun b_and!36787 () Bool)

(assert (= b_and!36771 (and (=> t!28455 result!27909) b_and!36787)))

(declare-fun t!28457 () Bool)

(declare-fun tb!27635 () Bool)

(assert (=> (and b!46870 (= (y!1514 prev!431) (x!17338 prev!431)) t!28457) tb!27635))

(declare-fun result!27911 () Bool)

(assert (=> tb!27635 (= result!27911 true)))

(assert (=> d!32946 t!28457))

(declare-fun b_and!36789 () Bool)

(assert (= b_and!36781 (and (=> t!28457 result!27911) b_and!36789)))

(declare-fun t!28459 () Bool)

(declare-fun tb!27637 () Bool)

(assert (=> (and b!46876 (= (y!1514 x$56!25) (x!17338 prev!431)) t!28459) tb!27637))

(declare-fun result!27913 () Bool)

(assert (=> tb!27637 (= result!27913 true)))

(assert (=> d!32946 t!28459))

(declare-fun b_and!36791 () Bool)

(assert (= b_and!36773 (and (=> t!28459 result!27913) b_and!36791)))

(declare-fun t!28461 () Bool)

(declare-fun tb!27639 () Bool)

(assert (=> (and b!46876 (= (x!17338 x$56!25) (x!17338 prev!431)) t!28461) tb!27639))

(declare-fun result!27915 () Bool)

(assert (=> tb!27639 (= result!27915 true)))

(assert (=> d!32946 t!28461))

(declare-fun b_and!36793 () Bool)

(assert (= b_and!36777 (and (=> t!28461 result!27915) b_and!36793)))

(declare-fun b_lambda!12461 () Bool)

(assert (=> (not b_lambda!12461) (not d!32946)))

(assert (=> d!32946 t!28393))

(declare-fun b_and!36795 () Bool)

(assert (= b_and!36793 (and (=> t!28393 result!27847) b_and!36795)))

(assert (=> d!32946 t!28401))

(declare-fun b_and!36797 () Bool)

(assert (= b_and!36789 (and (=> t!28401 result!27855) b_and!36797)))

(assert (=> d!32946 t!28399))

(declare-fun b_and!36799 () Bool)

(assert (= b_and!36785 (and (=> t!28399 result!27853) b_and!36799)))

(assert (=> d!32946 t!28397))

(declare-fun b_and!36801 () Bool)

(assert (= b_and!36787 (and (=> t!28397 result!27851) b_and!36801)))

(assert (=> d!32946 t!28395))

(declare-fun b_and!36803 () Bool)

(assert (= b_and!36783 (and (=> t!28395 result!27849) b_and!36803)))

(assert (=> d!32946 t!28391))

(declare-fun b_and!36805 () Bool)

(assert (= b_and!36791 (and (=> t!28391 result!27845) b_and!36805)))

(declare-fun m!49801 () Bool)

(assert (=> d!32946 m!49801))

(assert (=> d!32946 m!49769))

(assert (=> start!6302 d!32946))

(declare-fun d!32948 () Bool)

(declare-fun c!9850 () Bool)

(assert (=> d!32948 (= c!9850 (is-Zero!187 n1!90))))

(declare-fun e!24420 () Nat!203)

(assert (=> d!32948 (= (+!5 n1!90 (-!4 n2!101 n3!28)) e!24420)))

(declare-fun b!46890 () Bool)

(assert (=> b!46890 (= e!24420 (-!4 n2!101 n3!28))))

(declare-fun b!46891 () Bool)

(assert (=> b!46891 (= e!24420 (Succ!184 (+!5 (n!1339 n1!90) (-!4 n2!101 n3!28))))))

(assert (= (and d!32948 c!9850) b!46890))

(assert (= (and d!32948 (not c!9850)) b!46891))

(assert (=> b!46891 m!49779))

(declare-fun m!49803 () Bool)

(assert (=> b!46891 m!49803))

(assert (=> bs!18459 d!32948))

(declare-fun d!32950 () Bool)

(declare-fun e!24428 () Bool)

(assert (=> d!32950 e!24428))

(declare-fun res!22055 () Bool)

(assert (=> d!32950 (=> (not res!22055) (not e!24428))))

(declare-fun lt!8509 () Nat!203)

(declare-fun repr!0 (Nat!203) Int)

(assert (=> d!32950 (= res!22055 (<= (repr!0 lt!8509) (repr!0 n2!101)))))

(declare-fun e!24427 () Nat!203)

(assert (=> d!32950 (= lt!8509 e!24427)))

(declare-fun c!9853 () Bool)

(assert (=> d!32950 (= c!9853 (and (is-Succ!184 n2!101) (is-Succ!184 n3!28)))))

(assert (=> d!32950 (= (-!4 n2!101 n3!28) lt!8509)))

(declare-fun b!46902 () Bool)

(assert (=> b!46902 (= e!24427 (-!4 (n!1339 n2!101) (n!1339 n3!28)))))

(declare-fun b!46903 () Bool)

(assert (=> b!46903 (= e!24427 n2!101)))

(declare-fun b!46904 () Bool)

(declare-fun e!24429 () Bool)

(assert (=> b!46904 (= e!24429 (< (repr!0 lt!8509) (repr!0 n2!101)))))

(declare-fun b!46905 () Bool)

(assert (=> b!46905 (= e!24428 e!24429)))

(declare-fun res!22056 () Bool)

(assert (=> b!46905 (=> res!22056 e!24429)))

(assert (=> b!46905 (= res!22056 (not (>!2 n2!101 Zero!187)))))

(declare-fun b!46906 () Bool)

(declare-fun res!22057 () Bool)

(assert (=> b!46906 (=> res!22057 e!24429)))

(assert (=> b!46906 (= res!22057 (not (>!2 n3!28 Zero!187)))))

(assert (= (and d!32950 c!9853) b!46902))

(assert (= (and d!32950 (not c!9853)) b!46903))

(assert (= (and d!32950 res!22055) b!46905))

(assert (= (and b!46905 (not res!22056)) b!46906))

(assert (= (and b!46906 (not res!22057)) b!46904))

(declare-fun m!49805 () Bool)

(assert (=> b!46905 m!49805))

(declare-fun m!49807 () Bool)

(assert (=> b!46904 m!49807))

(declare-fun m!49809 () Bool)

(assert (=> b!46904 m!49809))

(declare-fun m!49811 () Bool)

(assert (=> b!46906 m!49811))

(declare-fun m!49813 () Bool)

(assert (=> b!46902 m!49813))

(assert (=> d!32950 m!49807))

(assert (=> d!32950 m!49809))

(assert (=> bs!18459 d!32950))

(declare-fun d!32952 () Bool)

(declare-fun e!24431 () Bool)

(assert (=> d!32952 e!24431))

(declare-fun res!22058 () Bool)

(assert (=> d!32952 (=> (not res!22058) (not e!24431))))

(declare-fun lt!8510 () Nat!203)

(assert (=> d!32952 (= res!22058 (<= (repr!0 lt!8510) (repr!0 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))))

(declare-fun e!24430 () Nat!203)

(assert (=> d!32952 (= lt!8510 e!24430)))

(declare-fun c!9854 () Bool)

(assert (=> d!32952 (= c!9854 (and (is-Succ!184 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) (is-Succ!184 n3!28)))))

(assert (=> d!32952 (= (-!4 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) n3!28) lt!8510)))

(declare-fun b!46907 () Bool)

(assert (=> b!46907 (= e!24430 (-!4 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) (n!1339 n3!28)))))

(declare-fun b!46908 () Bool)

(assert (=> b!46908 (= e!24430 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))

(declare-fun e!24432 () Bool)

(declare-fun b!46909 () Bool)

(assert (=> b!46909 (= e!24432 (< (repr!0 lt!8510) (repr!0 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))))

(declare-fun b!46910 () Bool)

(assert (=> b!46910 (= e!24431 e!24432)))

(declare-fun res!22059 () Bool)

(assert (=> b!46910 (=> res!22059 e!24432)))

(assert (=> b!46910 (= res!22059 (not (>!2 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) Zero!187)))))

(declare-fun b!46911 () Bool)

(declare-fun res!22060 () Bool)

(assert (=> b!46911 (=> res!22060 e!24432)))

(assert (=> b!46911 (= res!22060 (not (>!2 n3!28 Zero!187)))))

(assert (= (and d!32952 c!9854) b!46907))

(assert (= (and d!32952 (not c!9854)) b!46908))

(assert (= (and d!32952 res!22058) b!46910))

(assert (= (and b!46910 (not res!22059)) b!46911))

(assert (= (and b!46911 (not res!22060)) b!46909))

(assert (=> b!46910 m!49775))

(declare-fun m!49815 () Bool)

(assert (=> b!46910 m!49815))

(declare-fun m!49817 () Bool)

(assert (=> b!46909 m!49817))

(assert (=> b!46909 m!49775))

(declare-fun m!49819 () Bool)

(assert (=> b!46909 m!49819))

(assert (=> b!46911 m!49811))

(declare-fun m!49821 () Bool)

(assert (=> b!46907 m!49821))

(assert (=> d!32952 m!49817))

(assert (=> d!32952 m!49775))

(assert (=> d!32952 m!49819))

(assert (=> bs!18460 d!32952))

(declare-fun d!32954 () Bool)

(declare-fun c!9855 () Bool)

(assert (=> d!32954 (= c!9855 (is-Zero!187 n1!90))))

(declare-fun e!24433 () Nat!203)

(assert (=> d!32954 (= (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) e!24433)))

(declare-fun b!46912 () Bool)

(assert (=> b!46912 (= e!24433 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))

(declare-fun b!46913 () Bool)

(assert (=> b!46913 (= e!24433 (Succ!184 (+!5 (n!1339 n1!90) (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))))

(assert (= (and d!32954 c!9855) b!46912))

(assert (= (and d!32954 (not c!9855)) b!46913))

(assert (=> b!46913 m!49773))

(declare-fun m!49823 () Bool)

(assert (=> b!46913 m!49823))

(assert (=> bs!18460 d!32954))

(declare-fun d!32956 () Bool)

(declare-fun c!9856 () Bool)

(assert (=> d!32956 (= c!9856 (is-Zero!187 (n!1339 n2!101)))))

(declare-fun e!24434 () Nat!203)

(assert (=> d!32956 (= (+!5 (n!1339 n2!101) (Succ!184 Zero!187)) e!24434)))

(declare-fun b!46914 () Bool)

(assert (=> b!46914 (= e!24434 (Succ!184 Zero!187))))

(declare-fun b!46915 () Bool)

(assert (=> b!46915 (= e!24434 (Succ!184 (+!5 (n!1339 (n!1339 n2!101)) (Succ!184 Zero!187))))))

(assert (= (and d!32956 c!9856) b!46914))

(assert (= (and d!32956 (not c!9856)) b!46915))

(declare-fun m!49825 () Bool)

(assert (=> b!46915 m!49825))

(assert (=> bs!18460 d!32956))

(declare-fun d!32958 () Bool)

(assert (=> d!32958 (= (keepEvidence!44 (dynLambda!795 (evidence!627 prev!431))) true)))

(assert (=> b!46871 d!32958))

(assert (=> bs!18453 d!32952))

(assert (=> bs!18453 d!32954))

(assert (=> bs!18453 d!32956))

(declare-fun d!32960 () Bool)

(declare-fun e!24436 () Bool)

(assert (=> d!32960 e!24436))

(declare-fun res!22061 () Bool)

(assert (=> d!32960 (=> (not res!22061) (not e!24436))))

(declare-fun lt!8511 () Nat!203)

(assert (=> d!32960 (= res!22061 (<= (repr!0 lt!8511) (repr!0 (+!5 n1!90 n2!101))))))

(declare-fun e!24435 () Nat!203)

(assert (=> d!32960 (= lt!8511 e!24435)))

(declare-fun c!9857 () Bool)

(assert (=> d!32960 (= c!9857 (and (is-Succ!184 (+!5 n1!90 n2!101)) (is-Succ!184 n3!28)))))

(assert (=> d!32960 (= (-!4 (+!5 n1!90 n2!101) n3!28) lt!8511)))

(declare-fun b!46916 () Bool)

(assert (=> b!46916 (= e!24435 (-!4 (n!1339 (+!5 n1!90 n2!101)) (n!1339 n3!28)))))

(declare-fun b!46917 () Bool)

(assert (=> b!46917 (= e!24435 (+!5 n1!90 n2!101))))

(declare-fun b!46918 () Bool)

(declare-fun e!24437 () Bool)

(assert (=> b!46918 (= e!24437 (< (repr!0 lt!8511) (repr!0 (+!5 n1!90 n2!101))))))

(declare-fun b!46919 () Bool)

(assert (=> b!46919 (= e!24436 e!24437)))

(declare-fun res!22062 () Bool)

(assert (=> b!46919 (=> res!22062 e!24437)))

(assert (=> b!46919 (= res!22062 (not (>!2 (+!5 n1!90 n2!101) Zero!187)))))

(declare-fun b!46920 () Bool)

(declare-fun res!22063 () Bool)

(assert (=> b!46920 (=> res!22063 e!24437)))

(assert (=> b!46920 (= res!22063 (not (>!2 n3!28 Zero!187)))))

(assert (= (and d!32960 c!9857) b!46916))

(assert (= (and d!32960 (not c!9857)) b!46917))

(assert (= (and d!32960 res!22061) b!46919))

(assert (= (and b!46919 (not res!22062)) b!46920))

(assert (= (and b!46920 (not res!22063)) b!46918))

(assert (=> b!46919 m!49783))

(declare-fun m!49827 () Bool)

(assert (=> b!46919 m!49827))

(declare-fun m!49829 () Bool)

(assert (=> b!46918 m!49829))

(assert (=> b!46918 m!49783))

(declare-fun m!49831 () Bool)

(assert (=> b!46918 m!49831))

(assert (=> b!46920 m!49811))

(declare-fun m!49833 () Bool)

(assert (=> b!46916 m!49833))

(assert (=> d!32960 m!49829))

(assert (=> d!32960 m!49783))

(assert (=> d!32960 m!49831))

(assert (=> bs!18458 d!32960))

(declare-fun d!32962 () Bool)

(declare-fun c!9858 () Bool)

(assert (=> d!32962 (= c!9858 (is-Zero!187 n1!90))))

(declare-fun e!24438 () Nat!203)

(assert (=> d!32962 (= (+!5 n1!90 n2!101) e!24438)))

(declare-fun b!46921 () Bool)

(assert (=> b!46921 (= e!24438 n2!101)))

(declare-fun b!46922 () Bool)

(assert (=> b!46922 (= e!24438 (Succ!184 (+!5 (n!1339 n1!90) n2!101)))))

(assert (= (and d!32962 c!9858) b!46921))

(assert (= (and d!32962 (not c!9858)) b!46922))

(declare-fun m!49835 () Bool)

(assert (=> b!46922 m!49835))

(assert (=> bs!18458 d!32962))

(assert (=> bs!18455 d!32960))

(assert (=> bs!18455 d!32962))

(declare-fun b!46928 () Bool)

(declare-fun e!24441 () Unit!629)

(declare-fun Unit!631 () Unit!629)

(assert (=> b!46928 (= e!24441 Unit!631)))

(declare-fun lt!8517 () Unit!629)

(assert (=> b!46928 (= lt!8517 (associative_plus!0 (n!1339 n1!90) (n!1339 n2!101) (Succ!184 Zero!187)))))

(declare-fun d!32964 () Bool)

(assert (=> d!32964 (= (+!5 (+!5 n1!90 (n!1339 n2!101)) (Succ!184 Zero!187)) (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))

(declare-fun lt!8516 () Unit!629)

(assert (=> d!32964 (= lt!8516 e!24441)))

(declare-fun c!9861 () Bool)

(assert (=> d!32964 (= c!9861 (is-Zero!187 n1!90))))

(assert (=> d!32964 (= (associative_plus!0 n1!90 (n!1339 n2!101) (Succ!184 Zero!187)) lt!8516)))

(declare-fun b!46927 () Bool)

(declare-fun Unit!632 () Unit!629)

(assert (=> b!46927 (= e!24441 Unit!632)))

(assert (= (and d!32964 c!9861) b!46927))

(assert (= (and d!32964 (not c!9861)) b!46928))

(declare-fun m!49837 () Bool)

(assert (=> b!46928 m!49837))

(declare-fun m!49839 () Bool)

(assert (=> d!32964 m!49839))

(assert (=> d!32964 m!49839))

(declare-fun m!49841 () Bool)

(assert (=> d!32964 m!49841))

(assert (=> d!32964 m!49773))

(assert (=> d!32964 m!49773))

(assert (=> d!32964 m!49775))

(assert (=> bs!18457 d!32964))

(assert (=> bs!18454 d!32948))

(assert (=> bs!18454 d!32950))

(declare-fun b_lambda!12463 () Bool)

(assert (= b_lambda!12451 (or (and b!46870 b_free!5669 (= (y!1514 prev!431) (x!17338 thiss!5056))) (and b!46876 b_free!5663 (= (y!1514 x$56!25) (x!17338 thiss!5056))) (and b!46874 b_free!5657 (= (y!1514 thiss!5056) (x!17338 thiss!5056))) (and b!46870 b_free!5667 (= (x!17338 prev!431) (x!17338 thiss!5056))) (and b!46872 (= lambda!6818 (x!17338 thiss!5056))) (and b!46878 (= lambda!6815 (x!17338 thiss!5056))) (and b!46876 b_free!5661 (= (x!17338 x$56!25) (x!17338 thiss!5056))) (and b!46874 b_free!5655) (and b!46872 (= lambda!6817 (x!17338 thiss!5056))) b_lambda!12463)))

(assert (=> (and b!46872 (= lambda!6817 (x!17338 thiss!5056)) d!32942) d!32922))

(assert (=> (and b!46872 (= lambda!6818 (x!17338 thiss!5056)) d!32942) d!32924))

(assert (=> (and b!46878 (= lambda!6815 (x!17338 thiss!5056)) d!32942) d!32926))

(declare-fun b_lambda!12465 () Bool)

(assert (= b_lambda!12461 (or (and b!46872 (= lambda!6818 (y!1514 prev!431))) (and b!46874 b_free!5655 (= (x!17338 thiss!5056) (y!1514 prev!431))) (and b!46870 b_free!5667 (= (x!17338 prev!431) (y!1514 prev!431))) (and b!46870 b_free!5669) (and b!46872 (= lambda!6817 (y!1514 prev!431))) (and b!46876 b_free!5661 (= (x!17338 x$56!25) (y!1514 prev!431))) (and b!46878 (= lambda!6815 (y!1514 prev!431))) (and b!46876 b_free!5663 (= (y!1514 x$56!25) (y!1514 prev!431))) (and b!46874 b_free!5657 (= (y!1514 thiss!5056) (y!1514 prev!431))) b_lambda!12465)))

(assert (=> (and b!46878 (= lambda!6815 (y!1514 prev!431)) d!32946) d!32932))

(assert (=> (and b!46872 (= lambda!6818 (y!1514 prev!431)) d!32946) d!32934))

(assert (=> (and b!46872 (= lambda!6817 (y!1514 prev!431)) d!32946) d!32936))

(declare-fun b_lambda!12467 () Bool)

(assert (= b_lambda!12457 (or (and b!46870 b_free!5669 (= (y!1514 prev!431) (y!1514 x$56!25))) (and b!46874 b_free!5655 (= (x!17338 thiss!5056) (y!1514 x$56!25))) (and b!46878 (= lambda!6815 (y!1514 x$56!25))) (and b!46876 b_free!5663) (and b!46872 (= lambda!6818 (y!1514 x$56!25))) (and b!46874 b_free!5657 (= (y!1514 thiss!5056) (y!1514 x$56!25))) (and b!46876 b_free!5661 (= (x!17338 x$56!25) (y!1514 x$56!25))) (and b!46870 b_free!5667 (= (x!17338 prev!431) (y!1514 x$56!25))) (and b!46872 (= lambda!6817 (y!1514 x$56!25))) b_lambda!12467)))

(declare-fun bs!18462 () Bool)

(declare-fun d!32966 () Bool)

(assert (= bs!18462 (and d!32966 b!46872)))

(assert (=> bs!18462 (= (dynLambda!796 lambda!6818) (+!5 n1!90 (-!4 n2!101 n3!28)))))

(assert (=> bs!18462 m!49779))

(assert (=> bs!18462 m!49779))

(assert (=> bs!18462 m!49781))

(assert (=> (and b!46872 (= lambda!6818 (y!1514 x$56!25)) d!32944) d!32966))

(declare-fun bs!18463 () Bool)

(declare-fun d!32968 () Bool)

(assert (= bs!18463 (and d!32968 b!46872)))

(assert (=> bs!18463 (= (dynLambda!796 lambda!6817) (-!4 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) n3!28))))

(assert (=> bs!18463 m!49773))

(assert (=> bs!18463 m!49773))

(assert (=> bs!18463 m!49775))

(assert (=> bs!18463 m!49775))

(assert (=> bs!18463 m!49777))

(assert (=> (and b!46872 (= lambda!6817 (y!1514 x$56!25)) d!32944) d!32968))

(declare-fun bs!18464 () Bool)

(declare-fun d!32970 () Bool)

(assert (= bs!18464 (and d!32970 b!46878)))

(assert (=> bs!18464 (= (dynLambda!796 lambda!6815) (-!4 (+!5 n1!90 n2!101) n3!28))))

(assert (=> bs!18464 m!49783))

(assert (=> bs!18464 m!49783))

(assert (=> bs!18464 m!49785))

(assert (=> (and b!46878 (= lambda!6815 (y!1514 x$56!25)) d!32944) d!32970))

(declare-fun b_lambda!12469 () Bool)

(assert (= b_lambda!12453 (or (and b!46876 b_free!5663 (= (y!1514 x$56!25) (y!1514 thiss!5056))) (and b!46870 b_free!5667 (= (x!17338 prev!431) (y!1514 thiss!5056))) (and b!46872 (= lambda!6818 (y!1514 thiss!5056))) (and b!46874 b_free!5657) (and b!46878 (= lambda!6815 (y!1514 thiss!5056))) (and b!46870 b_free!5669 (= (y!1514 prev!431) (y!1514 thiss!5056))) (and b!46874 b_free!5655 (= (x!17338 thiss!5056) (y!1514 thiss!5056))) (and b!46876 b_free!5661 (= (x!17338 x$56!25) (y!1514 thiss!5056))) (and b!46872 (= lambda!6817 (y!1514 thiss!5056))) b_lambda!12469)))

(declare-fun bs!18465 () Bool)

(declare-fun d!32972 () Bool)

(assert (= bs!18465 (and d!32972 b!46878)))

(assert (=> bs!18465 (= (dynLambda!796 lambda!6815) (-!4 (+!5 n1!90 n2!101) n3!28))))

(assert (=> bs!18465 m!49783))

(assert (=> bs!18465 m!49783))

(assert (=> bs!18465 m!49785))

(assert (=> (and b!46878 (= lambda!6815 (y!1514 thiss!5056)) d!32942) d!32972))

(declare-fun bs!18466 () Bool)

(declare-fun d!32974 () Bool)

(assert (= bs!18466 (and d!32974 b!46872)))

(assert (=> bs!18466 (= (dynLambda!796 lambda!6817) (-!4 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) n3!28))))

(assert (=> bs!18466 m!49773))

(assert (=> bs!18466 m!49773))

(assert (=> bs!18466 m!49775))

(assert (=> bs!18466 m!49775))

(assert (=> bs!18466 m!49777))

(assert (=> (and b!46872 (= lambda!6817 (y!1514 thiss!5056)) d!32942) d!32974))

(declare-fun bs!18467 () Bool)

(declare-fun d!32976 () Bool)

(assert (= bs!18467 (and d!32976 b!46872)))

(assert (=> bs!18467 (= (dynLambda!796 lambda!6818) (+!5 n1!90 (-!4 n2!101 n3!28)))))

(assert (=> bs!18467 m!49779))

(assert (=> bs!18467 m!49779))

(assert (=> bs!18467 m!49781))

(assert (=> (and b!46872 (= lambda!6818 (y!1514 thiss!5056)) d!32942) d!32976))

(declare-fun b_lambda!12471 () Bool)

(assert (= b_lambda!12459 (or (and b!46872 (= lambda!6817 (x!17338 prev!431))) (and b!46878 (= lambda!6815 (x!17338 prev!431))) (and b!46872 (= lambda!6818 (x!17338 prev!431))) (and b!46876 b_free!5663 (= (y!1514 x$56!25) (x!17338 prev!431))) (and b!46870 b_free!5667) (and b!46870 b_free!5669 (= (y!1514 prev!431) (x!17338 prev!431))) (and b!46876 b_free!5661 (= (x!17338 x$56!25) (x!17338 prev!431))) (and b!46874 b_free!5655 (= (x!17338 thiss!5056) (x!17338 prev!431))) (and b!46874 b_free!5657 (= (y!1514 thiss!5056) (x!17338 prev!431))) b_lambda!12471)))

(declare-fun bs!18468 () Bool)

(declare-fun d!32978 () Bool)

(assert (= bs!18468 (and d!32978 b!46878)))

(assert (=> bs!18468 (= (dynLambda!796 lambda!6815) (-!4 (+!5 n1!90 n2!101) n3!28))))

(assert (=> bs!18468 m!49783))

(assert (=> bs!18468 m!49783))

(assert (=> bs!18468 m!49785))

(assert (=> (and b!46878 (= lambda!6815 (x!17338 prev!431)) d!32946) d!32978))

(declare-fun bs!18469 () Bool)

(declare-fun d!32980 () Bool)

(assert (= bs!18469 (and d!32980 b!46872)))

(assert (=> bs!18469 (= (dynLambda!796 lambda!6818) (+!5 n1!90 (-!4 n2!101 n3!28)))))

(assert (=> bs!18469 m!49779))

(assert (=> bs!18469 m!49779))

(assert (=> bs!18469 m!49781))

(assert (=> (and b!46872 (= lambda!6818 (x!17338 prev!431)) d!32946) d!32980))

(declare-fun bs!18470 () Bool)

(declare-fun d!32982 () Bool)

(assert (= bs!18470 (and d!32982 b!46872)))

(assert (=> bs!18470 (= (dynLambda!796 lambda!6817) (-!4 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) n3!28))))

(assert (=> bs!18470 m!49773))

(assert (=> bs!18470 m!49773))

(assert (=> bs!18470 m!49775))

(assert (=> bs!18470 m!49775))

(assert (=> bs!18470 m!49777))

(assert (=> (and b!46872 (= lambda!6817 (x!17338 prev!431)) d!32946) d!32982))

(declare-fun b_lambda!12473 () Bool)

(assert (= b_lambda!12455 (or (and b!46870 b_free!5669 (= (y!1514 prev!431) (x!17338 x$56!25))) (and b!46876 b_free!5663 (= (y!1514 x$56!25) (x!17338 x$56!25))) (and b!46870 b_free!5667 (= (x!17338 prev!431) (x!17338 x$56!25))) (and b!46878 (= lambda!6815 (x!17338 x$56!25))) (and b!46874 b_free!5655 (= (x!17338 thiss!5056) (x!17338 x$56!25))) (and b!46872 (= lambda!6817 (x!17338 x$56!25))) (and b!46872 (= lambda!6818 (x!17338 x$56!25))) (and b!46876 b_free!5661) (and b!46874 b_free!5657 (= (y!1514 thiss!5056) (x!17338 x$56!25))) b_lambda!12473)))

(declare-fun bs!18471 () Bool)

(declare-fun d!32984 () Bool)

(assert (= bs!18471 (and d!32984 b!46872)))

(assert (=> bs!18471 (= (dynLambda!796 lambda!6817) (-!4 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) n3!28))))

(assert (=> bs!18471 m!49773))

(assert (=> bs!18471 m!49773))

(assert (=> bs!18471 m!49775))

(assert (=> bs!18471 m!49775))

(assert (=> bs!18471 m!49777))

(assert (=> (and b!46872 (= lambda!6817 (x!17338 x$56!25)) d!32944) d!32984))

(declare-fun bs!18472 () Bool)

(declare-fun d!32986 () Bool)

(assert (= bs!18472 (and d!32986 b!46872)))

(assert (=> bs!18472 (= (dynLambda!796 lambda!6818) (+!5 n1!90 (-!4 n2!101 n3!28)))))

(assert (=> bs!18472 m!49779))

(assert (=> bs!18472 m!49779))

(assert (=> bs!18472 m!49781))

(assert (=> (and b!46872 (= lambda!6818 (x!17338 x$56!25)) d!32944) d!32986))

(declare-fun bs!18473 () Bool)

(declare-fun d!32988 () Bool)

(assert (= bs!18473 (and d!32988 b!46878)))

(assert (=> bs!18473 (= (dynLambda!796 lambda!6815) (-!4 (+!5 n1!90 n2!101) n3!28))))

(assert (=> bs!18473 m!49783))

(assert (=> bs!18473 m!49783))

(assert (=> bs!18473 m!49785))

(assert (=> (and b!46878 (= lambda!6815 (x!17338 x$56!25)) d!32944) d!32988))

(push 1)

(assert (not bs!18463))

(assert (not b!46907))

(assert (not bs!18471))

(assert (not bs!18467))

(assert (not bs!18465))

(assert (not b_next!25359))

(assert (not b_next!25367))

(assert (not b_lambda!12469))

(assert (not b_next!25375))

(assert (not b_lambda!12473))

(assert (not bs!18466))

(assert (not b!46905))

(assert (not bs!18473))

(assert (not b!46919))

(assert (not b!46928))

(assert (not d!32940))

(assert (not b_lambda!12467))

(assert b_and!36705)

(assert b_and!36707)

(assert (not b!46915))

(assert b_and!36795)

(assert (not b!46906))

(assert (not bs!18462))

(assert (not bs!18472))

(assert b_and!36799)

(assert (not b!46904))

(assert (not d!32960))

(assert b_and!36801)

(assert (not d!32950))

(assert (not b_lambda!12447))

(assert (not b_next!25365))

(assert (not b!46911))

(assert (not b!46916))

(assert (not d!32938))

(assert (not bs!18468))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert (not b!46910))

(assert b_and!36805)

(assert b_and!36709)

(assert (not b!46891))

(assert (not bs!18470))

(assert (not b_lambda!12465))

(assert (not b_lambda!12449))

(assert (not b_next!25371))

(assert b_and!36797)

(assert (not b_next!25363))

(assert (not b!46913))

(assert (not b_lambda!12471))

(assert (not b_lambda!12463))

(assert (not bs!18469))

(assert (not d!32952))

(assert (not bs!18464))

(assert (not b!46902))

(assert (not b!46922))

(assert (not b!46918))

(assert (not b_lambda!12445))

(assert (not b_next!25361))

(assert (not b!46909))

(assert (not d!32964))

(assert (not b!46920))

(assert b_and!36803)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25359))

(assert (not b_next!25367))

(assert (not b_next!25375))

(assert b_and!36705)

(assert b_and!36707)

(assert b_and!36795)

(assert b_and!36799)

(assert b_and!36801)

(assert (not b_next!25365))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert b_and!36805)

(assert b_and!36709)

(assert (not b_next!25371))

(assert b_and!36797)

(assert (not b_next!25363))

(assert (not b_next!25361))

(assert b_and!36803)

(check-sat)

(get-model)

(pop 1)

(assert (=> bs!18472 d!32948))

(assert (=> bs!18472 d!32950))

(declare-fun d!32990 () Bool)

(declare-fun res!22066 () Bool)

(declare-fun e!24444 () Bool)

(assert (=> d!32990 (=> (not res!22066) (not e!24444))))

(declare-fun <!2 (Nat!203 Nat!203) Bool)

(assert (=> d!32990 (= res!22066 (not (<!2 (+!5 n1!90 n2!101) Zero!187)))))

(assert (=> d!32990 (= (>!2 (+!5 n1!90 n2!101) Zero!187) e!24444)))

(declare-fun b!46931 () Bool)

(assert (=> b!46931 (= e!24444 (not (= (+!5 n1!90 n2!101) Zero!187)))))

(assert (= (and d!32990 res!22066) b!46931))

(assert (=> d!32990 m!49783))

(declare-fun m!49843 () Bool)

(assert (=> d!32990 m!49843))

(assert (=> b!46919 d!32990))

(declare-fun d!32992 () Bool)

(declare-fun e!24446 () Bool)

(assert (=> d!32992 e!24446))

(declare-fun res!22067 () Bool)

(assert (=> d!32992 (=> (not res!22067) (not e!24446))))

(declare-fun lt!8518 () Nat!203)

(assert (=> d!32992 (= res!22067 (<= (repr!0 lt!8518) (repr!0 (n!1339 n2!101))))))

(declare-fun e!24445 () Nat!203)

(assert (=> d!32992 (= lt!8518 e!24445)))

(declare-fun c!9862 () Bool)

(assert (=> d!32992 (= c!9862 (and (is-Succ!184 (n!1339 n2!101)) (is-Succ!184 (n!1339 n3!28))))))

(assert (=> d!32992 (= (-!4 (n!1339 n2!101) (n!1339 n3!28)) lt!8518)))

(declare-fun b!46932 () Bool)

(assert (=> b!46932 (= e!24445 (-!4 (n!1339 (n!1339 n2!101)) (n!1339 (n!1339 n3!28))))))

(declare-fun b!46933 () Bool)

(assert (=> b!46933 (= e!24445 (n!1339 n2!101))))

(declare-fun b!46934 () Bool)

(declare-fun e!24447 () Bool)

(assert (=> b!46934 (= e!24447 (< (repr!0 lt!8518) (repr!0 (n!1339 n2!101))))))

(declare-fun b!46935 () Bool)

(assert (=> b!46935 (= e!24446 e!24447)))

(declare-fun res!22068 () Bool)

(assert (=> b!46935 (=> res!22068 e!24447)))

(assert (=> b!46935 (= res!22068 (not (>!2 (n!1339 n2!101) Zero!187)))))

(declare-fun b!46936 () Bool)

(declare-fun res!22069 () Bool)

(assert (=> b!46936 (=> res!22069 e!24447)))

(assert (=> b!46936 (= res!22069 (not (>!2 (n!1339 n3!28) Zero!187)))))

(assert (= (and d!32992 c!9862) b!46932))

(assert (= (and d!32992 (not c!9862)) b!46933))

(assert (= (and d!32992 res!22067) b!46935))

(assert (= (and b!46935 (not res!22068)) b!46936))

(assert (= (and b!46936 (not res!22069)) b!46934))

(declare-fun m!49845 () Bool)

(assert (=> b!46935 m!49845))

(declare-fun m!49847 () Bool)

(assert (=> b!46934 m!49847))

(declare-fun m!49849 () Bool)

(assert (=> b!46934 m!49849))

(declare-fun m!49851 () Bool)

(assert (=> b!46936 m!49851))

(declare-fun m!49853 () Bool)

(assert (=> b!46932 m!49853))

(assert (=> d!32992 m!49847))

(assert (=> d!32992 m!49849))

(assert (=> b!46902 d!32992))

(assert (=> bs!18471 d!32952))

(assert (=> bs!18471 d!32954))

(assert (=> bs!18471 d!32956))

(declare-fun d!32994 () Bool)

(declare-fun lt!8521 () Int)

(assert (=> d!32994 (>= lt!8521 0)))

(declare-fun e!24450 () Int)

(assert (=> d!32994 (= lt!8521 e!24450)))

(declare-fun c!9865 () Bool)

(assert (=> d!32994 (= c!9865 (is-Zero!187 lt!8511))))

(assert (=> d!32994 (= (repr!0 lt!8511) lt!8521)))

(declare-fun b!46941 () Bool)

(assert (=> b!46941 (= e!24450 0)))

(declare-fun b!46942 () Bool)

(assert (=> b!46942 (= e!24450 (+ (repr!0 (n!1339 lt!8511)) 1))))

(assert (= (and d!32994 c!9865) b!46941))

(assert (= (and d!32994 (not c!9865)) b!46942))

(declare-fun m!49855 () Bool)

(assert (=> b!46942 m!49855))

(assert (=> b!46918 d!32994))

(declare-fun d!32996 () Bool)

(declare-fun lt!8522 () Int)

(assert (=> d!32996 (>= lt!8522 0)))

(declare-fun e!24451 () Int)

(assert (=> d!32996 (= lt!8522 e!24451)))

(declare-fun c!9866 () Bool)

(assert (=> d!32996 (= c!9866 (is-Zero!187 (+!5 n1!90 n2!101)))))

(assert (=> d!32996 (= (repr!0 (+!5 n1!90 n2!101)) lt!8522)))

(declare-fun b!46943 () Bool)

(assert (=> b!46943 (= e!24451 0)))

(declare-fun b!46944 () Bool)

(assert (=> b!46944 (= e!24451 (+ (repr!0 (n!1339 (+!5 n1!90 n2!101))) 1))))

(assert (= (and d!32996 c!9866) b!46943))

(assert (= (and d!32996 (not c!9866)) b!46944))

(declare-fun m!49857 () Bool)

(assert (=> b!46944 m!49857))

(assert (=> b!46918 d!32996))

(declare-fun d!32998 () Bool)

(declare-fun res!22070 () Bool)

(declare-fun e!24452 () Bool)

(assert (=> d!32998 (=> (not res!22070) (not e!24452))))

(assert (=> d!32998 (= res!22070 (not (<!2 n3!28 Zero!187)))))

(assert (=> d!32998 (= (>!2 n3!28 Zero!187) e!24452)))

(declare-fun b!46945 () Bool)

(assert (=> b!46945 (= e!24452 (not (= n3!28 Zero!187)))))

(assert (= (and d!32998 res!22070) b!46945))

(declare-fun m!49859 () Bool)

(assert (=> d!32998 m!49859))

(assert (=> b!46911 d!32998))

(declare-fun d!33000 () Bool)

(declare-fun c!9867 () Bool)

(assert (=> d!33000 (= c!9867 (is-Zero!187 (n!1339 (n!1339 n2!101))))))

(declare-fun e!24453 () Nat!203)

(assert (=> d!33000 (= (+!5 (n!1339 (n!1339 n2!101)) (Succ!184 Zero!187)) e!24453)))

(declare-fun b!46946 () Bool)

(assert (=> b!46946 (= e!24453 (Succ!184 Zero!187))))

(declare-fun b!46947 () Bool)

(assert (=> b!46947 (= e!24453 (Succ!184 (+!5 (n!1339 (n!1339 (n!1339 n2!101))) (Succ!184 Zero!187))))))

(assert (= (and d!33000 c!9867) b!46946))

(assert (= (and d!33000 (not c!9867)) b!46947))

(declare-fun m!49861 () Bool)

(assert (=> b!46947 m!49861))

(assert (=> b!46915 d!33000))

(assert (=> bs!18464 d!32960))

(assert (=> bs!18464 d!32962))

(assert (=> d!32960 d!32994))

(assert (=> d!32960 d!32996))

(declare-fun d!33002 () Bool)

(declare-fun c!9868 () Bool)

(assert (=> d!33002 (= c!9868 (is-Zero!187 (Succ!184 Zero!187)))))

(declare-fun e!24454 () Nat!203)

(assert (=> d!33002 (= (+!5 (Succ!184 Zero!187) (n!1339 n2!101)) e!24454)))

(declare-fun b!46948 () Bool)

(assert (=> b!46948 (= e!24454 (n!1339 n2!101))))

(declare-fun b!46949 () Bool)

(assert (=> b!46949 (= e!24454 (Succ!184 (+!5 (n!1339 (Succ!184 Zero!187)) (n!1339 n2!101))))))

(assert (= (and d!33002 c!9868) b!46948))

(assert (= (and d!33002 (not c!9868)) b!46949))

(declare-fun m!49863 () Bool)

(assert (=> b!46949 m!49863))

(assert (=> d!32938 d!33002))

(assert (=> d!32938 d!32956))

(assert (=> b!46920 d!32998))

(assert (=> bs!18462 d!32948))

(assert (=> bs!18462 d!32950))

(declare-fun d!33004 () Bool)

(declare-fun c!9869 () Bool)

(assert (=> d!33004 (= c!9869 (is-Zero!187 (n!1339 n1!90)))))

(declare-fun e!24455 () Nat!203)

(assert (=> d!33004 (= (+!5 (n!1339 n1!90) n2!101) e!24455)))

(declare-fun b!46950 () Bool)

(assert (=> b!46950 (= e!24455 n2!101)))

(declare-fun b!46951 () Bool)

(assert (=> b!46951 (= e!24455 (Succ!184 (+!5 (n!1339 (n!1339 n1!90)) n2!101)))))

(assert (= (and d!33004 c!9869) b!46950))

(assert (= (and d!33004 (not c!9869)) b!46951))

(declare-fun m!49865 () Bool)

(assert (=> b!46951 m!49865))

(assert (=> b!46922 d!33004))

(assert (=> bs!18473 d!32960))

(assert (=> bs!18473 d!32962))

(declare-fun d!33006 () Bool)

(declare-fun lt!8523 () Int)

(assert (=> d!33006 (>= lt!8523 0)))

(declare-fun e!24456 () Int)

(assert (=> d!33006 (= lt!8523 e!24456)))

(declare-fun c!9870 () Bool)

(assert (=> d!33006 (= c!9870 (is-Zero!187 lt!8509))))

(assert (=> d!33006 (= (repr!0 lt!8509) lt!8523)))

(declare-fun b!46952 () Bool)

(assert (=> b!46952 (= e!24456 0)))

(declare-fun b!46953 () Bool)

(assert (=> b!46953 (= e!24456 (+ (repr!0 (n!1339 lt!8509)) 1))))

(assert (= (and d!33006 c!9870) b!46952))

(assert (= (and d!33006 (not c!9870)) b!46953))

(declare-fun m!49867 () Bool)

(assert (=> b!46953 m!49867))

(assert (=> b!46904 d!33006))

(declare-fun d!33008 () Bool)

(declare-fun lt!8524 () Int)

(assert (=> d!33008 (>= lt!8524 0)))

(declare-fun e!24457 () Int)

(assert (=> d!33008 (= lt!8524 e!24457)))

(declare-fun c!9871 () Bool)

(assert (=> d!33008 (= c!9871 (is-Zero!187 n2!101))))

(assert (=> d!33008 (= (repr!0 n2!101) lt!8524)))

(declare-fun b!46954 () Bool)

(assert (=> b!46954 (= e!24457 0)))

(declare-fun b!46955 () Bool)

(assert (=> b!46955 (= e!24457 (+ (repr!0 (n!1339 n2!101)) 1))))

(assert (= (and d!33008 c!9871) b!46954))

(assert (= (and d!33008 (not c!9871)) b!46955))

(assert (=> b!46955 m!49849))

(assert (=> b!46904 d!33008))

(assert (=> bs!18466 d!32952))

(assert (=> bs!18466 d!32954))

(assert (=> bs!18466 d!32956))

(assert (=> bs!18463 d!32952))

(assert (=> bs!18463 d!32954))

(assert (=> bs!18463 d!32956))

(declare-fun d!33010 () Bool)

(declare-fun e!24459 () Bool)

(assert (=> d!33010 e!24459))

(declare-fun res!22071 () Bool)

(assert (=> d!33010 (=> (not res!22071) (not e!24459))))

(declare-fun lt!8525 () Nat!203)

(assert (=> d!33010 (= res!22071 (<= (repr!0 lt!8525) (repr!0 (n!1339 (+!5 n1!90 n2!101)))))))

(declare-fun e!24458 () Nat!203)

(assert (=> d!33010 (= lt!8525 e!24458)))

(declare-fun c!9872 () Bool)

(assert (=> d!33010 (= c!9872 (and (is-Succ!184 (n!1339 (+!5 n1!90 n2!101))) (is-Succ!184 (n!1339 n3!28))))))

(assert (=> d!33010 (= (-!4 (n!1339 (+!5 n1!90 n2!101)) (n!1339 n3!28)) lt!8525)))

(declare-fun b!46956 () Bool)

(assert (=> b!46956 (= e!24458 (-!4 (n!1339 (n!1339 (+!5 n1!90 n2!101))) (n!1339 (n!1339 n3!28))))))

(declare-fun b!46957 () Bool)

(assert (=> b!46957 (= e!24458 (n!1339 (+!5 n1!90 n2!101)))))

(declare-fun b!46958 () Bool)

(declare-fun e!24460 () Bool)

(assert (=> b!46958 (= e!24460 (< (repr!0 lt!8525) (repr!0 (n!1339 (+!5 n1!90 n2!101)))))))

(declare-fun b!46959 () Bool)

(assert (=> b!46959 (= e!24459 e!24460)))

(declare-fun res!22072 () Bool)

(assert (=> b!46959 (=> res!22072 e!24460)))

(assert (=> b!46959 (= res!22072 (not (>!2 (n!1339 (+!5 n1!90 n2!101)) Zero!187)))))

(declare-fun b!46960 () Bool)

(declare-fun res!22073 () Bool)

(assert (=> b!46960 (=> res!22073 e!24460)))

(assert (=> b!46960 (= res!22073 (not (>!2 (n!1339 n3!28) Zero!187)))))

(assert (= (and d!33010 c!9872) b!46956))

(assert (= (and d!33010 (not c!9872)) b!46957))

(assert (= (and d!33010 res!22071) b!46959))

(assert (= (and b!46959 (not res!22072)) b!46960))

(assert (= (and b!46960 (not res!22073)) b!46958))

(declare-fun m!49869 () Bool)

(assert (=> b!46959 m!49869))

(declare-fun m!49871 () Bool)

(assert (=> b!46958 m!49871))

(assert (=> b!46958 m!49857))

(assert (=> b!46960 m!49851))

(declare-fun m!49873 () Bool)

(assert (=> b!46956 m!49873))

(assert (=> d!33010 m!49871))

(assert (=> d!33010 m!49857))

(assert (=> b!46916 d!33010))

(declare-fun d!33012 () Bool)

(declare-fun lt!8526 () Int)

(assert (=> d!33012 (>= lt!8526 0)))

(declare-fun e!24461 () Int)

(assert (=> d!33012 (= lt!8526 e!24461)))

(declare-fun c!9873 () Bool)

(assert (=> d!33012 (= c!9873 (is-Zero!187 lt!8510))))

(assert (=> d!33012 (= (repr!0 lt!8510) lt!8526)))

(declare-fun b!46961 () Bool)

(assert (=> b!46961 (= e!24461 0)))

(declare-fun b!46962 () Bool)

(assert (=> b!46962 (= e!24461 (+ (repr!0 (n!1339 lt!8510)) 1))))

(assert (= (and d!33012 c!9873) b!46961))

(assert (= (and d!33012 (not c!9873)) b!46962))

(declare-fun m!49875 () Bool)

(assert (=> b!46962 m!49875))

(assert (=> d!32952 d!33012))

(declare-fun d!33014 () Bool)

(declare-fun lt!8527 () Int)

(assert (=> d!33014 (>= lt!8527 0)))

(declare-fun e!24462 () Int)

(assert (=> d!33014 (= lt!8527 e!24462)))

(declare-fun c!9874 () Bool)

(assert (=> d!33014 (= c!9874 (is-Zero!187 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))))

(assert (=> d!33014 (= (repr!0 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) lt!8527)))

(declare-fun b!46963 () Bool)

(assert (=> b!46963 (= e!24462 0)))

(declare-fun b!46964 () Bool)

(assert (=> b!46964 (= e!24462 (+ (repr!0 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))) 1))))

(assert (= (and d!33014 c!9874) b!46963))

(assert (= (and d!33014 (not c!9874)) b!46964))

(declare-fun m!49877 () Bool)

(assert (=> b!46964 m!49877))

(assert (=> d!32952 d!33014))

(assert (=> d!32950 d!33006))

(assert (=> d!32950 d!33008))

(declare-fun d!33016 () Bool)

(declare-fun res!22074 () Bool)

(declare-fun e!24463 () Bool)

(assert (=> d!33016 (=> (not res!22074) (not e!24463))))

(assert (=> d!33016 (= res!22074 (not (<!2 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) Zero!187)))))

(assert (=> d!33016 (= (>!2 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) Zero!187) e!24463)))

(declare-fun b!46965 () Bool)

(assert (=> b!46965 (= e!24463 (not (= (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) Zero!187)))))

(assert (= (and d!33016 res!22074) b!46965))

(assert (=> d!33016 m!49775))

(declare-fun m!49879 () Bool)

(assert (=> d!33016 m!49879))

(assert (=> b!46910 d!33016))

(declare-fun d!33018 () Bool)

(declare-fun res!22075 () Bool)

(declare-fun e!24464 () Bool)

(assert (=> d!33018 (=> (not res!22075) (not e!24464))))

(assert (=> d!33018 (= res!22075 (not (<!2 n2!101 Zero!187)))))

(assert (=> d!33018 (= (>!2 n2!101 Zero!187) e!24464)))

(declare-fun b!46966 () Bool)

(assert (=> b!46966 (= e!24464 (not (= n2!101 Zero!187)))))

(assert (= (and d!33018 res!22075) b!46966))

(declare-fun m!49881 () Bool)

(assert (=> d!33018 m!49881))

(assert (=> b!46905 d!33018))

(assert (=> bs!18469 d!32948))

(assert (=> bs!18469 d!32950))

(assert (=> bs!18470 d!32952))

(assert (=> bs!18470 d!32954))

(assert (=> bs!18470 d!32956))

(declare-fun d!33020 () Bool)

(declare-fun c!9875 () Bool)

(assert (=> d!33020 (= c!9875 (is-Zero!187 (n!1339 n1!90)))))

(declare-fun e!24465 () Nat!203)

(assert (=> d!33020 (= (+!5 (n!1339 n1!90) (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) e!24465)))

(declare-fun b!46967 () Bool)

(assert (=> b!46967 (= e!24465 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))

(declare-fun b!46968 () Bool)

(assert (=> b!46968 (= e!24465 (Succ!184 (+!5 (n!1339 (n!1339 n1!90)) (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))))

(assert (= (and d!33020 c!9875) b!46967))

(assert (= (and d!33020 (not c!9875)) b!46968))

(assert (=> b!46968 m!49773))

(declare-fun m!49883 () Bool)

(assert (=> b!46968 m!49883))

(assert (=> b!46913 d!33020))

(declare-fun d!33022 () Bool)

(declare-fun c!9876 () Bool)

(assert (=> d!33022 (= c!9876 (is-Zero!187 (n!1339 n1!90)))))

(declare-fun e!24466 () Nat!203)

(assert (=> d!33022 (= (+!5 (n!1339 n1!90) (-!4 n2!101 n3!28)) e!24466)))

(declare-fun b!46969 () Bool)

(assert (=> b!46969 (= e!24466 (-!4 n2!101 n3!28))))

(declare-fun b!46970 () Bool)

(assert (=> b!46970 (= e!24466 (Succ!184 (+!5 (n!1339 (n!1339 n1!90)) (-!4 n2!101 n3!28))))))

(assert (= (and d!33022 c!9876) b!46969))

(assert (= (and d!33022 (not c!9876)) b!46970))

(assert (=> b!46970 m!49779))

(declare-fun m!49885 () Bool)

(assert (=> b!46970 m!49885))

(assert (=> b!46891 d!33022))

(assert (=> b!46906 d!32998))

(declare-fun d!33024 () Bool)

(declare-fun res!22076 () Bool)

(declare-fun e!24467 () Bool)

(assert (=> d!33024 (=> (not res!22076) (not e!24467))))

(assert (=> d!33024 (= res!22076 (not (<!2 n2!101 n3!28)))))

(assert (=> d!33024 (= (>!2 n2!101 n3!28) e!24467)))

(declare-fun b!46971 () Bool)

(assert (=> b!46971 (= e!24467 (not (= n2!101 n3!28)))))

(assert (= (and d!33024 res!22076) b!46971))

(declare-fun m!49887 () Bool)

(assert (=> d!33024 m!49887))

(assert (=> d!32940 d!33024))

(declare-fun d!33026 () Bool)

(declare-fun e!24469 () Bool)

(assert (=> d!33026 e!24469))

(declare-fun res!22077 () Bool)

(assert (=> d!33026 (=> (not res!22077) (not e!24469))))

(declare-fun lt!8528 () Nat!203)

(assert (=> d!33026 (= res!22077 (<= (repr!0 lt!8528) (repr!0 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))))))

(declare-fun e!24468 () Nat!203)

(assert (=> d!33026 (= lt!8528 e!24468)))

(declare-fun c!9877 () Bool)

(assert (=> d!33026 (= c!9877 (and (is-Succ!184 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))) (is-Succ!184 (n!1339 n3!28))))))

(assert (=> d!33026 (= (-!4 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) (n!1339 n3!28)) lt!8528)))

(declare-fun b!46972 () Bool)

(assert (=> b!46972 (= e!24468 (-!4 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))) (n!1339 (n!1339 n3!28))))))

(declare-fun b!46973 () Bool)

(assert (=> b!46973 (= e!24468 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))))

(declare-fun b!46974 () Bool)

(declare-fun e!24470 () Bool)

(assert (=> b!46974 (= e!24470 (< (repr!0 lt!8528) (repr!0 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))))))

(declare-fun b!46975 () Bool)

(assert (=> b!46975 (= e!24469 e!24470)))

(declare-fun res!22078 () Bool)

(assert (=> b!46975 (=> res!22078 e!24470)))

(assert (=> b!46975 (= res!22078 (not (>!2 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) Zero!187)))))

(declare-fun b!46976 () Bool)

(declare-fun res!22079 () Bool)

(assert (=> b!46976 (=> res!22079 e!24470)))

(assert (=> b!46976 (= res!22079 (not (>!2 (n!1339 n3!28) Zero!187)))))

(assert (= (and d!33026 c!9877) b!46972))

(assert (= (and d!33026 (not c!9877)) b!46973))

(assert (= (and d!33026 res!22077) b!46975))

(assert (= (and b!46975 (not res!22078)) b!46976))

(assert (= (and b!46976 (not res!22079)) b!46974))

(declare-fun m!49889 () Bool)

(assert (=> b!46975 m!49889))

(declare-fun m!49891 () Bool)

(assert (=> b!46974 m!49891))

(assert (=> b!46974 m!49877))

(assert (=> b!46976 m!49851))

(declare-fun m!49893 () Bool)

(assert (=> b!46972 m!49893))

(assert (=> d!33026 m!49891))

(assert (=> d!33026 m!49877))

(assert (=> b!46907 d!33026))

(declare-fun b!46978 () Bool)

(declare-fun e!24471 () Unit!629)

(declare-fun Unit!633 () Unit!629)

(assert (=> b!46978 (= e!24471 Unit!633)))

(declare-fun lt!8530 () Unit!629)

(assert (=> b!46978 (= lt!8530 (associative_plus!0 (n!1339 (n!1339 n1!90)) (n!1339 n2!101) (Succ!184 Zero!187)))))

(declare-fun d!33028 () Bool)

(assert (=> d!33028 (= (+!5 (+!5 (n!1339 n1!90) (n!1339 n2!101)) (Succ!184 Zero!187)) (+!5 (n!1339 n1!90) (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))

(declare-fun lt!8529 () Unit!629)

(assert (=> d!33028 (= lt!8529 e!24471)))

(declare-fun c!9878 () Bool)

(assert (=> d!33028 (= c!9878 (is-Zero!187 (n!1339 n1!90)))))

(assert (=> d!33028 (= (associative_plus!0 (n!1339 n1!90) (n!1339 n2!101) (Succ!184 Zero!187)) lt!8529)))

(declare-fun b!46977 () Bool)

(declare-fun Unit!634 () Unit!629)

(assert (=> b!46977 (= e!24471 Unit!634)))

(assert (= (and d!33028 c!9878) b!46977))

(assert (= (and d!33028 (not c!9878)) b!46978))

(declare-fun m!49895 () Bool)

(assert (=> b!46978 m!49895))

(declare-fun m!49897 () Bool)

(assert (=> d!33028 m!49897))

(assert (=> d!33028 m!49897))

(declare-fun m!49899 () Bool)

(assert (=> d!33028 m!49899))

(assert (=> d!33028 m!49773))

(assert (=> d!33028 m!49773))

(assert (=> d!33028 m!49823))

(assert (=> b!46928 d!33028))

(assert (=> bs!18465 d!32960))

(assert (=> bs!18465 d!32962))

(assert (=> bs!18467 d!32948))

(assert (=> bs!18467 d!32950))

(assert (=> b!46909 d!33012))

(assert (=> b!46909 d!33014))

(assert (=> bs!18468 d!32960))

(assert (=> bs!18468 d!32962))

(declare-fun d!33030 () Bool)

(declare-fun c!9879 () Bool)

(assert (=> d!33030 (= c!9879 (is-Zero!187 (+!5 n1!90 (n!1339 n2!101))))))

(declare-fun e!24472 () Nat!203)

(assert (=> d!33030 (= (+!5 (+!5 n1!90 (n!1339 n2!101)) (Succ!184 Zero!187)) e!24472)))

(declare-fun b!46979 () Bool)

(assert (=> b!46979 (= e!24472 (Succ!184 Zero!187))))

(declare-fun b!46980 () Bool)

(assert (=> b!46980 (= e!24472 (Succ!184 (+!5 (n!1339 (+!5 n1!90 (n!1339 n2!101))) (Succ!184 Zero!187))))))

(assert (= (and d!33030 c!9879) b!46979))

(assert (= (and d!33030 (not c!9879)) b!46980))

(declare-fun m!49901 () Bool)

(assert (=> b!46980 m!49901))

(assert (=> d!32964 d!33030))

(declare-fun d!33032 () Bool)

(declare-fun c!9880 () Bool)

(assert (=> d!33032 (= c!9880 (is-Zero!187 n1!90))))

(declare-fun e!24473 () Nat!203)

(assert (=> d!33032 (= (+!5 n1!90 (n!1339 n2!101)) e!24473)))

(declare-fun b!46981 () Bool)

(assert (=> b!46981 (= e!24473 (n!1339 n2!101))))

(declare-fun b!46982 () Bool)

(assert (=> b!46982 (= e!24473 (Succ!184 (+!5 (n!1339 n1!90) (n!1339 n2!101))))))

(assert (= (and d!33032 c!9880) b!46981))

(assert (= (and d!33032 (not c!9880)) b!46982))

(assert (=> b!46982 m!49897))

(assert (=> d!32964 d!33032))

(assert (=> d!32964 d!32954))

(assert (=> d!32964 d!32956))

(push 1)

(assert (not d!33028))

(assert (not b!46932))

(assert (not b_next!25359))

(assert (not b!46936))

(assert (not b!46935))

(assert (not b!46947))

(assert (not b_next!25367))

(assert (not b_lambda!12469))

(assert (not b_next!25375))

(assert (not b_lambda!12473))

(assert (not d!33010))

(assert (not b!46974))

(assert (not b_lambda!12467))

(assert b_and!36705)

(assert b_and!36707)

(assert (not d!33016))

(assert (not d!33026))

(assert (not b!46955))

(assert (not b!46960))

(assert b_and!36795)

(assert (not b!46942))

(assert (not d!32998))

(assert b_and!36799)

(assert b_and!36801)

(assert (not b!46953))

(assert (not b!46949))

(assert (not b_lambda!12447))

(assert (not b_next!25365))

(assert (not b!46972))

(assert (not b!46951))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert (not b!46934))

(assert b_and!36805)

(assert (not b!46968))

(assert b_and!36709)

(assert (not b!46944))

(assert (not d!32990))

(assert (not b!46958))

(assert (not b!46959))

(assert (not b_lambda!12465))

(assert (not b_lambda!12449))

(assert (not b!46975))

(assert (not d!32992))

(assert (not b!46978))

(assert (not b_next!25371))

(assert b_and!36797)

(assert (not b_next!25363))

(assert (not d!33018))

(assert (not b!46970))

(assert (not b!46982))

(assert (not b_lambda!12471))

(assert (not b!46980))

(assert (not b_lambda!12463))

(assert (not b!46962))

(assert (not b!46956))

(assert (not b!46976))

(assert (not b_lambda!12445))

(assert (not d!33024))

(assert (not b!46964))

(assert (not b_next!25361))

(assert b_and!36803)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25359))

(assert (not b_next!25367))

(assert (not b_next!25375))

(assert b_and!36705)

(assert b_and!36707)

(assert b_and!36795)

(assert b_and!36799)

(assert b_and!36801)

(assert (not b_next!25365))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert b_and!36805)

(assert b_and!36709)

(assert (not b_next!25371))

(assert b_and!36797)

(assert (not b_next!25363))

(assert (not b_next!25361))

(assert b_and!36803)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33034 () Bool)

(declare-fun c!9881 () Bool)

(assert (=> d!33034 (= c!9881 (is-Zero!187 (n!1339 (+!5 n1!90 (n!1339 n2!101)))))))

(declare-fun e!24474 () Nat!203)

(assert (=> d!33034 (= (+!5 (n!1339 (+!5 n1!90 (n!1339 n2!101))) (Succ!184 Zero!187)) e!24474)))

(declare-fun b!46983 () Bool)

(assert (=> b!46983 (= e!24474 (Succ!184 Zero!187))))

(declare-fun b!46984 () Bool)

(assert (=> b!46984 (= e!24474 (Succ!184 (+!5 (n!1339 (n!1339 (+!5 n1!90 (n!1339 n2!101)))) (Succ!184 Zero!187))))))

(assert (= (and d!33034 c!9881) b!46983))

(assert (= (and d!33034 (not c!9881)) b!46984))

(declare-fun m!49903 () Bool)

(assert (=> b!46984 m!49903))

(assert (=> b!46980 d!33034))

(declare-fun d!33036 () Bool)

(declare-fun lt!8531 () Int)

(assert (=> d!33036 (>= lt!8531 0)))

(declare-fun e!24475 () Int)

(assert (=> d!33036 (= lt!8531 e!24475)))

(declare-fun c!9882 () Bool)

(assert (=> d!33036 (= c!9882 (is-Zero!187 (n!1339 lt!8511)))))

(assert (=> d!33036 (= (repr!0 (n!1339 lt!8511)) lt!8531)))

(declare-fun b!46985 () Bool)

(assert (=> b!46985 (= e!24475 0)))

(declare-fun b!46986 () Bool)

(assert (=> b!46986 (= e!24475 (+ (repr!0 (n!1339 (n!1339 lt!8511))) 1))))

(assert (= (and d!33036 c!9882) b!46985))

(assert (= (and d!33036 (not c!9882)) b!46986))

(declare-fun m!49905 () Bool)

(assert (=> b!46986 m!49905))

(assert (=> b!46942 d!33036))

(declare-fun d!33038 () Bool)

(declare-fun c!9883 () Bool)

(assert (=> d!33038 (= c!9883 (is-Zero!187 (n!1339 n1!90)))))

(declare-fun e!24476 () Nat!203)

(assert (=> d!33038 (= (+!5 (n!1339 n1!90) (n!1339 n2!101)) e!24476)))

(declare-fun b!46987 () Bool)

(assert (=> b!46987 (= e!24476 (n!1339 n2!101))))

(declare-fun b!46988 () Bool)

(assert (=> b!46988 (= e!24476 (Succ!184 (+!5 (n!1339 (n!1339 n1!90)) (n!1339 n2!101))))))

(assert (= (and d!33038 c!9883) b!46987))

(assert (= (and d!33038 (not c!9883)) b!46988))

(declare-fun m!49907 () Bool)

(assert (=> b!46988 m!49907))

(assert (=> b!46982 d!33038))

(declare-fun d!33040 () Bool)

(declare-fun res!22080 () Bool)

(declare-fun e!24477 () Bool)

(assert (=> d!33040 (=> (not res!22080) (not e!24477))))

(assert (=> d!33040 (= res!22080 (not (<!2 (n!1339 n3!28) Zero!187)))))

(assert (=> d!33040 (= (>!2 (n!1339 n3!28) Zero!187) e!24477)))

(declare-fun b!46989 () Bool)

(assert (=> b!46989 (= e!24477 (not (= (n!1339 n3!28) Zero!187)))))

(assert (= (and d!33040 res!22080) b!46989))

(declare-fun m!49909 () Bool)

(assert (=> d!33040 m!49909))

(assert (=> b!46976 d!33040))

(declare-fun d!33042 () Bool)

(declare-fun lt!8532 () Int)

(assert (=> d!33042 (>= lt!8532 0)))

(declare-fun e!24478 () Int)

(assert (=> d!33042 (= lt!8532 e!24478)))

(declare-fun c!9884 () Bool)

(assert (=> d!33042 (= c!9884 (is-Zero!187 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))))

(assert (=> d!33042 (= (repr!0 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))) lt!8532)))

(declare-fun b!46990 () Bool)

(assert (=> b!46990 (= e!24478 0)))

(declare-fun b!46991 () Bool)

(assert (=> b!46991 (= e!24478 (+ (repr!0 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))) 1))))

(assert (= (and d!33042 c!9884) b!46990))

(assert (= (and d!33042 (not c!9884)) b!46991))

(declare-fun m!49911 () Bool)

(assert (=> b!46991 m!49911))

(assert (=> b!46964 d!33042))

(declare-fun d!33044 () Bool)

(declare-fun lt!8535 () Bool)

(assert (=> d!33044 (= lt!8535 (< (repr!0 (+!5 n1!90 n2!101)) (repr!0 Zero!187)))))

(declare-fun e!24481 () Bool)

(assert (=> d!33044 (= lt!8535 e!24481)))

(declare-fun c!9887 () Bool)

(assert (=> d!33044 (= c!9887 (and (is-Succ!184 (+!5 n1!90 n2!101)) (is-Succ!184 Zero!187)))))

(assert (=> d!33044 (= (<!2 (+!5 n1!90 n2!101) Zero!187) lt!8535)))

(declare-fun b!46996 () Bool)

(assert (=> b!46996 (= e!24481 (<!2 (n!1339 (+!5 n1!90 n2!101)) (n!1339 Zero!187)))))

(declare-fun b!46997 () Bool)

(assert (=> b!46997 (= e!24481 (and (is-Zero!187 (+!5 n1!90 n2!101)) (is-Succ!184 Zero!187)))))

(assert (= (and d!33044 c!9887) b!46996))

(assert (= (and d!33044 (not c!9887)) b!46997))

(assert (=> d!33044 m!49783))

(assert (=> d!33044 m!49831))

(declare-fun m!49913 () Bool)

(assert (=> d!33044 m!49913))

(declare-fun m!49915 () Bool)

(assert (=> b!46996 m!49915))

(assert (=> d!32990 d!33044))

(assert (=> b!46960 d!33040))

(declare-fun b!46999 () Bool)

(declare-fun e!24482 () Unit!629)

(declare-fun Unit!635 () Unit!629)

(assert (=> b!46999 (= e!24482 Unit!635)))

(declare-fun lt!8537 () Unit!629)

(assert (=> b!46999 (= lt!8537 (associative_plus!0 (n!1339 (n!1339 (n!1339 n1!90))) (n!1339 n2!101) (Succ!184 Zero!187)))))

(declare-fun d!33046 () Bool)

(assert (=> d!33046 (= (+!5 (+!5 (n!1339 (n!1339 n1!90)) (n!1339 n2!101)) (Succ!184 Zero!187)) (+!5 (n!1339 (n!1339 n1!90)) (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))

(declare-fun lt!8536 () Unit!629)

(assert (=> d!33046 (= lt!8536 e!24482)))

(declare-fun c!9888 () Bool)

(assert (=> d!33046 (= c!9888 (is-Zero!187 (n!1339 (n!1339 n1!90))))))

(assert (=> d!33046 (= (associative_plus!0 (n!1339 (n!1339 n1!90)) (n!1339 n2!101) (Succ!184 Zero!187)) lt!8536)))

(declare-fun b!46998 () Bool)

(declare-fun Unit!636 () Unit!629)

(assert (=> b!46998 (= e!24482 Unit!636)))

(assert (= (and d!33046 c!9888) b!46998))

(assert (= (and d!33046 (not c!9888)) b!46999))

(declare-fun m!49917 () Bool)

(assert (=> b!46999 m!49917))

(assert (=> d!33046 m!49907))

(assert (=> d!33046 m!49907))

(declare-fun m!49919 () Bool)

(assert (=> d!33046 m!49919))

(assert (=> d!33046 m!49773))

(assert (=> d!33046 m!49773))

(assert (=> d!33046 m!49883))

(assert (=> b!46978 d!33046))

(declare-fun d!33048 () Bool)

(declare-fun lt!8538 () Int)

(assert (=> d!33048 (>= lt!8538 0)))

(declare-fun e!24483 () Int)

(assert (=> d!33048 (= lt!8538 e!24483)))

(declare-fun c!9889 () Bool)

(assert (=> d!33048 (= c!9889 (is-Zero!187 lt!8518))))

(assert (=> d!33048 (= (repr!0 lt!8518) lt!8538)))

(declare-fun b!47000 () Bool)

(assert (=> b!47000 (= e!24483 0)))

(declare-fun b!47001 () Bool)

(assert (=> b!47001 (= e!24483 (+ (repr!0 (n!1339 lt!8518)) 1))))

(assert (= (and d!33048 c!9889) b!47000))

(assert (= (and d!33048 (not c!9889)) b!47001))

(declare-fun m!49921 () Bool)

(assert (=> b!47001 m!49921))

(assert (=> d!32992 d!33048))

(declare-fun d!33050 () Bool)

(declare-fun lt!8539 () Int)

(assert (=> d!33050 (>= lt!8539 0)))

(declare-fun e!24484 () Int)

(assert (=> d!33050 (= lt!8539 e!24484)))

(declare-fun c!9890 () Bool)

(assert (=> d!33050 (= c!9890 (is-Zero!187 (n!1339 n2!101)))))

(assert (=> d!33050 (= (repr!0 (n!1339 n2!101)) lt!8539)))

(declare-fun b!47002 () Bool)

(assert (=> b!47002 (= e!24484 0)))

(declare-fun b!47003 () Bool)

(assert (=> b!47003 (= e!24484 (+ (repr!0 (n!1339 (n!1339 n2!101))) 1))))

(assert (= (and d!33050 c!9890) b!47002))

(assert (= (and d!33050 (not c!9890)) b!47003))

(declare-fun m!49923 () Bool)

(assert (=> b!47003 m!49923))

(assert (=> d!32992 d!33050))

(declare-fun d!33052 () Bool)

(declare-fun lt!8540 () Bool)

(assert (=> d!33052 (= lt!8540 (< (repr!0 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) (repr!0 Zero!187)))))

(declare-fun e!24485 () Bool)

(assert (=> d!33052 (= lt!8540 e!24485)))

(declare-fun c!9891 () Bool)

(assert (=> d!33052 (= c!9891 (and (is-Succ!184 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) (is-Succ!184 Zero!187)))))

(assert (=> d!33052 (= (<!2 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) Zero!187) lt!8540)))

(declare-fun b!47004 () Bool)

(assert (=> b!47004 (= e!24485 (<!2 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) (n!1339 Zero!187)))))

(declare-fun b!47005 () Bool)

(assert (=> b!47005 (= e!24485 (and (is-Zero!187 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) (is-Succ!184 Zero!187)))))

(assert (= (and d!33052 c!9891) b!47004))

(assert (= (and d!33052 (not c!9891)) b!47005))

(assert (=> d!33052 m!49775))

(assert (=> d!33052 m!49819))

(assert (=> d!33052 m!49913))

(declare-fun m!49925 () Bool)

(assert (=> b!47004 m!49925))

(assert (=> d!33016 d!33052))

(declare-fun d!33054 () Bool)

(declare-fun c!9892 () Bool)

(assert (=> d!33054 (= c!9892 (is-Zero!187 (n!1339 (Succ!184 Zero!187))))))

(declare-fun e!24486 () Nat!203)

(assert (=> d!33054 (= (+!5 (n!1339 (Succ!184 Zero!187)) (n!1339 n2!101)) e!24486)))

(declare-fun b!47006 () Bool)

(assert (=> b!47006 (= e!24486 (n!1339 n2!101))))

(declare-fun b!47007 () Bool)

(assert (=> b!47007 (= e!24486 (Succ!184 (+!5 (n!1339 (n!1339 (Succ!184 Zero!187))) (n!1339 n2!101))))))

(assert (= (and d!33054 c!9892) b!47006))

(assert (= (and d!33054 (not c!9892)) b!47007))

(declare-fun m!49927 () Bool)

(assert (=> b!47007 m!49927))

(assert (=> b!46949 d!33054))

(declare-fun d!33056 () Bool)

(declare-fun lt!8541 () Int)

(assert (=> d!33056 (>= lt!8541 0)))

(declare-fun e!24487 () Int)

(assert (=> d!33056 (= lt!8541 e!24487)))

(declare-fun c!9893 () Bool)

(assert (=> d!33056 (= c!9893 (is-Zero!187 lt!8528))))

(assert (=> d!33056 (= (repr!0 lt!8528) lt!8541)))

(declare-fun b!47008 () Bool)

(assert (=> b!47008 (= e!24487 0)))

(declare-fun b!47009 () Bool)

(assert (=> b!47009 (= e!24487 (+ (repr!0 (n!1339 lt!8528)) 1))))

(assert (= (and d!33056 c!9893) b!47008))

(assert (= (and d!33056 (not c!9893)) b!47009))

(declare-fun m!49929 () Bool)

(assert (=> b!47009 m!49929))

(assert (=> d!33026 d!33056))

(assert (=> d!33026 d!33042))

(declare-fun d!33058 () Bool)

(declare-fun lt!8542 () Bool)

(assert (=> d!33058 (= lt!8542 (< (repr!0 n2!101) (repr!0 Zero!187)))))

(declare-fun e!24488 () Bool)

(assert (=> d!33058 (= lt!8542 e!24488)))

(declare-fun c!9894 () Bool)

(assert (=> d!33058 (= c!9894 (and (is-Succ!184 n2!101) (is-Succ!184 Zero!187)))))

(assert (=> d!33058 (= (<!2 n2!101 Zero!187) lt!8542)))

(declare-fun b!47010 () Bool)

(assert (=> b!47010 (= e!24488 (<!2 (n!1339 n2!101) (n!1339 Zero!187)))))

(declare-fun b!47011 () Bool)

(assert (=> b!47011 (= e!24488 (and (is-Zero!187 n2!101) (is-Succ!184 Zero!187)))))

(assert (= (and d!33058 c!9894) b!47010))

(assert (= (and d!33058 (not c!9894)) b!47011))

(assert (=> d!33058 m!49809))

(assert (=> d!33058 m!49913))

(declare-fun m!49931 () Bool)

(assert (=> b!47010 m!49931))

(assert (=> d!33018 d!33058))

(assert (=> b!46955 d!33050))

(declare-fun d!33060 () Bool)

(declare-fun c!9895 () Bool)

(assert (=> d!33060 (= c!9895 (is-Zero!187 (n!1339 (n!1339 n1!90))))))

(declare-fun e!24489 () Nat!203)

(assert (=> d!33060 (= (+!5 (n!1339 (n!1339 n1!90)) (+!5 (n!1339 n2!101) (Succ!184 Zero!187))) e!24489)))

(declare-fun b!47012 () Bool)

(assert (=> b!47012 (= e!24489 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))

(declare-fun b!47013 () Bool)

(assert (=> b!47013 (= e!24489 (Succ!184 (+!5 (n!1339 (n!1339 (n!1339 n1!90))) (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))))

(assert (= (and d!33060 c!9895) b!47012))

(assert (= (and d!33060 (not c!9895)) b!47013))

(assert (=> b!47013 m!49773))

(declare-fun m!49933 () Bool)

(assert (=> b!47013 m!49933))

(assert (=> b!46968 d!33060))

(declare-fun d!33062 () Bool)

(declare-fun c!9896 () Bool)

(assert (=> d!33062 (= c!9896 (is-Zero!187 (+!5 (n!1339 n1!90) (n!1339 n2!101))))))

(declare-fun e!24490 () Nat!203)

(assert (=> d!33062 (= (+!5 (+!5 (n!1339 n1!90) (n!1339 n2!101)) (Succ!184 Zero!187)) e!24490)))

(declare-fun b!47014 () Bool)

(assert (=> b!47014 (= e!24490 (Succ!184 Zero!187))))

(declare-fun b!47015 () Bool)

(assert (=> b!47015 (= e!24490 (Succ!184 (+!5 (n!1339 (+!5 (n!1339 n1!90) (n!1339 n2!101))) (Succ!184 Zero!187))))))

(assert (= (and d!33062 c!9896) b!47014))

(assert (= (and d!33062 (not c!9896)) b!47015))

(declare-fun m!49935 () Bool)

(assert (=> b!47015 m!49935))

(assert (=> d!33028 d!33062))

(assert (=> d!33028 d!33038))

(assert (=> d!33028 d!33020))

(assert (=> d!33028 d!32956))

(assert (=> b!46974 d!33056))

(assert (=> b!46974 d!33042))

(declare-fun d!33064 () Bool)

(declare-fun lt!8543 () Int)

(assert (=> d!33064 (>= lt!8543 0)))

(declare-fun e!24491 () Int)

(assert (=> d!33064 (= lt!8543 e!24491)))

(declare-fun c!9897 () Bool)

(assert (=> d!33064 (= c!9897 (is-Zero!187 (n!1339 lt!8510)))))

(assert (=> d!33064 (= (repr!0 (n!1339 lt!8510)) lt!8543)))

(declare-fun b!47016 () Bool)

(assert (=> b!47016 (= e!24491 0)))

(declare-fun b!47017 () Bool)

(assert (=> b!47017 (= e!24491 (+ (repr!0 (n!1339 (n!1339 lt!8510))) 1))))

(assert (= (and d!33064 c!9897) b!47016))

(assert (= (and d!33064 (not c!9897)) b!47017))

(declare-fun m!49937 () Bool)

(assert (=> b!47017 m!49937))

(assert (=> b!46962 d!33064))

(declare-fun d!33066 () Bool)

(declare-fun lt!8544 () Int)

(assert (=> d!33066 (>= lt!8544 0)))

(declare-fun e!24492 () Int)

(assert (=> d!33066 (= lt!8544 e!24492)))

(declare-fun c!9898 () Bool)

(assert (=> d!33066 (= c!9898 (is-Zero!187 (n!1339 lt!8509)))))

(assert (=> d!33066 (= (repr!0 (n!1339 lt!8509)) lt!8544)))

(declare-fun b!47018 () Bool)

(assert (=> b!47018 (= e!24492 0)))

(declare-fun b!47019 () Bool)

(assert (=> b!47019 (= e!24492 (+ (repr!0 (n!1339 (n!1339 lt!8509))) 1))))

(assert (= (and d!33066 c!9898) b!47018))

(assert (= (and d!33066 (not c!9898)) b!47019))

(declare-fun m!49939 () Bool)

(assert (=> b!47019 m!49939))

(assert (=> b!46953 d!33066))

(declare-fun d!33068 () Bool)

(declare-fun c!9899 () Bool)

(assert (=> d!33068 (= c!9899 (is-Zero!187 (n!1339 (n!1339 n1!90))))))

(declare-fun e!24493 () Nat!203)

(assert (=> d!33068 (= (+!5 (n!1339 (n!1339 n1!90)) (-!4 n2!101 n3!28)) e!24493)))

(declare-fun b!47020 () Bool)

(assert (=> b!47020 (= e!24493 (-!4 n2!101 n3!28))))

(declare-fun b!47021 () Bool)

(assert (=> b!47021 (= e!24493 (Succ!184 (+!5 (n!1339 (n!1339 (n!1339 n1!90))) (-!4 n2!101 n3!28))))))

(assert (= (and d!33068 c!9899) b!47020))

(assert (= (and d!33068 (not c!9899)) b!47021))

(assert (=> b!47021 m!49779))

(declare-fun m!49941 () Bool)

(assert (=> b!47021 m!49941))

(assert (=> b!46970 d!33068))

(declare-fun d!33070 () Bool)

(declare-fun lt!8545 () Bool)

(assert (=> d!33070 (= lt!8545 (< (repr!0 n3!28) (repr!0 Zero!187)))))

(declare-fun e!24494 () Bool)

(assert (=> d!33070 (= lt!8545 e!24494)))

(declare-fun c!9900 () Bool)

(assert (=> d!33070 (= c!9900 (and (is-Succ!184 n3!28) (is-Succ!184 Zero!187)))))

(assert (=> d!33070 (= (<!2 n3!28 Zero!187) lt!8545)))

(declare-fun b!47022 () Bool)

(assert (=> b!47022 (= e!24494 (<!2 (n!1339 n3!28) (n!1339 Zero!187)))))

(declare-fun b!47023 () Bool)

(assert (=> b!47023 (= e!24494 (and (is-Zero!187 n3!28) (is-Succ!184 Zero!187)))))

(assert (= (and d!33070 c!9900) b!47022))

(assert (= (and d!33070 (not c!9900)) b!47023))

(declare-fun m!49943 () Bool)

(assert (=> d!33070 m!49943))

(assert (=> d!33070 m!49913))

(declare-fun m!49945 () Bool)

(assert (=> b!47022 m!49945))

(assert (=> d!32998 d!33070))

(declare-fun d!33072 () Bool)

(declare-fun lt!8546 () Int)

(assert (=> d!33072 (>= lt!8546 0)))

(declare-fun e!24495 () Int)

(assert (=> d!33072 (= lt!8546 e!24495)))

(declare-fun c!9901 () Bool)

(assert (=> d!33072 (= c!9901 (is-Zero!187 lt!8525))))

(assert (=> d!33072 (= (repr!0 lt!8525) lt!8546)))

(declare-fun b!47024 () Bool)

(assert (=> b!47024 (= e!24495 0)))

(declare-fun b!47025 () Bool)

(assert (=> b!47025 (= e!24495 (+ (repr!0 (n!1339 lt!8525)) 1))))

(assert (= (and d!33072 c!9901) b!47024))

(assert (= (and d!33072 (not c!9901)) b!47025))

(declare-fun m!49947 () Bool)

(assert (=> b!47025 m!49947))

(assert (=> b!46958 d!33072))

(declare-fun d!33074 () Bool)

(declare-fun lt!8547 () Int)

(assert (=> d!33074 (>= lt!8547 0)))

(declare-fun e!24496 () Int)

(assert (=> d!33074 (= lt!8547 e!24496)))

(declare-fun c!9902 () Bool)

(assert (=> d!33074 (= c!9902 (is-Zero!187 (n!1339 (+!5 n1!90 n2!101))))))

(assert (=> d!33074 (= (repr!0 (n!1339 (+!5 n1!90 n2!101))) lt!8547)))

(declare-fun b!47026 () Bool)

(assert (=> b!47026 (= e!24496 0)))

(declare-fun b!47027 () Bool)

(assert (=> b!47027 (= e!24496 (+ (repr!0 (n!1339 (n!1339 (+!5 n1!90 n2!101)))) 1))))

(assert (= (and d!33074 c!9902) b!47026))

(assert (= (and d!33074 (not c!9902)) b!47027))

(declare-fun m!49949 () Bool)

(assert (=> b!47027 m!49949))

(assert (=> b!46958 d!33074))

(declare-fun d!33076 () Bool)

(declare-fun res!22081 () Bool)

(declare-fun e!24497 () Bool)

(assert (=> d!33076 (=> (not res!22081) (not e!24497))))

(assert (=> d!33076 (= res!22081 (not (<!2 (n!1339 n2!101) Zero!187)))))

(assert (=> d!33076 (= (>!2 (n!1339 n2!101) Zero!187) e!24497)))

(declare-fun b!47028 () Bool)

(assert (=> b!47028 (= e!24497 (not (= (n!1339 n2!101) Zero!187)))))

(assert (= (and d!33076 res!22081) b!47028))

(declare-fun m!49951 () Bool)

(assert (=> d!33076 m!49951))

(assert (=> b!46935 d!33076))

(declare-fun d!33078 () Bool)

(declare-fun lt!8548 () Bool)

(assert (=> d!33078 (= lt!8548 (< (repr!0 n2!101) (repr!0 n3!28)))))

(declare-fun e!24498 () Bool)

(assert (=> d!33078 (= lt!8548 e!24498)))

(declare-fun c!9903 () Bool)

(assert (=> d!33078 (= c!9903 (and (is-Succ!184 n2!101) (is-Succ!184 n3!28)))))

(assert (=> d!33078 (= (<!2 n2!101 n3!28) lt!8548)))

(declare-fun b!47029 () Bool)

(assert (=> b!47029 (= e!24498 (<!2 (n!1339 n2!101) (n!1339 n3!28)))))

(declare-fun b!47030 () Bool)

(assert (=> b!47030 (= e!24498 (and (is-Zero!187 n2!101) (is-Succ!184 n3!28)))))

(assert (= (and d!33078 c!9903) b!47029))

(assert (= (and d!33078 (not c!9903)) b!47030))

(assert (=> d!33078 m!49809))

(assert (=> d!33078 m!49943))

(declare-fun m!49953 () Bool)

(assert (=> b!47029 m!49953))

(assert (=> d!33024 d!33078))

(assert (=> b!46944 d!33074))

(declare-fun d!33080 () Bool)

(declare-fun c!9904 () Bool)

(assert (=> d!33080 (= c!9904 (is-Zero!187 (n!1339 (n!1339 (n!1339 n2!101)))))))

(declare-fun e!24499 () Nat!203)

(assert (=> d!33080 (= (+!5 (n!1339 (n!1339 (n!1339 n2!101))) (Succ!184 Zero!187)) e!24499)))

(declare-fun b!47031 () Bool)

(assert (=> b!47031 (= e!24499 (Succ!184 Zero!187))))

(declare-fun b!47032 () Bool)

(assert (=> b!47032 (= e!24499 (Succ!184 (+!5 (n!1339 (n!1339 (n!1339 (n!1339 n2!101)))) (Succ!184 Zero!187))))))

(assert (= (and d!33080 c!9904) b!47031))

(assert (= (and d!33080 (not c!9904)) b!47032))

(declare-fun m!49955 () Bool)

(assert (=> b!47032 m!49955))

(assert (=> b!46947 d!33080))

(assert (=> b!46934 d!33048))

(assert (=> b!46934 d!33050))

(assert (=> d!33010 d!33072))

(assert (=> d!33010 d!33074))

(assert (=> b!46936 d!33040))

(declare-fun d!33082 () Bool)

(declare-fun res!22082 () Bool)

(declare-fun e!24500 () Bool)

(assert (=> d!33082 (=> (not res!22082) (not e!24500))))

(assert (=> d!33082 (= res!22082 (not (<!2 (n!1339 (+!5 n1!90 n2!101)) Zero!187)))))

(assert (=> d!33082 (= (>!2 (n!1339 (+!5 n1!90 n2!101)) Zero!187) e!24500)))

(declare-fun b!47033 () Bool)

(assert (=> b!47033 (= e!24500 (not (= (n!1339 (+!5 n1!90 n2!101)) Zero!187)))))

(assert (= (and d!33082 res!22082) b!47033))

(declare-fun m!49957 () Bool)

(assert (=> d!33082 m!49957))

(assert (=> b!46959 d!33082))

(declare-fun d!33084 () Bool)

(declare-fun c!9905 () Bool)

(assert (=> d!33084 (= c!9905 (is-Zero!187 (n!1339 (n!1339 n1!90))))))

(declare-fun e!24501 () Nat!203)

(assert (=> d!33084 (= (+!5 (n!1339 (n!1339 n1!90)) n2!101) e!24501)))

(declare-fun b!47034 () Bool)

(assert (=> b!47034 (= e!24501 n2!101)))

(declare-fun b!47035 () Bool)

(assert (=> b!47035 (= e!24501 (Succ!184 (+!5 (n!1339 (n!1339 (n!1339 n1!90))) n2!101)))))

(assert (= (and d!33084 c!9905) b!47034))

(assert (= (and d!33084 (not c!9905)) b!47035))

(declare-fun m!49959 () Bool)

(assert (=> b!47035 m!49959))

(assert (=> b!46951 d!33084))

(declare-fun d!33086 () Bool)

(declare-fun e!24503 () Bool)

(assert (=> d!33086 e!24503))

(declare-fun res!22083 () Bool)

(assert (=> d!33086 (=> (not res!22083) (not e!24503))))

(declare-fun lt!8549 () Nat!203)

(assert (=> d!33086 (= res!22083 (<= (repr!0 lt!8549) (repr!0 (n!1339 (n!1339 (+!5 n1!90 n2!101))))))))

(declare-fun e!24502 () Nat!203)

(assert (=> d!33086 (= lt!8549 e!24502)))

(declare-fun c!9906 () Bool)

(assert (=> d!33086 (= c!9906 (and (is-Succ!184 (n!1339 (n!1339 (+!5 n1!90 n2!101)))) (is-Succ!184 (n!1339 (n!1339 n3!28)))))))

(assert (=> d!33086 (= (-!4 (n!1339 (n!1339 (+!5 n1!90 n2!101))) (n!1339 (n!1339 n3!28))) lt!8549)))

(declare-fun b!47036 () Bool)

(assert (=> b!47036 (= e!24502 (-!4 (n!1339 (n!1339 (n!1339 (+!5 n1!90 n2!101)))) (n!1339 (n!1339 (n!1339 n3!28)))))))

(declare-fun b!47037 () Bool)

(assert (=> b!47037 (= e!24502 (n!1339 (n!1339 (+!5 n1!90 n2!101))))))

(declare-fun e!24504 () Bool)

(declare-fun b!47038 () Bool)

(assert (=> b!47038 (= e!24504 (< (repr!0 lt!8549) (repr!0 (n!1339 (n!1339 (+!5 n1!90 n2!101))))))))

(declare-fun b!47039 () Bool)

(assert (=> b!47039 (= e!24503 e!24504)))

(declare-fun res!22084 () Bool)

(assert (=> b!47039 (=> res!22084 e!24504)))

(assert (=> b!47039 (= res!22084 (not (>!2 (n!1339 (n!1339 (+!5 n1!90 n2!101))) Zero!187)))))

(declare-fun b!47040 () Bool)

(declare-fun res!22085 () Bool)

(assert (=> b!47040 (=> res!22085 e!24504)))

(assert (=> b!47040 (= res!22085 (not (>!2 (n!1339 (n!1339 n3!28)) Zero!187)))))

(assert (= (and d!33086 c!9906) b!47036))

(assert (= (and d!33086 (not c!9906)) b!47037))

(assert (= (and d!33086 res!22083) b!47039))

(assert (= (and b!47039 (not res!22084)) b!47040))

(assert (= (and b!47040 (not res!22085)) b!47038))

(declare-fun m!49961 () Bool)

(assert (=> b!47039 m!49961))

(declare-fun m!49963 () Bool)

(assert (=> b!47038 m!49963))

(assert (=> b!47038 m!49949))

(declare-fun m!49965 () Bool)

(assert (=> b!47040 m!49965))

(declare-fun m!49967 () Bool)

(assert (=> b!47036 m!49967))

(assert (=> d!33086 m!49963))

(assert (=> d!33086 m!49949))

(assert (=> b!46956 d!33086))

(declare-fun d!33088 () Bool)

(declare-fun e!24506 () Bool)

(assert (=> d!33088 e!24506))

(declare-fun res!22086 () Bool)

(assert (=> d!33088 (=> (not res!22086) (not e!24506))))

(declare-fun lt!8550 () Nat!203)

(assert (=> d!33088 (= res!22086 (<= (repr!0 lt!8550) (repr!0 (n!1339 (n!1339 n2!101)))))))

(declare-fun e!24505 () Nat!203)

(assert (=> d!33088 (= lt!8550 e!24505)))

(declare-fun c!9907 () Bool)

(assert (=> d!33088 (= c!9907 (and (is-Succ!184 (n!1339 (n!1339 n2!101))) (is-Succ!184 (n!1339 (n!1339 n3!28)))))))

(assert (=> d!33088 (= (-!4 (n!1339 (n!1339 n2!101)) (n!1339 (n!1339 n3!28))) lt!8550)))

(declare-fun b!47041 () Bool)

(assert (=> b!47041 (= e!24505 (-!4 (n!1339 (n!1339 (n!1339 n2!101))) (n!1339 (n!1339 (n!1339 n3!28)))))))

(declare-fun b!47042 () Bool)

(assert (=> b!47042 (= e!24505 (n!1339 (n!1339 n2!101)))))

(declare-fun b!47043 () Bool)

(declare-fun e!24507 () Bool)

(assert (=> b!47043 (= e!24507 (< (repr!0 lt!8550) (repr!0 (n!1339 (n!1339 n2!101)))))))

(declare-fun b!47044 () Bool)

(assert (=> b!47044 (= e!24506 e!24507)))

(declare-fun res!22087 () Bool)

(assert (=> b!47044 (=> res!22087 e!24507)))

(assert (=> b!47044 (= res!22087 (not (>!2 (n!1339 (n!1339 n2!101)) Zero!187)))))

(declare-fun b!47045 () Bool)

(declare-fun res!22088 () Bool)

(assert (=> b!47045 (=> res!22088 e!24507)))

(assert (=> b!47045 (= res!22088 (not (>!2 (n!1339 (n!1339 n3!28)) Zero!187)))))

(assert (= (and d!33088 c!9907) b!47041))

(assert (= (and d!33088 (not c!9907)) b!47042))

(assert (= (and d!33088 res!22086) b!47044))

(assert (= (and b!47044 (not res!22087)) b!47045))

(assert (= (and b!47045 (not res!22088)) b!47043))

(declare-fun m!49969 () Bool)

(assert (=> b!47044 m!49969))

(declare-fun m!49971 () Bool)

(assert (=> b!47043 m!49971))

(assert (=> b!47043 m!49923))

(assert (=> b!47045 m!49965))

(declare-fun m!49973 () Bool)

(assert (=> b!47041 m!49973))

(assert (=> d!33088 m!49971))

(assert (=> d!33088 m!49923))

(assert (=> b!46932 d!33088))

(declare-fun d!33090 () Bool)

(declare-fun e!24509 () Bool)

(assert (=> d!33090 e!24509))

(declare-fun res!22089 () Bool)

(assert (=> d!33090 (=> (not res!22089) (not e!24509))))

(declare-fun lt!8551 () Nat!203)

(assert (=> d!33090 (= res!22089 (<= (repr!0 lt!8551) (repr!0 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))))))

(declare-fun e!24508 () Nat!203)

(assert (=> d!33090 (= lt!8551 e!24508)))

(declare-fun c!9908 () Bool)

(assert (=> d!33090 (= c!9908 (and (is-Succ!184 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))) (is-Succ!184 (n!1339 (n!1339 n3!28)))))))

(assert (=> d!33090 (= (-!4 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))) (n!1339 (n!1339 n3!28))) lt!8551)))

(declare-fun b!47046 () Bool)

(assert (=> b!47046 (= e!24508 (-!4 (n!1339 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))))) (n!1339 (n!1339 (n!1339 n3!28)))))))

(declare-fun b!47047 () Bool)

(assert (=> b!47047 (= e!24508 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))))

(declare-fun e!24510 () Bool)

(declare-fun b!47048 () Bool)

(assert (=> b!47048 (= e!24510 (< (repr!0 lt!8551) (repr!0 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))))))))

(declare-fun b!47049 () Bool)

(assert (=> b!47049 (= e!24509 e!24510)))

(declare-fun res!22090 () Bool)

(assert (=> b!47049 (=> res!22090 e!24510)))

(assert (=> b!47049 (= res!22090 (not (>!2 (n!1339 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187))))) Zero!187)))))

(declare-fun b!47050 () Bool)

(declare-fun res!22091 () Bool)

(assert (=> b!47050 (=> res!22091 e!24510)))

(assert (=> b!47050 (= res!22091 (not (>!2 (n!1339 (n!1339 n3!28)) Zero!187)))))

(assert (= (and d!33090 c!9908) b!47046))

(assert (= (and d!33090 (not c!9908)) b!47047))

(assert (= (and d!33090 res!22089) b!47049))

(assert (= (and b!47049 (not res!22090)) b!47050))

(assert (= (and b!47050 (not res!22091)) b!47048))

(declare-fun m!49975 () Bool)

(assert (=> b!47049 m!49975))

(declare-fun m!49977 () Bool)

(assert (=> b!47048 m!49977))

(assert (=> b!47048 m!49911))

(assert (=> b!47050 m!49965))

(declare-fun m!49979 () Bool)

(assert (=> b!47046 m!49979))

(assert (=> d!33090 m!49977))

(assert (=> d!33090 m!49911))

(assert (=> b!46972 d!33090))

(declare-fun d!33092 () Bool)

(declare-fun res!22092 () Bool)

(declare-fun e!24511 () Bool)

(assert (=> d!33092 (=> (not res!22092) (not e!24511))))

(assert (=> d!33092 (= res!22092 (not (<!2 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) Zero!187)))))

(assert (=> d!33092 (= (>!2 (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) Zero!187) e!24511)))

(declare-fun b!47051 () Bool)

(assert (=> b!47051 (= e!24511 (not (= (n!1339 (+!5 n1!90 (+!5 (n!1339 n2!101) (Succ!184 Zero!187)))) Zero!187)))))

(assert (= (and d!33092 res!22092) b!47051))

(declare-fun m!49981 () Bool)

(assert (=> d!33092 m!49981))

(assert (=> b!46975 d!33092))

(push 1)

(assert (not b!47044))

(assert (not b!47007))

(assert (not b!46986))

(assert (not b!46996))

(assert (not b!47049))

(assert (not d!33046))

(assert (not b!47015))

(assert (not d!33082))

(assert (not b_next!25359))

(assert (not d!33092))

(assert (not b!47046))

(assert (not b_next!25367))

(assert (not b!47039))

(assert (not b_lambda!12469))

(assert (not b_next!25375))

(assert (not b_lambda!12473))

(assert (not b!47017))

(assert (not b!46988))

(assert (not b!47036))

(assert (not b!46991))

(assert (not b_lambda!12467))

(assert b_and!36705)

(assert (not b!47019))

(assert b_and!36707)

(assert (not b!47050))

(assert (not b!47029))

(assert b_and!36795)

(assert (not d!33078))

(assert (not b!47048))

(assert (not b!47043))

(assert b_and!36799)

(assert (not b!47032))

(assert b_and!36801)

(assert (not b!47010))

(assert (not d!33070))

(assert (not b_lambda!12447))

(assert (not b_next!25365))

(assert (not d!33044))

(assert (not b!47003))

(assert (not d!33090))

(assert (not b!47004))

(assert (not d!33076))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert (not d!33052))

(assert (not b!46999))

(assert b_and!36805)

(assert (not b!46984))

(assert (not b!47009))

(assert b_and!36709)

(assert (not d!33040))

(assert (not d!33086))

(assert (not b_lambda!12465))

(assert (not b_lambda!12449))

(assert (not b_next!25371))

(assert (not b!47045))

(assert b_and!36797)

(assert (not b_next!25363))

(assert (not b!47040))

(assert (not b_lambda!12471))

(assert (not b_lambda!12463))

(assert (not b!47038))

(assert (not b!47022))

(assert (not d!33088))

(assert (not b!47035))

(assert (not b!47027))

(assert (not b!47013))

(assert (not b!47021))

(assert (not b_lambda!12445))

(assert (not b!47001))

(assert (not d!33058))

(assert (not b!47041))

(assert (not b_next!25361))

(assert (not b!47025))

(assert b_and!36803)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25359))

(assert (not b_next!25367))

(assert (not b_next!25375))

(assert b_and!36705)

(assert b_and!36707)

(assert b_and!36795)

(assert b_and!36799)

(assert b_and!36801)

(assert (not b_next!25365))

(assert (not b_next!25373))

(assert (not b_next!25369))

(assert b_and!36805)

(assert b_and!36709)

(assert (not b_next!25371))

(assert b_and!36797)

(assert (not b_next!25363))

(assert (not b_next!25361))

(assert b_and!36803)

(check-sat)

(pop 1)

