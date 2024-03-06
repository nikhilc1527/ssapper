; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1694 () Bool)

(assert start!1694)

(declare-fun b_free!765 () Bool)

(declare-fun b_next!1721 () Bool)

(assert (=> start!1694 (= b_free!765 (not b_next!1721))))

(declare-fun tp!1279 () Bool)

(declare-fun b_and!3019 () Bool)

(assert (=> start!1694 (= tp!1279 b_and!3019)))

(declare-fun b_free!767 () Bool)

(declare-fun b_next!1723 () Bool)

(assert (=> start!1694 (= b_free!767 (not b_next!1723))))

(declare-fun tp!1278 () Bool)

(declare-fun b_and!3021 () Bool)

(assert (=> start!1694 (= tp!1278 b_and!3021)))

(declare-fun b!8558 () Bool)

(declare-fun b_free!769 () Bool)

(declare-fun b_next!1725 () Bool)

(assert (=> b!8558 (= b_free!769 (not b_next!1725))))

(declare-fun tp!1277 () Bool)

(declare-fun b_and!3023 () Bool)

(assert (=> b!8558 (= tp!1277 b_and!3023)))

(declare-fun b_free!771 () Bool)

(declare-fun b_next!1727 () Bool)

(assert (=> b!8558 (= b_free!771 (not b_next!1727))))

(declare-fun tp!1276 () Bool)

(declare-fun b_and!3025 () Bool)

(assert (=> b!8558 (= tp!1276 b_and!3025)))

(declare-fun b_next!1729 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!1964 () Int)

(assert (=> start!1694 (= b_next!1721 (or (and start!1694 (= lambda!1964 f!585)) b_next!1729))))

(declare-fun b!8556 () Bool)

(assert (=> b!8556 true))

(declare-fun lambda!1965 () Int)

(declare-fun order!91 () Int)

(declare-fun order!89 () Int)

(declare-fun dynLambda!231 (Int Int) Int)

(declare-fun dynLambda!232 (Int Int) Int)

(assert (=> b!8556 (< (dynLambda!231 order!89 f!585) (dynLambda!232 order!91 lambda!1965))))

(assert (=> b!8556 true))

(declare-fun b_next!1731 () Bool)

(declare-datatypes () ((Balance!159 (Balance!160 (extraOpen!120 Int) (extraClose!120 Int)))))

(declare-datatypes () ((EqProof!58 (EqProof!59 (x!4664 Int) (y!517 Int)))))

(declare-fun thiss!840 () EqProof!58)

(assert (=> b!8558 (= b_next!1725 (or (and b!8556 (= lambda!1965 (x!4664 thiss!840))) b_next!1731))))

(declare-fun b_next!1733 () Bool)

(assert (=> b!8558 (= b_next!1727 (or (and b!8556 (= lambda!1965 (y!517 thiss!840))) b_next!1733))))

(declare-fun b!8555 () Bool)

(declare-fun m!11443 () Bool)

(assert (=> b!8555 m!11443))

(declare-fun lambda!1966 () Int)

(declare-fun proof!232 () Int)

(declare-fun dynLambda!233 (Int) Bool)

(assert (=> (and start!1694 b!8555 (= (dynLambda!233 lambda!1966) (dynLambda!233 proof!232))) (= lambda!1966 proof!232)))

(declare-fun b_next!1735 () Bool)

(assert (=> start!1694 (= b_next!1723 (or (and b!8555 (= lambda!1966 proof!232)) b_next!1735))))

(declare-fun res!2644 () Bool)

(declare-fun e!4937 () Bool)

(assert (=> b!8555 (=> (not res!2644) (not e!4937))))

(assert (=> b!8555 (= res!2644 (= proof!232 lambda!1966))))

(declare-fun res!2646 () Bool)

(assert (=> b!8556 (=> (not res!2646) (not e!4937))))

(assert (=> b!8556 (= res!2646 (= thiss!840 (EqProof!59 lambda!1965 lambda!1965)))))

(declare-fun b!8557 () Bool)

(declare-fun res!2645 () Bool)

(assert (=> b!8557 (=> (not res!2645) (not e!4937))))

(declare-datatypes () ((Tree!42 (Branch!33 (left!377 Tree!42) (right!380 Tree!42)) (Leaf!115 (value!1284 Balance!159)))))

(declare-fun tree!25 () Tree!42)

(assert (=> b!8557 (= res!2645 (is-Leaf!115 tree!25))))

(declare-fun e!4936 () Bool)

(assert (=> b!8558 (= e!4936 (and tp!1277 tp!1276))))

(declare-fun b!8559 () Bool)

(assert (=> b!8559 (= e!4937 (not (dynLambda!233 proof!232)))))

(declare-fun res!2642 () Bool)

(assert (=> start!1694 (=> (not res!2642) (not e!4937))))

(assert (=> start!1694 (= res!2642 (= f!585 lambda!1964))))

(assert (=> start!1694 e!4937))

(assert (=> start!1694 true))

(assert (=> start!1694 tp!1279))

(assert (=> start!1694 tp!1278))

(declare-fun inv!296 (EqProof!58) Bool)

(assert (=> start!1694 (and (inv!296 thiss!840) e!4936)))

(declare-fun b!8560 () Bool)

(declare-fun res!2643 () Bool)

(assert (=> b!8560 (=> (not res!2643) (not e!4937))))

(declare-datatypes () ((ProofOps!106 (ProofOps!107 (prop!167 Bool)))))

(declare-fun thiss!829 () ProofOps!106)

(declare-fun fold!18 (Tree!42 Int) Balance!159)

(declare-datatypes () ((List!196 (Nil!194) (Cons!193 (head!411 Balance!159) (tail!423 List!196)))))

(declare-fun foldRight1!49 (List!196 Int) Balance!159)

(declare-fun toList!42 (Tree!42) List!196)

(assert (=> b!8560 (= res!2643 (= thiss!829 (ProofOps!107 (= (fold!18 tree!25 f!585) (foldRight1!49 (toList!42 tree!25) f!585)))))))

(assert (= (and start!1694 res!2642) b!8560))

(assert (= (and b!8560 res!2643) b!8557))

(assert (= (and b!8557 res!2645) b!8556))

(assert (= (and b!8556 res!2646) b!8555))

(assert (= (and b!8555 res!2644) b!8559))

(assert (= start!1694 b!8558))

(declare-fun b_lambda!4263 () Bool)

(assert (=> (not b_lambda!4263) (not b!8559)))

(declare-fun t!1993 () Bool)

(declare-fun tb!1653 () Bool)

(assert (=> (and start!1694 (= proof!232 proof!232) t!1993) tb!1653))

(declare-fun result!1693 () Bool)

(assert (=> tb!1653 (= result!1693 true)))

(assert (=> b!8559 t!1993))

(declare-fun b_and!3027 () Bool)

(assert (= b_and!3021 (and (=> t!1993 result!1693) b_and!3027)))

(declare-fun m!11445 () Bool)

(assert (=> b!8559 m!11445))

(declare-fun m!11447 () Bool)

(assert (=> start!1694 m!11447))

(declare-fun m!11449 () Bool)

(assert (=> b!8560 m!11449))

(declare-fun m!11451 () Bool)

(assert (=> b!8560 m!11451))

(assert (=> b!8560 m!11451))

(declare-fun m!11453 () Bool)

(assert (=> b!8560 m!11453))

(push 1)

(assert (not b_next!1731))

(assert (not start!1694))

(assert b_and!3023)

(assert (not b_next!1733))

(assert b_and!3027)

(assert (not b_next!1735))

(assert b_and!3025)

(assert (not b!8555))

(assert b_and!3019)

(assert (not b_lambda!4263))

(assert (not b!8560))

(assert (not b_next!1729))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1731))

(assert b_and!3023)

(assert (not b_next!1733))

(assert b_and!3027)

(assert (not b_next!1735))

(assert b_and!3025)

(assert b_and!3019)

(assert (not b_next!1729))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4265 () Bool)

(assert (= b_lambda!4263 (or (and b!8555 (= lambda!1966 proof!232)) (and start!1694 b_free!767) b_lambda!4265)))

(declare-fun bs!2002 () Bool)

(declare-fun d!6705 () Bool)

(assert (= bs!2002 (and d!6705 b!8555)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2002 (= (dynLambda!233 lambda!1966) trivial!1)))

(assert (=> (and b!8555 (= lambda!1966 proof!232) b!8559) d!6705))

(push 1)

(assert (not b_next!1731))

(assert (not start!1694))

(assert b_and!3023)

(assert (not b_lambda!4265))

(assert (not b_next!1733))

(assert b_and!3027)

(assert (not b_next!1735))

(assert b_and!3025)

(assert (not b!8555))

(assert b_and!3019)

(assert (not b!8560))

(assert (not b_next!1729))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1731))

(assert b_and!3023)

(assert (not b_next!1733))

(assert b_and!3027)

(assert (not b_next!1735))

(assert b_and!3025)

(assert b_and!3019)

(assert (not b_next!1729))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2003 () Bool)

(declare-fun b!8570 () Bool)

(assert (= bs!2003 (and b!8570 b!8556)))

(declare-fun lambda!1971 () Int)

(assert (=> bs!2003 (= (= (left!377 tree!25) tree!25) (= lambda!1971 lambda!1965))))

(assert (=> b!8570 true))

(assert (=> b!8570 (< (dynLambda!231 order!89 f!585) (dynLambda!232 order!91 lambda!1971))))

(assert (=> b!8570 true))

(declare-fun b_next!1737 () Bool)

(assert (=> b!8558 (= b_next!1731 (or (and b!8570 (= lambda!1971 (x!4664 thiss!840))) b_next!1737))))

(declare-fun b_next!1739 () Bool)

(assert (=> b!8558 (= b_next!1733 (or (and b!8570 (= lambda!1971 (y!517 thiss!840))) b_next!1739))))

(declare-fun lambda!1972 () Int)

(assert (=> bs!2003 (= (= (right!380 tree!25) tree!25) (= lambda!1972 lambda!1965))))

(assert (=> b!8570 (= (= (right!380 tree!25) (left!377 tree!25)) (= lambda!1972 lambda!1971))))

(assert (=> b!8570 true))

(assert (=> b!8570 (< (dynLambda!231 order!89 f!585) (dynLambda!232 order!91 lambda!1972))))

(assert (=> b!8570 true))

(declare-fun b_next!1741 () Bool)

(assert (=> b!8558 (= b_next!1737 (or (and b!8570 (= lambda!1972 (x!4664 thiss!840))) b_next!1741))))

(declare-fun b_next!1743 () Bool)

(assert (=> b!8558 (= b_next!1739 (or (and b!8570 (= lambda!1972 (y!517 thiss!840))) b_next!1743))))

(declare-fun e!4956 () Balance!159)

(declare-datatypes () ((tuple2!58 (tuple2!59 (_1!29 Balance!159) (_2!29 Balance!159)))))

(declare-fun lt!1553 () tuple2!58)

(declare-fun dynLambda!234 (Int Balance!159 Balance!159) Balance!159)

(assert (=> b!8570 (= e!4956 (dynLambda!234 f!585 (_1!29 lt!1553) (_2!29 lt!1553)))))

(declare-fun dynLambda!235 (Int) Balance!159)

(assert (=> b!8570 (= lt!1553 (tuple2!59 (dynLambda!235 lambda!1971) (dynLambda!235 lambda!1972)))))

(declare-fun d!6707 () Bool)

(declare-fun c!2911 () Bool)

(assert (=> d!6707 (= c!2911 (is-Leaf!115 tree!25))))

(assert (=> d!6707 (= (fold!18 tree!25 f!585) e!4956)))

(declare-fun b!8569 () Bool)

(assert (=> b!8569 (= e!4956 (value!1284 tree!25))))

(assert (= (and d!6707 c!2911) b!8569))

(assert (= (and d!6707 (not c!2911)) b!8570))

(declare-fun b_lambda!4267 () Bool)

(assert (=> (not b_lambda!4267) (not b!8570)))

(declare-fun t!1995 () Bool)

(declare-fun tb!1655 () Bool)

(assert (=> (and start!1694 (= f!585 f!585) t!1995) tb!1655))

(declare-fun result!1695 () Bool)

(assert (=> tb!1655 (= result!1695 true)))

(assert (=> b!8570 t!1995))

(declare-fun b_and!3029 () Bool)

(assert (= b_and!3019 (and (=> t!1995 result!1695) b_and!3029)))

(declare-fun b_lambda!4269 () Bool)

(assert (=> (not b_lambda!4269) (not b!8570)))

(declare-fun b_lambda!4271 () Bool)

(assert (=> (not b_lambda!4271) (not b!8570)))

(declare-fun m!11455 () Bool)

(assert (=> b!8570 m!11455))

(declare-fun m!11457 () Bool)

(assert (=> b!8570 m!11457))

(declare-fun m!11459 () Bool)

(assert (=> b!8570 m!11459))

(assert (=> b!8560 d!6707))

(declare-fun d!6709 () Bool)

(declare-fun c!2914 () Bool)

(assert (=> d!6709 (= c!2914 (and (is-Cons!193 (toList!42 tree!25)) (is-Nil!194 (tail!423 (toList!42 tree!25)))))))

(declare-fun e!4959 () Balance!159)

(assert (=> d!6709 (= (foldRight1!49 (toList!42 tree!25) f!585) e!4959)))

(declare-fun b!8575 () Bool)

(assert (=> b!8575 (= e!4959 (head!411 (toList!42 tree!25)))))

(declare-fun b!8576 () Bool)

(assert (=> b!8576 (= e!4959 (dynLambda!234 f!585 (head!411 (toList!42 tree!25)) (foldRight1!49 (tail!423 (toList!42 tree!25)) f!585)))))

(assert (= (and d!6709 c!2914) b!8575))

(assert (= (and d!6709 (not c!2914)) b!8576))

(declare-fun b_lambda!4273 () Bool)

(assert (=> (not b_lambda!4273) (not b!8576)))

(declare-fun t!1997 () Bool)

(declare-fun tb!1657 () Bool)

(assert (=> (and start!1694 (= f!585 f!585) t!1997) tb!1657))

(declare-fun result!1697 () Bool)

(assert (=> tb!1657 (= result!1697 true)))

(assert (=> b!8576 t!1997))

(declare-fun b_and!3031 () Bool)

(assert (= b_and!3029 (and (=> t!1997 result!1697) b_and!3031)))

(declare-fun m!11461 () Bool)

(assert (=> b!8576 m!11461))

(assert (=> b!8576 m!11461))

(declare-fun m!11463 () Bool)

(assert (=> b!8576 m!11463))

(assert (=> b!8560 d!6709))

(declare-fun d!6711 () Bool)

(declare-fun lt!1556 () List!196)

(declare-fun isEmpty!162 (List!196) Bool)

(assert (=> d!6711 (not (isEmpty!162 lt!1556))))

(declare-fun e!4962 () List!196)

(assert (=> d!6711 (= lt!1556 e!4962)))

(declare-fun c!2917 () Bool)

(assert (=> d!6711 (= c!2917 (is-Leaf!115 tree!25))))

(assert (=> d!6711 (= (toList!42 tree!25) lt!1556)))

(declare-fun b!8581 () Bool)

(assert (=> b!8581 (= e!4962 (Cons!193 (value!1284 tree!25) Nil!194))))

(declare-fun b!8582 () Bool)

(declare-fun append!83 (List!196 List!196) List!196)

(assert (=> b!8582 (= e!4962 (append!83 (toList!42 (left!377 tree!25)) (toList!42 (right!380 tree!25))))))

(assert (= (and d!6711 c!2917) b!8581))

(assert (= (and d!6711 (not c!2917)) b!8582))

(declare-fun m!11465 () Bool)

(assert (=> d!6711 m!11465))

(declare-fun m!11467 () Bool)

(assert (=> b!8582 m!11467))

(declare-fun m!11469 () Bool)

(assert (=> b!8582 m!11469))

(assert (=> b!8582 m!11467))

(assert (=> b!8582 m!11469))

(declare-fun m!11471 () Bool)

(assert (=> b!8582 m!11471))

(assert (=> b!8560 d!6711))

(declare-fun d!6713 () Bool)

(assert (=> d!6713 (= trivial!1 true)))

(assert (=> b!8555 d!6713))

(declare-fun d!6715 () Bool)

(assert (=> d!6715 (= (inv!296 thiss!840) (= (dynLambda!235 (x!4664 thiss!840)) (dynLambda!235 (y!517 thiss!840))))))

(declare-fun b_lambda!4275 () Bool)

(assert (=> (not b_lambda!4275) (not d!6715)))

(declare-fun t!1999 () Bool)

(declare-fun tb!1659 () Bool)

(assert (=> (and b!8558 (= (x!4664 thiss!840) (x!4664 thiss!840)) t!1999) tb!1659))

(declare-fun result!1699 () Bool)

(assert (=> tb!1659 (= result!1699 true)))

(assert (=> d!6715 t!1999))

(declare-fun b_and!3033 () Bool)

(assert (= b_and!3023 (and (=> t!1999 result!1699) b_and!3033)))

(declare-fun t!2001 () Bool)

(declare-fun tb!1661 () Bool)

(assert (=> (and b!8558 (= (y!517 thiss!840) (x!4664 thiss!840)) t!2001) tb!1661))

(declare-fun result!1701 () Bool)

(assert (=> tb!1661 (= result!1701 true)))

(assert (=> d!6715 t!2001))

(declare-fun b_and!3035 () Bool)

(assert (= b_and!3025 (and (=> t!2001 result!1701) b_and!3035)))

(declare-fun b_lambda!4277 () Bool)

(assert (=> (not b_lambda!4277) (not d!6715)))

(declare-fun t!2003 () Bool)

(declare-fun tb!1663 () Bool)

(assert (=> (and b!8558 (= (x!4664 thiss!840) (y!517 thiss!840)) t!2003) tb!1663))

(declare-fun result!1703 () Bool)

(assert (=> tb!1663 (= result!1703 true)))

(assert (=> d!6715 t!2003))

(declare-fun b_and!3037 () Bool)

(assert (= b_and!3033 (and (=> t!2003 result!1703) b_and!3037)))

(declare-fun t!2005 () Bool)

(declare-fun tb!1665 () Bool)

(assert (=> (and b!8558 (= (y!517 thiss!840) (y!517 thiss!840)) t!2005) tb!1665))

(declare-fun result!1705 () Bool)

(assert (=> tb!1665 (= result!1705 true)))

(assert (=> d!6715 t!2005))

(declare-fun b_and!3039 () Bool)

(assert (= b_and!3035 (and (=> t!2005 result!1705) b_and!3039)))

(declare-fun m!11473 () Bool)

(assert (=> d!6715 m!11473))

(declare-fun m!11475 () Bool)

(assert (=> d!6715 m!11475))

(assert (=> start!1694 d!6715))

(declare-fun b_lambda!4279 () Bool)

(assert (= b_lambda!4275 (or (and b!8570 (= lambda!1972 (x!4664 thiss!840))) (and b!8556 (= lambda!1965 (x!4664 thiss!840))) (and b!8558 b_free!771 (= (y!517 thiss!840) (x!4664 thiss!840))) (and b!8558 b_free!769) (and b!8570 (= lambda!1971 (x!4664 thiss!840))) b_lambda!4279)))

(declare-fun bs!2004 () Bool)

(declare-fun d!6717 () Bool)

(assert (= bs!2004 (and d!6717 b!8570)))

(assert (=> bs!2004 (= (dynLambda!235 lambda!1971) (fold!18 (left!377 tree!25) f!585))))

(declare-fun m!11477 () Bool)

(assert (=> bs!2004 m!11477))

(assert (=> (and b!8570 (= lambda!1971 (x!4664 thiss!840)) d!6715) d!6717))

(declare-fun bs!2005 () Bool)

(declare-fun d!6719 () Bool)

(assert (= bs!2005 (and d!6719 b!8556)))

(assert (=> bs!2005 (= (dynLambda!235 lambda!1965) (fold!18 tree!25 f!585))))

(assert (=> bs!2005 m!11449))

(assert (=> (and b!8556 (= lambda!1965 (x!4664 thiss!840)) d!6715) d!6719))

(declare-fun bs!2006 () Bool)

(declare-fun d!6721 () Bool)

(assert (= bs!2006 (and d!6721 b!8570)))

(assert (=> bs!2006 (= (dynLambda!235 lambda!1972) (fold!18 (right!380 tree!25) f!585))))

(declare-fun m!11479 () Bool)

(assert (=> bs!2006 m!11479))

(assert (=> (and b!8570 (= lambda!1972 (x!4664 thiss!840)) d!6715) d!6721))

(declare-fun b_lambda!4281 () Bool)

(assert (= b_lambda!4273 (or (and start!1694 (= lambda!1964 f!585)) (and start!1694 b_free!765) b_lambda!4281)))

(declare-fun bs!2007 () Bool)

(declare-fun d!6723 () Bool)

(assert (= bs!2007 (and d!6723 start!1694)))

(declare-fun ++!3 (Balance!159 Balance!159) Balance!159)

(assert (=> bs!2007 (= (dynLambda!234 lambda!1964 (head!411 (toList!42 tree!25)) (foldRight1!49 (tail!423 (toList!42 tree!25)) f!585)) (++!3 (head!411 (toList!42 tree!25)) (foldRight1!49 (tail!423 (toList!42 tree!25)) f!585)))))

(assert (=> bs!2007 m!11461))

(declare-fun m!11481 () Bool)

(assert (=> bs!2007 m!11481))

(assert (=> (and start!1694 (= lambda!1964 f!585) b!8576) d!6723))

(declare-fun b_lambda!4283 () Bool)

(assert (= b_lambda!4269 (or b!8570 b_lambda!4283)))

(declare-fun bs!2008 () Bool)

(declare-fun d!6725 () Bool)

(assert (= bs!2008 (and d!6725 b!8570)))

(assert (=> bs!2008 (= (dynLambda!235 lambda!1971) (fold!18 (left!377 tree!25) f!585))))

(assert (=> bs!2008 m!11477))

(assert (=> b!8570 d!6725))

(declare-fun b_lambda!4285 () Bool)

(assert (= b_lambda!4277 (or (and b!8558 b_free!771) (and b!8558 b_free!769 (= (x!4664 thiss!840) (y!517 thiss!840))) (and b!8570 (= lambda!1971 (y!517 thiss!840))) (and b!8570 (= lambda!1972 (y!517 thiss!840))) (and b!8556 (= lambda!1965 (y!517 thiss!840))) b_lambda!4285)))

(declare-fun bs!2009 () Bool)

(declare-fun d!6727 () Bool)

(assert (= bs!2009 (and d!6727 b!8570)))

(assert (=> bs!2009 (= (dynLambda!235 lambda!1971) (fold!18 (left!377 tree!25) f!585))))

(assert (=> bs!2009 m!11477))

(assert (=> (and b!8570 (= lambda!1971 (y!517 thiss!840)) d!6715) d!6727))

(declare-fun bs!2010 () Bool)

(declare-fun d!6729 () Bool)

(assert (= bs!2010 (and d!6729 b!8556)))

(assert (=> bs!2010 (= (dynLambda!235 lambda!1965) (fold!18 tree!25 f!585))))

(assert (=> bs!2010 m!11449))

(assert (=> (and b!8556 (= lambda!1965 (y!517 thiss!840)) d!6715) d!6729))

(declare-fun bs!2011 () Bool)

(declare-fun d!6731 () Bool)

(assert (= bs!2011 (and d!6731 b!8570)))

(assert (=> bs!2011 (= (dynLambda!235 lambda!1972) (fold!18 (right!380 tree!25) f!585))))

(assert (=> bs!2011 m!11479))

(assert (=> (and b!8570 (= lambda!1972 (y!517 thiss!840)) d!6715) d!6731))

(declare-fun b_lambda!4287 () Bool)

(assert (= b_lambda!4271 (or b!8570 b_lambda!4287)))

(declare-fun bs!2012 () Bool)

(declare-fun d!6733 () Bool)

(assert (= bs!2012 (and d!6733 b!8570)))

(assert (=> bs!2012 (= (dynLambda!235 lambda!1972) (fold!18 (right!380 tree!25) f!585))))

(assert (=> bs!2012 m!11479))

(assert (=> b!8570 d!6733))

(declare-fun b_lambda!4289 () Bool)

(assert (= b_lambda!4267 (or (and start!1694 (= lambda!1964 f!585)) (and start!1694 b_free!765) b_lambda!4289)))

(declare-fun bs!2013 () Bool)

(declare-fun d!6735 () Bool)

(assert (= bs!2013 (and d!6735 start!1694)))

(assert (=> bs!2013 (= (dynLambda!234 lambda!1964 (_1!29 lt!1553) (_2!29 lt!1553)) (++!3 (_1!29 lt!1553) (_2!29 lt!1553)))))

(declare-fun m!11483 () Bool)

(assert (=> bs!2013 m!11483))

(assert (=> (and start!1694 (= lambda!1964 f!585) b!8570) d!6735))

(push 1)

(assert (not bs!2013))

(assert (not b_lambda!4287))

(assert (not b_lambda!4285))

(assert (not b!8576))

(assert (not b_next!1741))

(assert (not b_lambda!4265))

(assert (not b!8582))

(assert (not bs!2004))

(assert (not b_lambda!4289))

(assert b_and!3037)

(assert (not d!6711))

(assert (not bs!2008))

(assert (not b_lambda!4283))

(assert b_and!3027)

(assert (not b_next!1735))

(assert (not bs!2006))

(assert (not b_next!1743))

(assert (not b_lambda!4281))

(assert (not b_lambda!4279))

(assert b_and!3039)

(assert (not bs!2011))

(assert (not bs!2009))

(assert (not bs!2005))

(assert (not bs!2012))

(assert (not bs!2010))

(assert (not b_next!1729))

(assert b_and!3031)

(assert (not bs!2007))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1741))

(assert b_and!3037)

(assert b_and!3027)

(assert (not b_next!1735))

(assert (not b_next!1743))

(assert b_and!3039)

(assert (not b_next!1729))

(assert b_and!3031)

(check-sat)

(pop 1)

