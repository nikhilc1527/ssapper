; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1654 () Bool)

(assert start!1654)

(declare-fun b_free!733 () Bool)

(declare-fun b_next!1601 () Bool)

(assert (=> start!1654 (= b_free!733 (not b_next!1601))))

(declare-fun tp!1237 () Bool)

(declare-fun b_and!2889 () Bool)

(assert (=> start!1654 (= tp!1237 b_and!2889)))

(declare-fun b!8399 () Bool)

(declare-fun b_free!735 () Bool)

(declare-fun b_next!1603 () Bool)

(assert (=> b!8399 (= b_free!735 (not b_next!1603))))

(declare-fun tp!1232 () Bool)

(declare-fun b_and!2891 () Bool)

(assert (=> b!8399 (= tp!1232 b_and!2891)))

(declare-fun b_free!737 () Bool)

(declare-fun b_next!1605 () Bool)

(assert (=> b!8399 (= b_free!737 (not b_next!1605))))

(declare-fun tp!1234 () Bool)

(declare-fun b_and!2893 () Bool)

(assert (=> b!8399 (= tp!1234 b_and!2893)))

(declare-fun b_free!739 () Bool)

(declare-fun b_next!1607 () Bool)

(assert (=> b!8399 (= b_free!739 (not b_next!1607))))

(declare-fun tp!1236 () Bool)

(declare-fun b_and!2895 () Bool)

(assert (=> b!8399 (= tp!1236 b_and!2895)))

(declare-fun b!8402 () Bool)

(declare-fun b_free!741 () Bool)

(declare-fun b_next!1609 () Bool)

(assert (=> b!8402 (= b_free!741 (not b_next!1609))))

(declare-fun tp!1233 () Bool)

(declare-fun b_and!2897 () Bool)

(assert (=> b!8402 (= tp!1233 b_and!2897)))

(declare-fun b_free!743 () Bool)

(declare-fun b_next!1611 () Bool)

(assert (=> b!8402 (= b_free!743 (not b_next!1611))))

(declare-fun tp!1235 () Bool)

(declare-fun b_and!2899 () Bool)

(assert (=> b!8402 (= tp!1235 b_and!2899)))

(declare-fun f!585 () Int)

(declare-fun lambda!1909 () Int)

(declare-fun b_next!1613 () Bool)

(assert (=> start!1654 (= b_next!1601 (or (and start!1654 (= lambda!1909 f!585)) b_next!1613))))

(declare-fun b!8403 () Bool)

(assert (=> b!8403 true))

(declare-fun order!79 () Int)

(declare-fun lambda!1910 () Int)

(declare-fun order!77 () Int)

(declare-fun dynLambda!216 (Int Int) Int)

(declare-fun dynLambda!217 (Int Int) Int)

(assert (=> b!8403 (< (dynLambda!216 order!77 f!585) (dynLambda!217 order!79 lambda!1910))))

(assert (=> b!8403 true))

(declare-datatypes () ((Balance!153 (Balance!154 (extraOpen!117 Int) (extraClose!117 Int)))))

(declare-datatypes () ((EqEvidence!120 (EqEvidence!121 (x!4584 Int) (y!507 Int) (evidence!127 Int)))))

(declare-fun thiss!854 () EqEvidence!120)

(declare-fun b_next!1615 () Bool)

(assert (=> b!8399 (= b_next!1603 (or (and b!8403 (= lambda!1910 (x!4584 thiss!854))) b_next!1615))))

(declare-fun b_next!1617 () Bool)

(assert (=> b!8399 (= b_next!1605 (or (and b!8403 (= lambda!1910 (y!507 thiss!854))) b_next!1617))))

(declare-datatypes () ((EqProof!56 (EqProof!57 (x!4585 Int) (y!508 Int)))))

(declare-fun thiss!908 () EqProof!56)

(declare-fun b_next!1619 () Bool)

(assert (=> b!8402 (= b_next!1609 (or (and b!8403 (= lambda!1910 (x!4585 thiss!908))) b_next!1619))))

(declare-fun b_next!1621 () Bool)

(assert (=> b!8402 (= b_next!1611 (or (and b!8403 (= lambda!1910 (y!508 thiss!908))) b_next!1621))))

(declare-fun lambda!1911 () Int)

(assert (=> b!8403 (not (= lambda!1911 lambda!1910))))

(assert (=> b!8403 true))

(assert (=> b!8403 (< (dynLambda!216 order!77 f!585) (dynLambda!217 order!79 lambda!1911))))

(assert (=> b!8403 true))

(declare-fun b_next!1623 () Bool)

(assert (=> b!8399 (= b_next!1615 (or (and b!8403 (= lambda!1911 (x!4584 thiss!854))) b_next!1623))))

(declare-fun b_next!1625 () Bool)

(assert (=> b!8399 (= b_next!1617 (or (and b!8403 (= lambda!1911 (y!507 thiss!854))) b_next!1625))))

(declare-fun b_next!1627 () Bool)

(assert (=> b!8402 (= b_next!1619 (or (and b!8403 (= lambda!1911 (x!4585 thiss!908))) b_next!1627))))

(declare-fun b_next!1629 () Bool)

(assert (=> b!8402 (= b_next!1621 (or (and b!8403 (= lambda!1911 (y!508 thiss!908))) b_next!1629))))

(assert (=> b!8403 true))

(declare-fun lambda!1912 () Int)

(declare-fun b_next!1631 () Bool)

(assert (=> b!8399 (= b_next!1607 (or (and b!8403 (= lambda!1912 (evidence!127 thiss!854))) b_next!1631))))

(declare-fun bs!1943 () Bool)

(declare-fun b!8398 () Bool)

(assert (= bs!1943 (and b!8398 b!8403)))

(declare-fun lambda!1913 () Int)

(assert (=> bs!1943 (not (= lambda!1913 lambda!1910))))

(assert (=> bs!1943 (not (= lambda!1913 lambda!1911))))

(assert (=> b!8398 true))

(assert (=> b!8398 (< (dynLambda!216 order!77 f!585) (dynLambda!217 order!79 lambda!1913))))

(assert (=> b!8398 true))

(declare-fun b_next!1633 () Bool)

(assert (=> b!8399 (= b_next!1623 (or (and b!8398 (= lambda!1913 (x!4584 thiss!854))) b_next!1633))))

(declare-fun b_next!1635 () Bool)

(assert (=> b!8399 (= b_next!1625 (or (and b!8398 (= lambda!1913 (y!507 thiss!854))) b_next!1635))))

(declare-fun b_next!1637 () Bool)

(assert (=> b!8402 (= b_next!1627 (or (and b!8398 (= lambda!1913 (x!4585 thiss!908))) b_next!1637))))

(declare-fun b_next!1639 () Bool)

(assert (=> b!8402 (= b_next!1629 (or (and b!8398 (= lambda!1913 (y!508 thiss!908))) b_next!1639))))

(declare-fun res!2583 () Bool)

(declare-fun e!4828 () Bool)

(assert (=> b!8398 (=> (not res!2583) (not e!4828))))

(assert (=> b!8398 (= res!2583 (= thiss!908 (EqProof!57 lambda!1913 lambda!1913)))))

(declare-fun e!4825 () Bool)

(assert (=> b!8399 (= e!4825 (and tp!1232 tp!1234 tp!1236))))

(declare-fun b!8400 () Bool)

(declare-fun res!2578 () Bool)

(assert (=> b!8400 (=> (not res!2578) (not e!4828))))

(declare-datatypes () ((ProofOps!100 (ProofOps!101 (prop!164 Bool)))))

(declare-fun thiss!829 () ProofOps!100)

(declare-datatypes () ((Tree!39 (Branch!30 (left!365 Tree!39) (right!368 Tree!39)) (Leaf!112 (value!1281 Balance!153)))))

(declare-fun tree!25 () Tree!39)

(declare-fun fold!15 (Tree!39 Int) Balance!153)

(declare-datatypes () ((List!193 (Nil!191) (Cons!190 (head!408 Balance!153) (tail!420 List!193)))))

(declare-fun foldRight1!46 (List!193 Int) Balance!153)

(declare-fun toList!39 (Tree!39) List!193)

(assert (=> b!8400 (= res!2578 (= thiss!829 (ProofOps!101 (= (fold!15 tree!25 f!585) (foldRight1!46 (toList!39 tree!25) f!585)))))))

(declare-fun b!8401 () Bool)

(declare-fun e!4826 () Bool)

(declare-fun ys!57 () List!193)

(declare-fun isEmpty!159 (List!193) Bool)

(assert (=> b!8401 (= e!4826 (isEmpty!159 ys!57))))

(declare-fun e!4827 () Bool)

(assert (=> b!8402 (= e!4827 (and tp!1233 tp!1235))))

(declare-fun res!2581 () Bool)

(assert (=> start!1654 (=> (not res!2581) (not e!4828))))

(assert (=> start!1654 (= res!2581 (= f!585 lambda!1909))))

(assert (=> start!1654 e!4828))

(assert (=> start!1654 true))

(assert (=> start!1654 tp!1237))

(declare-fun inv!292 (EqEvidence!120) Bool)

(assert (=> start!1654 (and (inv!292 thiss!854) e!4825)))

(declare-fun inv!293 (EqProof!56) Bool)

(assert (=> start!1654 (and (inv!293 thiss!908) e!4827)))

(declare-fun res!2580 () Bool)

(assert (=> b!8403 (=> (not res!2580) (not e!4828))))

(assert (=> b!8403 (= res!2580 (= thiss!854 (EqEvidence!121 lambda!1910 lambda!1911 lambda!1912)))))

(declare-fun b!8404 () Bool)

(declare-fun res!2582 () Bool)

(assert (=> b!8404 (=> (not res!2582) (not e!4828))))

(declare-fun xs!335 () List!193)

(assert (=> b!8404 (= res!2582 (= xs!335 (toList!39 (left!365 tree!25))))))

(declare-fun b!8405 () Bool)

(declare-fun res!2577 () Bool)

(assert (=> b!8405 (=> (not res!2577) (not e!4828))))

(assert (=> b!8405 (= res!2577 (= ys!57 (toList!39 (right!368 tree!25))))))

(declare-fun b!8406 () Bool)

(assert (=> b!8406 (= e!4828 e!4826)))

(declare-fun res!2576 () Bool)

(assert (=> b!8406 (=> res!2576 e!4826)))

(assert (=> b!8406 (= res!2576 (isEmpty!159 xs!335))))

(declare-fun b!8407 () Bool)

(declare-fun res!2579 () Bool)

(assert (=> b!8407 (=> (not res!2579) (not e!4828))))

(assert (=> b!8407 (= res!2579 (not (is-Leaf!112 tree!25)))))

(assert (= (and start!1654 res!2581) b!8400))

(assert (= (and b!8400 res!2578) b!8407))

(assert (= (and b!8407 res!2579) b!8403))

(assert (= (and b!8403 res!2580) b!8398))

(assert (= (and b!8398 res!2583) b!8404))

(assert (= (and b!8404 res!2582) b!8405))

(assert (= (and b!8405 res!2577) b!8406))

(assert (= (and b!8406 (not res!2576)) b!8401))

(assert (= start!1654 b!8399))

(assert (= start!1654 b!8402))

(declare-fun m!11253 () Bool)

(assert (=> b!8405 m!11253))

(declare-fun m!11255 () Bool)

(assert (=> b!8406 m!11255))

(declare-fun m!11257 () Bool)

(assert (=> b!8404 m!11257))

(declare-fun m!11259 () Bool)

(assert (=> start!1654 m!11259))

(declare-fun m!11261 () Bool)

(assert (=> start!1654 m!11261))

(declare-fun m!11263 () Bool)

(assert (=> b!8400 m!11263))

(declare-fun m!11265 () Bool)

(assert (=> b!8400 m!11265))

(assert (=> b!8400 m!11265))

(declare-fun m!11267 () Bool)

(assert (=> b!8400 m!11267))

(declare-fun m!11269 () Bool)

(assert (=> b!8401 m!11269))

(push 1)

(assert (not b!8405))

(assert b_and!2889)

(assert (not b!8401))

(assert (not b_next!1637))

(assert (not start!1654))

(assert b_and!2897)

(assert (not b_next!1631))

(assert b_and!2893)

(assert (not b_next!1633))

(assert b_and!2895)

(assert (not b_next!1639))

(assert (not b!8400))

(assert b_and!2891)

(assert (not b!8406))

(assert (not b_next!1613))

(assert (not b!8404))

(assert b_and!2899)

(assert (not b_next!1635))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2889)

(assert (not b_next!1637))

(assert b_and!2897)

(assert (not b_next!1631))

(assert b_and!2893)

(assert (not b_next!1633))

(assert b_and!2895)

(assert (not b_next!1639))

(assert b_and!2891)

(assert (not b_next!1613))

(assert b_and!2899)

(assert (not b_next!1635))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6557 () Bool)

(declare-fun res!2586 () Bool)

(declare-fun e!4831 () Bool)

(assert (=> d!6557 (=> (not res!2586) (not e!4831))))

(declare-fun dynLambda!218 (Int) Balance!153)

(assert (=> d!6557 (= res!2586 (= (dynLambda!218 (x!4584 thiss!854)) (dynLambda!218 (y!507 thiss!854))))))

(assert (=> d!6557 (= (inv!292 thiss!854) e!4831)))

(declare-fun b!8416 () Bool)

(declare-fun dynLambda!219 (Int) Bool)

(assert (=> b!8416 (= e!4831 (dynLambda!219 (evidence!127 thiss!854)))))

(assert (= (and d!6557 res!2586) b!8416))

(declare-fun b_lambda!4151 () Bool)

(assert (=> (not b_lambda!4151) (not d!6557)))

(declare-fun t!1911 () Bool)

(declare-fun tb!1571 () Bool)

(assert (=> (and b!8399 (= (x!4584 thiss!854) (x!4584 thiss!854)) t!1911) tb!1571))

(declare-fun result!1611 () Bool)

(assert (=> tb!1571 (= result!1611 true)))

(assert (=> d!6557 t!1911))

(declare-fun b_and!2901 () Bool)

(assert (= b_and!2891 (and (=> t!1911 result!1611) b_and!2901)))

(declare-fun t!1913 () Bool)

(declare-fun tb!1573 () Bool)

(assert (=> (and b!8399 (= (y!507 thiss!854) (x!4584 thiss!854)) t!1913) tb!1573))

(declare-fun result!1613 () Bool)

(assert (=> tb!1573 (= result!1613 true)))

(assert (=> d!6557 t!1913))

(declare-fun b_and!2903 () Bool)

(assert (= b_and!2893 (and (=> t!1913 result!1613) b_and!2903)))

(declare-fun t!1915 () Bool)

(declare-fun tb!1575 () Bool)

(assert (=> (and b!8402 (= (x!4585 thiss!908) (x!4584 thiss!854)) t!1915) tb!1575))

(declare-fun result!1615 () Bool)

(assert (=> tb!1575 (= result!1615 true)))

(assert (=> d!6557 t!1915))

(declare-fun b_and!2905 () Bool)

(assert (= b_and!2897 (and (=> t!1915 result!1615) b_and!2905)))

(declare-fun t!1917 () Bool)

(declare-fun tb!1577 () Bool)

(assert (=> (and b!8402 (= (y!508 thiss!908) (x!4584 thiss!854)) t!1917) tb!1577))

(declare-fun result!1617 () Bool)

(assert (=> tb!1577 (= result!1617 true)))

(assert (=> d!6557 t!1917))

(declare-fun b_and!2907 () Bool)

(assert (= b_and!2899 (and (=> t!1917 result!1617) b_and!2907)))

(declare-fun b_lambda!4153 () Bool)

(assert (=> (not b_lambda!4153) (not d!6557)))

(declare-fun t!1919 () Bool)

(declare-fun tb!1579 () Bool)

(assert (=> (and b!8399 (= (x!4584 thiss!854) (y!507 thiss!854)) t!1919) tb!1579))

(declare-fun result!1619 () Bool)

(assert (=> tb!1579 (= result!1619 true)))

(assert (=> d!6557 t!1919))

(declare-fun b_and!2909 () Bool)

(assert (= b_and!2901 (and (=> t!1919 result!1619) b_and!2909)))

(declare-fun t!1921 () Bool)

(declare-fun tb!1581 () Bool)

(assert (=> (and b!8399 (= (y!507 thiss!854) (y!507 thiss!854)) t!1921) tb!1581))

(declare-fun result!1621 () Bool)

(assert (=> tb!1581 (= result!1621 true)))

(assert (=> d!6557 t!1921))

(declare-fun b_and!2911 () Bool)

(assert (= b_and!2903 (and (=> t!1921 result!1621) b_and!2911)))

(declare-fun tb!1583 () Bool)

(declare-fun t!1923 () Bool)

(assert (=> (and b!8402 (= (x!4585 thiss!908) (y!507 thiss!854)) t!1923) tb!1583))

(declare-fun result!1623 () Bool)

(assert (=> tb!1583 (= result!1623 true)))

(assert (=> d!6557 t!1923))

(declare-fun b_and!2913 () Bool)

(assert (= b_and!2905 (and (=> t!1923 result!1623) b_and!2913)))

(declare-fun tb!1585 () Bool)

(declare-fun t!1925 () Bool)

(assert (=> (and b!8402 (= (y!508 thiss!908) (y!507 thiss!854)) t!1925) tb!1585))

(declare-fun result!1625 () Bool)

(assert (=> tb!1585 (= result!1625 true)))

(assert (=> d!6557 t!1925))

(declare-fun b_and!2915 () Bool)

(assert (= b_and!2907 (and (=> t!1925 result!1625) b_and!2915)))

(declare-fun b_lambda!4155 () Bool)

(assert (=> (not b_lambda!4155) (not b!8416)))

(declare-fun t!1927 () Bool)

(declare-fun tb!1587 () Bool)

(assert (=> (and b!8399 (= (evidence!127 thiss!854) (evidence!127 thiss!854)) t!1927) tb!1587))

(declare-fun result!1627 () Bool)

(assert (=> tb!1587 (= result!1627 true)))

(assert (=> b!8416 t!1927))

(declare-fun b_and!2917 () Bool)

(assert (= b_and!2895 (and (=> t!1927 result!1627) b_and!2917)))

(declare-fun m!11271 () Bool)

(assert (=> d!6557 m!11271))

(declare-fun m!11273 () Bool)

(assert (=> d!6557 m!11273))

(declare-fun m!11275 () Bool)

(assert (=> b!8416 m!11275))

(assert (=> start!1654 d!6557))

(declare-fun d!6559 () Bool)

(assert (=> d!6559 (= (inv!293 thiss!908) (= (dynLambda!218 (x!4585 thiss!908)) (dynLambda!218 (y!508 thiss!908))))))

(declare-fun b_lambda!4157 () Bool)

(assert (=> (not b_lambda!4157) (not d!6559)))

(declare-fun tb!1589 () Bool)

(declare-fun t!1929 () Bool)

(assert (=> (and b!8399 (= (x!4584 thiss!854) (x!4585 thiss!908)) t!1929) tb!1589))

(declare-fun result!1629 () Bool)

(assert (=> tb!1589 (= result!1629 true)))

(assert (=> d!6559 t!1929))

(declare-fun b_and!2919 () Bool)

(assert (= b_and!2909 (and (=> t!1929 result!1629) b_and!2919)))

(declare-fun tb!1591 () Bool)

(declare-fun t!1931 () Bool)

(assert (=> (and b!8399 (= (y!507 thiss!854) (x!4585 thiss!908)) t!1931) tb!1591))

(declare-fun result!1631 () Bool)

(assert (=> tb!1591 (= result!1631 true)))

(assert (=> d!6559 t!1931))

(declare-fun b_and!2921 () Bool)

(assert (= b_and!2911 (and (=> t!1931 result!1631) b_and!2921)))

(declare-fun t!1933 () Bool)

(declare-fun tb!1593 () Bool)

(assert (=> (and b!8402 (= (x!4585 thiss!908) (x!4585 thiss!908)) t!1933) tb!1593))

(declare-fun result!1633 () Bool)

(assert (=> tb!1593 (= result!1633 true)))

(assert (=> d!6559 t!1933))

(declare-fun b_and!2923 () Bool)

(assert (= b_and!2913 (and (=> t!1933 result!1633) b_and!2923)))

(declare-fun t!1935 () Bool)

(declare-fun tb!1595 () Bool)

(assert (=> (and b!8402 (= (y!508 thiss!908) (x!4585 thiss!908)) t!1935) tb!1595))

(declare-fun result!1635 () Bool)

(assert (=> tb!1595 (= result!1635 true)))

(assert (=> d!6559 t!1935))

(declare-fun b_and!2925 () Bool)

(assert (= b_and!2915 (and (=> t!1935 result!1635) b_and!2925)))

(declare-fun b_lambda!4159 () Bool)

(assert (=> (not b_lambda!4159) (not d!6559)))

(declare-fun t!1937 () Bool)

(declare-fun tb!1597 () Bool)

(assert (=> (and b!8399 (= (x!4584 thiss!854) (y!508 thiss!908)) t!1937) tb!1597))

(declare-fun result!1637 () Bool)

(assert (=> tb!1597 (= result!1637 true)))

(assert (=> d!6559 t!1937))

(declare-fun b_and!2927 () Bool)

(assert (= b_and!2919 (and (=> t!1937 result!1637) b_and!2927)))

(declare-fun t!1939 () Bool)

(declare-fun tb!1599 () Bool)

(assert (=> (and b!8399 (= (y!507 thiss!854) (y!508 thiss!908)) t!1939) tb!1599))

(declare-fun result!1639 () Bool)

(assert (=> tb!1599 (= result!1639 true)))

(assert (=> d!6559 t!1939))

(declare-fun b_and!2929 () Bool)

(assert (= b_and!2921 (and (=> t!1939 result!1639) b_and!2929)))

(declare-fun t!1941 () Bool)

(declare-fun tb!1601 () Bool)

(assert (=> (and b!8402 (= (x!4585 thiss!908) (y!508 thiss!908)) t!1941) tb!1601))

(declare-fun result!1641 () Bool)

(assert (=> tb!1601 (= result!1641 true)))

(assert (=> d!6559 t!1941))

(declare-fun b_and!2931 () Bool)

(assert (= b_and!2923 (and (=> t!1941 result!1641) b_and!2931)))

(declare-fun t!1943 () Bool)

(declare-fun tb!1603 () Bool)

(assert (=> (and b!8402 (= (y!508 thiss!908) (y!508 thiss!908)) t!1943) tb!1603))

(declare-fun result!1643 () Bool)

(assert (=> tb!1603 (= result!1643 true)))

(assert (=> d!6559 t!1943))

(declare-fun b_and!2933 () Bool)

(assert (= b_and!2925 (and (=> t!1943 result!1643) b_and!2933)))

(declare-fun m!11277 () Bool)

(assert (=> d!6559 m!11277))

(declare-fun m!11279 () Bool)

(assert (=> d!6559 m!11279))

(assert (=> start!1654 d!6559))

(declare-fun d!6561 () Bool)

(assert (=> d!6561 (= (isEmpty!159 xs!335) (is-Nil!191 xs!335))))

(assert (=> b!8406 d!6561))

(declare-fun bs!1944 () Bool)

(declare-fun b!8422 () Bool)

(assert (= bs!1944 (and b!8422 b!8403)))

(declare-fun lambda!1918 () Int)

(assert (=> bs!1944 (= (= (left!365 tree!25) tree!25) (= lambda!1918 lambda!1910))))

(assert (=> bs!1944 (not (= lambda!1918 lambda!1911))))

(declare-fun bs!1945 () Bool)

(assert (= bs!1945 (and b!8422 b!8398)))

(assert (=> bs!1945 (not (= lambda!1918 lambda!1913))))

(assert (=> b!8422 true))

(assert (=> b!8422 (< (dynLambda!216 order!77 f!585) (dynLambda!217 order!79 lambda!1918))))

(assert (=> b!8422 true))

(declare-fun b_next!1641 () Bool)

(assert (=> b!8399 (= b_next!1633 (or (and b!8422 (= lambda!1918 (x!4584 thiss!854))) b_next!1641))))

(declare-fun b_next!1643 () Bool)

(assert (=> b!8399 (= b_next!1635 (or (and b!8422 (= lambda!1918 (y!507 thiss!854))) b_next!1643))))

(declare-fun b_next!1645 () Bool)

(assert (=> b!8402 (= b_next!1637 (or (and b!8422 (= lambda!1918 (x!4585 thiss!908))) b_next!1645))))

(declare-fun b_next!1647 () Bool)

(assert (=> b!8402 (= b_next!1639 (or (and b!8422 (= lambda!1918 (y!508 thiss!908))) b_next!1647))))

(declare-fun lambda!1919 () Int)

(assert (=> bs!1944 (= (= (right!368 tree!25) tree!25) (= lambda!1919 lambda!1910))))

(assert (=> bs!1944 (not (= lambda!1919 lambda!1911))))

(assert (=> bs!1945 (not (= lambda!1919 lambda!1913))))

(assert (=> b!8422 (= (= (right!368 tree!25) (left!365 tree!25)) (= lambda!1919 lambda!1918))))

(assert (=> b!8422 true))

(assert (=> b!8422 (< (dynLambda!216 order!77 f!585) (dynLambda!217 order!79 lambda!1919))))

(assert (=> b!8422 true))

(declare-fun b_next!1649 () Bool)

(assert (=> b!8399 (= b_next!1641 (or (and b!8422 (= lambda!1919 (x!4584 thiss!854))) b_next!1649))))

(declare-fun b_next!1651 () Bool)

(assert (=> b!8399 (= b_next!1643 (or (and b!8422 (= lambda!1919 (y!507 thiss!854))) b_next!1651))))

(declare-fun b_next!1653 () Bool)

(assert (=> b!8402 (= b_next!1645 (or (and b!8422 (= lambda!1919 (x!4585 thiss!908))) b_next!1653))))

(declare-fun b_next!1655 () Bool)

(assert (=> b!8402 (= b_next!1647 (or (and b!8422 (= lambda!1919 (y!508 thiss!908))) b_next!1655))))

(declare-fun e!4850 () Balance!153)

(declare-datatypes () ((tuple2!52 (tuple2!53 (_1!26 Balance!153) (_2!26 Balance!153)))))

(declare-fun lt!1531 () tuple2!52)

(declare-fun dynLambda!220 (Int Balance!153 Balance!153) Balance!153)

(assert (=> b!8422 (= e!4850 (dynLambda!220 f!585 (_1!26 lt!1531) (_2!26 lt!1531)))))

(assert (=> b!8422 (= lt!1531 (tuple2!53 (dynLambda!218 lambda!1918) (dynLambda!218 lambda!1919)))))

(declare-fun d!6563 () Bool)

(declare-fun c!2877 () Bool)

(assert (=> d!6563 (= c!2877 (is-Leaf!112 tree!25))))

(assert (=> d!6563 (= (fold!15 tree!25 f!585) e!4850)))

(declare-fun b!8421 () Bool)

(assert (=> b!8421 (= e!4850 (value!1281 tree!25))))

(assert (= (and d!6563 c!2877) b!8421))

(assert (= (and d!6563 (not c!2877)) b!8422))

(declare-fun b_lambda!4161 () Bool)

(assert (=> (not b_lambda!4161) (not b!8422)))

(declare-fun t!1945 () Bool)

(declare-fun tb!1605 () Bool)

(assert (=> (and start!1654 (= f!585 f!585) t!1945) tb!1605))

(declare-fun result!1645 () Bool)

(assert (=> tb!1605 (= result!1645 true)))

(assert (=> b!8422 t!1945))

(declare-fun b_and!2935 () Bool)

(assert (= b_and!2889 (and (=> t!1945 result!1645) b_and!2935)))

(declare-fun b_lambda!4163 () Bool)

(assert (=> (not b_lambda!4163) (not b!8422)))

(declare-fun b_lambda!4165 () Bool)

(assert (=> (not b_lambda!4165) (not b!8422)))

(declare-fun m!11281 () Bool)

(assert (=> b!8422 m!11281))

(declare-fun m!11283 () Bool)

(assert (=> b!8422 m!11283))

(declare-fun m!11285 () Bool)

(assert (=> b!8422 m!11285))

(assert (=> b!8400 d!6563))

(declare-fun d!6565 () Bool)

(declare-fun c!2880 () Bool)

(assert (=> d!6565 (= c!2880 (and (is-Cons!190 (toList!39 tree!25)) (is-Nil!191 (tail!420 (toList!39 tree!25)))))))

(declare-fun e!4853 () Balance!153)

(assert (=> d!6565 (= (foldRight1!46 (toList!39 tree!25) f!585) e!4853)))

(declare-fun b!8427 () Bool)

(assert (=> b!8427 (= e!4853 (head!408 (toList!39 tree!25)))))

(declare-fun b!8428 () Bool)

(assert (=> b!8428 (= e!4853 (dynLambda!220 f!585 (head!408 (toList!39 tree!25)) (foldRight1!46 (tail!420 (toList!39 tree!25)) f!585)))))

(assert (= (and d!6565 c!2880) b!8427))

(assert (= (and d!6565 (not c!2880)) b!8428))

(declare-fun b_lambda!4167 () Bool)

(assert (=> (not b_lambda!4167) (not b!8428)))

(declare-fun t!1947 () Bool)

(declare-fun tb!1607 () Bool)

(assert (=> (and start!1654 (= f!585 f!585) t!1947) tb!1607))

(declare-fun result!1647 () Bool)

(assert (=> tb!1607 (= result!1647 true)))

(assert (=> b!8428 t!1947))

(declare-fun b_and!2937 () Bool)

(assert (= b_and!2935 (and (=> t!1947 result!1647) b_and!2937)))

(declare-fun m!11287 () Bool)

(assert (=> b!8428 m!11287))

(assert (=> b!8428 m!11287))

(declare-fun m!11289 () Bool)

(assert (=> b!8428 m!11289))

(assert (=> b!8400 d!6565))

(declare-fun d!6567 () Bool)

(declare-fun lt!1534 () List!193)

(assert (=> d!6567 (not (isEmpty!159 lt!1534))))

(declare-fun e!4856 () List!193)

(assert (=> d!6567 (= lt!1534 e!4856)))

(declare-fun c!2883 () Bool)

(assert (=> d!6567 (= c!2883 (is-Leaf!112 tree!25))))

(assert (=> d!6567 (= (toList!39 tree!25) lt!1534)))

(declare-fun b!8433 () Bool)

(assert (=> b!8433 (= e!4856 (Cons!190 (value!1281 tree!25) Nil!191))))

(declare-fun b!8434 () Bool)

(declare-fun append!80 (List!193 List!193) List!193)

(assert (=> b!8434 (= e!4856 (append!80 (toList!39 (left!365 tree!25)) (toList!39 (right!368 tree!25))))))

(assert (= (and d!6567 c!2883) b!8433))

(assert (= (and d!6567 (not c!2883)) b!8434))

(declare-fun m!11291 () Bool)

(assert (=> d!6567 m!11291))

(assert (=> b!8434 m!11257))

(assert (=> b!8434 m!11253))

(assert (=> b!8434 m!11257))

(assert (=> b!8434 m!11253))

(declare-fun m!11293 () Bool)

(assert (=> b!8434 m!11293))

(assert (=> b!8400 d!6567))

(declare-fun d!6569 () Bool)

(declare-fun lt!1535 () List!193)

(assert (=> d!6569 (not (isEmpty!159 lt!1535))))

(declare-fun e!4857 () List!193)

(assert (=> d!6569 (= lt!1535 e!4857)))

(declare-fun c!2884 () Bool)

(assert (=> d!6569 (= c!2884 (is-Leaf!112 (right!368 tree!25)))))

(assert (=> d!6569 (= (toList!39 (right!368 tree!25)) lt!1535)))

(declare-fun b!8435 () Bool)

(assert (=> b!8435 (= e!4857 (Cons!190 (value!1281 (right!368 tree!25)) Nil!191))))

(declare-fun b!8436 () Bool)

(assert (=> b!8436 (= e!4857 (append!80 (toList!39 (left!365 (right!368 tree!25))) (toList!39 (right!368 (right!368 tree!25)))))))

(assert (= (and d!6569 c!2884) b!8435))

(assert (= (and d!6569 (not c!2884)) b!8436))

(declare-fun m!11295 () Bool)

(assert (=> d!6569 m!11295))

(declare-fun m!11297 () Bool)

(assert (=> b!8436 m!11297))

(declare-fun m!11299 () Bool)

(assert (=> b!8436 m!11299))

(assert (=> b!8436 m!11297))

(assert (=> b!8436 m!11299))

(declare-fun m!11301 () Bool)

(assert (=> b!8436 m!11301))

(assert (=> b!8405 d!6569))

(declare-fun d!6571 () Bool)

(assert (=> d!6571 (= (isEmpty!159 ys!57) (is-Nil!191 ys!57))))

(assert (=> b!8401 d!6571))

(declare-fun d!6573 () Bool)

(declare-fun lt!1536 () List!193)

(assert (=> d!6573 (not (isEmpty!159 lt!1536))))

(declare-fun e!4858 () List!193)

(assert (=> d!6573 (= lt!1536 e!4858)))

(declare-fun c!2885 () Bool)

(assert (=> d!6573 (= c!2885 (is-Leaf!112 (left!365 tree!25)))))

(assert (=> d!6573 (= (toList!39 (left!365 tree!25)) lt!1536)))

(declare-fun b!8437 () Bool)

(assert (=> b!8437 (= e!4858 (Cons!190 (value!1281 (left!365 tree!25)) Nil!191))))

(declare-fun b!8438 () Bool)

(assert (=> b!8438 (= e!4858 (append!80 (toList!39 (left!365 (left!365 tree!25))) (toList!39 (right!368 (left!365 tree!25)))))))

(assert (= (and d!6573 c!2885) b!8437))

(assert (= (and d!6573 (not c!2885)) b!8438))

(declare-fun m!11303 () Bool)

(assert (=> d!6573 m!11303))

(declare-fun m!11305 () Bool)

(assert (=> b!8438 m!11305))

(declare-fun m!11307 () Bool)

(assert (=> b!8438 m!11307))

(assert (=> b!8438 m!11305))

(assert (=> b!8438 m!11307))

(declare-fun m!11309 () Bool)

(assert (=> b!8438 m!11309))

(assert (=> b!8404 d!6573))

(declare-fun b_lambda!4169 () Bool)

(assert (= b_lambda!4161 (or (and start!1654 (= lambda!1909 f!585)) (and start!1654 b_free!733) b_lambda!4169)))

(declare-fun bs!1946 () Bool)

(declare-fun d!6575 () Bool)

(assert (= bs!1946 (and d!6575 start!1654)))

(declare-fun ++!3 (Balance!153 Balance!153) Balance!153)

(assert (=> bs!1946 (= (dynLambda!220 lambda!1909 (_1!26 lt!1531) (_2!26 lt!1531)) (++!3 (_1!26 lt!1531) (_2!26 lt!1531)))))

(declare-fun m!11311 () Bool)

(assert (=> bs!1946 m!11311))

(assert (=> (and start!1654 (= lambda!1909 f!585) b!8422) d!6575))

(declare-fun b_lambda!4171 () Bool)

(assert (= b_lambda!4165 (or b!8422 b_lambda!4171)))

(declare-fun bs!1947 () Bool)

(declare-fun d!6577 () Bool)

(assert (= bs!1947 (and d!6577 b!8422)))

(assert (=> bs!1947 (= (dynLambda!218 lambda!1919) (fold!15 (right!368 tree!25) f!585))))

(declare-fun m!11313 () Bool)

(assert (=> bs!1947 m!11313))

(assert (=> b!8422 d!6577))

(declare-fun b_lambda!4173 () Bool)

(assert (= b_lambda!4155 (or (and b!8403 (= lambda!1912 (evidence!127 thiss!854))) (and b!8399 b_free!739) b_lambda!4173)))

(declare-fun bs!1948 () Bool)

(declare-fun d!6579 () Bool)

(assert (= bs!1948 (and d!6579 b!8403)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!39) Bool)

(assert (=> bs!1948 (= (dynLambda!219 lambda!1912) (fold_foldRight1_equivalence!0 (right!368 tree!25)))))

(declare-fun m!11315 () Bool)

(assert (=> bs!1948 m!11315))

(assert (=> (and b!8403 (= lambda!1912 (evidence!127 thiss!854)) b!8416) d!6579))

(declare-fun b_lambda!4175 () Bool)

(assert (= b_lambda!4167 (or (and start!1654 (= lambda!1909 f!585)) (and start!1654 b_free!733) b_lambda!4175)))

(declare-fun bs!1949 () Bool)

(declare-fun d!6581 () Bool)

(assert (= bs!1949 (and d!6581 start!1654)))

(assert (=> bs!1949 (= (dynLambda!220 lambda!1909 (head!408 (toList!39 tree!25)) (foldRight1!46 (tail!420 (toList!39 tree!25)) f!585)) (++!3 (head!408 (toList!39 tree!25)) (foldRight1!46 (tail!420 (toList!39 tree!25)) f!585)))))

(assert (=> bs!1949 m!11287))

(declare-fun m!11317 () Bool)

(assert (=> bs!1949 m!11317))

(assert (=> (and start!1654 (= lambda!1909 f!585) b!8428) d!6581))

(declare-fun b_lambda!4177 () Bool)

(assert (= b_lambda!4157 (or (and b!8399 b_free!735 (= (x!4584 thiss!854) (x!4585 thiss!908))) (and b!8403 (= lambda!1910 (x!4585 thiss!908))) (and b!8402 b_free!741) (and b!8399 b_free!737 (= (y!507 thiss!854) (x!4585 thiss!908))) (and b!8398 (= lambda!1913 (x!4585 thiss!908))) (and b!8402 b_free!743 (= (y!508 thiss!908) (x!4585 thiss!908))) (and b!8422 (= lambda!1918 (x!4585 thiss!908))) (and b!8403 (= lambda!1911 (x!4585 thiss!908))) (and b!8422 (= lambda!1919 (x!4585 thiss!908))) b_lambda!4177)))

(declare-fun bs!1950 () Bool)

(declare-fun d!6583 () Bool)

(assert (= bs!1950 (and d!6583 b!8403)))

(assert (=> bs!1950 (= (dynLambda!218 lambda!1910) (fold!15 tree!25 f!585))))

(assert (=> bs!1950 m!11263))

(assert (=> (and b!8403 (= lambda!1910 (x!4585 thiss!908)) d!6559) d!6583))

(declare-fun bs!1951 () Bool)

(declare-fun d!6585 () Bool)

(assert (= bs!1951 (and d!6585 b!8422)))

(assert (=> bs!1951 (= (dynLambda!218 lambda!1918) (fold!15 (left!365 tree!25) f!585))))

(declare-fun m!11319 () Bool)

(assert (=> bs!1951 m!11319))

(assert (=> (and b!8422 (= lambda!1918 (x!4585 thiss!908)) d!6559) d!6585))

(declare-fun bs!1952 () Bool)

(declare-fun d!6587 () Bool)

(assert (= bs!1952 (and d!6587 b!8403)))

(assert (=> bs!1952 (= (dynLambda!218 lambda!1911) (dynLambda!220 f!585 (foldRight1!46 (toList!39 (left!365 tree!25)) f!585) (fold!15 (right!368 tree!25) f!585)))))

(declare-fun b_lambda!4187 () Bool)

(assert (=> (not b_lambda!4187) (not bs!1952)))

(declare-fun t!1949 () Bool)

(declare-fun tb!1609 () Bool)

(assert (=> (and start!1654 (= f!585 f!585) t!1949) tb!1609))

(declare-fun result!1649 () Bool)

(assert (=> tb!1609 (= result!1649 true)))

(assert (=> bs!1952 t!1949))

(declare-fun b_and!2939 () Bool)

(assert (= b_and!2937 (and (=> t!1949 result!1649) b_and!2939)))

(assert (=> bs!1952 m!11313))

(assert (=> bs!1952 m!11257))

(assert (=> bs!1952 m!11257))

(declare-fun m!11321 () Bool)

(assert (=> bs!1952 m!11321))

(assert (=> bs!1952 m!11321))

(assert (=> bs!1952 m!11313))

(declare-fun m!11323 () Bool)

(assert (=> bs!1952 m!11323))

(assert (=> (and b!8403 (= lambda!1911 (x!4585 thiss!908)) d!6559) d!6587))

(declare-fun bs!1953 () Bool)

(declare-fun d!6589 () Bool)

(assert (= bs!1953 (and d!6589 b!8398)))

(assert (=> bs!1953 (= (dynLambda!218 lambda!1913) (dynLambda!220 f!585 (foldRight1!46 (toList!39 (left!365 tree!25)) f!585) (foldRight1!46 (toList!39 (right!368 tree!25)) f!585)))))

(declare-fun b_lambda!4189 () Bool)

(assert (=> (not b_lambda!4189) (not bs!1953)))

(declare-fun t!1951 () Bool)

(declare-fun tb!1611 () Bool)

(assert (=> (and start!1654 (= f!585 f!585) t!1951) tb!1611))

(declare-fun result!1651 () Bool)

(assert (=> tb!1611 (= result!1651 true)))

(assert (=> bs!1953 t!1951))

(declare-fun b_and!2941 () Bool)

(assert (= b_and!2939 (and (=> t!1951 result!1651) b_and!2941)))

(assert (=> bs!1953 m!11257))

(assert (=> bs!1953 m!11321))

(declare-fun m!11325 () Bool)

(assert (=> bs!1953 m!11325))

(declare-fun m!11327 () Bool)

(assert (=> bs!1953 m!11327))

(assert (=> bs!1953 m!11253))

(assert (=> bs!1953 m!11257))

(assert (=> bs!1953 m!11321))

(assert (=> bs!1953 m!11253))

(assert (=> bs!1953 m!11325))

(assert (=> (and b!8398 (= lambda!1913 (x!4585 thiss!908)) d!6559) d!6589))

(declare-fun bs!1954 () Bool)

(declare-fun d!6591 () Bool)

(assert (= bs!1954 (and d!6591 b!8422)))

(assert (=> bs!1954 (= (dynLambda!218 lambda!1919) (fold!15 (right!368 tree!25) f!585))))

(assert (=> bs!1954 m!11313))

(assert (=> (and b!8422 (= lambda!1919 (x!4585 thiss!908)) d!6559) d!6591))

(declare-fun b_lambda!4179 () Bool)

(assert (= b_lambda!4159 (or (and b!8399 b_free!737 (= (y!507 thiss!854) (y!508 thiss!908))) (and b!8402 b_free!743) (and b!8422 (= lambda!1918 (y!508 thiss!908))) (and b!8402 b_free!741 (= (x!4585 thiss!908) (y!508 thiss!908))) (and b!8398 (= lambda!1913 (y!508 thiss!908))) (and b!8422 (= lambda!1919 (y!508 thiss!908))) (and b!8403 (= lambda!1911 (y!508 thiss!908))) (and b!8403 (= lambda!1910 (y!508 thiss!908))) (and b!8399 b_free!735 (= (x!4584 thiss!854) (y!508 thiss!908))) b_lambda!4179)))

(declare-fun bs!1955 () Bool)

(declare-fun d!6593 () Bool)

(assert (= bs!1955 (and d!6593 b!8398)))

(assert (=> bs!1955 (= (dynLambda!218 lambda!1913) (dynLambda!220 f!585 (foldRight1!46 (toList!39 (left!365 tree!25)) f!585) (foldRight1!46 (toList!39 (right!368 tree!25)) f!585)))))

(declare-fun b_lambda!4191 () Bool)

(assert (=> (not b_lambda!4191) (not bs!1955)))

(assert (=> bs!1955 t!1951))

(declare-fun b_and!2943 () Bool)

(assert (= b_and!2941 (and (=> t!1951 result!1651) b_and!2943)))

(assert (=> bs!1955 m!11257))

(assert (=> bs!1955 m!11321))

(assert (=> bs!1955 m!11325))

(assert (=> bs!1955 m!11327))

(assert (=> bs!1955 m!11253))

(assert (=> bs!1955 m!11257))

(assert (=> bs!1955 m!11321))

(assert (=> bs!1955 m!11253))

(assert (=> bs!1955 m!11325))

(assert (=> (and b!8398 (= lambda!1913 (y!508 thiss!908)) d!6559) d!6593))

(declare-fun bs!1956 () Bool)

(declare-fun d!6595 () Bool)

(assert (= bs!1956 (and d!6595 b!8422)))

(assert (=> bs!1956 (= (dynLambda!218 lambda!1918) (fold!15 (left!365 tree!25) f!585))))

(assert (=> bs!1956 m!11319))

(assert (=> (and b!8422 (= lambda!1918 (y!508 thiss!908)) d!6559) d!6595))

(declare-fun bs!1957 () Bool)

(declare-fun d!6597 () Bool)

(assert (= bs!1957 (and d!6597 b!8403)))

(assert (=> bs!1957 (= (dynLambda!218 lambda!1911) (dynLambda!220 f!585 (foldRight1!46 (toList!39 (left!365 tree!25)) f!585) (fold!15 (right!368 tree!25) f!585)))))

(declare-fun b_lambda!4193 () Bool)

(assert (=> (not b_lambda!4193) (not bs!1957)))

(assert (=> bs!1957 t!1949))

(declare-fun b_and!2945 () Bool)

(assert (= b_and!2943 (and (=> t!1949 result!1649) b_and!2945)))

(assert (=> bs!1957 m!11313))

(assert (=> bs!1957 m!11257))

(assert (=> bs!1957 m!11257))

(assert (=> bs!1957 m!11321))

(assert (=> bs!1957 m!11321))

(assert (=> bs!1957 m!11313))

(assert (=> bs!1957 m!11323))

(assert (=> (and b!8403 (= lambda!1911 (y!508 thiss!908)) d!6559) d!6597))

(declare-fun bs!1958 () Bool)

(declare-fun d!6599 () Bool)

(assert (= bs!1958 (and d!6599 b!8422)))

(assert (=> bs!1958 (= (dynLambda!218 lambda!1919) (fold!15 (right!368 tree!25) f!585))))

(assert (=> bs!1958 m!11313))

(assert (=> (and b!8422 (= lambda!1919 (y!508 thiss!908)) d!6559) d!6599))

(declare-fun bs!1959 () Bool)

(declare-fun d!6601 () Bool)

(assert (= bs!1959 (and d!6601 b!8403)))

(assert (=> bs!1959 (= (dynLambda!218 lambda!1910) (fold!15 tree!25 f!585))))

(assert (=> bs!1959 m!11263))

(assert (=> (and b!8403 (= lambda!1910 (y!508 thiss!908)) d!6559) d!6601))

(declare-fun b_lambda!4181 () Bool)

(assert (= b_lambda!4153 (or (and b!8399 b_free!735 (= (x!4584 thiss!854) (y!507 thiss!854))) (and b!8403 (= lambda!1911 (y!507 thiss!854))) (and b!8402 b_free!741 (= (x!4585 thiss!908) (y!507 thiss!854))) (and b!8422 (= lambda!1919 (y!507 thiss!854))) (and b!8398 (= lambda!1913 (y!507 thiss!854))) (and b!8399 b_free!737) (and b!8402 b_free!743 (= (y!508 thiss!908) (y!507 thiss!854))) (and b!8403 (= lambda!1910 (y!507 thiss!854))) (and b!8422 (= lambda!1918 (y!507 thiss!854))) b_lambda!4181)))

(declare-fun bs!1960 () Bool)

(declare-fun d!6603 () Bool)

(assert (= bs!1960 (and d!6603 b!8398)))

(assert (=> bs!1960 (= (dynLambda!218 lambda!1913) (dynLambda!220 f!585 (foldRight1!46 (toList!39 (left!365 tree!25)) f!585) (foldRight1!46 (toList!39 (right!368 tree!25)) f!585)))))

(declare-fun b_lambda!4195 () Bool)

(assert (=> (not b_lambda!4195) (not bs!1960)))

(assert (=> bs!1960 t!1951))

(declare-fun b_and!2947 () Bool)

(assert (= b_and!2945 (and (=> t!1951 result!1651) b_and!2947)))

(assert (=> bs!1960 m!11257))

(assert (=> bs!1960 m!11321))

(assert (=> bs!1960 m!11325))

(assert (=> bs!1960 m!11327))

(assert (=> bs!1960 m!11253))

(assert (=> bs!1960 m!11257))

(assert (=> bs!1960 m!11321))

(assert (=> bs!1960 m!11253))

(assert (=> bs!1960 m!11325))

(assert (=> (and b!8398 (= lambda!1913 (y!507 thiss!854)) d!6557) d!6603))

(declare-fun bs!1961 () Bool)

(declare-fun d!6605 () Bool)

(assert (= bs!1961 (and d!6605 b!8403)))

(assert (=> bs!1961 (= (dynLambda!218 lambda!1911) (dynLambda!220 f!585 (foldRight1!46 (toList!39 (left!365 tree!25)) f!585) (fold!15 (right!368 tree!25) f!585)))))

(declare-fun b_lambda!4197 () Bool)

(assert (=> (not b_lambda!4197) (not bs!1961)))

(assert (=> bs!1961 t!1949))

(declare-fun b_and!2949 () Bool)

(assert (= b_and!2947 (and (=> t!1949 result!1649) b_and!2949)))

(assert (=> bs!1961 m!11313))

(assert (=> bs!1961 m!11257))

(assert (=> bs!1961 m!11257))

(assert (=> bs!1961 m!11321))

(assert (=> bs!1961 m!11321))

(assert (=> bs!1961 m!11313))

(assert (=> bs!1961 m!11323))

(assert (=> (and b!8403 (= lambda!1911 (y!507 thiss!854)) d!6557) d!6605))

(declare-fun bs!1962 () Bool)

(declare-fun d!6607 () Bool)

(assert (= bs!1962 (and d!6607 b!8422)))

(assert (=> bs!1962 (= (dynLambda!218 lambda!1919) (fold!15 (right!368 tree!25) f!585))))

(assert (=> bs!1962 m!11313))

(assert (=> (and b!8422 (= lambda!1919 (y!507 thiss!854)) d!6557) d!6607))

(declare-fun bs!1963 () Bool)

(declare-fun d!6609 () Bool)

(assert (= bs!1963 (and d!6609 b!8403)))

(assert (=> bs!1963 (= (dynLambda!218 lambda!1910) (fold!15 tree!25 f!585))))

(assert (=> bs!1963 m!11263))

(assert (=> (and b!8403 (= lambda!1910 (y!507 thiss!854)) d!6557) d!6609))

(declare-fun bs!1964 () Bool)

(declare-fun d!6611 () Bool)

(assert (= bs!1964 (and d!6611 b!8422)))

(assert (=> bs!1964 (= (dynLambda!218 lambda!1918) (fold!15 (left!365 tree!25) f!585))))

(assert (=> bs!1964 m!11319))

(assert (=> (and b!8422 (= lambda!1918 (y!507 thiss!854)) d!6557) d!6611))

(declare-fun b_lambda!4183 () Bool)

(assert (= b_lambda!4151 (or (and b!8403 (= lambda!1911 (x!4584 thiss!854))) (and b!8422 (= lambda!1919 (x!4584 thiss!854))) (and b!8399 b_free!735) (and b!8402 b_free!743 (= (y!508 thiss!908) (x!4584 thiss!854))) (and b!8399 b_free!737 (= (y!507 thiss!854) (x!4584 thiss!854))) (and b!8398 (= lambda!1913 (x!4584 thiss!854))) (and b!8403 (= lambda!1910 (x!4584 thiss!854))) (and b!8422 (= lambda!1918 (x!4584 thiss!854))) (and b!8402 b_free!741 (= (x!4585 thiss!908) (x!4584 thiss!854))) b_lambda!4183)))

(declare-fun bs!1965 () Bool)

(declare-fun d!6613 () Bool)

(assert (= bs!1965 (and d!6613 b!8403)))

(assert (=> bs!1965 (= (dynLambda!218 lambda!1911) (dynLambda!220 f!585 (foldRight1!46 (toList!39 (left!365 tree!25)) f!585) (fold!15 (right!368 tree!25) f!585)))))

(declare-fun b_lambda!4199 () Bool)

(assert (=> (not b_lambda!4199) (not bs!1965)))

(assert (=> bs!1965 t!1949))

(declare-fun b_and!2951 () Bool)

(assert (= b_and!2949 (and (=> t!1949 result!1649) b_and!2951)))

(assert (=> bs!1965 m!11313))

(assert (=> bs!1965 m!11257))

(assert (=> bs!1965 m!11257))

(assert (=> bs!1965 m!11321))

(assert (=> bs!1965 m!11321))

(assert (=> bs!1965 m!11313))

(assert (=> bs!1965 m!11323))

(assert (=> (and b!8403 (= lambda!1911 (x!4584 thiss!854)) d!6557) d!6613))

(declare-fun bs!1966 () Bool)

(declare-fun d!6615 () Bool)

(assert (= bs!1966 (and d!6615 b!8403)))

(assert (=> bs!1966 (= (dynLambda!218 lambda!1910) (fold!15 tree!25 f!585))))

(assert (=> bs!1966 m!11263))

(assert (=> (and b!8403 (= lambda!1910 (x!4584 thiss!854)) d!6557) d!6615))

(declare-fun bs!1967 () Bool)

(declare-fun d!6617 () Bool)

(assert (= bs!1967 (and d!6617 b!8398)))

(assert (=> bs!1967 (= (dynLambda!218 lambda!1913) (dynLambda!220 f!585 (foldRight1!46 (toList!39 (left!365 tree!25)) f!585) (foldRight1!46 (toList!39 (right!368 tree!25)) f!585)))))

(declare-fun b_lambda!4201 () Bool)

(assert (=> (not b_lambda!4201) (not bs!1967)))

(assert (=> bs!1967 t!1951))

(declare-fun b_and!2953 () Bool)

(assert (= b_and!2951 (and (=> t!1951 result!1651) b_and!2953)))

(assert (=> bs!1967 m!11257))

(assert (=> bs!1967 m!11321))

(assert (=> bs!1967 m!11325))

(assert (=> bs!1967 m!11327))

(assert (=> bs!1967 m!11253))

(assert (=> bs!1967 m!11257))

(assert (=> bs!1967 m!11321))

(assert (=> bs!1967 m!11253))

(assert (=> bs!1967 m!11325))

(assert (=> (and b!8398 (= lambda!1913 (x!4584 thiss!854)) d!6557) d!6617))

(declare-fun bs!1968 () Bool)

(declare-fun d!6619 () Bool)

(assert (= bs!1968 (and d!6619 b!8422)))

(assert (=> bs!1968 (= (dynLambda!218 lambda!1919) (fold!15 (right!368 tree!25) f!585))))

(assert (=> bs!1968 m!11313))

(assert (=> (and b!8422 (= lambda!1919 (x!4584 thiss!854)) d!6557) d!6619))

(declare-fun bs!1969 () Bool)

(declare-fun d!6621 () Bool)

(assert (= bs!1969 (and d!6621 b!8422)))

(assert (=> bs!1969 (= (dynLambda!218 lambda!1918) (fold!15 (left!365 tree!25) f!585))))

(assert (=> bs!1969 m!11319))

(assert (=> (and b!8422 (= lambda!1918 (x!4584 thiss!854)) d!6557) d!6621))

(declare-fun b_lambda!4185 () Bool)

(assert (= b_lambda!4163 (or b!8422 b_lambda!4185)))

(declare-fun bs!1970 () Bool)

(declare-fun d!6623 () Bool)

(assert (= bs!1970 (and d!6623 b!8422)))

(assert (=> bs!1970 (= (dynLambda!218 lambda!1918) (fold!15 (left!365 tree!25) f!585))))

(assert (=> bs!1970 m!11319))

(assert (=> b!8422 d!6623))

(push 1)

(assert b_and!2927)

(assert (not bs!1951))

(assert (not b_lambda!4193))

(assert b_and!2933)

(assert (not b_lambda!4173))

(assert (not bs!1961))

(assert (not bs!1948))

(assert (not b_lambda!4177))

(assert (not bs!1967))

(assert (not bs!1950))

(assert (not bs!1952))

(assert (not b_next!1649))

(assert (not bs!1966))

(assert (not b_next!1631))

(assert (not b_lambda!4191))

(assert (not b_lambda!4175))

(assert (not b_lambda!4171))

(assert (not b_lambda!4169))

(assert (not d!6567))

(assert (not bs!1958))

(assert (not b!8438))

(assert (not b_lambda!4179))

(assert (not bs!1956))

(assert (not bs!1953))

(assert b_and!2929)

(assert (not bs!1970))

(assert b_and!2931)

(assert (not bs!1969))

(assert (not bs!1957))

(assert (not bs!1946))

(assert b_and!2953)

(assert (not b_lambda!4185))

(assert (not bs!1959))

(assert (not b!8434))

(assert (not b!8428))

(assert (not b!8436))

(assert (not b_lambda!4199))

(assert (not b_lambda!4195))

(assert (not bs!1965))

(assert (not bs!1955))

(assert (not bs!1947))

(assert (not bs!1968))

(assert (not bs!1960))

(assert (not b_next!1655))

(assert (not b_lambda!4181))

(assert (not bs!1962))

(assert b_and!2917)

(assert (not b_next!1613))

(assert (not b_next!1653))

(assert (not d!6573))

(assert (not bs!1954))

(assert (not d!6569))

(assert (not b_lambda!4189))

(assert (not b_lambda!4201))

(assert (not b_lambda!4197))

(assert (not b_lambda!4183))

(assert (not b_lambda!4187))

(assert (not bs!1949))

(assert (not b_next!1651))

(assert (not bs!1963))

(assert (not bs!1964))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2927)

(assert b_and!2933)

(assert (not b_next!1649))

(assert (not b_next!1631))

(assert b_and!2929)

(assert b_and!2931)

(assert b_and!2953)

(assert (not b_next!1655))

(assert b_and!2917)

(assert (not b_next!1613))

(assert (not b_next!1653))

(assert (not b_next!1651))

(check-sat)

(pop 1)

