; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1746 () Bool)

(assert start!1746)

(declare-fun b!8799 () Bool)

(declare-fun b_free!871 () Bool)

(declare-fun b_next!1973 () Bool)

(assert (=> b!8799 (= b_free!871 (not b_next!1973))))

(declare-fun tp!1444 () Bool)

(declare-fun b_and!3291 () Bool)

(assert (=> b!8799 (= tp!1444 b_and!3291)))

(declare-fun b_free!873 () Bool)

(declare-fun b_next!1975 () Bool)

(assert (=> b!8799 (= b_free!873 (not b_next!1975))))

(declare-fun tp!1441 () Bool)

(declare-fun b_and!3293 () Bool)

(assert (=> b!8799 (= tp!1441 b_and!3293)))

(declare-fun b_free!875 () Bool)

(declare-fun b_next!1977 () Bool)

(assert (=> b!8799 (= b_free!875 (not b_next!1977))))

(declare-fun tp!1446 () Bool)

(declare-fun b_and!3295 () Bool)

(assert (=> b!8799 (= tp!1446 b_and!3295)))

(declare-fun b_free!877 () Bool)

(declare-fun b_next!1979 () Bool)

(assert (=> start!1746 (= b_free!877 (not b_next!1979))))

(declare-fun tp!1442 () Bool)

(declare-fun b_and!3297 () Bool)

(assert (=> start!1746 (= tp!1442 b_and!3297)))

(declare-fun b!8797 () Bool)

(declare-fun b_free!879 () Bool)

(declare-fun b_next!1981 () Bool)

(assert (=> b!8797 (= b_free!879 (not b_next!1981))))

(declare-fun tp!1445 () Bool)

(declare-fun b_and!3299 () Bool)

(assert (=> b!8797 (= tp!1445 b_and!3299)))

(declare-fun b_free!881 () Bool)

(declare-fun b_next!1983 () Bool)

(assert (=> b!8797 (= b_free!881 (not b_next!1983))))

(declare-fun tp!1447 () Bool)

(declare-fun b_and!3301 () Bool)

(assert (=> b!8797 (= tp!1447 b_and!3301)))

(declare-fun b_free!883 () Bool)

(declare-fun b_next!1985 () Bool)

(assert (=> b!8797 (= b_free!883 (not b_next!1985))))

(declare-fun tp!1443 () Bool)

(declare-fun b_and!3303 () Bool)

(assert (=> b!8797 (= tp!1443 b_and!3303)))

(declare-fun f!585 () Int)

(declare-fun lambda!2072 () Int)

(declare-fun b_next!1987 () Bool)

(assert (=> start!1746 (= b_next!1979 (or (and start!1746 (= lambda!2072 f!585)) b_next!1987))))

(declare-fun b!8800 () Bool)

(assert (=> b!8800 true))

(declare-fun order!107 () Int)

(declare-fun lambda!2073 () Int)

(declare-fun order!105 () Int)

(declare-fun dynLambda!251 (Int Int) Int)

(declare-fun dynLambda!252 (Int Int) Int)

(assert (=> b!8800 (< (dynLambda!251 order!105 f!585) (dynLambda!252 order!107 lambda!2073))))

(assert (=> b!8800 true))

(declare-datatypes () ((Balance!175 (Balance!176 (extraOpen!128 Int) (extraClose!128 Int)))))

(declare-datatypes () ((EqEvidence!140 (EqEvidence!141 (x!4812 Int) (y!535 Int) (evidence!137 Int)))))

(declare-fun that!212 () EqEvidence!140)

(declare-fun b_next!1989 () Bool)

(assert (=> b!8799 (= b_next!1973 (or (and b!8800 (= lambda!2073 (x!4812 that!212))) b_next!1989))))

(declare-fun b_next!1991 () Bool)

(assert (=> b!8799 (= b_next!1975 (or (and b!8800 (= lambda!2073 (y!535 that!212))) b_next!1991))))

(declare-fun thiss!838 () EqEvidence!140)

(declare-fun b_next!1993 () Bool)

(assert (=> b!8797 (= b_next!1981 (or (and b!8800 (= lambda!2073 (x!4812 thiss!838))) b_next!1993))))

(declare-fun b_next!1995 () Bool)

(assert (=> b!8797 (= b_next!1983 (or (and b!8800 (= lambda!2073 (y!535 thiss!838))) b_next!1995))))

(declare-fun lambda!2074 () Int)

(assert (=> b!8800 (not (= lambda!2074 lambda!2073))))

(assert (=> b!8800 true))

(declare-fun dynLambda!253 (Int) Balance!175)

(assert (=> (and b!8799 b!8800 (= (dynLambda!253 lambda!2074) (dynLambda!253 (x!4812 that!212)))) (= lambda!2074 (x!4812 that!212))))

(assert (=> (and b!8799 b!8800 (= (dynLambda!253 lambda!2074) (dynLambda!253 (y!535 that!212)))) (= lambda!2074 (y!535 that!212))))

(assert (=> (and b!8797 b!8800 (= (dynLambda!253 lambda!2074) (dynLambda!253 (x!4812 thiss!838)))) (= lambda!2074 (x!4812 thiss!838))))

(assert (=> (and b!8797 b!8800 (= (dynLambda!253 lambda!2074) (dynLambda!253 (y!535 thiss!838)))) (= lambda!2074 (y!535 thiss!838))))

(declare-fun b_next!1997 () Bool)

(assert (=> b!8799 (= b_next!1989 (or (and b!8800 (= lambda!2074 (x!4812 that!212))) b_next!1997))))

(declare-fun b_next!1999 () Bool)

(assert (=> b!8799 (= b_next!1991 (or (and b!8800 (= lambda!2074 (y!535 that!212))) b_next!1999))))

(declare-fun b_next!2001 () Bool)

(assert (=> b!8797 (= b_next!1993 (or (and b!8800 (= lambda!2074 (x!4812 thiss!838))) b_next!2001))))

(declare-fun b_next!2003 () Bool)

(assert (=> b!8797 (= b_next!1995 (or (and b!8800 (= lambda!2074 (y!535 thiss!838))) b_next!2003))))

(declare-fun m!11677 () Bool)

(assert (=> b!8800 m!11677))

(declare-fun lambda!2075 () Int)

(declare-fun dynLambda!254 (Int) Bool)

(assert (=> (and b!8799 b!8800 (= (dynLambda!254 lambda!2075) (dynLambda!254 (evidence!137 that!212)))) (= lambda!2075 (evidence!137 that!212))))

(assert (=> (and b!8797 b!8800 (= (dynLambda!254 lambda!2075) (dynLambda!254 (evidence!137 thiss!838)))) (= lambda!2075 (evidence!137 thiss!838))))

(declare-fun b_next!2005 () Bool)

(assert (=> b!8799 (= b_next!1977 (or (and b!8800 (= lambda!2075 (evidence!137 that!212))) b_next!2005))))

(declare-fun b_next!2007 () Bool)

(assert (=> b!8797 (= b_next!1985 (or (and b!8800 (= lambda!2075 (evidence!137 thiss!838))) b_next!2007))))

(declare-fun bs!2101 () Bool)

(declare-fun b!8796 () Bool)

(assert (= bs!2101 (and b!8796 b!8800)))

(declare-fun lambda!2076 () Int)

(assert (=> bs!2101 (not (= lambda!2076 lambda!2073))))

(assert (=> bs!2101 (not (= lambda!2076 lambda!2074))))

(assert (=> b!8796 true))

(assert (=> b!8796 (< (dynLambda!251 order!105 f!585) (dynLambda!252 order!107 lambda!2076))))

(assert (=> b!8796 true))

(declare-fun b_next!2009 () Bool)

(assert (=> b!8799 (= b_next!1997 (or (and b!8796 (= lambda!2076 (x!4812 that!212))) b_next!2009))))

(declare-fun b_next!2011 () Bool)

(assert (=> b!8799 (= b_next!1999 (or (and b!8796 (= lambda!2076 (y!535 that!212))) b_next!2011))))

(declare-fun b_next!2013 () Bool)

(assert (=> b!8797 (= b_next!2001 (or (and b!8796 (= lambda!2076 (x!4812 thiss!838))) b_next!2013))))

(declare-fun b_next!2015 () Bool)

(assert (=> b!8797 (= b_next!2003 (or (and b!8796 (= lambda!2076 (y!535 thiss!838))) b_next!2015))))

(declare-fun b!8795 () Bool)

(declare-fun res!2756 () Bool)

(declare-fun e!5119 () Bool)

(assert (=> b!8795 (=> (not res!2756) (not e!5119))))

(assert (=> b!8795 (= res!2756 (dynLambda!254 (evidence!137 thiss!838)))))

(declare-fun res!2751 () Bool)

(assert (=> b!8796 (=> (not res!2751) (not e!5119))))

(assert (=> b!8796 (= res!2751 (= that!212 (EqEvidence!141 lambda!2076 lambda!2076 lambda!2075)))))

(declare-fun res!2754 () Bool)

(assert (=> start!1746 (=> (not res!2754) (not e!5119))))

(assert (=> start!1746 (= res!2754 (= f!585 lambda!2072))))

(assert (=> start!1746 e!5119))

(assert (=> start!1746 true))

(declare-fun e!5118 () Bool)

(declare-fun inv!306 (EqEvidence!140) Bool)

(assert (=> start!1746 (and (inv!306 that!212) e!5118)))

(assert (=> start!1746 tp!1442))

(declare-fun e!5117 () Bool)

(assert (=> start!1746 (and (inv!306 thiss!838) e!5117)))

(assert (=> b!8797 (= e!5117 (and tp!1445 tp!1447 tp!1443))))

(declare-fun b!8798 () Bool)

(declare-fun res!2752 () Bool)

(assert (=> b!8798 (=> (not res!2752) (not e!5119))))

(declare-datatypes () ((ProofOps!122 (ProofOps!123 (prop!175 Bool)))))

(declare-fun thiss!829 () ProofOps!122)

(declare-datatypes () ((Tree!50 (Branch!41 (left!397 Tree!50) (right!400 Tree!50)) (Leaf!123 (value!1292 Balance!175)))))

(declare-fun tree!25 () Tree!50)

(declare-fun fold!26 (Tree!50 Int) Balance!175)

(declare-datatypes () ((List!204 (Nil!202) (Cons!201 (head!419 Balance!175) (tail!431 List!204)))))

(declare-fun foldRight1!57 (List!204 Int) Balance!175)

(declare-fun toList!50 (Tree!50) List!204)

(assert (=> b!8798 (= res!2752 (= thiss!829 (ProofOps!123 (= (fold!26 tree!25 f!585) (foldRight1!57 (toList!50 tree!25) f!585)))))))

(assert (=> b!8799 (= e!5118 (and tp!1444 tp!1441 tp!1446))))

(declare-fun res!2755 () Bool)

(assert (=> b!8800 (=> (not res!2755) (not e!5119))))

(assert (=> b!8800 (= res!2755 (= thiss!838 (EqEvidence!141 lambda!2073 lambda!2074 lambda!2075)))))

(declare-fun b!8801 () Bool)

(assert (=> b!8801 (= e!5119 (not (= (dynLambda!253 (y!535 thiss!838)) (dynLambda!253 (x!4812 that!212)))))))

(declare-fun b!8802 () Bool)

(declare-fun res!2753 () Bool)

(assert (=> b!8802 (=> (not res!2753) (not e!5119))))

(assert (=> b!8802 (= res!2753 (is-Leaf!123 tree!25))))

(assert (= (and start!1746 res!2754) b!8798))

(assert (= (and b!8798 res!2752) b!8802))

(assert (= (and b!8802 res!2753) b!8800))

(assert (= (and b!8800 res!2755) b!8796))

(assert (= (and b!8796 res!2751) b!8795))

(assert (= (and b!8795 res!2756) b!8801))

(assert (= start!1746 b!8799))

(assert (= start!1746 b!8797))

(declare-fun b_lambda!4423 () Bool)

(assert (=> (not b_lambda!4423) (not b!8795)))

(declare-fun t!2139 () Bool)

(declare-fun tb!1799 () Bool)

(assert (=> (and b!8799 (= (evidence!137 that!212) (evidence!137 thiss!838)) t!2139) tb!1799))

(declare-fun result!1839 () Bool)

(assert (=> tb!1799 (= result!1839 true)))

(assert (=> b!8795 t!2139))

(declare-fun b_and!3305 () Bool)

(assert (= b_and!3295 (and (=> t!2139 result!1839) b_and!3305)))

(declare-fun t!2141 () Bool)

(declare-fun tb!1801 () Bool)

(assert (=> (and b!8797 (= (evidence!137 thiss!838) (evidence!137 thiss!838)) t!2141) tb!1801))

(declare-fun result!1841 () Bool)

(assert (=> tb!1801 (= result!1841 true)))

(assert (=> b!8795 t!2141))

(declare-fun b_and!3307 () Bool)

(assert (= b_and!3303 (and (=> t!2141 result!1841) b_and!3307)))

(declare-fun b_lambda!4425 () Bool)

(assert (=> (not b_lambda!4425) (not b!8801)))

(declare-fun tb!1803 () Bool)

(declare-fun t!2143 () Bool)

(assert (=> (and b!8799 (= (x!4812 that!212) (y!535 thiss!838)) t!2143) tb!1803))

(declare-fun result!1843 () Bool)

(assert (=> tb!1803 (= result!1843 true)))

(assert (=> b!8801 t!2143))

(declare-fun b_and!3309 () Bool)

(assert (= b_and!3291 (and (=> t!2143 result!1843) b_and!3309)))

(declare-fun t!2145 () Bool)

(declare-fun tb!1805 () Bool)

(assert (=> (and b!8799 (= (y!535 that!212) (y!535 thiss!838)) t!2145) tb!1805))

(declare-fun result!1845 () Bool)

(assert (=> tb!1805 (= result!1845 true)))

(assert (=> b!8801 t!2145))

(declare-fun b_and!3311 () Bool)

(assert (= b_and!3293 (and (=> t!2145 result!1845) b_and!3311)))

(declare-fun t!2147 () Bool)

(declare-fun tb!1807 () Bool)

(assert (=> (and b!8797 (= (x!4812 thiss!838) (y!535 thiss!838)) t!2147) tb!1807))

(declare-fun result!1847 () Bool)

(assert (=> tb!1807 (= result!1847 true)))

(assert (=> b!8801 t!2147))

(declare-fun b_and!3313 () Bool)

(assert (= b_and!3299 (and (=> t!2147 result!1847) b_and!3313)))

(declare-fun t!2149 () Bool)

(declare-fun tb!1809 () Bool)

(assert (=> (and b!8797 (= (y!535 thiss!838) (y!535 thiss!838)) t!2149) tb!1809))

(declare-fun result!1849 () Bool)

(assert (=> tb!1809 (= result!1849 true)))

(assert (=> b!8801 t!2149))

(declare-fun b_and!3315 () Bool)

(assert (= b_and!3301 (and (=> t!2149 result!1849) b_and!3315)))

(declare-fun b_lambda!4427 () Bool)

(assert (=> (not b_lambda!4427) (not b!8801)))

(declare-fun t!2151 () Bool)

(declare-fun tb!1811 () Bool)

(assert (=> (and b!8799 (= (x!4812 that!212) (x!4812 that!212)) t!2151) tb!1811))

(declare-fun result!1851 () Bool)

(assert (=> tb!1811 (= result!1851 true)))

(assert (=> b!8801 t!2151))

(declare-fun b_and!3317 () Bool)

(assert (= b_and!3309 (and (=> t!2151 result!1851) b_and!3317)))

(declare-fun t!2153 () Bool)

(declare-fun tb!1813 () Bool)

(assert (=> (and b!8799 (= (y!535 that!212) (x!4812 that!212)) t!2153) tb!1813))

(declare-fun result!1853 () Bool)

(assert (=> tb!1813 (= result!1853 true)))

(assert (=> b!8801 t!2153))

(declare-fun b_and!3319 () Bool)

(assert (= b_and!3311 (and (=> t!2153 result!1853) b_and!3319)))

(declare-fun tb!1815 () Bool)

(declare-fun t!2155 () Bool)

(assert (=> (and b!8797 (= (x!4812 thiss!838) (x!4812 that!212)) t!2155) tb!1815))

(declare-fun result!1855 () Bool)

(assert (=> tb!1815 (= result!1855 true)))

(assert (=> b!8801 t!2155))

(declare-fun b_and!3321 () Bool)

(assert (= b_and!3313 (and (=> t!2155 result!1855) b_and!3321)))

(declare-fun tb!1817 () Bool)

(declare-fun t!2157 () Bool)

(assert (=> (and b!8797 (= (y!535 thiss!838) (x!4812 that!212)) t!2157) tb!1817))

(declare-fun result!1857 () Bool)

(assert (=> tb!1817 (= result!1857 true)))

(assert (=> b!8801 t!2157))

(declare-fun b_and!3323 () Bool)

(assert (= b_and!3315 (and (=> t!2157 result!1857) b_and!3323)))

(declare-fun m!11679 () Bool)

(assert (=> b!8795 m!11679))

(declare-fun m!11681 () Bool)

(assert (=> start!1746 m!11681))

(declare-fun m!11683 () Bool)

(assert (=> start!1746 m!11683))

(declare-fun m!11685 () Bool)

(assert (=> b!8798 m!11685))

(declare-fun m!11687 () Bool)

(assert (=> b!8798 m!11687))

(assert (=> b!8798 m!11687))

(declare-fun m!11689 () Bool)

(assert (=> b!8798 m!11689))

(declare-fun m!11691 () Bool)

(assert (=> b!8801 m!11691))

(declare-fun m!11693 () Bool)

(assert (=> b!8801 m!11693))

(push 1)

(assert (not b_lambda!4423))

(assert (not b_next!2013))

(assert (not b_next!2011))

(assert (not b_next!2009))

(assert b_and!3317)

(assert (not b_lambda!4427))

(assert (not b_lambda!4425))

(assert (not b!8800))

(assert (not b!8796))

(assert b_and!3323)

(assert (not b_next!2015))

(assert b_and!3319)

(assert (not start!1746))

(assert b_and!3307)

(assert (not b_next!2005))

(assert b_and!3305)

(assert b_and!3297)

(assert (not b_next!1987))

(assert b_and!3321)

(assert (not b_next!2007))

(assert (not b!8798))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2013))

(assert (not b_next!2011))

(assert (not b_next!2009))

(assert b_and!3317)

(assert b_and!3323)

(assert (not b_next!2015))

(assert b_and!3319)

(assert b_and!3307)

(assert (not b_next!2005))

(assert b_and!3305)

(assert b_and!3297)

(assert (not b_next!1987))

(assert b_and!3321)

(assert (not b_next!2007))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4429 () Bool)

(assert (= b_lambda!4423 (or (and b!8800 (= lambda!2075 (evidence!137 thiss!838))) (and b!8799 b_free!875 (= (evidence!137 that!212) (evidence!137 thiss!838))) (and b!8797 b_free!883) b_lambda!4429)))

(declare-fun bs!2102 () Bool)

(declare-fun d!6913 () Bool)

(assert (= bs!2102 (and d!6913 b!8800)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2102 (= (dynLambda!254 lambda!2075) trivial!1)))

(assert (=> (and b!8800 (= lambda!2075 (evidence!137 thiss!838)) b!8795) d!6913))

(declare-fun b_lambda!4431 () Bool)

(assert (= b_lambda!4427 (or (and b!8796 (= lambda!2076 (x!4812 that!212))) (and b!8800 (= lambda!2074 (x!4812 that!212))) (and b!8799 b_free!873 (= (y!535 that!212) (x!4812 that!212))) (and b!8797 b_free!881 (= (y!535 thiss!838) (x!4812 that!212))) (and b!8799 b_free!871) (and b!8800 (= lambda!2073 (x!4812 that!212))) (and b!8797 b_free!879 (= (x!4812 thiss!838) (x!4812 that!212))) b_lambda!4431)))

(declare-fun bs!2103 () Bool)

(declare-fun d!6915 () Bool)

(assert (= bs!2103 (and d!6915 b!8796)))

(assert (=> bs!2103 (= (dynLambda!253 lambda!2076) (foldRight1!57 (Cons!201 (value!1292 tree!25) Nil!202) f!585))))

(declare-fun m!11695 () Bool)

(assert (=> bs!2103 m!11695))

(assert (=> (and b!8796 (= lambda!2076 (x!4812 that!212)) b!8801) d!6915))

(declare-fun bs!2104 () Bool)

(declare-fun d!6917 () Bool)

(assert (= bs!2104 (and d!6917 b!8800)))

(assert (=> bs!2104 (= (dynLambda!253 lambda!2074) (value!1292 tree!25))))

(assert (=> (and b!8800 (= lambda!2074 (x!4812 that!212)) b!8801) d!6917))

(declare-fun bs!2105 () Bool)

(declare-fun d!6919 () Bool)

(assert (= bs!2105 (and d!6919 b!8800)))

(assert (=> bs!2105 (= (dynLambda!253 lambda!2073) (fold!26 tree!25 f!585))))

(assert (=> bs!2105 m!11685))

(assert (=> (and b!8800 (= lambda!2073 (x!4812 that!212)) b!8801) d!6919))

(declare-fun b_lambda!4433 () Bool)

(assert (= b_lambda!4425 (or (and b!8800 (= lambda!2073 (y!535 thiss!838))) (and b!8796 (= lambda!2076 (y!535 thiss!838))) (and b!8797 b_free!881) (and b!8799 b_free!873 (= (y!535 that!212) (y!535 thiss!838))) (and b!8800 (= lambda!2074 (y!535 thiss!838))) (and b!8797 b_free!879 (= (x!4812 thiss!838) (y!535 thiss!838))) (and b!8799 b_free!871 (= (x!4812 that!212) (y!535 thiss!838))) b_lambda!4433)))

(declare-fun bs!2106 () Bool)

(declare-fun d!6921 () Bool)

(assert (= bs!2106 (and d!6921 b!8800)))

(assert (=> bs!2106 (= (dynLambda!253 lambda!2074) (value!1292 tree!25))))

(assert (=> (and b!8800 (= lambda!2074 (y!535 thiss!838)) b!8801) d!6921))

(declare-fun bs!2107 () Bool)

(declare-fun d!6923 () Bool)

(assert (= bs!2107 (and d!6923 b!8800)))

(assert (=> bs!2107 (= (dynLambda!253 lambda!2073) (fold!26 tree!25 f!585))))

(assert (=> bs!2107 m!11685))

(assert (=> (and b!8800 (= lambda!2073 (y!535 thiss!838)) b!8801) d!6923))

(declare-fun bs!2108 () Bool)

(declare-fun d!6925 () Bool)

(assert (= bs!2108 (and d!6925 b!8796)))

(assert (=> bs!2108 (= (dynLambda!253 lambda!2076) (foldRight1!57 (Cons!201 (value!1292 tree!25) Nil!202) f!585))))

(assert (=> bs!2108 m!11695))

(assert (=> (and b!8796 (= lambda!2076 (y!535 thiss!838)) b!8801) d!6925))

(push 1)

(assert (not b_next!2013))

(assert (not bs!2103))

(assert (not b_next!2011))

(assert (not b_next!2009))

(assert (not b_lambda!4433))

(assert b_and!3317)

(assert (not b_lambda!4431))

(assert (not b!8800))

(assert (not bs!2108))

(assert (not b!8796))

(assert b_and!3323)

(assert (not b_next!2015))

(assert b_and!3319)

(assert (not b_lambda!4429))

(assert (not start!1746))

(assert (not bs!2107))

(assert (not bs!2105))

(assert b_and!3307)

(assert (not b_next!2005))

(assert b_and!3305)

(assert b_and!3297)

(assert (not b_next!1987))

(assert b_and!3321)

(assert (not b_next!2007))

(assert (not b!8798))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2013))

(assert (not b_next!2011))

(assert (not b_next!2009))

(assert b_and!3317)

(assert b_and!3323)

(assert (not b_next!2015))

(assert b_and!3319)

(assert b_and!3307)

(assert (not b_next!2005))

(assert b_and!3305)

(assert b_and!3297)

(assert (not b_next!1987))

(assert b_and!3321)

(assert (not b_next!2007))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6927 () Bool)

(declare-fun c!2947 () Bool)

(assert (=> d!6927 (= c!2947 (and (is-Cons!201 (Cons!201 (value!1292 tree!25) Nil!202)) (is-Nil!202 (tail!431 (Cons!201 (value!1292 tree!25) Nil!202)))))))

(declare-fun e!5122 () Balance!175)

(assert (=> d!6927 (= (foldRight1!57 (Cons!201 (value!1292 tree!25) Nil!202) f!585) e!5122)))

(declare-fun b!8811 () Bool)

(assert (=> b!8811 (= e!5122 (head!419 (Cons!201 (value!1292 tree!25) Nil!202)))))

(declare-fun b!8812 () Bool)

(declare-fun dynLambda!255 (Int Balance!175 Balance!175) Balance!175)

(assert (=> b!8812 (= e!5122 (dynLambda!255 f!585 (head!419 (Cons!201 (value!1292 tree!25) Nil!202)) (foldRight1!57 (tail!431 (Cons!201 (value!1292 tree!25) Nil!202)) f!585)))))

(assert (= (and d!6927 c!2947) b!8811))

(assert (= (and d!6927 (not c!2947)) b!8812))

(declare-fun b_lambda!4435 () Bool)

(assert (=> (not b_lambda!4435) (not b!8812)))

(declare-fun t!2159 () Bool)

(declare-fun tb!1819 () Bool)

(assert (=> (and start!1746 (= f!585 f!585) t!2159) tb!1819))

(declare-fun result!1859 () Bool)

(assert (=> tb!1819 (= result!1859 true)))

(assert (=> b!8812 t!2159))

(declare-fun b_and!3325 () Bool)

(assert (= b_and!3297 (and (=> t!2159 result!1859) b_and!3325)))

(declare-fun m!11697 () Bool)

(assert (=> b!8812 m!11697))

(assert (=> b!8812 m!11697))

(declare-fun m!11699 () Bool)

(assert (=> b!8812 m!11699))

(assert (=> bs!2108 d!6927))

(declare-fun bs!2109 () Bool)

(declare-fun b!8818 () Bool)

(assert (= bs!2109 (and b!8818 b!8800)))

(declare-fun lambda!2081 () Int)

(assert (=> bs!2109 (= (= (left!397 tree!25) tree!25) (= lambda!2081 lambda!2073))))

(assert (=> bs!2109 (not (= lambda!2081 lambda!2074))))

(declare-fun bs!2110 () Bool)

(assert (= bs!2110 (and b!8818 b!8796)))

(assert (=> bs!2110 (not (= lambda!2081 lambda!2076))))

(assert (=> b!8818 true))

(assert (=> b!8818 (< (dynLambda!251 order!105 f!585) (dynLambda!252 order!107 lambda!2081))))

(assert (=> b!8818 true))

(declare-fun b_next!2017 () Bool)

(assert (=> b!8799 (= b_next!2009 (or (and b!8818 (= lambda!2081 (x!4812 that!212))) b_next!2017))))

(declare-fun b_next!2019 () Bool)

(assert (=> b!8799 (= b_next!2011 (or (and b!8818 (= lambda!2081 (y!535 that!212))) b_next!2019))))

(declare-fun b_next!2021 () Bool)

(assert (=> b!8797 (= b_next!2013 (or (and b!8818 (= lambda!2081 (x!4812 thiss!838))) b_next!2021))))

(declare-fun b_next!2023 () Bool)

(assert (=> b!8797 (= b_next!2015 (or (and b!8818 (= lambda!2081 (y!535 thiss!838))) b_next!2023))))

(declare-fun lambda!2082 () Int)

(assert (=> bs!2109 (= (= (right!400 tree!25) tree!25) (= lambda!2082 lambda!2073))))

(assert (=> bs!2109 (not (= lambda!2082 lambda!2074))))

(assert (=> bs!2110 (not (= lambda!2082 lambda!2076))))

(assert (=> b!8818 (= (= (right!400 tree!25) (left!397 tree!25)) (= lambda!2082 lambda!2081))))

(assert (=> b!8818 true))

(assert (=> b!8818 (< (dynLambda!251 order!105 f!585) (dynLambda!252 order!107 lambda!2082))))

(assert (=> b!8818 true))

(declare-fun b_next!2025 () Bool)

(assert (=> b!8799 (= b_next!2017 (or (and b!8818 (= lambda!2082 (x!4812 that!212))) b_next!2025))))

(declare-fun b_next!2027 () Bool)

(assert (=> b!8799 (= b_next!2019 (or (and b!8818 (= lambda!2082 (y!535 that!212))) b_next!2027))))

(declare-fun b_next!2029 () Bool)

(assert (=> b!8797 (= b_next!2021 (or (and b!8818 (= lambda!2082 (x!4812 thiss!838))) b_next!2029))))

(declare-fun b_next!2031 () Bool)

(assert (=> b!8797 (= b_next!2023 (or (and b!8818 (= lambda!2082 (y!535 thiss!838))) b_next!2031))))

(declare-fun e!5141 () Balance!175)

(declare-datatypes () ((tuple2!66 (tuple2!67 (_1!33 Balance!175) (_2!33 Balance!175)))))

(declare-fun lt!1577 () tuple2!66)

(assert (=> b!8818 (= e!5141 (dynLambda!255 f!585 (_1!33 lt!1577) (_2!33 lt!1577)))))

(assert (=> b!8818 (= lt!1577 (tuple2!67 (dynLambda!253 lambda!2081) (dynLambda!253 lambda!2082)))))

(declare-fun d!6929 () Bool)

(declare-fun c!2950 () Bool)

(assert (=> d!6929 (= c!2950 (is-Leaf!123 tree!25))))

(assert (=> d!6929 (= (fold!26 tree!25 f!585) e!5141)))

(declare-fun b!8817 () Bool)

(assert (=> b!8817 (= e!5141 (value!1292 tree!25))))

(assert (= (and d!6929 c!2950) b!8817))

(assert (= (and d!6929 (not c!2950)) b!8818))

(declare-fun b_lambda!4437 () Bool)

(assert (=> (not b_lambda!4437) (not b!8818)))

(declare-fun t!2161 () Bool)

(declare-fun tb!1821 () Bool)

(assert (=> (and start!1746 (= f!585 f!585) t!2161) tb!1821))

(declare-fun result!1861 () Bool)

(assert (=> tb!1821 (= result!1861 true)))

(assert (=> b!8818 t!2161))

(declare-fun b_and!3327 () Bool)

(assert (= b_and!3325 (and (=> t!2161 result!1861) b_and!3327)))

(declare-fun b_lambda!4439 () Bool)

(assert (=> (not b_lambda!4439) (not b!8818)))

(declare-fun b_lambda!4441 () Bool)

(assert (=> (not b_lambda!4441) (not b!8818)))

(declare-fun m!11701 () Bool)

(assert (=> b!8818 m!11701))

(declare-fun m!11703 () Bool)

(assert (=> b!8818 m!11703))

(declare-fun m!11705 () Bool)

(assert (=> b!8818 m!11705))

(assert (=> bs!2107 d!6929))

(declare-fun d!6931 () Bool)

(assert (=> d!6931 (= trivial!1 true)))

(assert (=> b!8800 d!6931))

(assert (=> b!8796 d!6931))

(assert (=> b!8798 d!6929))

(declare-fun d!6933 () Bool)

(declare-fun c!2951 () Bool)

(assert (=> d!6933 (= c!2951 (and (is-Cons!201 (toList!50 tree!25)) (is-Nil!202 (tail!431 (toList!50 tree!25)))))))

(declare-fun e!5142 () Balance!175)

(assert (=> d!6933 (= (foldRight1!57 (toList!50 tree!25) f!585) e!5142)))

(declare-fun b!8819 () Bool)

(assert (=> b!8819 (= e!5142 (head!419 (toList!50 tree!25)))))

(declare-fun b!8820 () Bool)

(assert (=> b!8820 (= e!5142 (dynLambda!255 f!585 (head!419 (toList!50 tree!25)) (foldRight1!57 (tail!431 (toList!50 tree!25)) f!585)))))

(assert (= (and d!6933 c!2951) b!8819))

(assert (= (and d!6933 (not c!2951)) b!8820))

(declare-fun b_lambda!4443 () Bool)

(assert (=> (not b_lambda!4443) (not b!8820)))

(declare-fun t!2163 () Bool)

(declare-fun tb!1823 () Bool)

(assert (=> (and start!1746 (= f!585 f!585) t!2163) tb!1823))

(declare-fun result!1863 () Bool)

(assert (=> tb!1823 (= result!1863 true)))

(assert (=> b!8820 t!2163))

(declare-fun b_and!3329 () Bool)

(assert (= b_and!3327 (and (=> t!2163 result!1863) b_and!3329)))

(declare-fun m!11707 () Bool)

(assert (=> b!8820 m!11707))

(assert (=> b!8820 m!11707))

(declare-fun m!11709 () Bool)

(assert (=> b!8820 m!11709))

(assert (=> b!8798 d!6933))

(declare-fun d!6935 () Bool)

(declare-fun lt!1580 () List!204)

(declare-fun isEmpty!166 (List!204) Bool)

(assert (=> d!6935 (not (isEmpty!166 lt!1580))))

(declare-fun e!5145 () List!204)

(assert (=> d!6935 (= lt!1580 e!5145)))

(declare-fun c!2954 () Bool)

(assert (=> d!6935 (= c!2954 (is-Leaf!123 tree!25))))

(assert (=> d!6935 (= (toList!50 tree!25) lt!1580)))

(declare-fun b!8825 () Bool)

(assert (=> b!8825 (= e!5145 (Cons!201 (value!1292 tree!25) Nil!202))))

(declare-fun b!8826 () Bool)

(declare-fun append!87 (List!204 List!204) List!204)

(assert (=> b!8826 (= e!5145 (append!87 (toList!50 (left!397 tree!25)) (toList!50 (right!400 tree!25))))))

(assert (= (and d!6935 c!2954) b!8825))

(assert (= (and d!6935 (not c!2954)) b!8826))

(declare-fun m!11711 () Bool)

(assert (=> d!6935 m!11711))

(declare-fun m!11713 () Bool)

(assert (=> b!8826 m!11713))

(declare-fun m!11715 () Bool)

(assert (=> b!8826 m!11715))

(assert (=> b!8826 m!11713))

(assert (=> b!8826 m!11715))

(declare-fun m!11717 () Bool)

(assert (=> b!8826 m!11717))

(assert (=> b!8798 d!6935))

(assert (=> bs!2103 d!6927))

(declare-fun d!6937 () Bool)

(declare-fun res!2760 () Bool)

(declare-fun e!5148 () Bool)

(assert (=> d!6937 (=> (not res!2760) (not e!5148))))

(assert (=> d!6937 (= res!2760 (= (dynLambda!253 (x!4812 that!212)) (dynLambda!253 (y!535 that!212))))))

(assert (=> d!6937 (= (inv!306 that!212) e!5148)))

(declare-fun b!8829 () Bool)

(assert (=> b!8829 (= e!5148 (dynLambda!254 (evidence!137 that!212)))))

(assert (= (and d!6937 res!2760) b!8829))

(declare-fun b_lambda!4445 () Bool)

(assert (=> (not b_lambda!4445) (not d!6937)))

(assert (=> d!6937 t!2151))

(declare-fun b_and!3331 () Bool)

(assert (= b_and!3317 (and (=> t!2151 result!1851) b_and!3331)))

(assert (=> d!6937 t!2153))

(declare-fun b_and!3333 () Bool)

(assert (= b_and!3319 (and (=> t!2153 result!1853) b_and!3333)))

(assert (=> d!6937 t!2155))

(declare-fun b_and!3335 () Bool)

(assert (= b_and!3321 (and (=> t!2155 result!1855) b_and!3335)))

(assert (=> d!6937 t!2157))

(declare-fun b_and!3337 () Bool)

(assert (= b_and!3323 (and (=> t!2157 result!1857) b_and!3337)))

(declare-fun b_lambda!4447 () Bool)

(assert (=> (not b_lambda!4447) (not d!6937)))

(declare-fun t!2165 () Bool)

(declare-fun tb!1825 () Bool)

(assert (=> (and b!8799 (= (x!4812 that!212) (y!535 that!212)) t!2165) tb!1825))

(declare-fun result!1865 () Bool)

(assert (=> tb!1825 (= result!1865 true)))

(assert (=> d!6937 t!2165))

(declare-fun b_and!3339 () Bool)

(assert (= b_and!3331 (and (=> t!2165 result!1865) b_and!3339)))

(declare-fun t!2167 () Bool)

(declare-fun tb!1827 () Bool)

(assert (=> (and b!8799 (= (y!535 that!212) (y!535 that!212)) t!2167) tb!1827))

(declare-fun result!1867 () Bool)

(assert (=> tb!1827 (= result!1867 true)))

(assert (=> d!6937 t!2167))

(declare-fun b_and!3341 () Bool)

(assert (= b_and!3333 (and (=> t!2167 result!1867) b_and!3341)))

(declare-fun tb!1829 () Bool)

(declare-fun t!2169 () Bool)

(assert (=> (and b!8797 (= (x!4812 thiss!838) (y!535 that!212)) t!2169) tb!1829))

(declare-fun result!1869 () Bool)

(assert (=> tb!1829 (= result!1869 true)))

(assert (=> d!6937 t!2169))

(declare-fun b_and!3343 () Bool)

(assert (= b_and!3335 (and (=> t!2169 result!1869) b_and!3343)))

(declare-fun t!2171 () Bool)

(declare-fun tb!1831 () Bool)

(assert (=> (and b!8797 (= (y!535 thiss!838) (y!535 that!212)) t!2171) tb!1831))

(declare-fun result!1871 () Bool)

(assert (=> tb!1831 (= result!1871 true)))

(assert (=> d!6937 t!2171))

(declare-fun b_and!3345 () Bool)

(assert (= b_and!3337 (and (=> t!2171 result!1871) b_and!3345)))

(declare-fun b_lambda!4449 () Bool)

(assert (=> (not b_lambda!4449) (not b!8829)))

(declare-fun t!2173 () Bool)

(declare-fun tb!1833 () Bool)

(assert (=> (and b!8799 (= (evidence!137 that!212) (evidence!137 that!212)) t!2173) tb!1833))

(declare-fun result!1873 () Bool)

(assert (=> tb!1833 (= result!1873 true)))

(assert (=> b!8829 t!2173))

(declare-fun b_and!3347 () Bool)

(assert (= b_and!3305 (and (=> t!2173 result!1873) b_and!3347)))

(declare-fun tb!1835 () Bool)

(declare-fun t!2175 () Bool)

(assert (=> (and b!8797 (= (evidence!137 thiss!838) (evidence!137 that!212)) t!2175) tb!1835))

(declare-fun result!1875 () Bool)

(assert (=> tb!1835 (= result!1875 true)))

(assert (=> b!8829 t!2175))

(declare-fun b_and!3349 () Bool)

(assert (= b_and!3307 (and (=> t!2175 result!1875) b_and!3349)))

(assert (=> d!6937 m!11693))

(declare-fun m!11719 () Bool)

(assert (=> d!6937 m!11719))

(declare-fun m!11721 () Bool)

(assert (=> b!8829 m!11721))

(assert (=> start!1746 d!6937))

(declare-fun d!6939 () Bool)

(declare-fun res!2761 () Bool)

(declare-fun e!5149 () Bool)

(assert (=> d!6939 (=> (not res!2761) (not e!5149))))

(assert (=> d!6939 (= res!2761 (= (dynLambda!253 (x!4812 thiss!838)) (dynLambda!253 (y!535 thiss!838))))))

(assert (=> d!6939 (= (inv!306 thiss!838) e!5149)))

(declare-fun b!8830 () Bool)

(assert (=> b!8830 (= e!5149 (dynLambda!254 (evidence!137 thiss!838)))))

(assert (= (and d!6939 res!2761) b!8830))

(declare-fun b_lambda!4451 () Bool)

(assert (=> (not b_lambda!4451) (not d!6939)))

(declare-fun t!2177 () Bool)

(declare-fun tb!1837 () Bool)

(assert (=> (and b!8799 (= (x!4812 that!212) (x!4812 thiss!838)) t!2177) tb!1837))

(declare-fun result!1877 () Bool)

(assert (=> tb!1837 (= result!1877 true)))

(assert (=> d!6939 t!2177))

(declare-fun b_and!3351 () Bool)

(assert (= b_and!3339 (and (=> t!2177 result!1877) b_and!3351)))

(declare-fun t!2179 () Bool)

(declare-fun tb!1839 () Bool)

(assert (=> (and b!8799 (= (y!535 that!212) (x!4812 thiss!838)) t!2179) tb!1839))

(declare-fun result!1879 () Bool)

(assert (=> tb!1839 (= result!1879 true)))

(assert (=> d!6939 t!2179))

(declare-fun b_and!3353 () Bool)

(assert (= b_and!3341 (and (=> t!2179 result!1879) b_and!3353)))

(declare-fun t!2181 () Bool)

(declare-fun tb!1841 () Bool)

(assert (=> (and b!8797 (= (x!4812 thiss!838) (x!4812 thiss!838)) t!2181) tb!1841))

(declare-fun result!1881 () Bool)

(assert (=> tb!1841 (= result!1881 true)))

(assert (=> d!6939 t!2181))

(declare-fun b_and!3355 () Bool)

(assert (= b_and!3343 (and (=> t!2181 result!1881) b_and!3355)))

(declare-fun t!2183 () Bool)

(declare-fun tb!1843 () Bool)

(assert (=> (and b!8797 (= (y!535 thiss!838) (x!4812 thiss!838)) t!2183) tb!1843))

(declare-fun result!1883 () Bool)

(assert (=> tb!1843 (= result!1883 true)))

(assert (=> d!6939 t!2183))

(declare-fun b_and!3357 () Bool)

(assert (= b_and!3345 (and (=> t!2183 result!1883) b_and!3357)))

(declare-fun b_lambda!4453 () Bool)

(assert (=> (not b_lambda!4453) (not d!6939)))

(assert (=> d!6939 t!2143))

(declare-fun b_and!3359 () Bool)

(assert (= b_and!3351 (and (=> t!2143 result!1843) b_and!3359)))

(assert (=> d!6939 t!2145))

(declare-fun b_and!3361 () Bool)

(assert (= b_and!3353 (and (=> t!2145 result!1845) b_and!3361)))

(assert (=> d!6939 t!2147))

(declare-fun b_and!3363 () Bool)

(assert (= b_and!3355 (and (=> t!2147 result!1847) b_and!3363)))

(assert (=> d!6939 t!2149))

(declare-fun b_and!3365 () Bool)

(assert (= b_and!3357 (and (=> t!2149 result!1849) b_and!3365)))

(declare-fun b_lambda!4455 () Bool)

(assert (=> (not b_lambda!4455) (not b!8830)))

(assert (=> b!8830 t!2139))

(declare-fun b_and!3367 () Bool)

(assert (= b_and!3347 (and (=> t!2139 result!1839) b_and!3367)))

(assert (=> b!8830 t!2141))

(declare-fun b_and!3369 () Bool)

(assert (= b_and!3349 (and (=> t!2141 result!1841) b_and!3369)))

(declare-fun m!11723 () Bool)

(assert (=> d!6939 m!11723))

(assert (=> d!6939 m!11691))

(assert (=> b!8830 m!11679))

(assert (=> start!1746 d!6939))

(assert (=> bs!2105 d!6929))

(declare-fun b_lambda!4457 () Bool)

(assert (= b_lambda!4437 (or (and start!1746 (= lambda!2072 f!585)) (and start!1746 b_free!877) b_lambda!4457)))

(declare-fun bs!2111 () Bool)

(declare-fun d!6941 () Bool)

(assert (= bs!2111 (and d!6941 start!1746)))

(declare-fun ++!3 (Balance!175 Balance!175) Balance!175)

(assert (=> bs!2111 (= (dynLambda!255 lambda!2072 (_1!33 lt!1577) (_2!33 lt!1577)) (++!3 (_1!33 lt!1577) (_2!33 lt!1577)))))

(declare-fun m!11725 () Bool)

(assert (=> bs!2111 m!11725))

(assert (=> (and start!1746 (= lambda!2072 f!585) b!8818) d!6941))

(declare-fun b_lambda!4459 () Bool)

(assert (= b_lambda!4449 (or (and b!8800 (= lambda!2075 (evidence!137 that!212))) (and b!8799 b_free!875) (and b!8797 b_free!883 (= (evidence!137 thiss!838) (evidence!137 that!212))) b_lambda!4459)))

(declare-fun bs!2112 () Bool)

(declare-fun d!6943 () Bool)

(assert (= bs!2112 (and d!6943 b!8800)))

(assert (=> bs!2112 (= (dynLambda!254 lambda!2075) trivial!1)))

(assert (=> (and b!8800 (= lambda!2075 (evidence!137 that!212)) b!8829) d!6943))

(declare-fun b_lambda!4461 () Bool)

(assert (= b_lambda!4439 (or b!8818 b_lambda!4461)))

(declare-fun bs!2113 () Bool)

(declare-fun d!6945 () Bool)

(assert (= bs!2113 (and d!6945 b!8818)))

(assert (=> bs!2113 (= (dynLambda!253 lambda!2081) (fold!26 (left!397 tree!25) f!585))))

(declare-fun m!11727 () Bool)

(assert (=> bs!2113 m!11727))

(assert (=> b!8818 d!6945))

(declare-fun b_lambda!4463 () Bool)

(assert (= b_lambda!4455 (or (and b!8800 (= lambda!2075 (evidence!137 thiss!838))) (and b!8799 b_free!875 (= (evidence!137 that!212) (evidence!137 thiss!838))) (and b!8797 b_free!883) b_lambda!4463)))

(assert (=> (and b!8800 (= lambda!2075 (evidence!137 thiss!838)) b!8830) d!6913))

(declare-fun b_lambda!4465 () Bool)

(assert (= b_lambda!4453 (or (and b!8800 (= lambda!2073 (y!535 thiss!838))) (and b!8796 (= lambda!2076 (y!535 thiss!838))) (and b!8797 b_free!881) (and b!8799 b_free!873 (= (y!535 that!212) (y!535 thiss!838))) (and b!8818 (= lambda!2082 (y!535 thiss!838))) (and b!8800 (= lambda!2074 (y!535 thiss!838))) (and b!8797 b_free!879 (= (x!4812 thiss!838) (y!535 thiss!838))) (and b!8818 (= lambda!2081 (y!535 thiss!838))) (and b!8799 b_free!871 (= (x!4812 that!212) (y!535 thiss!838))) b_lambda!4465)))

(assert (=> (and b!8800 (= lambda!2074 (y!535 thiss!838)) d!6939) d!6921))

(declare-fun bs!2114 () Bool)

(declare-fun d!6947 () Bool)

(assert (= bs!2114 (and d!6947 b!8818)))

(assert (=> bs!2114 (= (dynLambda!253 lambda!2081) (fold!26 (left!397 tree!25) f!585))))

(assert (=> bs!2114 m!11727))

(assert (=> (and b!8818 (= lambda!2081 (y!535 thiss!838)) d!6939) d!6947))

(assert (=> (and b!8800 (= lambda!2073 (y!535 thiss!838)) d!6939) d!6923))

(declare-fun bs!2115 () Bool)

(declare-fun d!6949 () Bool)

(assert (= bs!2115 (and d!6949 b!8818)))

(assert (=> bs!2115 (= (dynLambda!253 lambda!2082) (fold!26 (right!400 tree!25) f!585))))

(declare-fun m!11729 () Bool)

(assert (=> bs!2115 m!11729))

(assert (=> (and b!8818 (= lambda!2082 (y!535 thiss!838)) d!6939) d!6949))

(assert (=> (and b!8796 (= lambda!2076 (y!535 thiss!838)) d!6939) d!6925))

(declare-fun b_lambda!4467 () Bool)

(assert (= b_lambda!4451 (or (and b!8800 (= lambda!2074 (x!4812 thiss!838))) (and b!8818 (= lambda!2081 (x!4812 thiss!838))) (and b!8799 b_free!871 (= (x!4812 that!212) (x!4812 thiss!838))) (and b!8800 (= lambda!2073 (x!4812 thiss!838))) (and b!8797 b_free!879) (and b!8818 (= lambda!2082 (x!4812 thiss!838))) (and b!8796 (= lambda!2076 (x!4812 thiss!838))) (and b!8797 b_free!881 (= (y!535 thiss!838) (x!4812 thiss!838))) (and b!8799 b_free!873 (= (y!535 that!212) (x!4812 thiss!838))) b_lambda!4467)))

(declare-fun bs!2116 () Bool)

(declare-fun d!6951 () Bool)

(assert (= bs!2116 (and d!6951 b!8796)))

(assert (=> bs!2116 (= (dynLambda!253 lambda!2076) (foldRight1!57 (Cons!201 (value!1292 tree!25) Nil!202) f!585))))

(assert (=> bs!2116 m!11695))

(assert (=> (and b!8796 (= lambda!2076 (x!4812 thiss!838)) d!6939) d!6951))

(declare-fun bs!2117 () Bool)

(declare-fun d!6953 () Bool)

(assert (= bs!2117 (and d!6953 b!8800)))

(assert (=> bs!2117 (= (dynLambda!253 lambda!2073) (fold!26 tree!25 f!585))))

(assert (=> bs!2117 m!11685))

(assert (=> (and b!8800 (= lambda!2073 (x!4812 thiss!838)) d!6939) d!6953))

(declare-fun bs!2118 () Bool)

(declare-fun d!6955 () Bool)

(assert (= bs!2118 (and d!6955 b!8800)))

(assert (=> bs!2118 (= (dynLambda!253 lambda!2074) (value!1292 tree!25))))

(assert (=> (and b!8800 (= lambda!2074 (x!4812 thiss!838)) d!6939) d!6955))

(declare-fun bs!2119 () Bool)

(declare-fun d!6957 () Bool)

(assert (= bs!2119 (and d!6957 b!8818)))

(assert (=> bs!2119 (= (dynLambda!253 lambda!2081) (fold!26 (left!397 tree!25) f!585))))

(assert (=> bs!2119 m!11727))

(assert (=> (and b!8818 (= lambda!2081 (x!4812 thiss!838)) d!6939) d!6957))

(declare-fun bs!2120 () Bool)

(declare-fun d!6959 () Bool)

(assert (= bs!2120 (and d!6959 b!8818)))

(assert (=> bs!2120 (= (dynLambda!253 lambda!2082) (fold!26 (right!400 tree!25) f!585))))

(assert (=> bs!2120 m!11729))

(assert (=> (and b!8818 (= lambda!2082 (x!4812 thiss!838)) d!6939) d!6959))

(declare-fun b_lambda!4469 () Bool)

(assert (= b_lambda!4443 (or (and start!1746 (= lambda!2072 f!585)) (and start!1746 b_free!877) b_lambda!4469)))

(declare-fun bs!2121 () Bool)

(declare-fun d!6961 () Bool)

(assert (= bs!2121 (and d!6961 start!1746)))

(assert (=> bs!2121 (= (dynLambda!255 lambda!2072 (head!419 (toList!50 tree!25)) (foldRight1!57 (tail!431 (toList!50 tree!25)) f!585)) (++!3 (head!419 (toList!50 tree!25)) (foldRight1!57 (tail!431 (toList!50 tree!25)) f!585)))))

(assert (=> bs!2121 m!11707))

(declare-fun m!11731 () Bool)

(assert (=> bs!2121 m!11731))

(assert (=> (and start!1746 (= lambda!2072 f!585) b!8820) d!6961))

(declare-fun b_lambda!4471 () Bool)

(assert (= b_lambda!4441 (or b!8818 b_lambda!4471)))

(declare-fun bs!2122 () Bool)

(declare-fun d!6963 () Bool)

(assert (= bs!2122 (and d!6963 b!8818)))

(assert (=> bs!2122 (= (dynLambda!253 lambda!2082) (fold!26 (right!400 tree!25) f!585))))

(assert (=> bs!2122 m!11729))

(assert (=> b!8818 d!6963))

(declare-fun b_lambda!4473 () Bool)

(assert (= b_lambda!4447 (or (and b!8797 b_free!879 (= (x!4812 thiss!838) (y!535 that!212))) (and b!8800 (= lambda!2074 (y!535 that!212))) (and b!8799 b_free!873) (and b!8800 (= lambda!2073 (y!535 that!212))) (and b!8797 b_free!881 (= (y!535 thiss!838) (y!535 that!212))) (and b!8818 (= lambda!2081 (y!535 that!212))) (and b!8796 (= lambda!2076 (y!535 that!212))) (and b!8799 b_free!871 (= (x!4812 that!212) (y!535 that!212))) (and b!8818 (= lambda!2082 (y!535 that!212))) b_lambda!4473)))

(declare-fun bs!2123 () Bool)

(declare-fun d!6965 () Bool)

(assert (= bs!2123 (and d!6965 b!8800)))

(assert (=> bs!2123 (= (dynLambda!253 lambda!2073) (fold!26 tree!25 f!585))))

(assert (=> bs!2123 m!11685))

(assert (=> (and b!8800 (= lambda!2073 (y!535 that!212)) d!6937) d!6965))

(declare-fun bs!2124 () Bool)

(declare-fun d!6967 () Bool)

(assert (= bs!2124 (and d!6967 b!8796)))

(assert (=> bs!2124 (= (dynLambda!253 lambda!2076) (foldRight1!57 (Cons!201 (value!1292 tree!25) Nil!202) f!585))))

(assert (=> bs!2124 m!11695))

(assert (=> (and b!8796 (= lambda!2076 (y!535 that!212)) d!6937) d!6967))

(declare-fun bs!2125 () Bool)

(declare-fun d!6969 () Bool)

(assert (= bs!2125 (and d!6969 b!8800)))

(assert (=> bs!2125 (= (dynLambda!253 lambda!2074) (value!1292 tree!25))))

(assert (=> (and b!8800 (= lambda!2074 (y!535 that!212)) d!6937) d!6969))

(declare-fun bs!2126 () Bool)

(declare-fun d!6971 () Bool)

(assert (= bs!2126 (and d!6971 b!8818)))

(assert (=> bs!2126 (= (dynLambda!253 lambda!2082) (fold!26 (right!400 tree!25) f!585))))

(assert (=> bs!2126 m!11729))

(assert (=> (and b!8818 (= lambda!2082 (y!535 that!212)) d!6937) d!6971))

(declare-fun bs!2127 () Bool)

(declare-fun d!6973 () Bool)

(assert (= bs!2127 (and d!6973 b!8818)))

(assert (=> bs!2127 (= (dynLambda!253 lambda!2081) (fold!26 (left!397 tree!25) f!585))))

(assert (=> bs!2127 m!11727))

(assert (=> (and b!8818 (= lambda!2081 (y!535 that!212)) d!6937) d!6973))

(declare-fun b_lambda!4475 () Bool)

(assert (= b_lambda!4435 (or (and start!1746 (= lambda!2072 f!585)) (and start!1746 b_free!877) b_lambda!4475)))

(declare-fun bs!2128 () Bool)

(declare-fun d!6975 () Bool)

(assert (= bs!2128 (and d!6975 start!1746)))

(assert (=> bs!2128 (= (dynLambda!255 lambda!2072 (head!419 (Cons!201 (value!1292 tree!25) Nil!202)) (foldRight1!57 (tail!431 (Cons!201 (value!1292 tree!25) Nil!202)) f!585)) (++!3 (head!419 (Cons!201 (value!1292 tree!25) Nil!202)) (foldRight1!57 (tail!431 (Cons!201 (value!1292 tree!25) Nil!202)) f!585)))))

(assert (=> bs!2128 m!11697))

(declare-fun m!11733 () Bool)

(assert (=> bs!2128 m!11733))

(assert (=> (and start!1746 (= lambda!2072 f!585) b!8812) d!6975))

(declare-fun b_lambda!4477 () Bool)

(assert (= b_lambda!4445 (or (and b!8796 (= lambda!2076 (x!4812 that!212))) (and b!8800 (= lambda!2074 (x!4812 that!212))) (and b!8799 b_free!873 (= (y!535 that!212) (x!4812 that!212))) (and b!8818 (= lambda!2081 (x!4812 that!212))) (and b!8797 b_free!881 (= (y!535 thiss!838) (x!4812 that!212))) (and b!8818 (= lambda!2082 (x!4812 that!212))) (and b!8799 b_free!871) (and b!8800 (= lambda!2073 (x!4812 that!212))) (and b!8797 b_free!879 (= (x!4812 thiss!838) (x!4812 that!212))) b_lambda!4477)))

(declare-fun bs!2129 () Bool)

(declare-fun d!6977 () Bool)

(assert (= bs!2129 (and d!6977 b!8818)))

(assert (=> bs!2129 (= (dynLambda!253 lambda!2081) (fold!26 (left!397 tree!25) f!585))))

(assert (=> bs!2129 m!11727))

(assert (=> (and b!8818 (= lambda!2081 (x!4812 that!212)) d!6937) d!6977))

(assert (=> (and b!8796 (= lambda!2076 (x!4812 that!212)) d!6937) d!6915))

(assert (=> (and b!8800 (= lambda!2074 (x!4812 that!212)) d!6937) d!6917))

(assert (=> (and b!8800 (= lambda!2073 (x!4812 that!212)) d!6937) d!6919))

(declare-fun bs!2130 () Bool)

(declare-fun d!6979 () Bool)

(assert (= bs!2130 (and d!6979 b!8818)))

(assert (=> bs!2130 (= (dynLambda!253 lambda!2082) (fold!26 (right!400 tree!25) f!585))))

(assert (=> bs!2130 m!11729))

(assert (=> (and b!8818 (= lambda!2082 (x!4812 that!212)) d!6937) d!6979))

(push 1)

(assert b_and!3361)

(assert (not b_next!2029))

(assert (not b!8812))

(assert (not bs!2129))

(assert (not b_lambda!4433))

(assert (not bs!2130))

(assert (not b_lambda!4431))

(assert (not b!8820))

(assert (not b_lambda!4473))

(assert (not bs!2124))

(assert (not bs!2115))

(assert (not b_lambda!4465))

(assert (not b_lambda!4469))

(assert (not d!6935))

(assert (not bs!2121))

(assert (not bs!2120))

(assert (not bs!2116))

(assert (not b_lambda!4471))

(assert (not b_lambda!4457))

(assert (not bs!2127))

(assert (not bs!2113))

(assert (not bs!2111))

(assert (not b_lambda!4475))

(assert (not b!8826))

(assert (not bs!2126))

(assert (not b_lambda!4463))

(assert b_and!3329)

(assert (not b_lambda!4429))

(assert b_and!3363)

(assert b_and!3369)

(assert (not b_next!2031))

(assert (not b_lambda!4477))

(assert b_and!3365)

(assert b_and!3359)

(assert (not bs!2117))

(assert (not bs!2128))

(assert (not bs!2119))

(assert (not b_lambda!4461))

(assert (not b_lambda!4459))

(assert (not bs!2123))

(assert (not b_next!2027))

(assert (not b_lambda!4467))

(assert (not b_next!2005))

(assert (not b_next!2025))

(assert (not bs!2122))

(assert (not bs!2114))

(assert b_and!3367)

(assert (not b_next!1987))

(assert (not b_next!2007))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3361)

(assert (not b_next!2029))

(assert b_and!3329)

(assert b_and!3363)

(assert b_and!3369)

(assert (not b_next!2031))

(assert b_and!3365)

(assert b_and!3359)

(assert (not b_next!2027))

(assert (not b_next!2005))

(assert (not b_next!2025))

(assert b_and!3367)

(assert (not b_next!1987))

(assert (not b_next!2007))

(check-sat)

(pop 1)

