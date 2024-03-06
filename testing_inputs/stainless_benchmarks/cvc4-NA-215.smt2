; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1630 () Bool)

(assert start!1630)

(declare-fun b_free!713 () Bool)

(declare-fun b_next!1537 () Bool)

(assert (=> start!1630 (= b_free!713 (not b_next!1537))))

(declare-fun tp!1204 () Bool)

(declare-fun b_and!2817 () Bool)

(assert (=> start!1630 (= tp!1204 b_and!2817)))

(declare-fun b_free!715 () Bool)

(declare-fun b_next!1539 () Bool)

(assert (=> start!1630 (= b_free!715 (not b_next!1539))))

(declare-fun tp!1202 () Bool)

(declare-fun b_and!2819 () Bool)

(assert (=> start!1630 (= tp!1202 b_and!2819)))

(declare-fun b!8292 () Bool)

(declare-fun b_free!717 () Bool)

(declare-fun b_next!1541 () Bool)

(assert (=> b!8292 (= b_free!717 (not b_next!1541))))

(declare-fun tp!1201 () Bool)

(declare-fun b_and!2821 () Bool)

(assert (=> b!8292 (= tp!1201 b_and!2821)))

(declare-fun b_free!719 () Bool)

(declare-fun b_next!1543 () Bool)

(assert (=> b!8292 (= b_free!719 (not b_next!1543))))

(declare-fun tp!1200 () Bool)

(declare-fun b_and!2823 () Bool)

(assert (=> b!8292 (= tp!1200 b_and!2823)))

(declare-fun b_free!721 () Bool)

(declare-fun b_next!1545 () Bool)

(assert (=> b!8292 (= b_free!721 (not b_next!1545))))

(declare-fun tp!1203 () Bool)

(declare-fun b_and!2825 () Bool)

(assert (=> b!8292 (= tp!1203 b_and!2825)))

(declare-fun lambda!1869 () Int)

(declare-fun f!585 () Int)

(declare-fun b_next!1547 () Bool)

(assert (=> start!1630 (= b_next!1537 (or (and start!1630 (= lambda!1869 f!585)) b_next!1547))))

(declare-fun b_next!1549 () Bool)

(declare-fun f!608 () Int)

(assert (=> start!1630 (= b_next!1539 (or (and start!1630 (= lambda!1869 f!608)) b_next!1549))))

(declare-fun b!8293 () Bool)

(assert (=> b!8293 true))

(declare-fun lambda!1870 () Int)

(declare-fun order!69 () Int)

(declare-fun order!71 () Int)

(declare-fun dynLambda!206 (Int Int) Int)

(declare-fun dynLambda!207 (Int Int) Int)

(assert (=> b!8293 (< (dynLambda!206 order!69 f!585) (dynLambda!207 order!71 lambda!1870))))

(assert (=> b!8293 true))

(declare-datatypes () ((Balance!149 (Balance!150 (extraOpen!115 Int) (extraClose!115 Int)))))

(declare-datatypes () ((EqEvidence!116 (EqEvidence!117 (x!4516 Int) (y!501 Int) (evidence!125 Int)))))

(declare-fun thiss!854 () EqEvidence!116)

(declare-fun b_next!1551 () Bool)

(assert (=> b!8292 (= b_next!1541 (or (and b!8293 (= lambda!1870 (x!4516 thiss!854))) b_next!1551))))

(declare-fun b_next!1553 () Bool)

(assert (=> b!8292 (= b_next!1543 (or (and b!8293 (= lambda!1870 (y!501 thiss!854))) b_next!1553))))

(declare-fun lambda!1871 () Int)

(assert (=> b!8293 (not (= lambda!1871 lambda!1870))))

(assert (=> b!8293 true))

(assert (=> b!8293 (< (dynLambda!206 order!69 f!585) (dynLambda!207 order!71 lambda!1871))))

(assert (=> b!8293 true))

(declare-fun b_next!1555 () Bool)

(assert (=> b!8292 (= b_next!1551 (or (and b!8293 (= lambda!1871 (x!4516 thiss!854))) b_next!1555))))

(declare-fun b_next!1557 () Bool)

(assert (=> b!8292 (= b_next!1553 (or (and b!8293 (= lambda!1871 (y!501 thiss!854))) b_next!1557))))

(assert (=> b!8293 true))

(declare-fun lambda!1872 () Int)

(declare-fun b_next!1559 () Bool)

(assert (=> b!8292 (= b_next!1545 (or (and b!8293 (= lambda!1872 (evidence!125 thiss!854))) b_next!1559))))

(declare-fun e!4751 () Bool)

(assert (=> b!8292 (= e!4751 (and tp!1201 tp!1200 tp!1203))))

(declare-fun res!2533 () Bool)

(declare-fun e!4752 () Bool)

(assert (=> b!8293 (=> (not res!2533) (not e!4752))))

(assert (=> b!8293 (= res!2533 (= thiss!854 (EqEvidence!117 lambda!1870 lambda!1871 lambda!1872)))))

(declare-fun b!8294 () Bool)

(declare-fun res!2530 () Bool)

(assert (=> b!8294 (=> (not res!2530) (not e!4752))))

(declare-datatypes () ((List!191 (Nil!189) (Cons!188 (head!406 Balance!149) (tail!418 List!191)))))

(declare-fun thiss!909 () List!191)

(declare-datatypes () ((Tree!37 (Branch!28 (left!357 Tree!37) (right!360 Tree!37)) (Leaf!110 (value!1279 Balance!149)))))

(declare-fun tree!25 () Tree!37)

(declare-fun toList!37 (Tree!37) List!191)

(assert (=> b!8294 (= res!2530 (= thiss!909 (toList!37 (left!357 tree!25))))))

(declare-fun b!8295 () Bool)

(declare-fun res!2531 () Bool)

(assert (=> b!8295 (=> (not res!2531) (not e!4752))))

(assert (=> b!8295 (= res!2531 (not (is-Leaf!110 tree!25)))))

(declare-fun b!8296 () Bool)

(declare-fun res!2528 () Bool)

(assert (=> b!8296 (=> (not res!2528) (not e!4752))))

(declare-datatypes () ((ProofOps!96 (ProofOps!97 (prop!162 Bool)))))

(declare-fun thiss!829 () ProofOps!96)

(declare-fun fold!13 (Tree!37 Int) Balance!149)

(declare-fun foldRight1!44 (List!191 Int) Balance!149)

(assert (=> b!8296 (= res!2528 (= thiss!829 (ProofOps!97 (= (fold!13 tree!25 f!585) (foldRight1!44 (toList!37 tree!25) f!585)))))))

(declare-fun b!8297 () Bool)

(declare-fun res!2529 () Bool)

(assert (=> b!8297 (=> (not res!2529) (not e!4752))))

(assert (=> b!8297 (= res!2529 (= f!608 f!585))))

(declare-fun res!2532 () Bool)

(assert (=> start!1630 (=> (not res!2532) (not e!4752))))

(assert (=> start!1630 (= res!2532 (= f!585 lambda!1869))))

(assert (=> start!1630 e!4752))

(assert (=> start!1630 true))

(assert (=> start!1630 tp!1204))

(declare-fun inv!290 (EqEvidence!116) Bool)

(assert (=> start!1630 (and (inv!290 thiss!854) e!4751)))

(assert (=> start!1630 tp!1202))

(declare-fun b!8298 () Bool)

(declare-fun isEmpty!157 (List!191) Bool)

(assert (=> b!8298 (= e!4752 (isEmpty!157 thiss!909))))

(assert (= (and start!1630 res!2532) b!8296))

(assert (= (and b!8296 res!2528) b!8295))

(assert (= (and b!8295 res!2531) b!8293))

(assert (= (and b!8293 res!2533) b!8294))

(assert (= (and b!8294 res!2530) b!8297))

(assert (= (and b!8297 res!2529) b!8298))

(assert (= start!1630 b!8292))

(declare-fun m!11141 () Bool)

(assert (=> b!8294 m!11141))

(declare-fun m!11143 () Bool)

(assert (=> b!8296 m!11143))

(declare-fun m!11145 () Bool)

(assert (=> b!8296 m!11145))

(assert (=> b!8296 m!11145))

(declare-fun m!11147 () Bool)

(assert (=> b!8296 m!11147))

(declare-fun m!11149 () Bool)

(assert (=> start!1630 m!11149))

(declare-fun m!11151 () Bool)

(assert (=> b!8298 m!11151))

(push 1)

(assert (not b!8298))

(assert b_and!2821)

(assert b_and!2823)

(assert (not b_next!1547))

(assert (not b_next!1549))

(assert (not start!1630))

(assert (not b_next!1555))

(assert (not b!8296))

(assert (not b!8294))

(assert (not b_next!1559))

(assert b_and!2819)

(assert (not b_next!1557))

(assert b_and!2817)

(assert b_and!2825)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2821)

(assert b_and!2823)

(assert (not b_next!1547))

(assert (not b_next!1549))

(assert (not b_next!1555))

(assert (not b_next!1559))

(assert b_and!2819)

(assert (not b_next!1557))

(assert b_and!2817)

(assert b_and!2825)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6481 () Bool)

(declare-fun lt!1517 () List!191)

(assert (=> d!6481 (not (isEmpty!157 lt!1517))))

(declare-fun e!4755 () List!191)

(assert (=> d!6481 (= lt!1517 e!4755)))

(declare-fun c!2857 () Bool)

(assert (=> d!6481 (= c!2857 (is-Leaf!110 (left!357 tree!25)))))

(assert (=> d!6481 (= (toList!37 (left!357 tree!25)) lt!1517)))

(declare-fun b!8309 () Bool)

(assert (=> b!8309 (= e!4755 (Cons!188 (value!1279 (left!357 tree!25)) Nil!189))))

(declare-fun b!8310 () Bool)

(declare-fun append!78 (List!191 List!191) List!191)

(assert (=> b!8310 (= e!4755 (append!78 (toList!37 (left!357 (left!357 tree!25))) (toList!37 (right!360 (left!357 tree!25)))))))

(assert (= (and d!6481 c!2857) b!8309))

(assert (= (and d!6481 (not c!2857)) b!8310))

(declare-fun m!11153 () Bool)

(assert (=> d!6481 m!11153))

(declare-fun m!11155 () Bool)

(assert (=> b!8310 m!11155))

(declare-fun m!11157 () Bool)

(assert (=> b!8310 m!11157))

(assert (=> b!8310 m!11155))

(assert (=> b!8310 m!11157))

(declare-fun m!11159 () Bool)

(assert (=> b!8310 m!11159))

(assert (=> b!8294 d!6481))

(declare-fun d!6483 () Bool)

(declare-fun res!2537 () Bool)

(declare-fun e!4758 () Bool)

(assert (=> d!6483 (=> (not res!2537) (not e!4758))))

(declare-fun dynLambda!208 (Int) Balance!149)

(assert (=> d!6483 (= res!2537 (= (dynLambda!208 (x!4516 thiss!854)) (dynLambda!208 (y!501 thiss!854))))))

(assert (=> d!6483 (= (inv!290 thiss!854) e!4758)))

(declare-fun b!8313 () Bool)

(declare-fun dynLambda!209 (Int) Bool)

(assert (=> b!8313 (= e!4758 (dynLambda!209 (evidence!125 thiss!854)))))

(assert (= (and d!6483 res!2537) b!8313))

(declare-fun b_lambda!4087 () Bool)

(assert (=> (not b_lambda!4087) (not d!6483)))

(declare-fun t!1867 () Bool)

(declare-fun tb!1527 () Bool)

(assert (=> (and b!8292 (= (x!4516 thiss!854) (x!4516 thiss!854)) t!1867) tb!1527))

(declare-fun result!1567 () Bool)

(assert (=> tb!1527 (= result!1567 true)))

(assert (=> d!6483 t!1867))

(declare-fun b_and!2827 () Bool)

(assert (= b_and!2821 (and (=> t!1867 result!1567) b_and!2827)))

(declare-fun t!1869 () Bool)

(declare-fun tb!1529 () Bool)

(assert (=> (and b!8292 (= (y!501 thiss!854) (x!4516 thiss!854)) t!1869) tb!1529))

(declare-fun result!1569 () Bool)

(assert (=> tb!1529 (= result!1569 true)))

(assert (=> d!6483 t!1869))

(declare-fun b_and!2829 () Bool)

(assert (= b_and!2823 (and (=> t!1869 result!1569) b_and!2829)))

(declare-fun b_lambda!4089 () Bool)

(assert (=> (not b_lambda!4089) (not d!6483)))

(declare-fun t!1871 () Bool)

(declare-fun tb!1531 () Bool)

(assert (=> (and b!8292 (= (x!4516 thiss!854) (y!501 thiss!854)) t!1871) tb!1531))

(declare-fun result!1571 () Bool)

(assert (=> tb!1531 (= result!1571 true)))

(assert (=> d!6483 t!1871))

(declare-fun b_and!2831 () Bool)

(assert (= b_and!2827 (and (=> t!1871 result!1571) b_and!2831)))

(declare-fun t!1873 () Bool)

(declare-fun tb!1533 () Bool)

(assert (=> (and b!8292 (= (y!501 thiss!854) (y!501 thiss!854)) t!1873) tb!1533))

(declare-fun result!1573 () Bool)

(assert (=> tb!1533 (= result!1573 true)))

(assert (=> d!6483 t!1873))

(declare-fun b_and!2833 () Bool)

(assert (= b_and!2829 (and (=> t!1873 result!1573) b_and!2833)))

(declare-fun b_lambda!4091 () Bool)

(assert (=> (not b_lambda!4091) (not b!8313)))

(declare-fun t!1875 () Bool)

(declare-fun tb!1535 () Bool)

(assert (=> (and b!8292 (= (evidence!125 thiss!854) (evidence!125 thiss!854)) t!1875) tb!1535))

(declare-fun result!1575 () Bool)

(assert (=> tb!1535 (= result!1575 true)))

(assert (=> b!8313 t!1875))

(declare-fun b_and!2835 () Bool)

(assert (= b_and!2825 (and (=> t!1875 result!1575) b_and!2835)))

(declare-fun m!11161 () Bool)

(assert (=> d!6483 m!11161))

(declare-fun m!11163 () Bool)

(assert (=> d!6483 m!11163))

(declare-fun m!11165 () Bool)

(assert (=> b!8313 m!11165))

(assert (=> start!1630 d!6483))

(declare-fun bs!1913 () Bool)

(declare-fun b!8319 () Bool)

(assert (= bs!1913 (and b!8319 b!8293)))

(declare-fun lambda!1877 () Int)

(assert (=> bs!1913 (= (= (left!357 tree!25) tree!25) (= lambda!1877 lambda!1870))))

(assert (=> bs!1913 (not (= lambda!1877 lambda!1871))))

(assert (=> b!8319 true))

(assert (=> b!8319 (< (dynLambda!206 order!69 f!585) (dynLambda!207 order!71 lambda!1877))))

(assert (=> b!8319 true))

(declare-fun b_next!1561 () Bool)

(assert (=> b!8292 (= b_next!1555 (or (and b!8319 (= lambda!1877 (x!4516 thiss!854))) b_next!1561))))

(declare-fun b_next!1563 () Bool)

(assert (=> b!8292 (= b_next!1557 (or (and b!8319 (= lambda!1877 (y!501 thiss!854))) b_next!1563))))

(declare-fun lambda!1878 () Int)

(assert (=> bs!1913 (= (= (right!360 tree!25) tree!25) (= lambda!1878 lambda!1870))))

(assert (=> bs!1913 (not (= lambda!1878 lambda!1871))))

(assert (=> b!8319 (= (= (right!360 tree!25) (left!357 tree!25)) (= lambda!1878 lambda!1877))))

(assert (=> b!8319 true))

(assert (=> b!8319 (< (dynLambda!206 order!69 f!585) (dynLambda!207 order!71 lambda!1878))))

(assert (=> b!8319 true))

(declare-fun b_next!1565 () Bool)

(assert (=> b!8292 (= b_next!1561 (or (and b!8319 (= lambda!1878 (x!4516 thiss!854))) b_next!1565))))

(declare-fun b_next!1567 () Bool)

(assert (=> b!8292 (= b_next!1563 (or (and b!8319 (= lambda!1878 (y!501 thiss!854))) b_next!1567))))

(declare-fun e!4777 () Balance!149)

(declare-datatypes () ((tuple2!48 (tuple2!49 (_1!24 Balance!149) (_2!24 Balance!149)))))

(declare-fun lt!1520 () tuple2!48)

(declare-fun dynLambda!210 (Int Balance!149 Balance!149) Balance!149)

(assert (=> b!8319 (= e!4777 (dynLambda!210 f!585 (_1!24 lt!1520) (_2!24 lt!1520)))))

(assert (=> b!8319 (= lt!1520 (tuple2!49 (dynLambda!208 lambda!1877) (dynLambda!208 lambda!1878)))))

(declare-fun d!6485 () Bool)

(declare-fun c!2860 () Bool)

(assert (=> d!6485 (= c!2860 (is-Leaf!110 tree!25))))

(assert (=> d!6485 (= (fold!13 tree!25 f!585) e!4777)))

(declare-fun b!8318 () Bool)

(assert (=> b!8318 (= e!4777 (value!1279 tree!25))))

(assert (= (and d!6485 c!2860) b!8318))

(assert (= (and d!6485 (not c!2860)) b!8319))

(declare-fun b_lambda!4093 () Bool)

(assert (=> (not b_lambda!4093) (not b!8319)))

(declare-fun t!1877 () Bool)

(declare-fun tb!1537 () Bool)

(assert (=> (and start!1630 (= f!585 f!585) t!1877) tb!1537))

(declare-fun result!1577 () Bool)

(assert (=> tb!1537 (= result!1577 true)))

(assert (=> b!8319 t!1877))

(declare-fun b_and!2837 () Bool)

(assert (= b_and!2817 (and (=> t!1877 result!1577) b_and!2837)))

(declare-fun t!1879 () Bool)

(declare-fun tb!1539 () Bool)

(assert (=> (and start!1630 (= f!608 f!585) t!1879) tb!1539))

(declare-fun result!1579 () Bool)

(assert (=> tb!1539 (= result!1579 true)))

(assert (=> b!8319 t!1879))

(declare-fun b_and!2839 () Bool)

(assert (= b_and!2819 (and (=> t!1879 result!1579) b_and!2839)))

(declare-fun b_lambda!4095 () Bool)

(assert (=> (not b_lambda!4095) (not b!8319)))

(declare-fun b_lambda!4097 () Bool)

(assert (=> (not b_lambda!4097) (not b!8319)))

(declare-fun m!11167 () Bool)

(assert (=> b!8319 m!11167))

(declare-fun m!11169 () Bool)

(assert (=> b!8319 m!11169))

(declare-fun m!11171 () Bool)

(assert (=> b!8319 m!11171))

(assert (=> b!8296 d!6485))

(declare-fun d!6487 () Bool)

(declare-fun c!2863 () Bool)

(assert (=> d!6487 (= c!2863 (and (is-Cons!188 (toList!37 tree!25)) (is-Nil!189 (tail!418 (toList!37 tree!25)))))))

(declare-fun e!4780 () Balance!149)

(assert (=> d!6487 (= (foldRight1!44 (toList!37 tree!25) f!585) e!4780)))

(declare-fun b!8324 () Bool)

(assert (=> b!8324 (= e!4780 (head!406 (toList!37 tree!25)))))

(declare-fun b!8325 () Bool)

(assert (=> b!8325 (= e!4780 (dynLambda!210 f!585 (head!406 (toList!37 tree!25)) (foldRight1!44 (tail!418 (toList!37 tree!25)) f!585)))))

(assert (= (and d!6487 c!2863) b!8324))

(assert (= (and d!6487 (not c!2863)) b!8325))

(declare-fun b_lambda!4099 () Bool)

(assert (=> (not b_lambda!4099) (not b!8325)))

(declare-fun t!1881 () Bool)

(declare-fun tb!1541 () Bool)

(assert (=> (and start!1630 (= f!585 f!585) t!1881) tb!1541))

(declare-fun result!1581 () Bool)

(assert (=> tb!1541 (= result!1581 true)))

(assert (=> b!8325 t!1881))

(declare-fun b_and!2841 () Bool)

(assert (= b_and!2837 (and (=> t!1881 result!1581) b_and!2841)))

(declare-fun t!1883 () Bool)

(declare-fun tb!1543 () Bool)

(assert (=> (and start!1630 (= f!608 f!585) t!1883) tb!1543))

(declare-fun result!1583 () Bool)

(assert (=> tb!1543 (= result!1583 true)))

(assert (=> b!8325 t!1883))

(declare-fun b_and!2843 () Bool)

(assert (= b_and!2839 (and (=> t!1883 result!1583) b_and!2843)))

(declare-fun m!11173 () Bool)

(assert (=> b!8325 m!11173))

(assert (=> b!8325 m!11173))

(declare-fun m!11175 () Bool)

(assert (=> b!8325 m!11175))

(assert (=> b!8296 d!6487))

(declare-fun d!6489 () Bool)

(declare-fun lt!1521 () List!191)

(assert (=> d!6489 (not (isEmpty!157 lt!1521))))

(declare-fun e!4781 () List!191)

(assert (=> d!6489 (= lt!1521 e!4781)))

(declare-fun c!2864 () Bool)

(assert (=> d!6489 (= c!2864 (is-Leaf!110 tree!25))))

(assert (=> d!6489 (= (toList!37 tree!25) lt!1521)))

(declare-fun b!8326 () Bool)

(assert (=> b!8326 (= e!4781 (Cons!188 (value!1279 tree!25) Nil!189))))

(declare-fun b!8327 () Bool)

(assert (=> b!8327 (= e!4781 (append!78 (toList!37 (left!357 tree!25)) (toList!37 (right!360 tree!25))))))

(assert (= (and d!6489 c!2864) b!8326))

(assert (= (and d!6489 (not c!2864)) b!8327))

(declare-fun m!11177 () Bool)

(assert (=> d!6489 m!11177))

(assert (=> b!8327 m!11141))

(declare-fun m!11179 () Bool)

(assert (=> b!8327 m!11179))

(assert (=> b!8327 m!11141))

(assert (=> b!8327 m!11179))

(declare-fun m!11181 () Bool)

(assert (=> b!8327 m!11181))

(assert (=> b!8296 d!6489))

(declare-fun d!6491 () Bool)

(assert (=> d!6491 (= (isEmpty!157 thiss!909) (is-Nil!189 thiss!909))))

(assert (=> b!8298 d!6491))

(declare-fun b_lambda!4101 () Bool)

(assert (= b_lambda!4095 (or b!8319 b_lambda!4101)))

(declare-fun bs!1914 () Bool)

(declare-fun d!6493 () Bool)

(assert (= bs!1914 (and d!6493 b!8319)))

(assert (=> bs!1914 (= (dynLambda!208 lambda!1877) (fold!13 (left!357 tree!25) f!585))))

(declare-fun m!11183 () Bool)

(assert (=> bs!1914 m!11183))

(assert (=> b!8319 d!6493))

(declare-fun b_lambda!4103 () Bool)

(assert (= b_lambda!4099 (or (and start!1630 (= lambda!1869 f!585)) (and start!1630 b_free!713) (and start!1630 b_free!715 (= f!608 f!585)) b_lambda!4103)))

(declare-fun bs!1915 () Bool)

(declare-fun d!6495 () Bool)

(assert (= bs!1915 (and d!6495 start!1630)))

(declare-fun ++!3 (Balance!149 Balance!149) Balance!149)

(assert (=> bs!1915 (= (dynLambda!210 lambda!1869 (head!406 (toList!37 tree!25)) (foldRight1!44 (tail!418 (toList!37 tree!25)) f!585)) (++!3 (head!406 (toList!37 tree!25)) (foldRight1!44 (tail!418 (toList!37 tree!25)) f!585)))))

(assert (=> bs!1915 m!11173))

(declare-fun m!11185 () Bool)

(assert (=> bs!1915 m!11185))

(assert (=> (and start!1630 (= lambda!1869 f!585) b!8325) d!6495))

(declare-fun b_lambda!4105 () Bool)

(assert (= b_lambda!4087 (or (and b!8319 (= lambda!1877 (x!4516 thiss!854))) (and b!8292 b_free!717) (and b!8293 (= lambda!1871 (x!4516 thiss!854))) (and b!8293 (= lambda!1870 (x!4516 thiss!854))) (and b!8292 b_free!719 (= (y!501 thiss!854) (x!4516 thiss!854))) (and b!8319 (= lambda!1878 (x!4516 thiss!854))) b_lambda!4105)))

(declare-fun bs!1916 () Bool)

(declare-fun d!6497 () Bool)

(assert (= bs!1916 (and d!6497 b!8319)))

(assert (=> bs!1916 (= (dynLambda!208 lambda!1878) (fold!13 (right!360 tree!25) f!585))))

(declare-fun m!11187 () Bool)

(assert (=> bs!1916 m!11187))

(assert (=> (and b!8319 (= lambda!1878 (x!4516 thiss!854)) d!6483) d!6497))

(declare-fun bs!1917 () Bool)

(declare-fun d!6499 () Bool)

(assert (= bs!1917 (and d!6499 b!8293)))

(assert (=> bs!1917 (= (dynLambda!208 lambda!1870) (fold!13 tree!25 f!585))))

(assert (=> bs!1917 m!11143))

(assert (=> (and b!8293 (= lambda!1870 (x!4516 thiss!854)) d!6483) d!6499))

(declare-fun bs!1918 () Bool)

(declare-fun d!6501 () Bool)

(assert (= bs!1918 (and d!6501 b!8293)))

(assert (=> bs!1918 (= (dynLambda!208 lambda!1871) (dynLambda!210 f!585 (foldRight1!44 (toList!37 (left!357 tree!25)) f!585) (fold!13 (right!360 tree!25) f!585)))))

(declare-fun b_lambda!4115 () Bool)

(assert (=> (not b_lambda!4115) (not bs!1918)))

(declare-fun t!1885 () Bool)

(declare-fun tb!1545 () Bool)

(assert (=> (and start!1630 (= f!585 f!585) t!1885) tb!1545))

(declare-fun result!1585 () Bool)

(assert (=> tb!1545 (= result!1585 true)))

(assert (=> bs!1918 t!1885))

(declare-fun b_and!2845 () Bool)

(assert (= b_and!2841 (and (=> t!1885 result!1585) b_and!2845)))

(declare-fun tb!1547 () Bool)

(declare-fun t!1887 () Bool)

(assert (=> (and start!1630 (= f!608 f!585) t!1887) tb!1547))

(declare-fun result!1587 () Bool)

(assert (=> tb!1547 (= result!1587 true)))

(assert (=> bs!1918 t!1887))

(declare-fun b_and!2847 () Bool)

(assert (= b_and!2843 (and (=> t!1887 result!1587) b_and!2847)))

(assert (=> bs!1918 m!11187))

(assert (=> bs!1918 m!11141))

(assert (=> bs!1918 m!11141))

(declare-fun m!11189 () Bool)

(assert (=> bs!1918 m!11189))

(assert (=> bs!1918 m!11189))

(assert (=> bs!1918 m!11187))

(declare-fun m!11191 () Bool)

(assert (=> bs!1918 m!11191))

(assert (=> (and b!8293 (= lambda!1871 (x!4516 thiss!854)) d!6483) d!6501))

(declare-fun bs!1919 () Bool)

(declare-fun d!6503 () Bool)

(assert (= bs!1919 (and d!6503 b!8319)))

(assert (=> bs!1919 (= (dynLambda!208 lambda!1877) (fold!13 (left!357 tree!25) f!585))))

(assert (=> bs!1919 m!11183))

(assert (=> (and b!8319 (= lambda!1877 (x!4516 thiss!854)) d!6483) d!6503))

(declare-fun b_lambda!4107 () Bool)

(assert (= b_lambda!4097 (or b!8319 b_lambda!4107)))

(declare-fun bs!1920 () Bool)

(declare-fun d!6505 () Bool)

(assert (= bs!1920 (and d!6505 b!8319)))

(assert (=> bs!1920 (= (dynLambda!208 lambda!1878) (fold!13 (right!360 tree!25) f!585))))

(assert (=> bs!1920 m!11187))

(assert (=> b!8319 d!6505))

(declare-fun b_lambda!4109 () Bool)

(assert (= b_lambda!4089 (or (and b!8292 b_free!719) (and b!8293 (= lambda!1871 (y!501 thiss!854))) (and b!8319 (= lambda!1878 (y!501 thiss!854))) (and b!8292 b_free!717 (= (x!4516 thiss!854) (y!501 thiss!854))) (and b!8293 (= lambda!1870 (y!501 thiss!854))) (and b!8319 (= lambda!1877 (y!501 thiss!854))) b_lambda!4109)))

(declare-fun bs!1921 () Bool)

(declare-fun d!6507 () Bool)

(assert (= bs!1921 (and d!6507 b!8319)))

(assert (=> bs!1921 (= (dynLambda!208 lambda!1877) (fold!13 (left!357 tree!25) f!585))))

(assert (=> bs!1921 m!11183))

(assert (=> (and b!8319 (= lambda!1877 (y!501 thiss!854)) d!6483) d!6507))

(declare-fun bs!1922 () Bool)

(declare-fun d!6509 () Bool)

(assert (= bs!1922 (and d!6509 b!8293)))

(assert (=> bs!1922 (= (dynLambda!208 lambda!1870) (fold!13 tree!25 f!585))))

(assert (=> bs!1922 m!11143))

(assert (=> (and b!8293 (= lambda!1870 (y!501 thiss!854)) d!6483) d!6509))

(declare-fun bs!1923 () Bool)

(declare-fun d!6511 () Bool)

(assert (= bs!1923 (and d!6511 b!8319)))

(assert (=> bs!1923 (= (dynLambda!208 lambda!1878) (fold!13 (right!360 tree!25) f!585))))

(assert (=> bs!1923 m!11187))

(assert (=> (and b!8319 (= lambda!1878 (y!501 thiss!854)) d!6483) d!6511))

(declare-fun bs!1924 () Bool)

(declare-fun d!6513 () Bool)

(assert (= bs!1924 (and d!6513 b!8293)))

(assert (=> bs!1924 (= (dynLambda!208 lambda!1871) (dynLambda!210 f!585 (foldRight1!44 (toList!37 (left!357 tree!25)) f!585) (fold!13 (right!360 tree!25) f!585)))))

(declare-fun b_lambda!4117 () Bool)

(assert (=> (not b_lambda!4117) (not bs!1924)))

(assert (=> bs!1924 t!1885))

(declare-fun b_and!2849 () Bool)

(assert (= b_and!2845 (and (=> t!1885 result!1585) b_and!2849)))

(assert (=> bs!1924 t!1887))

(declare-fun b_and!2851 () Bool)

(assert (= b_and!2847 (and (=> t!1887 result!1587) b_and!2851)))

(assert (=> bs!1924 m!11187))

(assert (=> bs!1924 m!11141))

(assert (=> bs!1924 m!11141))

(assert (=> bs!1924 m!11189))

(assert (=> bs!1924 m!11189))

(assert (=> bs!1924 m!11187))

(assert (=> bs!1924 m!11191))

(assert (=> (and b!8293 (= lambda!1871 (y!501 thiss!854)) d!6483) d!6513))

(declare-fun b_lambda!4111 () Bool)

(assert (= b_lambda!4091 (or (and b!8293 (= lambda!1872 (evidence!125 thiss!854))) (and b!8292 b_free!721) b_lambda!4111)))

(declare-fun bs!1925 () Bool)

(declare-fun d!6515 () Bool)

(assert (= bs!1925 (and d!6515 b!8293)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!37) Bool)

(assert (=> bs!1925 (= (dynLambda!209 lambda!1872) (fold_foldRight1_equivalence!0 (right!360 tree!25)))))

(declare-fun m!11193 () Bool)

(assert (=> bs!1925 m!11193))

(assert (=> (and b!8293 (= lambda!1872 (evidence!125 thiss!854)) b!8313) d!6515))

(declare-fun b_lambda!4113 () Bool)

(assert (= b_lambda!4093 (or (and start!1630 (= lambda!1869 f!585)) (and start!1630 b_free!713) (and start!1630 b_free!715 (= f!608 f!585)) b_lambda!4113)))

(declare-fun bs!1926 () Bool)

(declare-fun d!6517 () Bool)

(assert (= bs!1926 (and d!6517 start!1630)))

(assert (=> bs!1926 (= (dynLambda!210 lambda!1869 (_1!24 lt!1520) (_2!24 lt!1520)) (++!3 (_1!24 lt!1520) (_2!24 lt!1520)))))

(declare-fun m!11195 () Bool)

(assert (=> bs!1926 m!11195))

(assert (=> (and start!1630 (= lambda!1869 f!585) b!8319) d!6517))

(push 1)

(assert (not b_lambda!4113))

(assert b_and!2851)

(assert (not b_lambda!4109))

(assert (not b_lambda!4107))

(assert (not bs!1924))

(assert (not bs!1914))

(assert (not b_lambda!4103))

(assert (not b_lambda!4115))

(assert (not bs!1919))

(assert (not d!6481))

(assert (not b_next!1547))

(assert (not bs!1921))

(assert (not bs!1918))

(assert (not bs!1920))

(assert (not bs!1916))

(assert (not b_next!1549))

(assert (not b_lambda!4105))

(assert (not bs!1922))

(assert (not bs!1915))

(assert b_and!2835)

(assert (not bs!1926))

(assert (not b!8327))

(assert (not bs!1917))

(assert (not b_next!1565))

(assert (not b_lambda!4117))

(assert (not b!8325))

(assert (not b!8310))

(assert (not bs!1923))

(assert (not b_next!1559))

(assert b_and!2833)

(assert (not bs!1925))

(assert b_and!2831)

(assert (not b_lambda!4101))

(assert (not b_lambda!4111))

(assert (not d!6489))

(assert (not b_next!1567))

(assert b_and!2849)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2851)

(assert (not b_next!1547))

(assert (not b_next!1549))

(assert b_and!2835)

(assert (not b_next!1565))

(assert (not b_next!1559))

(assert b_and!2833)

(assert b_and!2831)

(assert (not b_next!1567))

(assert b_and!2849)

(check-sat)

(pop 1)

