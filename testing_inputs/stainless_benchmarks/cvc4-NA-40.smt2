; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!236 () Bool)

(assert start!236)

(declare-fun b!1463 () Bool)

(declare-fun res!788 () Bool)

(declare-fun e!902 () Bool)

(assert (=> b!1463 (=> (not res!788) (not e!902))))

(declare-datatypes () ((List!53 (Cons!53 (head!225 (_ BitVec 32)) (tail!237 List!53)) (Nil!54))))

(declare-datatypes () ((AbsQueue!5 (Queue!4 (front!49 List!53) (rear!51 List!53)))))

(declare-fun queue!71 () AbsQueue!5)

(declare-fun q4!1 () AbsQueue!5)

(assert (=> b!1463 (= res!788 (= queue!71 q4!1))))

(declare-fun b!1464 () Bool)

(declare-fun res!785 () Bool)

(assert (=> b!1464 (=> (not res!785) (not e!902))))

(declare-fun e3!1 () (_ BitVec 32))

(declare-fun q2!1 () AbsQueue!5)

(declare-fun q3!1 () AbsQueue!5)

(declare-fun enqueue!0 (AbsQueue!5 (_ BitVec 32)) AbsQueue!5)

(assert (=> b!1464 (= res!785 (= q3!1 (enqueue!0 q2!1 e3!1)))))

(declare-fun res!790 () Bool)

(assert (=> start!236 (=> (not res!790) (not e!902))))

(declare-fun queue!56 () AbsQueue!5)

(declare-fun isEmpty!12 (AbsQueue!5) Bool)

(assert (=> start!236 (= res!790 (isEmpty!12 queue!56))))

(assert (=> start!236 e!902))

(assert (=> start!236 true))

(declare-fun b!1465 () Bool)

(declare-fun e!903 () Bool)

(assert (=> b!1465 (= e!903 (isEmpty!12 queue!71))))

(declare-fun b!1466 () Bool)

(assert (=> b!1466 (= e!902 e!903)))

(declare-fun res!784 () Bool)

(assert (=> b!1466 (=> res!784 e!903)))

(declare-fun isAmortized!0 (AbsQueue!5) Bool)

(assert (=> b!1466 (= res!784 (not (isAmortized!0 queue!71)))))

(declare-fun b!1467 () Bool)

(declare-fun res!787 () Bool)

(assert (=> b!1467 (=> (not res!787) (not e!902))))

(declare-fun q1!1 () AbsQueue!5)

(declare-fun e1!2 () (_ BitVec 32))

(assert (=> b!1467 (= res!787 (= q1!1 (enqueue!0 queue!56 e1!2)))))

(declare-fun b!1468 () Bool)

(declare-fun res!782 () Bool)

(assert (=> b!1468 (=> (not res!782) (not e!902))))

(declare-fun e1prime!1 () (_ BitVec 32))

(declare-fun front!8 (AbsQueue!5) (_ BitVec 32))

(assert (=> b!1468 (= res!782 (= e1prime!1 (front!8 q3!1)))))

(declare-fun b!1469 () Bool)

(declare-fun res!783 () Bool)

(assert (=> b!1469 (=> (not res!783) (not e!902))))

(declare-fun e2!3 () (_ BitVec 32))

(assert (=> b!1469 (= res!783 (= q2!1 (enqueue!0 q1!1 e2!3)))))

(declare-fun b!1470 () Bool)

(declare-fun res!786 () Bool)

(assert (=> b!1470 (=> (not res!786) (not e!902))))

(declare-fun tail!159 (AbsQueue!5) AbsQueue!5)

(assert (=> b!1470 (= res!786 (= q4!1 (tail!159 q3!1)))))

(declare-fun b!1471 () Bool)

(declare-fun res!789 () Bool)

(assert (=> b!1471 (=> (not res!789) (not e!902))))

(declare-fun e2prime!1 () (_ BitVec 32))

(assert (=> b!1471 (= res!789 (= e2prime!1 (front!8 q4!1)))))

(assert (= (and start!236 res!790) b!1467))

(assert (= (and b!1467 res!787) b!1469))

(assert (= (and b!1469 res!783) b!1464))

(assert (= (and b!1464 res!785) b!1468))

(assert (= (and b!1468 res!782) b!1470))

(assert (= (and b!1470 res!786) b!1471))

(assert (= (and b!1471 res!789) b!1463))

(assert (= (and b!1463 res!788) b!1466))

(assert (= (and b!1466 (not res!784)) b!1465))

(declare-fun m!1743 () Bool)

(assert (=> b!1470 m!1743))

(declare-fun m!1745 () Bool)

(assert (=> b!1464 m!1745))

(declare-fun m!1747 () Bool)

(assert (=> start!236 m!1747))

(declare-fun m!1749 () Bool)

(assert (=> b!1469 m!1749))

(declare-fun m!1751 () Bool)

(assert (=> b!1465 m!1751))

(declare-fun m!1753 () Bool)

(assert (=> b!1468 m!1753))

(declare-fun m!1755 () Bool)

(assert (=> b!1467 m!1755))

(declare-fun m!1757 () Bool)

(assert (=> b!1466 m!1757))

(declare-fun m!1759 () Bool)

(assert (=> b!1471 m!1759))

(push 1)

(assert (not b!1471))

(assert (not b!1464))

(assert (not b!1470))

(assert (not b!1468))

(assert (not b!1466))

(assert (not b!1469))

(assert (not b!1467))

(assert (not b!1465))

(assert (not start!236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!824 () Bool)

(declare-fun size!23 (List!53) Int)

(assert (=> d!824 (= (isAmortized!0 queue!71) (>= (size!23 (front!49 queue!71)) (size!23 (rear!51 queue!71))))))

(declare-fun bs!178 () Bool)

(assert (= bs!178 d!824))

(declare-fun m!1761 () Bool)

(assert (=> bs!178 m!1761))

(declare-fun m!1763 () Bool)

(assert (=> bs!178 m!1763))

(assert (=> b!1466 d!824))

(declare-fun d!826 () Bool)

(assert (=> d!826 (= (front!8 q3!1) (head!225 (front!49 q3!1)))))

(assert (=> b!1468 d!826))

(declare-fun d!828 () Bool)

(declare-fun lt!322 () AbsQueue!5)

(assert (=> d!828 (isAmortized!0 lt!322)))

(declare-fun amortizedQueue!0 (List!53 List!53) AbsQueue!5)

(assert (=> d!828 (= lt!322 (amortizedQueue!0 (front!49 q1!1) (Cons!53 e2!3 (rear!51 q1!1))))))

(assert (=> d!828 (= (enqueue!0 q1!1 e2!3) lt!322)))

(declare-fun bs!179 () Bool)

(assert (= bs!179 d!828))

(declare-fun m!1765 () Bool)

(assert (=> bs!179 m!1765))

(declare-fun m!1767 () Bool)

(assert (=> bs!179 m!1767))

(assert (=> b!1469 d!828))

(declare-fun d!830 () Bool)

(assert (=> d!830 (= (front!8 q4!1) (head!225 (front!49 q4!1)))))

(assert (=> b!1471 d!830))

(declare-fun d!832 () Bool)

(assert (=> d!832 (= (isEmpty!12 queue!71) (and (is-Nil!54 (front!49 queue!71)) (is-Nil!54 (rear!51 queue!71))))))

(assert (=> b!1465 d!832))

(declare-fun d!834 () Bool)

(declare-fun lt!323 () AbsQueue!5)

(assert (=> d!834 (isAmortized!0 lt!323)))

(assert (=> d!834 (= lt!323 (amortizedQueue!0 (front!49 q2!1) (Cons!53 e3!1 (rear!51 q2!1))))))

(assert (=> d!834 (= (enqueue!0 q2!1 e3!1) lt!323)))

(declare-fun bs!180 () Bool)

(assert (= bs!180 d!834))

(declare-fun m!1769 () Bool)

(assert (=> bs!180 m!1769))

(declare-fun m!1771 () Bool)

(assert (=> bs!180 m!1771))

(assert (=> b!1464 d!834))

(declare-fun d!836 () Bool)

(declare-fun lt!324 () AbsQueue!5)

(assert (=> d!836 (isAmortized!0 lt!324)))

(assert (=> d!836 (= lt!324 (amortizedQueue!0 (front!49 queue!56) (Cons!53 e1!2 (rear!51 queue!56))))))

(assert (=> d!836 (= (enqueue!0 queue!56 e1!2) lt!324)))

(declare-fun bs!181 () Bool)

(assert (= bs!181 d!836))

(declare-fun m!1773 () Bool)

(assert (=> bs!181 m!1773))

(declare-fun m!1775 () Bool)

(assert (=> bs!181 m!1775))

(assert (=> b!1467 d!836))

(declare-fun d!838 () Bool)

(declare-fun lt!327 () AbsQueue!5)

(assert (=> d!838 (isAmortized!0 lt!327)))

(assert (=> d!838 (= lt!327 (amortizedQueue!0 (tail!237 (front!49 q3!1)) (rear!51 q3!1)))))

(declare-fun e!906 () Bool)

(assert (=> d!838 e!906))

(declare-fun res!793 () Bool)

(assert (=> d!838 (=> (not res!793) (not e!906))))

(assert (=> d!838 (= res!793 (isAmortized!0 q3!1))))

(assert (=> d!838 (= (tail!159 q3!1) lt!327)))

(declare-fun b!1474 () Bool)

(assert (=> b!1474 (= e!906 (not (isEmpty!12 q3!1)))))

(assert (= (and d!838 res!793) b!1474))

(declare-fun m!1777 () Bool)

(assert (=> d!838 m!1777))

(declare-fun m!1779 () Bool)

(assert (=> d!838 m!1779))

(declare-fun m!1781 () Bool)

(assert (=> d!838 m!1781))

(declare-fun m!1783 () Bool)

(assert (=> b!1474 m!1783))

(assert (=> b!1470 d!838))

(declare-fun d!840 () Bool)

(assert (=> d!840 (= (isEmpty!12 queue!56) (and (is-Nil!54 (front!49 queue!56)) (is-Nil!54 (rear!51 queue!56))))))

(assert (=> start!236 d!840))

(push 1)

(assert (not d!828))

(assert (not d!836))

(assert (not b!1474))

(assert (not d!838))

(assert (not d!824))

(assert (not d!834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!842 () Bool)

(assert (=> d!842 (= (isEmpty!12 q3!1) (and (is-Nil!54 (front!49 q3!1)) (is-Nil!54 (rear!51 q3!1))))))

(assert (=> b!1474 d!842))

(declare-fun d!844 () Bool)

(assert (=> d!844 (= (isAmortized!0 lt!327) (>= (size!23 (front!49 lt!327)) (size!23 (rear!51 lt!327))))))

(declare-fun bs!182 () Bool)

(assert (= bs!182 d!844))

(declare-fun m!1785 () Bool)

(assert (=> bs!182 m!1785))

(declare-fun m!1787 () Bool)

(assert (=> bs!182 m!1787))

(assert (=> d!838 d!844))

(declare-fun d!846 () Bool)

(declare-fun lt!330 () AbsQueue!5)

(assert (=> d!846 (isAmortized!0 lt!330)))

(declare-fun e!909 () AbsQueue!5)

(assert (=> d!846 (= lt!330 e!909)))

(declare-fun c!399 () Bool)

(assert (=> d!846 (= c!399 (<= (size!23 (rear!51 q3!1)) (size!23 (tail!237 (front!49 q3!1)))))))

(assert (=> d!846 (= (amortizedQueue!0 (tail!237 (front!49 q3!1)) (rear!51 q3!1)) lt!330)))

(declare-fun b!1479 () Bool)

(assert (=> b!1479 (= e!909 (Queue!4 (tail!237 (front!49 q3!1)) (rear!51 q3!1)))))

(declare-fun b!1480 () Bool)

(declare-fun concat!2 (List!53 List!53) List!53)

(declare-fun reverse!5 (List!53) List!53)

(assert (=> b!1480 (= e!909 (Queue!4 (concat!2 (tail!237 (front!49 q3!1)) (reverse!5 (rear!51 q3!1))) Nil!54))))

(assert (= (and d!846 c!399) b!1479))

(assert (= (and d!846 (not c!399)) b!1480))

(declare-fun m!1789 () Bool)

(assert (=> d!846 m!1789))

(declare-fun m!1791 () Bool)

(assert (=> d!846 m!1791))

(declare-fun m!1793 () Bool)

(assert (=> d!846 m!1793))

(declare-fun m!1795 () Bool)

(assert (=> b!1480 m!1795))

(assert (=> b!1480 m!1795))

(declare-fun m!1797 () Bool)

(assert (=> b!1480 m!1797))

(assert (=> d!838 d!846))

(declare-fun d!848 () Bool)

(assert (=> d!848 (= (isAmortized!0 q3!1) (>= (size!23 (front!49 q3!1)) (size!23 (rear!51 q3!1))))))

(declare-fun bs!183 () Bool)

(assert (= bs!183 d!848))

(declare-fun m!1799 () Bool)

(assert (=> bs!183 m!1799))

(assert (=> bs!183 m!1791))

(assert (=> d!838 d!848))

(declare-fun d!850 () Bool)

(assert (=> d!850 (= (isAmortized!0 lt!322) (>= (size!23 (front!49 lt!322)) (size!23 (rear!51 lt!322))))))

(declare-fun bs!184 () Bool)

(assert (= bs!184 d!850))

(declare-fun m!1801 () Bool)

(assert (=> bs!184 m!1801))

(declare-fun m!1803 () Bool)

(assert (=> bs!184 m!1803))

(assert (=> d!828 d!850))

(declare-fun d!852 () Bool)

(declare-fun lt!331 () AbsQueue!5)

(assert (=> d!852 (isAmortized!0 lt!331)))

(declare-fun e!910 () AbsQueue!5)

(assert (=> d!852 (= lt!331 e!910)))

(declare-fun c!400 () Bool)

(assert (=> d!852 (= c!400 (<= (size!23 (Cons!53 e2!3 (rear!51 q1!1))) (size!23 (front!49 q1!1))))))

(assert (=> d!852 (= (amortizedQueue!0 (front!49 q1!1) (Cons!53 e2!3 (rear!51 q1!1))) lt!331)))

(declare-fun b!1481 () Bool)

(assert (=> b!1481 (= e!910 (Queue!4 (front!49 q1!1) (Cons!53 e2!3 (rear!51 q1!1))))))

(declare-fun b!1482 () Bool)

(assert (=> b!1482 (= e!910 (Queue!4 (concat!2 (front!49 q1!1) (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))) Nil!54))))

(assert (= (and d!852 c!400) b!1481))

(assert (= (and d!852 (not c!400)) b!1482))

(declare-fun m!1805 () Bool)

(assert (=> d!852 m!1805))

(declare-fun m!1807 () Bool)

(assert (=> d!852 m!1807))

(declare-fun m!1809 () Bool)

(assert (=> d!852 m!1809))

(declare-fun m!1811 () Bool)

(assert (=> b!1482 m!1811))

(assert (=> b!1482 m!1811))

(declare-fun m!1813 () Bool)

(assert (=> b!1482 m!1813))

(assert (=> d!828 d!852))

(declare-fun d!854 () Bool)

(declare-fun lt!334 () Int)

(assert (=> d!854 (>= lt!334 0)))

(declare-fun e!913 () Int)

(assert (=> d!854 (= lt!334 e!913)))

(declare-fun c!403 () Bool)

(assert (=> d!854 (= c!403 (is-Nil!54 (front!49 queue!71)))))

(assert (=> d!854 (= (size!23 (front!49 queue!71)) lt!334)))

(declare-fun b!1487 () Bool)

(assert (=> b!1487 (= e!913 0)))

(declare-fun b!1488 () Bool)

(assert (=> b!1488 (= e!913 (+ 1 (size!23 (tail!237 (front!49 queue!71)))))))

(assert (= (and d!854 c!403) b!1487))

(assert (= (and d!854 (not c!403)) b!1488))

(declare-fun m!1815 () Bool)

(assert (=> b!1488 m!1815))

(assert (=> d!824 d!854))

(declare-fun d!856 () Bool)

(declare-fun lt!335 () Int)

(assert (=> d!856 (>= lt!335 0)))

(declare-fun e!914 () Int)

(assert (=> d!856 (= lt!335 e!914)))

(declare-fun c!404 () Bool)

(assert (=> d!856 (= c!404 (is-Nil!54 (rear!51 queue!71)))))

(assert (=> d!856 (= (size!23 (rear!51 queue!71)) lt!335)))

(declare-fun b!1489 () Bool)

(assert (=> b!1489 (= e!914 0)))

(declare-fun b!1490 () Bool)

(assert (=> b!1490 (= e!914 (+ 1 (size!23 (tail!237 (rear!51 queue!71)))))))

(assert (= (and d!856 c!404) b!1489))

(assert (= (and d!856 (not c!404)) b!1490))

(declare-fun m!1817 () Bool)

(assert (=> b!1490 m!1817))

(assert (=> d!824 d!856))

(declare-fun d!858 () Bool)

(assert (=> d!858 (= (isAmortized!0 lt!323) (>= (size!23 (front!49 lt!323)) (size!23 (rear!51 lt!323))))))

(declare-fun bs!185 () Bool)

(assert (= bs!185 d!858))

(declare-fun m!1819 () Bool)

(assert (=> bs!185 m!1819))

(declare-fun m!1821 () Bool)

(assert (=> bs!185 m!1821))

(assert (=> d!834 d!858))

(declare-fun d!860 () Bool)

(declare-fun lt!336 () AbsQueue!5)

(assert (=> d!860 (isAmortized!0 lt!336)))

(declare-fun e!915 () AbsQueue!5)

(assert (=> d!860 (= lt!336 e!915)))

(declare-fun c!405 () Bool)

(assert (=> d!860 (= c!405 (<= (size!23 (Cons!53 e3!1 (rear!51 q2!1))) (size!23 (front!49 q2!1))))))

(assert (=> d!860 (= (amortizedQueue!0 (front!49 q2!1) (Cons!53 e3!1 (rear!51 q2!1))) lt!336)))

(declare-fun b!1491 () Bool)

(assert (=> b!1491 (= e!915 (Queue!4 (front!49 q2!1) (Cons!53 e3!1 (rear!51 q2!1))))))

(declare-fun b!1492 () Bool)

(assert (=> b!1492 (= e!915 (Queue!4 (concat!2 (front!49 q2!1) (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))) Nil!54))))

(assert (= (and d!860 c!405) b!1491))

(assert (= (and d!860 (not c!405)) b!1492))

(declare-fun m!1823 () Bool)

(assert (=> d!860 m!1823))

(declare-fun m!1825 () Bool)

(assert (=> d!860 m!1825))

(declare-fun m!1827 () Bool)

(assert (=> d!860 m!1827))

(declare-fun m!1829 () Bool)

(assert (=> b!1492 m!1829))

(assert (=> b!1492 m!1829))

(declare-fun m!1831 () Bool)

(assert (=> b!1492 m!1831))

(assert (=> d!834 d!860))

(declare-fun d!862 () Bool)

(assert (=> d!862 (= (isAmortized!0 lt!324) (>= (size!23 (front!49 lt!324)) (size!23 (rear!51 lt!324))))))

(declare-fun bs!186 () Bool)

(assert (= bs!186 d!862))

(declare-fun m!1833 () Bool)

(assert (=> bs!186 m!1833))

(declare-fun m!1835 () Bool)

(assert (=> bs!186 m!1835))

(assert (=> d!836 d!862))

(declare-fun d!864 () Bool)

(declare-fun lt!337 () AbsQueue!5)

(assert (=> d!864 (isAmortized!0 lt!337)))

(declare-fun e!916 () AbsQueue!5)

(assert (=> d!864 (= lt!337 e!916)))

(declare-fun c!406 () Bool)

(assert (=> d!864 (= c!406 (<= (size!23 (Cons!53 e1!2 (rear!51 queue!56))) (size!23 (front!49 queue!56))))))

(assert (=> d!864 (= (amortizedQueue!0 (front!49 queue!56) (Cons!53 e1!2 (rear!51 queue!56))) lt!337)))

(declare-fun b!1493 () Bool)

(assert (=> b!1493 (= e!916 (Queue!4 (front!49 queue!56) (Cons!53 e1!2 (rear!51 queue!56))))))

(declare-fun b!1494 () Bool)

(assert (=> b!1494 (= e!916 (Queue!4 (concat!2 (front!49 queue!56) (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))) Nil!54))))

(assert (= (and d!864 c!406) b!1493))

(assert (= (and d!864 (not c!406)) b!1494))

(declare-fun m!1837 () Bool)

(assert (=> d!864 m!1837))

(declare-fun m!1839 () Bool)

(assert (=> d!864 m!1839))

(declare-fun m!1841 () Bool)

(assert (=> d!864 m!1841))

(declare-fun m!1843 () Bool)

(assert (=> b!1494 m!1843))

(assert (=> b!1494 m!1843))

(declare-fun m!1845 () Bool)

(assert (=> b!1494 m!1845))

(assert (=> d!836 d!864))

(push 1)

(assert (not d!852))

(assert (not b!1488))

(assert (not d!858))

(assert (not d!860))

(assert (not b!1490))

(assert (not b!1494))

(assert (not b!1482))

(assert (not d!846))

(assert (not d!844))

(assert (not b!1480))

(assert (not b!1492))

(assert (not d!862))

(assert (not d!848))

(assert (not d!850))

(assert (not d!864))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!866 () Bool)

(declare-fun lt!338 () Int)

(assert (=> d!866 (>= lt!338 0)))

(declare-fun e!917 () Int)

(assert (=> d!866 (= lt!338 e!917)))

(declare-fun c!407 () Bool)

(assert (=> d!866 (= c!407 (is-Nil!54 (tail!237 (rear!51 queue!71))))))

(assert (=> d!866 (= (size!23 (tail!237 (rear!51 queue!71))) lt!338)))

(declare-fun b!1495 () Bool)

(assert (=> b!1495 (= e!917 0)))

(declare-fun b!1496 () Bool)

(assert (=> b!1496 (= e!917 (+ 1 (size!23 (tail!237 (tail!237 (rear!51 queue!71))))))))

(assert (= (and d!866 c!407) b!1495))

(assert (= (and d!866 (not c!407)) b!1496))

(declare-fun m!1847 () Bool)

(assert (=> b!1496 m!1847))

(assert (=> b!1490 d!866))

(declare-fun d!868 () Bool)

(declare-fun lt!339 () Int)

(assert (=> d!868 (>= lt!339 0)))

(declare-fun e!918 () Int)

(assert (=> d!868 (= lt!339 e!918)))

(declare-fun c!408 () Bool)

(assert (=> d!868 (= c!408 (is-Nil!54 (tail!237 (front!49 queue!71))))))

(assert (=> d!868 (= (size!23 (tail!237 (front!49 queue!71))) lt!339)))

(declare-fun b!1497 () Bool)

(assert (=> b!1497 (= e!918 0)))

(declare-fun b!1498 () Bool)

(assert (=> b!1498 (= e!918 (+ 1 (size!23 (tail!237 (tail!237 (front!49 queue!71))))))))

(assert (= (and d!868 c!408) b!1497))

(assert (= (and d!868 (not c!408)) b!1498))

(declare-fun m!1849 () Bool)

(assert (=> b!1498 m!1849))

(assert (=> b!1488 d!868))

(declare-fun d!870 () Bool)

(assert (=> d!870 (= (isAmortized!0 lt!331) (>= (size!23 (front!49 lt!331)) (size!23 (rear!51 lt!331))))))

(declare-fun bs!187 () Bool)

(assert (= bs!187 d!870))

(declare-fun m!1851 () Bool)

(assert (=> bs!187 m!1851))

(declare-fun m!1853 () Bool)

(assert (=> bs!187 m!1853))

(assert (=> d!852 d!870))

(declare-fun d!872 () Bool)

(declare-fun lt!340 () Int)

(assert (=> d!872 (>= lt!340 0)))

(declare-fun e!919 () Int)

(assert (=> d!872 (= lt!340 e!919)))

(declare-fun c!409 () Bool)

(assert (=> d!872 (= c!409 (is-Nil!54 (Cons!53 e2!3 (rear!51 q1!1))))))

(assert (=> d!872 (= (size!23 (Cons!53 e2!3 (rear!51 q1!1))) lt!340)))

(declare-fun b!1499 () Bool)

(assert (=> b!1499 (= e!919 0)))

(declare-fun b!1500 () Bool)

(assert (=> b!1500 (= e!919 (+ 1 (size!23 (tail!237 (Cons!53 e2!3 (rear!51 q1!1))))))))

(assert (= (and d!872 c!409) b!1499))

(assert (= (and d!872 (not c!409)) b!1500))

(declare-fun m!1855 () Bool)

(assert (=> b!1500 m!1855))

(assert (=> d!852 d!872))

(declare-fun d!874 () Bool)

(declare-fun lt!341 () Int)

(assert (=> d!874 (>= lt!341 0)))

(declare-fun e!920 () Int)

(assert (=> d!874 (= lt!341 e!920)))

(declare-fun c!410 () Bool)

(assert (=> d!874 (= c!410 (is-Nil!54 (front!49 q1!1)))))

(assert (=> d!874 (= (size!23 (front!49 q1!1)) lt!341)))

(declare-fun b!1501 () Bool)

(assert (=> b!1501 (= e!920 0)))

(declare-fun b!1502 () Bool)

(assert (=> b!1502 (= e!920 (+ 1 (size!23 (tail!237 (front!49 q1!1)))))))

(assert (= (and d!874 c!410) b!1501))

(assert (= (and d!874 (not c!410)) b!1502))

(declare-fun m!1857 () Bool)

(assert (=> b!1502 m!1857))

(assert (=> d!852 d!874))

(declare-fun d!876 () Bool)

(declare-fun e!925 () Bool)

(assert (=> d!876 e!925))

(declare-fun res!797 () Bool)

(assert (=> d!876 (=> (not res!797) (not e!925))))

(declare-fun lt!344 () List!53)

(assert (=> d!876 (= res!797 (= (size!23 lt!344) (+ (size!23 (front!49 q1!1)) (size!23 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))))))))

(declare-fun e!926 () List!53)

(assert (=> d!876 (= lt!344 e!926)))

(declare-fun c!413 () Bool)

(assert (=> d!876 (= c!413 (is-Nil!54 (front!49 q1!1)))))

(assert (=> d!876 (= (concat!2 (front!49 q1!1) (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))) lt!344)))

(declare-fun b!1509 () Bool)

(assert (=> b!1509 (= e!926 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1))))))

(declare-fun b!1510 () Bool)

(assert (=> b!1510 (= e!926 (Cons!53 (head!225 (front!49 q1!1)) (concat!2 (tail!237 (front!49 q1!1)) (reverse!5 (Cons!53 e2!3 (rear!51 q1!1))))))))

(declare-fun b!1511 () Bool)

(declare-fun content!22 (List!53) (Set (_ BitVec 32)))

(assert (=> b!1511 (= e!925 (= (content!22 lt!344) (union (content!22 (front!49 q1!1)) (content!22 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))))))))

(assert (= (and d!876 c!413) b!1509))

(assert (= (and d!876 (not c!413)) b!1510))

(assert (= (and d!876 res!797) b!1511))

(declare-fun m!1859 () Bool)

(assert (=> d!876 m!1859))

(assert (=> d!876 m!1809))

(assert (=> d!876 m!1811))

(declare-fun m!1861 () Bool)

(assert (=> d!876 m!1861))

(assert (=> b!1510 m!1811))

(declare-fun m!1863 () Bool)

(assert (=> b!1510 m!1863))

(declare-fun m!1865 () Bool)

(assert (=> b!1511 m!1865))

(declare-fun m!1867 () Bool)

(assert (=> b!1511 m!1867))

(assert (=> b!1511 m!1811))

(declare-fun m!1869 () Bool)

(assert (=> b!1511 m!1869))

(assert (=> b!1482 d!876))

(declare-fun d!878 () Bool)

(declare-fun lt!347 () List!53)

(assert (=> d!878 (= (content!22 lt!347) (content!22 (Cons!53 e2!3 (rear!51 q1!1))))))

(declare-fun e!929 () List!53)

(assert (=> d!878 (= lt!347 e!929)))

(declare-fun c!416 () Bool)

(assert (=> d!878 (= c!416 (is-Nil!54 (Cons!53 e2!3 (rear!51 q1!1))))))

(assert (=> d!878 (= (reverse!5 (Cons!53 e2!3 (rear!51 q1!1))) lt!347)))

(declare-fun b!1516 () Bool)

(assert (=> b!1516 (= e!929 Nil!54)))

(declare-fun b!1517 () Bool)

(assert (=> b!1517 (= e!929 (concat!2 (reverse!5 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))) (Cons!53 (head!225 (Cons!53 e2!3 (rear!51 q1!1))) Nil!54)))))

(assert (= (and d!878 c!416) b!1516))

(assert (= (and d!878 (not c!416)) b!1517))

(declare-fun m!1871 () Bool)

(assert (=> d!878 m!1871))

(declare-fun m!1873 () Bool)

(assert (=> d!878 m!1873))

(declare-fun m!1875 () Bool)

(assert (=> b!1517 m!1875))

(assert (=> b!1517 m!1875))

(declare-fun m!1877 () Bool)

(assert (=> b!1517 m!1877))

(assert (=> b!1482 d!878))

(declare-fun d!880 () Bool)

(declare-fun lt!348 () Int)

(assert (=> d!880 (>= lt!348 0)))

(declare-fun e!930 () Int)

(assert (=> d!880 (= lt!348 e!930)))

(declare-fun c!417 () Bool)

(assert (=> d!880 (= c!417 (is-Nil!54 (front!49 lt!327)))))

(assert (=> d!880 (= (size!23 (front!49 lt!327)) lt!348)))

(declare-fun b!1518 () Bool)

(assert (=> b!1518 (= e!930 0)))

(declare-fun b!1519 () Bool)

(assert (=> b!1519 (= e!930 (+ 1 (size!23 (tail!237 (front!49 lt!327)))))))

(assert (= (and d!880 c!417) b!1518))

(assert (= (and d!880 (not c!417)) b!1519))

(declare-fun m!1879 () Bool)

(assert (=> b!1519 m!1879))

(assert (=> d!844 d!880))

(declare-fun d!882 () Bool)

(declare-fun lt!349 () Int)

(assert (=> d!882 (>= lt!349 0)))

(declare-fun e!931 () Int)

(assert (=> d!882 (= lt!349 e!931)))

(declare-fun c!418 () Bool)

(assert (=> d!882 (= c!418 (is-Nil!54 (rear!51 lt!327)))))

(assert (=> d!882 (= (size!23 (rear!51 lt!327)) lt!349)))

(declare-fun b!1520 () Bool)

(assert (=> b!1520 (= e!931 0)))

(declare-fun b!1521 () Bool)

(assert (=> b!1521 (= e!931 (+ 1 (size!23 (tail!237 (rear!51 lt!327)))))))

(assert (= (and d!882 c!418) b!1520))

(assert (= (and d!882 (not c!418)) b!1521))

(declare-fun m!1881 () Bool)

(assert (=> b!1521 m!1881))

(assert (=> d!844 d!882))

(declare-fun d!884 () Bool)

(declare-fun lt!350 () Int)

(assert (=> d!884 (>= lt!350 0)))

(declare-fun e!932 () Int)

(assert (=> d!884 (= lt!350 e!932)))

(declare-fun c!419 () Bool)

(assert (=> d!884 (= c!419 (is-Nil!54 (front!49 lt!324)))))

(assert (=> d!884 (= (size!23 (front!49 lt!324)) lt!350)))

(declare-fun b!1522 () Bool)

(assert (=> b!1522 (= e!932 0)))

(declare-fun b!1523 () Bool)

(assert (=> b!1523 (= e!932 (+ 1 (size!23 (tail!237 (front!49 lt!324)))))))

(assert (= (and d!884 c!419) b!1522))

(assert (= (and d!884 (not c!419)) b!1523))

(declare-fun m!1883 () Bool)

(assert (=> b!1523 m!1883))

(assert (=> d!862 d!884))

(declare-fun d!886 () Bool)

(declare-fun lt!351 () Int)

(assert (=> d!886 (>= lt!351 0)))

(declare-fun e!933 () Int)

(assert (=> d!886 (= lt!351 e!933)))

(declare-fun c!420 () Bool)

(assert (=> d!886 (= c!420 (is-Nil!54 (rear!51 lt!324)))))

(assert (=> d!886 (= (size!23 (rear!51 lt!324)) lt!351)))

(declare-fun b!1524 () Bool)

(assert (=> b!1524 (= e!933 0)))

(declare-fun b!1525 () Bool)

(assert (=> b!1525 (= e!933 (+ 1 (size!23 (tail!237 (rear!51 lt!324)))))))

(assert (= (and d!886 c!420) b!1524))

(assert (= (and d!886 (not c!420)) b!1525))

(declare-fun m!1885 () Bool)

(assert (=> b!1525 m!1885))

(assert (=> d!862 d!886))

(declare-fun d!888 () Bool)

(declare-fun lt!352 () Int)

(assert (=> d!888 (>= lt!352 0)))

(declare-fun e!934 () Int)

(assert (=> d!888 (= lt!352 e!934)))

(declare-fun c!421 () Bool)

(assert (=> d!888 (= c!421 (is-Nil!54 (front!49 q3!1)))))

(assert (=> d!888 (= (size!23 (front!49 q3!1)) lt!352)))

(declare-fun b!1526 () Bool)

(assert (=> b!1526 (= e!934 0)))

(declare-fun b!1527 () Bool)

(assert (=> b!1527 (= e!934 (+ 1 (size!23 (tail!237 (front!49 q3!1)))))))

(assert (= (and d!888 c!421) b!1526))

(assert (= (and d!888 (not c!421)) b!1527))

(assert (=> b!1527 m!1793))

(assert (=> d!848 d!888))

(declare-fun d!890 () Bool)

(declare-fun lt!353 () Int)

(assert (=> d!890 (>= lt!353 0)))

(declare-fun e!935 () Int)

(assert (=> d!890 (= lt!353 e!935)))

(declare-fun c!422 () Bool)

(assert (=> d!890 (= c!422 (is-Nil!54 (rear!51 q3!1)))))

(assert (=> d!890 (= (size!23 (rear!51 q3!1)) lt!353)))

(declare-fun b!1528 () Bool)

(assert (=> b!1528 (= e!935 0)))

(declare-fun b!1529 () Bool)

(assert (=> b!1529 (= e!935 (+ 1 (size!23 (tail!237 (rear!51 q3!1)))))))

(assert (= (and d!890 c!422) b!1528))

(assert (= (and d!890 (not c!422)) b!1529))

(declare-fun m!1887 () Bool)

(assert (=> b!1529 m!1887))

(assert (=> d!848 d!890))

(declare-fun d!892 () Bool)

(assert (=> d!892 (= (isAmortized!0 lt!336) (>= (size!23 (front!49 lt!336)) (size!23 (rear!51 lt!336))))))

(declare-fun bs!188 () Bool)

(assert (= bs!188 d!892))

(declare-fun m!1889 () Bool)

(assert (=> bs!188 m!1889))

(declare-fun m!1891 () Bool)

(assert (=> bs!188 m!1891))

(assert (=> d!860 d!892))

(declare-fun d!894 () Bool)

(declare-fun lt!354 () Int)

(assert (=> d!894 (>= lt!354 0)))

(declare-fun e!936 () Int)

(assert (=> d!894 (= lt!354 e!936)))

(declare-fun c!423 () Bool)

(assert (=> d!894 (= c!423 (is-Nil!54 (Cons!53 e3!1 (rear!51 q2!1))))))

(assert (=> d!894 (= (size!23 (Cons!53 e3!1 (rear!51 q2!1))) lt!354)))

(declare-fun b!1530 () Bool)

(assert (=> b!1530 (= e!936 0)))

(declare-fun b!1531 () Bool)

(assert (=> b!1531 (= e!936 (+ 1 (size!23 (tail!237 (Cons!53 e3!1 (rear!51 q2!1))))))))

(assert (= (and d!894 c!423) b!1530))

(assert (= (and d!894 (not c!423)) b!1531))

(declare-fun m!1893 () Bool)

(assert (=> b!1531 m!1893))

(assert (=> d!860 d!894))

(declare-fun d!896 () Bool)

(declare-fun lt!355 () Int)

(assert (=> d!896 (>= lt!355 0)))

(declare-fun e!937 () Int)

(assert (=> d!896 (= lt!355 e!937)))

(declare-fun c!424 () Bool)

(assert (=> d!896 (= c!424 (is-Nil!54 (front!49 q2!1)))))

(assert (=> d!896 (= (size!23 (front!49 q2!1)) lt!355)))

(declare-fun b!1532 () Bool)

(assert (=> b!1532 (= e!937 0)))

(declare-fun b!1533 () Bool)

(assert (=> b!1533 (= e!937 (+ 1 (size!23 (tail!237 (front!49 q2!1)))))))

(assert (= (and d!896 c!424) b!1532))

(assert (= (and d!896 (not c!424)) b!1533))

(declare-fun m!1895 () Bool)

(assert (=> b!1533 m!1895))

(assert (=> d!860 d!896))

(declare-fun d!898 () Bool)

(declare-fun e!938 () Bool)

(assert (=> d!898 e!938))

(declare-fun res!798 () Bool)

(assert (=> d!898 (=> (not res!798) (not e!938))))

(declare-fun lt!356 () List!53)

(assert (=> d!898 (= res!798 (= (size!23 lt!356) (+ (size!23 (tail!237 (front!49 q3!1))) (size!23 (reverse!5 (rear!51 q3!1))))))))

(declare-fun e!939 () List!53)

(assert (=> d!898 (= lt!356 e!939)))

(declare-fun c!425 () Bool)

(assert (=> d!898 (= c!425 (is-Nil!54 (tail!237 (front!49 q3!1))))))

(assert (=> d!898 (= (concat!2 (tail!237 (front!49 q3!1)) (reverse!5 (rear!51 q3!1))) lt!356)))

(declare-fun b!1534 () Bool)

(assert (=> b!1534 (= e!939 (reverse!5 (rear!51 q3!1)))))

(declare-fun b!1535 () Bool)

(assert (=> b!1535 (= e!939 (Cons!53 (head!225 (tail!237 (front!49 q3!1))) (concat!2 (tail!237 (tail!237 (front!49 q3!1))) (reverse!5 (rear!51 q3!1)))))))

(declare-fun b!1536 () Bool)

(assert (=> b!1536 (= e!938 (= (content!22 lt!356) (union (content!22 (tail!237 (front!49 q3!1))) (content!22 (reverse!5 (rear!51 q3!1))))))))

(assert (= (and d!898 c!425) b!1534))

(assert (= (and d!898 (not c!425)) b!1535))

(assert (= (and d!898 res!798) b!1536))

(declare-fun m!1897 () Bool)

(assert (=> d!898 m!1897))

(assert (=> d!898 m!1793))

(assert (=> d!898 m!1795))

(declare-fun m!1899 () Bool)

(assert (=> d!898 m!1899))

(assert (=> b!1535 m!1795))

(declare-fun m!1901 () Bool)

(assert (=> b!1535 m!1901))

(declare-fun m!1903 () Bool)

(assert (=> b!1536 m!1903))

(declare-fun m!1905 () Bool)

(assert (=> b!1536 m!1905))

(assert (=> b!1536 m!1795))

(declare-fun m!1907 () Bool)

(assert (=> b!1536 m!1907))

(assert (=> b!1480 d!898))

(declare-fun d!900 () Bool)

(declare-fun lt!357 () List!53)

(assert (=> d!900 (= (content!22 lt!357) (content!22 (rear!51 q3!1)))))

(declare-fun e!940 () List!53)

(assert (=> d!900 (= lt!357 e!940)))

(declare-fun c!426 () Bool)

(assert (=> d!900 (= c!426 (is-Nil!54 (rear!51 q3!1)))))

(assert (=> d!900 (= (reverse!5 (rear!51 q3!1)) lt!357)))

(declare-fun b!1537 () Bool)

(assert (=> b!1537 (= e!940 Nil!54)))

(declare-fun b!1538 () Bool)

(assert (=> b!1538 (= e!940 (concat!2 (reverse!5 (tail!237 (rear!51 q3!1))) (Cons!53 (head!225 (rear!51 q3!1)) Nil!54)))))

(assert (= (and d!900 c!426) b!1537))

(assert (= (and d!900 (not c!426)) b!1538))

(declare-fun m!1909 () Bool)

(assert (=> d!900 m!1909))

(declare-fun m!1911 () Bool)

(assert (=> d!900 m!1911))

(declare-fun m!1913 () Bool)

(assert (=> b!1538 m!1913))

(assert (=> b!1538 m!1913))

(declare-fun m!1915 () Bool)

(assert (=> b!1538 m!1915))

(assert (=> b!1480 d!900))

(declare-fun d!902 () Bool)

(declare-fun lt!358 () Int)

(assert (=> d!902 (>= lt!358 0)))

(declare-fun e!941 () Int)

(assert (=> d!902 (= lt!358 e!941)))

(declare-fun c!427 () Bool)

(assert (=> d!902 (= c!427 (is-Nil!54 (front!49 lt!322)))))

(assert (=> d!902 (= (size!23 (front!49 lt!322)) lt!358)))

(declare-fun b!1539 () Bool)

(assert (=> b!1539 (= e!941 0)))

(declare-fun b!1540 () Bool)

(assert (=> b!1540 (= e!941 (+ 1 (size!23 (tail!237 (front!49 lt!322)))))))

(assert (= (and d!902 c!427) b!1539))

(assert (= (and d!902 (not c!427)) b!1540))

(declare-fun m!1917 () Bool)

(assert (=> b!1540 m!1917))

(assert (=> d!850 d!902))

(declare-fun d!904 () Bool)

(declare-fun lt!359 () Int)

(assert (=> d!904 (>= lt!359 0)))

(declare-fun e!942 () Int)

(assert (=> d!904 (= lt!359 e!942)))

(declare-fun c!428 () Bool)

(assert (=> d!904 (= c!428 (is-Nil!54 (rear!51 lt!322)))))

(assert (=> d!904 (= (size!23 (rear!51 lt!322)) lt!359)))

(declare-fun b!1541 () Bool)

(assert (=> b!1541 (= e!942 0)))

(declare-fun b!1542 () Bool)

(assert (=> b!1542 (= e!942 (+ 1 (size!23 (tail!237 (rear!51 lt!322)))))))

(assert (= (and d!904 c!428) b!1541))

(assert (= (and d!904 (not c!428)) b!1542))

(declare-fun m!1919 () Bool)

(assert (=> b!1542 m!1919))

(assert (=> d!850 d!904))

(declare-fun d!906 () Bool)

(declare-fun lt!360 () Int)

(assert (=> d!906 (>= lt!360 0)))

(declare-fun e!943 () Int)

(assert (=> d!906 (= lt!360 e!943)))

(declare-fun c!429 () Bool)

(assert (=> d!906 (= c!429 (is-Nil!54 (front!49 lt!323)))))

(assert (=> d!906 (= (size!23 (front!49 lt!323)) lt!360)))

(declare-fun b!1543 () Bool)

(assert (=> b!1543 (= e!943 0)))

(declare-fun b!1544 () Bool)

(assert (=> b!1544 (= e!943 (+ 1 (size!23 (tail!237 (front!49 lt!323)))))))

(assert (= (and d!906 c!429) b!1543))

(assert (= (and d!906 (not c!429)) b!1544))

(declare-fun m!1921 () Bool)

(assert (=> b!1544 m!1921))

(assert (=> d!858 d!906))

(declare-fun d!908 () Bool)

(declare-fun lt!361 () Int)

(assert (=> d!908 (>= lt!361 0)))

(declare-fun e!944 () Int)

(assert (=> d!908 (= lt!361 e!944)))

(declare-fun c!430 () Bool)

(assert (=> d!908 (= c!430 (is-Nil!54 (rear!51 lt!323)))))

(assert (=> d!908 (= (size!23 (rear!51 lt!323)) lt!361)))

(declare-fun b!1545 () Bool)

(assert (=> b!1545 (= e!944 0)))

(declare-fun b!1546 () Bool)

(assert (=> b!1546 (= e!944 (+ 1 (size!23 (tail!237 (rear!51 lt!323)))))))

(assert (= (and d!908 c!430) b!1545))

(assert (= (and d!908 (not c!430)) b!1546))

(declare-fun m!1923 () Bool)

(assert (=> b!1546 m!1923))

(assert (=> d!858 d!908))

(declare-fun d!910 () Bool)

(declare-fun e!945 () Bool)

(assert (=> d!910 e!945))

(declare-fun res!799 () Bool)

(assert (=> d!910 (=> (not res!799) (not e!945))))

(declare-fun lt!362 () List!53)

(assert (=> d!910 (= res!799 (= (size!23 lt!362) (+ (size!23 (front!49 q2!1)) (size!23 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))))))))

(declare-fun e!946 () List!53)

(assert (=> d!910 (= lt!362 e!946)))

(declare-fun c!431 () Bool)

(assert (=> d!910 (= c!431 (is-Nil!54 (front!49 q2!1)))))

(assert (=> d!910 (= (concat!2 (front!49 q2!1) (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))) lt!362)))

(declare-fun b!1547 () Bool)

(assert (=> b!1547 (= e!946 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1))))))

(declare-fun b!1548 () Bool)

(assert (=> b!1548 (= e!946 (Cons!53 (head!225 (front!49 q2!1)) (concat!2 (tail!237 (front!49 q2!1)) (reverse!5 (Cons!53 e3!1 (rear!51 q2!1))))))))

(declare-fun b!1549 () Bool)

(assert (=> b!1549 (= e!945 (= (content!22 lt!362) (union (content!22 (front!49 q2!1)) (content!22 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))))))))

(assert (= (and d!910 c!431) b!1547))

(assert (= (and d!910 (not c!431)) b!1548))

(assert (= (and d!910 res!799) b!1549))

(declare-fun m!1925 () Bool)

(assert (=> d!910 m!1925))

(assert (=> d!910 m!1827))

(assert (=> d!910 m!1829))

(declare-fun m!1927 () Bool)

(assert (=> d!910 m!1927))

(assert (=> b!1548 m!1829))

(declare-fun m!1929 () Bool)

(assert (=> b!1548 m!1929))

(declare-fun m!1931 () Bool)

(assert (=> b!1549 m!1931))

(declare-fun m!1933 () Bool)

(assert (=> b!1549 m!1933))

(assert (=> b!1549 m!1829))

(declare-fun m!1935 () Bool)

(assert (=> b!1549 m!1935))

(assert (=> b!1492 d!910))

(declare-fun d!912 () Bool)

(declare-fun lt!363 () List!53)

(assert (=> d!912 (= (content!22 lt!363) (content!22 (Cons!53 e3!1 (rear!51 q2!1))))))

(declare-fun e!947 () List!53)

(assert (=> d!912 (= lt!363 e!947)))

(declare-fun c!432 () Bool)

(assert (=> d!912 (= c!432 (is-Nil!54 (Cons!53 e3!1 (rear!51 q2!1))))))

(assert (=> d!912 (= (reverse!5 (Cons!53 e3!1 (rear!51 q2!1))) lt!363)))

(declare-fun b!1550 () Bool)

(assert (=> b!1550 (= e!947 Nil!54)))

(declare-fun b!1551 () Bool)

(assert (=> b!1551 (= e!947 (concat!2 (reverse!5 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))) (Cons!53 (head!225 (Cons!53 e3!1 (rear!51 q2!1))) Nil!54)))))

(assert (= (and d!912 c!432) b!1550))

(assert (= (and d!912 (not c!432)) b!1551))

(declare-fun m!1937 () Bool)

(assert (=> d!912 m!1937))

(declare-fun m!1939 () Bool)

(assert (=> d!912 m!1939))

(declare-fun m!1941 () Bool)

(assert (=> b!1551 m!1941))

(assert (=> b!1551 m!1941))

(declare-fun m!1943 () Bool)

(assert (=> b!1551 m!1943))

(assert (=> b!1492 d!912))

(declare-fun d!914 () Bool)

(declare-fun e!948 () Bool)

(assert (=> d!914 e!948))

(declare-fun res!800 () Bool)

(assert (=> d!914 (=> (not res!800) (not e!948))))

(declare-fun lt!364 () List!53)

(assert (=> d!914 (= res!800 (= (size!23 lt!364) (+ (size!23 (front!49 queue!56)) (size!23 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))))))))

(declare-fun e!949 () List!53)

(assert (=> d!914 (= lt!364 e!949)))

(declare-fun c!433 () Bool)

(assert (=> d!914 (= c!433 (is-Nil!54 (front!49 queue!56)))))

(assert (=> d!914 (= (concat!2 (front!49 queue!56) (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))) lt!364)))

(declare-fun b!1552 () Bool)

(assert (=> b!1552 (= e!949 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56))))))

(declare-fun b!1553 () Bool)

(assert (=> b!1553 (= e!949 (Cons!53 (head!225 (front!49 queue!56)) (concat!2 (tail!237 (front!49 queue!56)) (reverse!5 (Cons!53 e1!2 (rear!51 queue!56))))))))

(declare-fun b!1554 () Bool)

(assert (=> b!1554 (= e!948 (= (content!22 lt!364) (union (content!22 (front!49 queue!56)) (content!22 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))))))))

(assert (= (and d!914 c!433) b!1552))

(assert (= (and d!914 (not c!433)) b!1553))

(assert (= (and d!914 res!800) b!1554))

(declare-fun m!1945 () Bool)

(assert (=> d!914 m!1945))

(assert (=> d!914 m!1841))

(assert (=> d!914 m!1843))

(declare-fun m!1947 () Bool)

(assert (=> d!914 m!1947))

(assert (=> b!1553 m!1843))

(declare-fun m!1949 () Bool)

(assert (=> b!1553 m!1949))

(declare-fun m!1951 () Bool)

(assert (=> b!1554 m!1951))

(declare-fun m!1953 () Bool)

(assert (=> b!1554 m!1953))

(assert (=> b!1554 m!1843))

(declare-fun m!1955 () Bool)

(assert (=> b!1554 m!1955))

(assert (=> b!1494 d!914))

(declare-fun d!916 () Bool)

(declare-fun lt!365 () List!53)

(assert (=> d!916 (= (content!22 lt!365) (content!22 (Cons!53 e1!2 (rear!51 queue!56))))))

(declare-fun e!950 () List!53)

(assert (=> d!916 (= lt!365 e!950)))

(declare-fun c!434 () Bool)

(assert (=> d!916 (= c!434 (is-Nil!54 (Cons!53 e1!2 (rear!51 queue!56))))))

(assert (=> d!916 (= (reverse!5 (Cons!53 e1!2 (rear!51 queue!56))) lt!365)))

(declare-fun b!1555 () Bool)

(assert (=> b!1555 (= e!950 Nil!54)))

(declare-fun b!1556 () Bool)

(assert (=> b!1556 (= e!950 (concat!2 (reverse!5 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))) (Cons!53 (head!225 (Cons!53 e1!2 (rear!51 queue!56))) Nil!54)))))

(assert (= (and d!916 c!434) b!1555))

(assert (= (and d!916 (not c!434)) b!1556))

(declare-fun m!1957 () Bool)

(assert (=> d!916 m!1957))

(declare-fun m!1959 () Bool)

(assert (=> d!916 m!1959))

(declare-fun m!1961 () Bool)

(assert (=> b!1556 m!1961))

(assert (=> b!1556 m!1961))

(declare-fun m!1963 () Bool)

(assert (=> b!1556 m!1963))

(assert (=> b!1494 d!916))

(declare-fun d!918 () Bool)

(assert (=> d!918 (= (isAmortized!0 lt!330) (>= (size!23 (front!49 lt!330)) (size!23 (rear!51 lt!330))))))

(declare-fun bs!189 () Bool)

(assert (= bs!189 d!918))

(declare-fun m!1965 () Bool)

(assert (=> bs!189 m!1965))

(declare-fun m!1967 () Bool)

(assert (=> bs!189 m!1967))

(assert (=> d!846 d!918))

(assert (=> d!846 d!890))

(declare-fun d!920 () Bool)

(declare-fun lt!366 () Int)

(assert (=> d!920 (>= lt!366 0)))

(declare-fun e!951 () Int)

(assert (=> d!920 (= lt!366 e!951)))

(declare-fun c!435 () Bool)

(assert (=> d!920 (= c!435 (is-Nil!54 (tail!237 (front!49 q3!1))))))

(assert (=> d!920 (= (size!23 (tail!237 (front!49 q3!1))) lt!366)))

(declare-fun b!1557 () Bool)

(assert (=> b!1557 (= e!951 0)))

(declare-fun b!1558 () Bool)

(assert (=> b!1558 (= e!951 (+ 1 (size!23 (tail!237 (tail!237 (front!49 q3!1))))))))

(assert (= (and d!920 c!435) b!1557))

(assert (= (and d!920 (not c!435)) b!1558))

(declare-fun m!1969 () Bool)

(assert (=> b!1558 m!1969))

(assert (=> d!846 d!920))

(declare-fun d!922 () Bool)

(assert (=> d!922 (= (isAmortized!0 lt!337) (>= (size!23 (front!49 lt!337)) (size!23 (rear!51 lt!337))))))

(declare-fun bs!190 () Bool)

(assert (= bs!190 d!922))

(declare-fun m!1971 () Bool)

(assert (=> bs!190 m!1971))

(declare-fun m!1973 () Bool)

(assert (=> bs!190 m!1973))

(assert (=> d!864 d!922))

(declare-fun d!924 () Bool)

(declare-fun lt!367 () Int)

(assert (=> d!924 (>= lt!367 0)))

(declare-fun e!952 () Int)

(assert (=> d!924 (= lt!367 e!952)))

(declare-fun c!436 () Bool)

(assert (=> d!924 (= c!436 (is-Nil!54 (Cons!53 e1!2 (rear!51 queue!56))))))

(assert (=> d!924 (= (size!23 (Cons!53 e1!2 (rear!51 queue!56))) lt!367)))

(declare-fun b!1559 () Bool)

(assert (=> b!1559 (= e!952 0)))

(declare-fun b!1560 () Bool)

(assert (=> b!1560 (= e!952 (+ 1 (size!23 (tail!237 (Cons!53 e1!2 (rear!51 queue!56))))))))

(assert (= (and d!924 c!436) b!1559))

(assert (= (and d!924 (not c!436)) b!1560))

(declare-fun m!1975 () Bool)

(assert (=> b!1560 m!1975))

(assert (=> d!864 d!924))

(declare-fun d!926 () Bool)

(declare-fun lt!368 () Int)

(assert (=> d!926 (>= lt!368 0)))

(declare-fun e!953 () Int)

(assert (=> d!926 (= lt!368 e!953)))

(declare-fun c!437 () Bool)

(assert (=> d!926 (= c!437 (is-Nil!54 (front!49 queue!56)))))

(assert (=> d!926 (= (size!23 (front!49 queue!56)) lt!368)))

(declare-fun b!1561 () Bool)

(assert (=> b!1561 (= e!953 0)))

(declare-fun b!1562 () Bool)

(assert (=> b!1562 (= e!953 (+ 1 (size!23 (tail!237 (front!49 queue!56)))))))

(assert (= (and d!926 c!437) b!1561))

(assert (= (and d!926 (not c!437)) b!1562))

(declare-fun m!1977 () Bool)

(assert (=> b!1562 m!1977))

(assert (=> d!864 d!926))

(push 1)

(assert (not b!1525))

(assert (not d!914))

(assert (not b!1517))

(assert (not b!1521))

(assert (not b!1536))

(assert (not b!1562))

(assert (not d!912))

(assert (not b!1553))

(assert (not b!1542))

(assert (not b!1554))

(assert (not b!1500))

(assert (not b!1527))

(assert (not b!1529))

(assert (not b!1498))

(assert (not d!910))

(assert (not b!1519))

(assert (not b!1538))

(assert (not b!1511))

(assert (not d!916))

(assert (not d!878))

(assert (not d!898))

(assert (not d!918))

(assert (not b!1533))

(assert (not d!922))

(assert (not b!1549))

(assert (not b!1546))

(assert (not b!1556))

(assert (not d!876))

(assert (not d!900))

(assert (not b!1535))

(assert (not d!870))

(assert (not b!1558))

(assert (not b!1540))

(assert (not b!1502))

(assert (not b!1496))

(assert (not b!1531))

(assert (not b!1523))

(assert (not b!1548))

(assert (not b!1551))

(assert (not b!1560))

(assert (not d!892))

(assert (not b!1510))

(assert (not b!1544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!928 () Bool)

(declare-fun c!440 () Bool)

(assert (=> d!928 (= c!440 (is-Nil!54 lt!364))))

(declare-fun e!956 () (Set (_ BitVec 32)))

(assert (=> d!928 (= (content!22 lt!364) e!956)))

(declare-fun b!1567 () Bool)

(assert (=> b!1567 (= e!956 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1568 () Bool)

(assert (=> b!1568 (= e!956 (union (insert (head!225 lt!364) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 lt!364))))))

(assert (= (and d!928 c!440) b!1567))

(assert (= (and d!928 (not c!440)) b!1568))

(declare-fun m!1979 () Bool)

(assert (=> b!1568 m!1979))

(declare-fun m!1981 () Bool)

(assert (=> b!1568 m!1981))

(assert (=> b!1554 d!928))

(declare-fun d!930 () Bool)

(declare-fun c!441 () Bool)

(assert (=> d!930 (= c!441 (is-Nil!54 (front!49 queue!56)))))

(declare-fun e!957 () (Set (_ BitVec 32)))

(assert (=> d!930 (= (content!22 (front!49 queue!56)) e!957)))

(declare-fun b!1569 () Bool)

(assert (=> b!1569 (= e!957 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1570 () Bool)

(assert (=> b!1570 (= e!957 (union (insert (head!225 (front!49 queue!56)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (front!49 queue!56)))))))

(assert (= (and d!930 c!441) b!1569))

(assert (= (and d!930 (not c!441)) b!1570))

(declare-fun m!1983 () Bool)

(assert (=> b!1570 m!1983))

(declare-fun m!1985 () Bool)

(assert (=> b!1570 m!1985))

(assert (=> b!1554 d!930))

(declare-fun d!932 () Bool)

(declare-fun c!442 () Bool)

(assert (=> d!932 (= c!442 (is-Nil!54 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))))))

(declare-fun e!958 () (Set (_ BitVec 32)))

(assert (=> d!932 (= (content!22 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))) e!958)))

(declare-fun b!1571 () Bool)

(assert (=> b!1571 (= e!958 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1572 () Bool)

(assert (=> b!1572 (= e!958 (union (insert (head!225 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))))))))

(assert (= (and d!932 c!442) b!1571))

(assert (= (and d!932 (not c!442)) b!1572))

(declare-fun m!1987 () Bool)

(assert (=> b!1572 m!1987))

(declare-fun m!1989 () Bool)

(assert (=> b!1572 m!1989))

(assert (=> b!1554 d!932))

(declare-fun d!934 () Bool)

(declare-fun lt!369 () Int)

(assert (=> d!934 (>= lt!369 0)))

(declare-fun e!959 () Int)

(assert (=> d!934 (= lt!369 e!959)))

(declare-fun c!443 () Bool)

(assert (=> d!934 (= c!443 (is-Nil!54 (front!49 lt!336)))))

(assert (=> d!934 (= (size!23 (front!49 lt!336)) lt!369)))

(declare-fun b!1573 () Bool)

(assert (=> b!1573 (= e!959 0)))

(declare-fun b!1574 () Bool)

(assert (=> b!1574 (= e!959 (+ 1 (size!23 (tail!237 (front!49 lt!336)))))))

(assert (= (and d!934 c!443) b!1573))

(assert (= (and d!934 (not c!443)) b!1574))

(declare-fun m!1991 () Bool)

(assert (=> b!1574 m!1991))

(assert (=> d!892 d!934))

(declare-fun d!936 () Bool)

(declare-fun lt!370 () Int)

(assert (=> d!936 (>= lt!370 0)))

(declare-fun e!960 () Int)

(assert (=> d!936 (= lt!370 e!960)))

(declare-fun c!444 () Bool)

(assert (=> d!936 (= c!444 (is-Nil!54 (rear!51 lt!336)))))

(assert (=> d!936 (= (size!23 (rear!51 lt!336)) lt!370)))

(declare-fun b!1575 () Bool)

(assert (=> b!1575 (= e!960 0)))

(declare-fun b!1576 () Bool)

(assert (=> b!1576 (= e!960 (+ 1 (size!23 (tail!237 (rear!51 lt!336)))))))

(assert (= (and d!936 c!444) b!1575))

(assert (= (and d!936 (not c!444)) b!1576))

(declare-fun m!1993 () Bool)

(assert (=> b!1576 m!1993))

(assert (=> d!892 d!936))

(declare-fun d!938 () Bool)

(declare-fun lt!371 () Int)

(assert (=> d!938 (>= lt!371 0)))

(declare-fun e!961 () Int)

(assert (=> d!938 (= lt!371 e!961)))

(declare-fun c!445 () Bool)

(assert (=> d!938 (= c!445 (is-Nil!54 (tail!237 (front!49 q2!1))))))

(assert (=> d!938 (= (size!23 (tail!237 (front!49 q2!1))) lt!371)))

(declare-fun b!1577 () Bool)

(assert (=> b!1577 (= e!961 0)))

(declare-fun b!1578 () Bool)

(assert (=> b!1578 (= e!961 (+ 1 (size!23 (tail!237 (tail!237 (front!49 q2!1))))))))

(assert (= (and d!938 c!445) b!1577))

(assert (= (and d!938 (not c!445)) b!1578))

(declare-fun m!1995 () Bool)

(assert (=> b!1578 m!1995))

(assert (=> b!1533 d!938))

(declare-fun d!940 () Bool)

(declare-fun lt!372 () Int)

(assert (=> d!940 (>= lt!372 0)))

(declare-fun e!962 () Int)

(assert (=> d!940 (= lt!372 e!962)))

(declare-fun c!446 () Bool)

(assert (=> d!940 (= c!446 (is-Nil!54 lt!364))))

(assert (=> d!940 (= (size!23 lt!364) lt!372)))

(declare-fun b!1579 () Bool)

(assert (=> b!1579 (= e!962 0)))

(declare-fun b!1580 () Bool)

(assert (=> b!1580 (= e!962 (+ 1 (size!23 (tail!237 lt!364))))))

(assert (= (and d!940 c!446) b!1579))

(assert (= (and d!940 (not c!446)) b!1580))

(declare-fun m!1997 () Bool)

(assert (=> b!1580 m!1997))

(assert (=> d!914 d!940))

(assert (=> d!914 d!926))

(declare-fun d!942 () Bool)

(declare-fun lt!373 () Int)

(assert (=> d!942 (>= lt!373 0)))

(declare-fun e!963 () Int)

(assert (=> d!942 (= lt!373 e!963)))

(declare-fun c!447 () Bool)

(assert (=> d!942 (= c!447 (is-Nil!54 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))))))

(assert (=> d!942 (= (size!23 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))) lt!373)))

(declare-fun b!1581 () Bool)

(assert (=> b!1581 (= e!963 0)))

(declare-fun b!1582 () Bool)

(assert (=> b!1582 (= e!963 (+ 1 (size!23 (tail!237 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))))))))

(assert (= (and d!942 c!447) b!1581))

(assert (= (and d!942 (not c!447)) b!1582))

(declare-fun m!1999 () Bool)

(assert (=> b!1582 m!1999))

(assert (=> d!914 d!942))

(declare-fun d!944 () Bool)

(declare-fun c!448 () Bool)

(assert (=> d!944 (= c!448 (is-Nil!54 lt!356))))

(declare-fun e!964 () (Set (_ BitVec 32)))

(assert (=> d!944 (= (content!22 lt!356) e!964)))

(declare-fun b!1583 () Bool)

(assert (=> b!1583 (= e!964 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1584 () Bool)

(assert (=> b!1584 (= e!964 (union (insert (head!225 lt!356) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 lt!356))))))

(assert (= (and d!944 c!448) b!1583))

(assert (= (and d!944 (not c!448)) b!1584))

(declare-fun m!2001 () Bool)

(assert (=> b!1584 m!2001))

(declare-fun m!2003 () Bool)

(assert (=> b!1584 m!2003))

(assert (=> b!1536 d!944))

(declare-fun d!946 () Bool)

(declare-fun c!449 () Bool)

(assert (=> d!946 (= c!449 (is-Nil!54 (tail!237 (front!49 q3!1))))))

(declare-fun e!965 () (Set (_ BitVec 32)))

(assert (=> d!946 (= (content!22 (tail!237 (front!49 q3!1))) e!965)))

(declare-fun b!1585 () Bool)

(assert (=> b!1585 (= e!965 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1586 () Bool)

(assert (=> b!1586 (= e!965 (union (insert (head!225 (tail!237 (front!49 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (tail!237 (front!49 q3!1))))))))

(assert (= (and d!946 c!449) b!1585))

(assert (= (and d!946 (not c!449)) b!1586))

(declare-fun m!2005 () Bool)

(assert (=> b!1586 m!2005))

(declare-fun m!2007 () Bool)

(assert (=> b!1586 m!2007))

(assert (=> b!1536 d!946))

(declare-fun d!948 () Bool)

(declare-fun c!450 () Bool)

(assert (=> d!948 (= c!450 (is-Nil!54 (reverse!5 (rear!51 q3!1))))))

(declare-fun e!966 () (Set (_ BitVec 32)))

(assert (=> d!948 (= (content!22 (reverse!5 (rear!51 q3!1))) e!966)))

(declare-fun b!1587 () Bool)

(assert (=> b!1587 (= e!966 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1588 () Bool)

(assert (=> b!1588 (= e!966 (union (insert (head!225 (reverse!5 (rear!51 q3!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (reverse!5 (rear!51 q3!1))))))))

(assert (= (and d!948 c!450) b!1587))

(assert (= (and d!948 (not c!450)) b!1588))

(declare-fun m!2009 () Bool)

(assert (=> b!1588 m!2009))

(declare-fun m!2011 () Bool)

(assert (=> b!1588 m!2011))

(assert (=> b!1536 d!948))

(declare-fun d!950 () Bool)

(declare-fun e!967 () Bool)

(assert (=> d!950 e!967))

(declare-fun res!801 () Bool)

(assert (=> d!950 (=> (not res!801) (not e!967))))

(declare-fun lt!374 () List!53)

(assert (=> d!950 (= res!801 (= (size!23 lt!374) (+ (size!23 (tail!237 (front!49 q1!1))) (size!23 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))))))))

(declare-fun e!968 () List!53)

(assert (=> d!950 (= lt!374 e!968)))

(declare-fun c!451 () Bool)

(assert (=> d!950 (= c!451 (is-Nil!54 (tail!237 (front!49 q1!1))))))

(assert (=> d!950 (= (concat!2 (tail!237 (front!49 q1!1)) (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))) lt!374)))

(declare-fun b!1589 () Bool)

(assert (=> b!1589 (= e!968 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1))))))

(declare-fun b!1590 () Bool)

(assert (=> b!1590 (= e!968 (Cons!53 (head!225 (tail!237 (front!49 q1!1))) (concat!2 (tail!237 (tail!237 (front!49 q1!1))) (reverse!5 (Cons!53 e2!3 (rear!51 q1!1))))))))

(declare-fun b!1591 () Bool)

(assert (=> b!1591 (= e!967 (= (content!22 lt!374) (union (content!22 (tail!237 (front!49 q1!1))) (content!22 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))))))))

(assert (= (and d!950 c!451) b!1589))

(assert (= (and d!950 (not c!451)) b!1590))

(assert (= (and d!950 res!801) b!1591))

(declare-fun m!2013 () Bool)

(assert (=> d!950 m!2013))

(assert (=> d!950 m!1857))

(assert (=> d!950 m!1811))

(assert (=> d!950 m!1861))

(assert (=> b!1590 m!1811))

(declare-fun m!2015 () Bool)

(assert (=> b!1590 m!2015))

(declare-fun m!2017 () Bool)

(assert (=> b!1591 m!2017))

(declare-fun m!2019 () Bool)

(assert (=> b!1591 m!2019))

(assert (=> b!1591 m!1811))

(assert (=> b!1591 m!1869))

(assert (=> b!1510 d!950))

(declare-fun d!952 () Bool)

(declare-fun lt!375 () Int)

(assert (=> d!952 (>= lt!375 0)))

(declare-fun e!969 () Int)

(assert (=> d!952 (= lt!375 e!969)))

(declare-fun c!452 () Bool)

(assert (=> d!952 (= c!452 (is-Nil!54 (tail!237 (tail!237 (front!49 q3!1)))))))

(assert (=> d!952 (= (size!23 (tail!237 (tail!237 (front!49 q3!1)))) lt!375)))

(declare-fun b!1592 () Bool)

(assert (=> b!1592 (= e!969 0)))

(declare-fun b!1593 () Bool)

(assert (=> b!1593 (= e!969 (+ 1 (size!23 (tail!237 (tail!237 (tail!237 (front!49 q3!1)))))))))

(assert (= (and d!952 c!452) b!1592))

(assert (= (and d!952 (not c!452)) b!1593))

(declare-fun m!2021 () Bool)

(assert (=> b!1593 m!2021))

(assert (=> b!1558 d!952))

(declare-fun d!954 () Bool)

(declare-fun e!970 () Bool)

(assert (=> d!954 e!970))

(declare-fun res!802 () Bool)

(assert (=> d!954 (=> (not res!802) (not e!970))))

(declare-fun lt!376 () List!53)

(assert (=> d!954 (= res!802 (= (size!23 lt!376) (+ (size!23 (reverse!5 (tail!237 (Cons!53 e3!1 (rear!51 q2!1))))) (size!23 (Cons!53 (head!225 (Cons!53 e3!1 (rear!51 q2!1))) Nil!54)))))))

(declare-fun e!971 () List!53)

(assert (=> d!954 (= lt!376 e!971)))

(declare-fun c!453 () Bool)

(assert (=> d!954 (= c!453 (is-Nil!54 (reverse!5 (tail!237 (Cons!53 e3!1 (rear!51 q2!1))))))))

(assert (=> d!954 (= (concat!2 (reverse!5 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))) (Cons!53 (head!225 (Cons!53 e3!1 (rear!51 q2!1))) Nil!54)) lt!376)))

(declare-fun b!1594 () Bool)

(assert (=> b!1594 (= e!971 (Cons!53 (head!225 (Cons!53 e3!1 (rear!51 q2!1))) Nil!54))))

(declare-fun b!1595 () Bool)

(assert (=> b!1595 (= e!971 (Cons!53 (head!225 (reverse!5 (tail!237 (Cons!53 e3!1 (rear!51 q2!1))))) (concat!2 (tail!237 (reverse!5 (tail!237 (Cons!53 e3!1 (rear!51 q2!1))))) (Cons!53 (head!225 (Cons!53 e3!1 (rear!51 q2!1))) Nil!54))))))

(declare-fun b!1596 () Bool)

(assert (=> b!1596 (= e!970 (= (content!22 lt!376) (union (content!22 (reverse!5 (tail!237 (Cons!53 e3!1 (rear!51 q2!1))))) (content!22 (Cons!53 (head!225 (Cons!53 e3!1 (rear!51 q2!1))) Nil!54)))))))

(assert (= (and d!954 c!453) b!1594))

(assert (= (and d!954 (not c!453)) b!1595))

(assert (= (and d!954 res!802) b!1596))

(declare-fun m!2023 () Bool)

(assert (=> d!954 m!2023))

(assert (=> d!954 m!1941))

(declare-fun m!2025 () Bool)

(assert (=> d!954 m!2025))

(declare-fun m!2027 () Bool)

(assert (=> d!954 m!2027))

(declare-fun m!2029 () Bool)

(assert (=> b!1595 m!2029))

(declare-fun m!2031 () Bool)

(assert (=> b!1596 m!2031))

(assert (=> b!1596 m!1941))

(declare-fun m!2033 () Bool)

(assert (=> b!1596 m!2033))

(declare-fun m!2035 () Bool)

(assert (=> b!1596 m!2035))

(assert (=> b!1551 d!954))

(declare-fun d!956 () Bool)

(declare-fun lt!377 () List!53)

(assert (=> d!956 (= (content!22 lt!377) (content!22 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))))))

(declare-fun e!972 () List!53)

(assert (=> d!956 (= lt!377 e!972)))

(declare-fun c!454 () Bool)

(assert (=> d!956 (= c!454 (is-Nil!54 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))))))

(assert (=> d!956 (= (reverse!5 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))) lt!377)))

(declare-fun b!1597 () Bool)

(assert (=> b!1597 (= e!972 Nil!54)))

(declare-fun b!1598 () Bool)

(assert (=> b!1598 (= e!972 (concat!2 (reverse!5 (tail!237 (tail!237 (Cons!53 e3!1 (rear!51 q2!1))))) (Cons!53 (head!225 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))) Nil!54)))))

(assert (= (and d!956 c!454) b!1597))

(assert (= (and d!956 (not c!454)) b!1598))

(declare-fun m!2037 () Bool)

(assert (=> d!956 m!2037))

(declare-fun m!2039 () Bool)

(assert (=> d!956 m!2039))

(declare-fun m!2041 () Bool)

(assert (=> b!1598 m!2041))

(assert (=> b!1598 m!2041))

(declare-fun m!2043 () Bool)

(assert (=> b!1598 m!2043))

(assert (=> b!1551 d!956))

(declare-fun d!958 () Bool)

(declare-fun lt!378 () Int)

(assert (=> d!958 (>= lt!378 0)))

(declare-fun e!973 () Int)

(assert (=> d!958 (= lt!378 e!973)))

(declare-fun c!455 () Bool)

(assert (=> d!958 (= c!455 (is-Nil!54 (tail!237 (front!49 lt!322))))))

(assert (=> d!958 (= (size!23 (tail!237 (front!49 lt!322))) lt!378)))

(declare-fun b!1599 () Bool)

(assert (=> b!1599 (= e!973 0)))

(declare-fun b!1600 () Bool)

(assert (=> b!1600 (= e!973 (+ 1 (size!23 (tail!237 (tail!237 (front!49 lt!322))))))))

(assert (= (and d!958 c!455) b!1599))

(assert (= (and d!958 (not c!455)) b!1600))

(declare-fun m!2045 () Bool)

(assert (=> b!1600 m!2045))

(assert (=> b!1540 d!958))

(declare-fun d!960 () Bool)

(declare-fun lt!379 () Int)

(assert (=> d!960 (>= lt!379 0)))

(declare-fun e!974 () Int)

(assert (=> d!960 (= lt!379 e!974)))

(declare-fun c!456 () Bool)

(assert (=> d!960 (= c!456 (is-Nil!54 (front!49 lt!330)))))

(assert (=> d!960 (= (size!23 (front!49 lt!330)) lt!379)))

(declare-fun b!1601 () Bool)

(assert (=> b!1601 (= e!974 0)))

(declare-fun b!1602 () Bool)

(assert (=> b!1602 (= e!974 (+ 1 (size!23 (tail!237 (front!49 lt!330)))))))

(assert (= (and d!960 c!456) b!1601))

(assert (= (and d!960 (not c!456)) b!1602))

(declare-fun m!2047 () Bool)

(assert (=> b!1602 m!2047))

(assert (=> d!918 d!960))

(declare-fun d!962 () Bool)

(declare-fun lt!380 () Int)

(assert (=> d!962 (>= lt!380 0)))

(declare-fun e!975 () Int)

(assert (=> d!962 (= lt!380 e!975)))

(declare-fun c!457 () Bool)

(assert (=> d!962 (= c!457 (is-Nil!54 (rear!51 lt!330)))))

(assert (=> d!962 (= (size!23 (rear!51 lt!330)) lt!380)))

(declare-fun b!1603 () Bool)

(assert (=> b!1603 (= e!975 0)))

(declare-fun b!1604 () Bool)

(assert (=> b!1604 (= e!975 (+ 1 (size!23 (tail!237 (rear!51 lt!330)))))))

(assert (= (and d!962 c!457) b!1603))

(assert (= (and d!962 (not c!457)) b!1604))

(declare-fun m!2049 () Bool)

(assert (=> b!1604 m!2049))

(assert (=> d!918 d!962))

(declare-fun d!964 () Bool)

(declare-fun e!976 () Bool)

(assert (=> d!964 e!976))

(declare-fun res!803 () Bool)

(assert (=> d!964 (=> (not res!803) (not e!976))))

(declare-fun lt!381 () List!53)

(assert (=> d!964 (= res!803 (= (size!23 lt!381) (+ (size!23 (tail!237 (tail!237 (front!49 q3!1)))) (size!23 (reverse!5 (rear!51 q3!1))))))))

(declare-fun e!977 () List!53)

(assert (=> d!964 (= lt!381 e!977)))

(declare-fun c!458 () Bool)

(assert (=> d!964 (= c!458 (is-Nil!54 (tail!237 (tail!237 (front!49 q3!1)))))))

(assert (=> d!964 (= (concat!2 (tail!237 (tail!237 (front!49 q3!1))) (reverse!5 (rear!51 q3!1))) lt!381)))

(declare-fun b!1605 () Bool)

(assert (=> b!1605 (= e!977 (reverse!5 (rear!51 q3!1)))))

(declare-fun b!1606 () Bool)

(assert (=> b!1606 (= e!977 (Cons!53 (head!225 (tail!237 (tail!237 (front!49 q3!1)))) (concat!2 (tail!237 (tail!237 (tail!237 (front!49 q3!1)))) (reverse!5 (rear!51 q3!1)))))))

(declare-fun b!1607 () Bool)

(assert (=> b!1607 (= e!976 (= (content!22 lt!381) (union (content!22 (tail!237 (tail!237 (front!49 q3!1)))) (content!22 (reverse!5 (rear!51 q3!1))))))))

(assert (= (and d!964 c!458) b!1605))

(assert (= (and d!964 (not c!458)) b!1606))

(assert (= (and d!964 res!803) b!1607))

(declare-fun m!2051 () Bool)

(assert (=> d!964 m!2051))

(assert (=> d!964 m!1969))

(assert (=> d!964 m!1795))

(assert (=> d!964 m!1899))

(assert (=> b!1606 m!1795))

(declare-fun m!2053 () Bool)

(assert (=> b!1606 m!2053))

(declare-fun m!2055 () Bool)

(assert (=> b!1607 m!2055))

(assert (=> b!1607 m!2007))

(assert (=> b!1607 m!1795))

(assert (=> b!1607 m!1907))

(assert (=> b!1535 d!964))

(declare-fun d!966 () Bool)

(declare-fun c!459 () Bool)

(assert (=> d!966 (= c!459 (is-Nil!54 lt!365))))

(declare-fun e!978 () (Set (_ BitVec 32)))

(assert (=> d!966 (= (content!22 lt!365) e!978)))

(declare-fun b!1608 () Bool)

(assert (=> b!1608 (= e!978 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1609 () Bool)

(assert (=> b!1609 (= e!978 (union (insert (head!225 lt!365) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 lt!365))))))

(assert (= (and d!966 c!459) b!1608))

(assert (= (and d!966 (not c!459)) b!1609))

(declare-fun m!2057 () Bool)

(assert (=> b!1609 m!2057))

(declare-fun m!2059 () Bool)

(assert (=> b!1609 m!2059))

(assert (=> d!916 d!966))

(declare-fun d!968 () Bool)

(declare-fun c!460 () Bool)

(assert (=> d!968 (= c!460 (is-Nil!54 (Cons!53 e1!2 (rear!51 queue!56))))))

(declare-fun e!979 () (Set (_ BitVec 32)))

(assert (=> d!968 (= (content!22 (Cons!53 e1!2 (rear!51 queue!56))) e!979)))

(declare-fun b!1610 () Bool)

(assert (=> b!1610 (= e!979 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1611 () Bool)

(assert (=> b!1611 (= e!979 (union (insert (head!225 (Cons!53 e1!2 (rear!51 queue!56))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (Cons!53 e1!2 (rear!51 queue!56))))))))

(assert (= (and d!968 c!460) b!1610))

(assert (= (and d!968 (not c!460)) b!1611))

(declare-fun m!2061 () Bool)

(assert (=> b!1611 m!2061))

(declare-fun m!2063 () Bool)

(assert (=> b!1611 m!2063))

(assert (=> d!916 d!968))

(declare-fun d!970 () Bool)

(declare-fun lt!382 () Int)

(assert (=> d!970 (>= lt!382 0)))

(declare-fun e!980 () Int)

(assert (=> d!970 (= lt!382 e!980)))

(declare-fun c!461 () Bool)

(assert (=> d!970 (= c!461 (is-Nil!54 (front!49 lt!331)))))

(assert (=> d!970 (= (size!23 (front!49 lt!331)) lt!382)))

(declare-fun b!1612 () Bool)

(assert (=> b!1612 (= e!980 0)))

(declare-fun b!1613 () Bool)

(assert (=> b!1613 (= e!980 (+ 1 (size!23 (tail!237 (front!49 lt!331)))))))

(assert (= (and d!970 c!461) b!1612))

(assert (= (and d!970 (not c!461)) b!1613))

(declare-fun m!2065 () Bool)

(assert (=> b!1613 m!2065))

(assert (=> d!870 d!970))

(declare-fun d!972 () Bool)

(declare-fun lt!383 () Int)

(assert (=> d!972 (>= lt!383 0)))

(declare-fun e!981 () Int)

(assert (=> d!972 (= lt!383 e!981)))

(declare-fun c!462 () Bool)

(assert (=> d!972 (= c!462 (is-Nil!54 (rear!51 lt!331)))))

(assert (=> d!972 (= (size!23 (rear!51 lt!331)) lt!383)))

(declare-fun b!1614 () Bool)

(assert (=> b!1614 (= e!981 0)))

(declare-fun b!1615 () Bool)

(assert (=> b!1615 (= e!981 (+ 1 (size!23 (tail!237 (rear!51 lt!331)))))))

(assert (= (and d!972 c!462) b!1614))

(assert (= (and d!972 (not c!462)) b!1615))

(declare-fun m!2067 () Bool)

(assert (=> b!1615 m!2067))

(assert (=> d!870 d!972))

(declare-fun d!974 () Bool)

(declare-fun lt!384 () Int)

(assert (=> d!974 (>= lt!384 0)))

(declare-fun e!982 () Int)

(assert (=> d!974 (= lt!384 e!982)))

(declare-fun c!463 () Bool)

(assert (=> d!974 (= c!463 (is-Nil!54 (tail!237 (front!49 lt!327))))))

(assert (=> d!974 (= (size!23 (tail!237 (front!49 lt!327))) lt!384)))

(declare-fun b!1616 () Bool)

(assert (=> b!1616 (= e!982 0)))

(declare-fun b!1617 () Bool)

(assert (=> b!1617 (= e!982 (+ 1 (size!23 (tail!237 (tail!237 (front!49 lt!327))))))))

(assert (= (and d!974 c!463) b!1616))

(assert (= (and d!974 (not c!463)) b!1617))

(declare-fun m!2069 () Bool)

(assert (=> b!1617 m!2069))

(assert (=> b!1519 d!974))

(declare-fun d!976 () Bool)

(declare-fun lt!385 () Int)

(assert (=> d!976 (>= lt!385 0)))

(declare-fun e!983 () Int)

(assert (=> d!976 (= lt!385 e!983)))

(declare-fun c!464 () Bool)

(assert (=> d!976 (= c!464 (is-Nil!54 (tail!237 (rear!51 lt!322))))))

(assert (=> d!976 (= (size!23 (tail!237 (rear!51 lt!322))) lt!385)))

(declare-fun b!1618 () Bool)

(assert (=> b!1618 (= e!983 0)))

(declare-fun b!1619 () Bool)

(assert (=> b!1619 (= e!983 (+ 1 (size!23 (tail!237 (tail!237 (rear!51 lt!322))))))))

(assert (= (and d!976 c!464) b!1618))

(assert (= (and d!976 (not c!464)) b!1619))

(declare-fun m!2071 () Bool)

(assert (=> b!1619 m!2071))

(assert (=> b!1542 d!976))

(declare-fun d!978 () Bool)

(declare-fun lt!386 () Int)

(assert (=> d!978 (>= lt!386 0)))

(declare-fun e!984 () Int)

(assert (=> d!978 (= lt!386 e!984)))

(declare-fun c!465 () Bool)

(assert (=> d!978 (= c!465 (is-Nil!54 (tail!237 (front!49 q1!1))))))

(assert (=> d!978 (= (size!23 (tail!237 (front!49 q1!1))) lt!386)))

(declare-fun b!1620 () Bool)

(assert (=> b!1620 (= e!984 0)))

(declare-fun b!1621 () Bool)

(assert (=> b!1621 (= e!984 (+ 1 (size!23 (tail!237 (tail!237 (front!49 q1!1))))))))

(assert (= (and d!978 c!465) b!1620))

(assert (= (and d!978 (not c!465)) b!1621))

(declare-fun m!2073 () Bool)

(assert (=> b!1621 m!2073))

(assert (=> b!1502 d!978))

(declare-fun d!980 () Bool)

(declare-fun lt!387 () Int)

(assert (=> d!980 (>= lt!387 0)))

(declare-fun e!985 () Int)

(assert (=> d!980 (= lt!387 e!985)))

(declare-fun c!466 () Bool)

(assert (=> d!980 (= c!466 (is-Nil!54 (tail!237 (front!49 lt!323))))))

(assert (=> d!980 (= (size!23 (tail!237 (front!49 lt!323))) lt!387)))

(declare-fun b!1622 () Bool)

(assert (=> b!1622 (= e!985 0)))

(declare-fun b!1623 () Bool)

(assert (=> b!1623 (= e!985 (+ 1 (size!23 (tail!237 (tail!237 (front!49 lt!323))))))))

(assert (= (and d!980 c!466) b!1622))

(assert (= (and d!980 (not c!466)) b!1623))

(declare-fun m!2075 () Bool)

(assert (=> b!1623 m!2075))

(assert (=> b!1544 d!980))

(declare-fun d!982 () Bool)

(declare-fun lt!388 () Int)

(assert (=> d!982 (>= lt!388 0)))

(declare-fun e!986 () Int)

(assert (=> d!982 (= lt!388 e!986)))

(declare-fun c!467 () Bool)

(assert (=> d!982 (= c!467 (is-Nil!54 (tail!237 (tail!237 (rear!51 queue!71)))))))

(assert (=> d!982 (= (size!23 (tail!237 (tail!237 (rear!51 queue!71)))) lt!388)))

(declare-fun b!1624 () Bool)

(assert (=> b!1624 (= e!986 0)))

(declare-fun b!1625 () Bool)

(assert (=> b!1625 (= e!986 (+ 1 (size!23 (tail!237 (tail!237 (tail!237 (rear!51 queue!71)))))))))

(assert (= (and d!982 c!467) b!1624))

(assert (= (and d!982 (not c!467)) b!1625))

(declare-fun m!2077 () Bool)

(assert (=> b!1625 m!2077))

(assert (=> b!1496 d!982))

(declare-fun d!984 () Bool)

(declare-fun lt!389 () Int)

(assert (=> d!984 (>= lt!389 0)))

(declare-fun e!987 () Int)

(assert (=> d!984 (= lt!389 e!987)))

(declare-fun c!468 () Bool)

(assert (=> d!984 (= c!468 (is-Nil!54 (tail!237 (tail!237 (front!49 queue!71)))))))

(assert (=> d!984 (= (size!23 (tail!237 (tail!237 (front!49 queue!71)))) lt!389)))

(declare-fun b!1626 () Bool)

(assert (=> b!1626 (= e!987 0)))

(declare-fun b!1627 () Bool)

(assert (=> b!1627 (= e!987 (+ 1 (size!23 (tail!237 (tail!237 (tail!237 (front!49 queue!71)))))))))

(assert (= (and d!984 c!468) b!1626))

(assert (= (and d!984 (not c!468)) b!1627))

(declare-fun m!2079 () Bool)

(assert (=> b!1627 m!2079))

(assert (=> b!1498 d!984))

(declare-fun d!986 () Bool)

(declare-fun c!469 () Bool)

(assert (=> d!986 (= c!469 (is-Nil!54 lt!347))))

(declare-fun e!988 () (Set (_ BitVec 32)))

(assert (=> d!986 (= (content!22 lt!347) e!988)))

(declare-fun b!1628 () Bool)

(assert (=> b!1628 (= e!988 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1629 () Bool)

(assert (=> b!1629 (= e!988 (union (insert (head!225 lt!347) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 lt!347))))))

(assert (= (and d!986 c!469) b!1628))

(assert (= (and d!986 (not c!469)) b!1629))

(declare-fun m!2081 () Bool)

(assert (=> b!1629 m!2081))

(declare-fun m!2083 () Bool)

(assert (=> b!1629 m!2083))

(assert (=> d!878 d!986))

(declare-fun d!988 () Bool)

(declare-fun c!470 () Bool)

(assert (=> d!988 (= c!470 (is-Nil!54 (Cons!53 e2!3 (rear!51 q1!1))))))

(declare-fun e!989 () (Set (_ BitVec 32)))

(assert (=> d!988 (= (content!22 (Cons!53 e2!3 (rear!51 q1!1))) e!989)))

(declare-fun b!1630 () Bool)

(assert (=> b!1630 (= e!989 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1631 () Bool)

(assert (=> b!1631 (= e!989 (union (insert (head!225 (Cons!53 e2!3 (rear!51 q1!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (Cons!53 e2!3 (rear!51 q1!1))))))))

(assert (= (and d!988 c!470) b!1630))

(assert (= (and d!988 (not c!470)) b!1631))

(declare-fun m!2085 () Bool)

(assert (=> b!1631 m!2085))

(declare-fun m!2087 () Bool)

(assert (=> b!1631 m!2087))

(assert (=> d!878 d!988))

(declare-fun d!990 () Bool)

(declare-fun lt!390 () Int)

(assert (=> d!990 (>= lt!390 0)))

(declare-fun e!990 () Int)

(assert (=> d!990 (= lt!390 e!990)))

(declare-fun c!471 () Bool)

(assert (=> d!990 (= c!471 (is-Nil!54 (tail!237 (rear!51 lt!327))))))

(assert (=> d!990 (= (size!23 (tail!237 (rear!51 lt!327))) lt!390)))

(declare-fun b!1632 () Bool)

(assert (=> b!1632 (= e!990 0)))

(declare-fun b!1633 () Bool)

(assert (=> b!1633 (= e!990 (+ 1 (size!23 (tail!237 (tail!237 (rear!51 lt!327))))))))

(assert (= (and d!990 c!471) b!1632))

(assert (= (and d!990 (not c!471)) b!1633))

(declare-fun m!2089 () Bool)

(assert (=> b!1633 m!2089))

(assert (=> b!1521 d!990))

(declare-fun d!992 () Bool)

(declare-fun lt!391 () Int)

(assert (=> d!992 (>= lt!391 0)))

(declare-fun e!991 () Int)

(assert (=> d!992 (= lt!391 e!991)))

(declare-fun c!472 () Bool)

(assert (=> d!992 (= c!472 (is-Nil!54 (tail!237 (front!49 queue!56))))))

(assert (=> d!992 (= (size!23 (tail!237 (front!49 queue!56))) lt!391)))

(declare-fun b!1634 () Bool)

(assert (=> b!1634 (= e!991 0)))

(declare-fun b!1635 () Bool)

(assert (=> b!1635 (= e!991 (+ 1 (size!23 (tail!237 (tail!237 (front!49 queue!56))))))))

(assert (= (and d!992 c!472) b!1634))

(assert (= (and d!992 (not c!472)) b!1635))

(declare-fun m!2091 () Bool)

(assert (=> b!1635 m!2091))

(assert (=> b!1562 d!992))

(declare-fun d!994 () Bool)

(declare-fun lt!392 () Int)

(assert (=> d!994 (>= lt!392 0)))

(declare-fun e!992 () Int)

(assert (=> d!994 (= lt!392 e!992)))

(declare-fun c!473 () Bool)

(assert (=> d!994 (= c!473 (is-Nil!54 (tail!237 (rear!51 lt!323))))))

(assert (=> d!994 (= (size!23 (tail!237 (rear!51 lt!323))) lt!392)))

(declare-fun b!1636 () Bool)

(assert (=> b!1636 (= e!992 0)))

(declare-fun b!1637 () Bool)

(assert (=> b!1637 (= e!992 (+ 1 (size!23 (tail!237 (tail!237 (rear!51 lt!323))))))))

(assert (= (and d!994 c!473) b!1636))

(assert (= (and d!994 (not c!473)) b!1637))

(declare-fun m!2093 () Bool)

(assert (=> b!1637 m!2093))

(assert (=> b!1546 d!994))

(assert (=> b!1527 d!920))

(declare-fun d!996 () Bool)

(declare-fun c!474 () Bool)

(assert (=> d!996 (= c!474 (is-Nil!54 lt!362))))

(declare-fun e!993 () (Set (_ BitVec 32)))

(assert (=> d!996 (= (content!22 lt!362) e!993)))

(declare-fun b!1638 () Bool)

(assert (=> b!1638 (= e!993 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1639 () Bool)

(assert (=> b!1639 (= e!993 (union (insert (head!225 lt!362) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 lt!362))))))

(assert (= (and d!996 c!474) b!1638))

(assert (= (and d!996 (not c!474)) b!1639))

(declare-fun m!2095 () Bool)

(assert (=> b!1639 m!2095))

(declare-fun m!2097 () Bool)

(assert (=> b!1639 m!2097))

(assert (=> b!1549 d!996))

(declare-fun d!998 () Bool)

(declare-fun c!475 () Bool)

(assert (=> d!998 (= c!475 (is-Nil!54 (front!49 q2!1)))))

(declare-fun e!994 () (Set (_ BitVec 32)))

(assert (=> d!998 (= (content!22 (front!49 q2!1)) e!994)))

(declare-fun b!1640 () Bool)

(assert (=> b!1640 (= e!994 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1641 () Bool)

(assert (=> b!1641 (= e!994 (union (insert (head!225 (front!49 q2!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (front!49 q2!1)))))))

(assert (= (and d!998 c!475) b!1640))

(assert (= (and d!998 (not c!475)) b!1641))

(declare-fun m!2099 () Bool)

(assert (=> b!1641 m!2099))

(declare-fun m!2101 () Bool)

(assert (=> b!1641 m!2101))

(assert (=> b!1549 d!998))

(declare-fun d!1000 () Bool)

(declare-fun c!476 () Bool)

(assert (=> d!1000 (= c!476 (is-Nil!54 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))))))

(declare-fun e!995 () (Set (_ BitVec 32)))

(assert (=> d!1000 (= (content!22 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))) e!995)))

(declare-fun b!1642 () Bool)

(assert (=> b!1642 (= e!995 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1643 () Bool)

(assert (=> b!1643 (= e!995 (union (insert (head!225 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))))))))

(assert (= (and d!1000 c!476) b!1642))

(assert (= (and d!1000 (not c!476)) b!1643))

(declare-fun m!2103 () Bool)

(assert (=> b!1643 m!2103))

(declare-fun m!2105 () Bool)

(assert (=> b!1643 m!2105))

(assert (=> b!1549 d!1000))

(declare-fun d!1002 () Bool)

(declare-fun lt!393 () Int)

(assert (=> d!1002 (>= lt!393 0)))

(declare-fun e!996 () Int)

(assert (=> d!1002 (= lt!393 e!996)))

(declare-fun c!477 () Bool)

(assert (=> d!1002 (= c!477 (is-Nil!54 lt!362))))

(assert (=> d!1002 (= (size!23 lt!362) lt!393)))

(declare-fun b!1644 () Bool)

(assert (=> b!1644 (= e!996 0)))

(declare-fun b!1645 () Bool)

(assert (=> b!1645 (= e!996 (+ 1 (size!23 (tail!237 lt!362))))))

(assert (= (and d!1002 c!477) b!1644))

(assert (= (and d!1002 (not c!477)) b!1645))

(declare-fun m!2107 () Bool)

(assert (=> b!1645 m!2107))

(assert (=> d!910 d!1002))

(assert (=> d!910 d!896))

(declare-fun d!1004 () Bool)

(declare-fun lt!394 () Int)

(assert (=> d!1004 (>= lt!394 0)))

(declare-fun e!997 () Int)

(assert (=> d!1004 (= lt!394 e!997)))

(declare-fun c!478 () Bool)

(assert (=> d!1004 (= c!478 (is-Nil!54 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))))))

(assert (=> d!1004 (= (size!23 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))) lt!394)))

(declare-fun b!1646 () Bool)

(assert (=> b!1646 (= e!997 0)))

(declare-fun b!1647 () Bool)

(assert (=> b!1647 (= e!997 (+ 1 (size!23 (tail!237 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))))))))

(assert (= (and d!1004 c!478) b!1646))

(assert (= (and d!1004 (not c!478)) b!1647))

(declare-fun m!2109 () Bool)

(assert (=> b!1647 m!2109))

(assert (=> d!910 d!1004))

(declare-fun d!1006 () Bool)

(declare-fun lt!395 () Int)

(assert (=> d!1006 (>= lt!395 0)))

(declare-fun e!998 () Int)

(assert (=> d!1006 (= lt!395 e!998)))

(declare-fun c!479 () Bool)

(assert (=> d!1006 (= c!479 (is-Nil!54 (tail!237 (front!49 lt!324))))))

(assert (=> d!1006 (= (size!23 (tail!237 (front!49 lt!324))) lt!395)))

(declare-fun b!1648 () Bool)

(assert (=> b!1648 (= e!998 0)))

(declare-fun b!1649 () Bool)

(assert (=> b!1649 (= e!998 (+ 1 (size!23 (tail!237 (tail!237 (front!49 lt!324))))))))

(assert (= (and d!1006 c!479) b!1648))

(assert (= (and d!1006 (not c!479)) b!1649))

(declare-fun m!2111 () Bool)

(assert (=> b!1649 m!2111))

(assert (=> b!1523 d!1006))

(declare-fun d!1008 () Bool)

(declare-fun lt!396 () Int)

(assert (=> d!1008 (>= lt!396 0)))

(declare-fun e!999 () Int)

(assert (=> d!1008 (= lt!396 e!999)))

(declare-fun c!480 () Bool)

(assert (=> d!1008 (= c!480 (is-Nil!54 (tail!237 (rear!51 lt!324))))))

(assert (=> d!1008 (= (size!23 (tail!237 (rear!51 lt!324))) lt!396)))

(declare-fun b!1650 () Bool)

(assert (=> b!1650 (= e!999 0)))

(declare-fun b!1651 () Bool)

(assert (=> b!1651 (= e!999 (+ 1 (size!23 (tail!237 (tail!237 (rear!51 lt!324))))))))

(assert (= (and d!1008 c!480) b!1650))

(assert (= (and d!1008 (not c!480)) b!1651))

(declare-fun m!2113 () Bool)

(assert (=> b!1651 m!2113))

(assert (=> b!1525 d!1008))

(declare-fun d!1010 () Bool)

(declare-fun lt!397 () Int)

(assert (=> d!1010 (>= lt!397 0)))

(declare-fun e!1000 () Int)

(assert (=> d!1010 (= lt!397 e!1000)))

(declare-fun c!481 () Bool)

(assert (=> d!1010 (= c!481 (is-Nil!54 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))))))

(assert (=> d!1010 (= (size!23 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))) lt!397)))

(declare-fun b!1652 () Bool)

(assert (=> b!1652 (= e!1000 0)))

(declare-fun b!1653 () Bool)

(assert (=> b!1653 (= e!1000 (+ 1 (size!23 (tail!237 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))))))))

(assert (= (and d!1010 c!481) b!1652))

(assert (= (and d!1010 (not c!481)) b!1653))

(declare-fun m!2115 () Bool)

(assert (=> b!1653 m!2115))

(assert (=> b!1560 d!1010))

(declare-fun d!1012 () Bool)

(declare-fun lt!398 () Int)

(assert (=> d!1012 (>= lt!398 0)))

(declare-fun e!1001 () Int)

(assert (=> d!1012 (= lt!398 e!1001)))

(declare-fun c!482 () Bool)

(assert (=> d!1012 (= c!482 (is-Nil!54 (front!49 lt!337)))))

(assert (=> d!1012 (= (size!23 (front!49 lt!337)) lt!398)))

(declare-fun b!1654 () Bool)

(assert (=> b!1654 (= e!1001 0)))

(declare-fun b!1655 () Bool)

(assert (=> b!1655 (= e!1001 (+ 1 (size!23 (tail!237 (front!49 lt!337)))))))

(assert (= (and d!1012 c!482) b!1654))

(assert (= (and d!1012 (not c!482)) b!1655))

(declare-fun m!2117 () Bool)

(assert (=> b!1655 m!2117))

(assert (=> d!922 d!1012))

(declare-fun d!1014 () Bool)

(declare-fun lt!399 () Int)

(assert (=> d!1014 (>= lt!399 0)))

(declare-fun e!1002 () Int)

(assert (=> d!1014 (= lt!399 e!1002)))

(declare-fun c!483 () Bool)

(assert (=> d!1014 (= c!483 (is-Nil!54 (rear!51 lt!337)))))

(assert (=> d!1014 (= (size!23 (rear!51 lt!337)) lt!399)))

(declare-fun b!1656 () Bool)

(assert (=> b!1656 (= e!1002 0)))

(declare-fun b!1657 () Bool)

(assert (=> b!1657 (= e!1002 (+ 1 (size!23 (tail!237 (rear!51 lt!337)))))))

(assert (= (and d!1014 c!483) b!1656))

(assert (= (and d!1014 (not c!483)) b!1657))

(declare-fun m!2119 () Bool)

(assert (=> b!1657 m!2119))

(assert (=> d!922 d!1014))

(declare-fun d!1016 () Bool)

(declare-fun e!1003 () Bool)

(assert (=> d!1016 e!1003))

(declare-fun res!804 () Bool)

(assert (=> d!1016 (=> (not res!804) (not e!1003))))

(declare-fun lt!400 () List!53)

(assert (=> d!1016 (= res!804 (= (size!23 lt!400) (+ (size!23 (reverse!5 (tail!237 (Cons!53 e1!2 (rear!51 queue!56))))) (size!23 (Cons!53 (head!225 (Cons!53 e1!2 (rear!51 queue!56))) Nil!54)))))))

(declare-fun e!1004 () List!53)

(assert (=> d!1016 (= lt!400 e!1004)))

(declare-fun c!484 () Bool)

(assert (=> d!1016 (= c!484 (is-Nil!54 (reverse!5 (tail!237 (Cons!53 e1!2 (rear!51 queue!56))))))))

(assert (=> d!1016 (= (concat!2 (reverse!5 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))) (Cons!53 (head!225 (Cons!53 e1!2 (rear!51 queue!56))) Nil!54)) lt!400)))

(declare-fun b!1658 () Bool)

(assert (=> b!1658 (= e!1004 (Cons!53 (head!225 (Cons!53 e1!2 (rear!51 queue!56))) Nil!54))))

(declare-fun b!1659 () Bool)

(assert (=> b!1659 (= e!1004 (Cons!53 (head!225 (reverse!5 (tail!237 (Cons!53 e1!2 (rear!51 queue!56))))) (concat!2 (tail!237 (reverse!5 (tail!237 (Cons!53 e1!2 (rear!51 queue!56))))) (Cons!53 (head!225 (Cons!53 e1!2 (rear!51 queue!56))) Nil!54))))))

(declare-fun b!1660 () Bool)

(assert (=> b!1660 (= e!1003 (= (content!22 lt!400) (union (content!22 (reverse!5 (tail!237 (Cons!53 e1!2 (rear!51 queue!56))))) (content!22 (Cons!53 (head!225 (Cons!53 e1!2 (rear!51 queue!56))) Nil!54)))))))

(assert (= (and d!1016 c!484) b!1658))

(assert (= (and d!1016 (not c!484)) b!1659))

(assert (= (and d!1016 res!804) b!1660))

(declare-fun m!2121 () Bool)

(assert (=> d!1016 m!2121))

(assert (=> d!1016 m!1961))

(declare-fun m!2123 () Bool)

(assert (=> d!1016 m!2123))

(declare-fun m!2125 () Bool)

(assert (=> d!1016 m!2125))

(declare-fun m!2127 () Bool)

(assert (=> b!1659 m!2127))

(declare-fun m!2129 () Bool)

(assert (=> b!1660 m!2129))

(assert (=> b!1660 m!1961))

(declare-fun m!2131 () Bool)

(assert (=> b!1660 m!2131))

(declare-fun m!2133 () Bool)

(assert (=> b!1660 m!2133))

(assert (=> b!1556 d!1016))

(declare-fun d!1018 () Bool)

(declare-fun lt!401 () List!53)

(assert (=> d!1018 (= (content!22 lt!401) (content!22 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))))))

(declare-fun e!1005 () List!53)

(assert (=> d!1018 (= lt!401 e!1005)))

(declare-fun c!485 () Bool)

(assert (=> d!1018 (= c!485 (is-Nil!54 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))))))

(assert (=> d!1018 (= (reverse!5 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))) lt!401)))

(declare-fun b!1661 () Bool)

(assert (=> b!1661 (= e!1005 Nil!54)))

(declare-fun b!1662 () Bool)

(assert (=> b!1662 (= e!1005 (concat!2 (reverse!5 (tail!237 (tail!237 (Cons!53 e1!2 (rear!51 queue!56))))) (Cons!53 (head!225 (tail!237 (Cons!53 e1!2 (rear!51 queue!56)))) Nil!54)))))

(assert (= (and d!1018 c!485) b!1661))

(assert (= (and d!1018 (not c!485)) b!1662))

(declare-fun m!2135 () Bool)

(assert (=> d!1018 m!2135))

(assert (=> d!1018 m!2063))

(declare-fun m!2137 () Bool)

(assert (=> b!1662 m!2137))

(assert (=> b!1662 m!2137))

(declare-fun m!2139 () Bool)

(assert (=> b!1662 m!2139))

(assert (=> b!1556 d!1018))

(declare-fun d!1020 () Bool)

(declare-fun lt!402 () Int)

(assert (=> d!1020 (>= lt!402 0)))

(declare-fun e!1006 () Int)

(assert (=> d!1020 (= lt!402 e!1006)))

(declare-fun c!486 () Bool)

(assert (=> d!1020 (= c!486 (is-Nil!54 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))))))

(assert (=> d!1020 (= (size!23 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))) lt!402)))

(declare-fun b!1663 () Bool)

(assert (=> b!1663 (= e!1006 0)))

(declare-fun b!1664 () Bool)

(assert (=> b!1664 (= e!1006 (+ 1 (size!23 (tail!237 (tail!237 (Cons!53 e3!1 (rear!51 q2!1)))))))))

(assert (= (and d!1020 c!486) b!1663))

(assert (= (and d!1020 (not c!486)) b!1664))

(declare-fun m!2141 () Bool)

(assert (=> b!1664 m!2141))

(assert (=> b!1531 d!1020))

(declare-fun d!1022 () Bool)

(declare-fun e!1007 () Bool)

(assert (=> d!1022 e!1007))

(declare-fun res!805 () Bool)

(assert (=> d!1022 (=> (not res!805) (not e!1007))))

(declare-fun lt!403 () List!53)

(assert (=> d!1022 (= res!805 (= (size!23 lt!403) (+ (size!23 (tail!237 (front!49 q2!1))) (size!23 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))))))))

(declare-fun e!1008 () List!53)

(assert (=> d!1022 (= lt!403 e!1008)))

(declare-fun c!487 () Bool)

(assert (=> d!1022 (= c!487 (is-Nil!54 (tail!237 (front!49 q2!1))))))

(assert (=> d!1022 (= (concat!2 (tail!237 (front!49 q2!1)) (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))) lt!403)))

(declare-fun b!1665 () Bool)

(assert (=> b!1665 (= e!1008 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1))))))

(declare-fun b!1666 () Bool)

(assert (=> b!1666 (= e!1008 (Cons!53 (head!225 (tail!237 (front!49 q2!1))) (concat!2 (tail!237 (tail!237 (front!49 q2!1))) (reverse!5 (Cons!53 e3!1 (rear!51 q2!1))))))))

(declare-fun b!1667 () Bool)

(assert (=> b!1667 (= e!1007 (= (content!22 lt!403) (union (content!22 (tail!237 (front!49 q2!1))) (content!22 (reverse!5 (Cons!53 e3!1 (rear!51 q2!1)))))))))

(assert (= (and d!1022 c!487) b!1665))

(assert (= (and d!1022 (not c!487)) b!1666))

(assert (= (and d!1022 res!805) b!1667))

(declare-fun m!2143 () Bool)

(assert (=> d!1022 m!2143))

(assert (=> d!1022 m!1895))

(assert (=> d!1022 m!1829))

(assert (=> d!1022 m!1927))

(assert (=> b!1666 m!1829))

(declare-fun m!2145 () Bool)

(assert (=> b!1666 m!2145))

(declare-fun m!2147 () Bool)

(assert (=> b!1667 m!2147))

(assert (=> b!1667 m!2101))

(assert (=> b!1667 m!1829))

(assert (=> b!1667 m!1935))

(assert (=> b!1548 d!1022))

(declare-fun d!1024 () Bool)

(declare-fun e!1009 () Bool)

(assert (=> d!1024 e!1009))

(declare-fun res!806 () Bool)

(assert (=> d!1024 (=> (not res!806) (not e!1009))))

(declare-fun lt!404 () List!53)

(assert (=> d!1024 (= res!806 (= (size!23 lt!404) (+ (size!23 (tail!237 (front!49 queue!56))) (size!23 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))))))))

(declare-fun e!1010 () List!53)

(assert (=> d!1024 (= lt!404 e!1010)))

(declare-fun c!488 () Bool)

(assert (=> d!1024 (= c!488 (is-Nil!54 (tail!237 (front!49 queue!56))))))

(assert (=> d!1024 (= (concat!2 (tail!237 (front!49 queue!56)) (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))) lt!404)))

(declare-fun b!1668 () Bool)

(assert (=> b!1668 (= e!1010 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56))))))

(declare-fun b!1669 () Bool)

(assert (=> b!1669 (= e!1010 (Cons!53 (head!225 (tail!237 (front!49 queue!56))) (concat!2 (tail!237 (tail!237 (front!49 queue!56))) (reverse!5 (Cons!53 e1!2 (rear!51 queue!56))))))))

(declare-fun b!1670 () Bool)

(assert (=> b!1670 (= e!1009 (= (content!22 lt!404) (union (content!22 (tail!237 (front!49 queue!56))) (content!22 (reverse!5 (Cons!53 e1!2 (rear!51 queue!56)))))))))

(assert (= (and d!1024 c!488) b!1668))

(assert (= (and d!1024 (not c!488)) b!1669))

(assert (= (and d!1024 res!806) b!1670))

(declare-fun m!2149 () Bool)

(assert (=> d!1024 m!2149))

(assert (=> d!1024 m!1977))

(assert (=> d!1024 m!1843))

(assert (=> d!1024 m!1947))

(assert (=> b!1669 m!1843))

(declare-fun m!2151 () Bool)

(assert (=> b!1669 m!2151))

(declare-fun m!2153 () Bool)

(assert (=> b!1670 m!2153))

(assert (=> b!1670 m!1985))

(assert (=> b!1670 m!1843))

(assert (=> b!1670 m!1955))

(assert (=> b!1553 d!1024))

(declare-fun d!1026 () Bool)

(declare-fun lt!405 () Int)

(assert (=> d!1026 (>= lt!405 0)))

(declare-fun e!1011 () Int)

(assert (=> d!1026 (= lt!405 e!1011)))

(declare-fun c!489 () Bool)

(assert (=> d!1026 (= c!489 (is-Nil!54 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))))))

(assert (=> d!1026 (= (size!23 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))) lt!405)))

(declare-fun b!1671 () Bool)

(assert (=> b!1671 (= e!1011 0)))

(declare-fun b!1672 () Bool)

(assert (=> b!1672 (= e!1011 (+ 1 (size!23 (tail!237 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))))))))

(assert (= (and d!1026 c!489) b!1671))

(assert (= (and d!1026 (not c!489)) b!1672))

(declare-fun m!2155 () Bool)

(assert (=> b!1672 m!2155))

(assert (=> b!1500 d!1026))

(declare-fun d!1028 () Bool)

(declare-fun lt!406 () Int)

(assert (=> d!1028 (>= lt!406 0)))

(declare-fun e!1012 () Int)

(assert (=> d!1028 (= lt!406 e!1012)))

(declare-fun c!490 () Bool)

(assert (=> d!1028 (= c!490 (is-Nil!54 (tail!237 (rear!51 q3!1))))))

(assert (=> d!1028 (= (size!23 (tail!237 (rear!51 q3!1))) lt!406)))

(declare-fun b!1673 () Bool)

(assert (=> b!1673 (= e!1012 0)))

(declare-fun b!1674 () Bool)

(assert (=> b!1674 (= e!1012 (+ 1 (size!23 (tail!237 (tail!237 (rear!51 q3!1))))))))

(assert (= (and d!1028 c!490) b!1673))

(assert (= (and d!1028 (not c!490)) b!1674))

(declare-fun m!2157 () Bool)

(assert (=> b!1674 m!2157))

(assert (=> b!1529 d!1028))

(declare-fun d!1030 () Bool)

(declare-fun lt!407 () Int)

(assert (=> d!1030 (>= lt!407 0)))

(declare-fun e!1013 () Int)

(assert (=> d!1030 (= lt!407 e!1013)))

(declare-fun c!491 () Bool)

(assert (=> d!1030 (= c!491 (is-Nil!54 lt!356))))

(assert (=> d!1030 (= (size!23 lt!356) lt!407)))

(declare-fun b!1675 () Bool)

(assert (=> b!1675 (= e!1013 0)))

(declare-fun b!1676 () Bool)

(assert (=> b!1676 (= e!1013 (+ 1 (size!23 (tail!237 lt!356))))))

(assert (= (and d!1030 c!491) b!1675))

(assert (= (and d!1030 (not c!491)) b!1676))

(declare-fun m!2159 () Bool)

(assert (=> b!1676 m!2159))

(assert (=> d!898 d!1030))

(assert (=> d!898 d!920))

(declare-fun d!1032 () Bool)

(declare-fun lt!408 () Int)

(assert (=> d!1032 (>= lt!408 0)))

(declare-fun e!1014 () Int)

(assert (=> d!1032 (= lt!408 e!1014)))

(declare-fun c!492 () Bool)

(assert (=> d!1032 (= c!492 (is-Nil!54 (reverse!5 (rear!51 q3!1))))))

(assert (=> d!1032 (= (size!23 (reverse!5 (rear!51 q3!1))) lt!408)))

(declare-fun b!1677 () Bool)

(assert (=> b!1677 (= e!1014 0)))

(declare-fun b!1678 () Bool)

(assert (=> b!1678 (= e!1014 (+ 1 (size!23 (tail!237 (reverse!5 (rear!51 q3!1))))))))

(assert (= (and d!1032 c!492) b!1677))

(assert (= (and d!1032 (not c!492)) b!1678))

(declare-fun m!2161 () Bool)

(assert (=> b!1678 m!2161))

(assert (=> d!898 d!1032))

(declare-fun d!1034 () Bool)

(declare-fun c!493 () Bool)

(assert (=> d!1034 (= c!493 (is-Nil!54 lt!357))))

(declare-fun e!1015 () (Set (_ BitVec 32)))

(assert (=> d!1034 (= (content!22 lt!357) e!1015)))

(declare-fun b!1679 () Bool)

(assert (=> b!1679 (= e!1015 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1680 () Bool)

(assert (=> b!1680 (= e!1015 (union (insert (head!225 lt!357) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 lt!357))))))

(assert (= (and d!1034 c!493) b!1679))

(assert (= (and d!1034 (not c!493)) b!1680))

(declare-fun m!2163 () Bool)

(assert (=> b!1680 m!2163))

(declare-fun m!2165 () Bool)

(assert (=> b!1680 m!2165))

(assert (=> d!900 d!1034))

(declare-fun d!1036 () Bool)

(declare-fun c!494 () Bool)

(assert (=> d!1036 (= c!494 (is-Nil!54 (rear!51 q3!1)))))

(declare-fun e!1016 () (Set (_ BitVec 32)))

(assert (=> d!1036 (= (content!22 (rear!51 q3!1)) e!1016)))

(declare-fun b!1681 () Bool)

(assert (=> b!1681 (= e!1016 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1682 () Bool)

(assert (=> b!1682 (= e!1016 (union (insert (head!225 (rear!51 q3!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (rear!51 q3!1)))))))

(assert (= (and d!1036 c!494) b!1681))

(assert (= (and d!1036 (not c!494)) b!1682))

(declare-fun m!2167 () Bool)

(assert (=> b!1682 m!2167))

(declare-fun m!2169 () Bool)

(assert (=> b!1682 m!2169))

(assert (=> d!900 d!1036))

(declare-fun d!1038 () Bool)

(declare-fun lt!409 () Int)

(assert (=> d!1038 (>= lt!409 0)))

(declare-fun e!1017 () Int)

(assert (=> d!1038 (= lt!409 e!1017)))

(declare-fun c!495 () Bool)

(assert (=> d!1038 (= c!495 (is-Nil!54 lt!344))))

(assert (=> d!1038 (= (size!23 lt!344) lt!409)))

(declare-fun b!1683 () Bool)

(assert (=> b!1683 (= e!1017 0)))

(declare-fun b!1684 () Bool)

(assert (=> b!1684 (= e!1017 (+ 1 (size!23 (tail!237 lt!344))))))

(assert (= (and d!1038 c!495) b!1683))

(assert (= (and d!1038 (not c!495)) b!1684))

(declare-fun m!2171 () Bool)

(assert (=> b!1684 m!2171))

(assert (=> d!876 d!1038))

(assert (=> d!876 d!874))

(declare-fun d!1040 () Bool)

(declare-fun lt!410 () Int)

(assert (=> d!1040 (>= lt!410 0)))

(declare-fun e!1018 () Int)

(assert (=> d!1040 (= lt!410 e!1018)))

(declare-fun c!496 () Bool)

(assert (=> d!1040 (= c!496 (is-Nil!54 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))))))

(assert (=> d!1040 (= (size!23 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))) lt!410)))

(declare-fun b!1685 () Bool)

(assert (=> b!1685 (= e!1018 0)))

(declare-fun b!1686 () Bool)

(assert (=> b!1686 (= e!1018 (+ 1 (size!23 (tail!237 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))))))))

(assert (= (and d!1040 c!496) b!1685))

(assert (= (and d!1040 (not c!496)) b!1686))

(declare-fun m!2173 () Bool)

(assert (=> b!1686 m!2173))

(assert (=> d!876 d!1040))

(declare-fun d!1042 () Bool)

(declare-fun c!497 () Bool)

(assert (=> d!1042 (= c!497 (is-Nil!54 lt!344))))

(declare-fun e!1019 () (Set (_ BitVec 32)))

(assert (=> d!1042 (= (content!22 lt!344) e!1019)))

(declare-fun b!1687 () Bool)

(assert (=> b!1687 (= e!1019 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1688 () Bool)

(assert (=> b!1688 (= e!1019 (union (insert (head!225 lt!344) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 lt!344))))))

(assert (= (and d!1042 c!497) b!1687))

(assert (= (and d!1042 (not c!497)) b!1688))

(declare-fun m!2175 () Bool)

(assert (=> b!1688 m!2175))

(declare-fun m!2177 () Bool)

(assert (=> b!1688 m!2177))

(assert (=> b!1511 d!1042))

(declare-fun d!1044 () Bool)

(declare-fun c!498 () Bool)

(assert (=> d!1044 (= c!498 (is-Nil!54 (front!49 q1!1)))))

(declare-fun e!1020 () (Set (_ BitVec 32)))

(assert (=> d!1044 (= (content!22 (front!49 q1!1)) e!1020)))

(declare-fun b!1689 () Bool)

(assert (=> b!1689 (= e!1020 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1690 () Bool)

(assert (=> b!1690 (= e!1020 (union (insert (head!225 (front!49 q1!1)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (front!49 q1!1)))))))

(assert (= (and d!1044 c!498) b!1689))

(assert (= (and d!1044 (not c!498)) b!1690))

(declare-fun m!2179 () Bool)

(assert (=> b!1690 m!2179))

(assert (=> b!1690 m!2019))

(assert (=> b!1511 d!1044))

(declare-fun d!1046 () Bool)

(declare-fun c!499 () Bool)

(assert (=> d!1046 (= c!499 (is-Nil!54 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))))))

(declare-fun e!1021 () (Set (_ BitVec 32)))

(assert (=> d!1046 (= (content!22 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))) e!1021)))

(declare-fun b!1691 () Bool)

(assert (=> b!1691 (= e!1021 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1692 () Bool)

(assert (=> b!1692 (= e!1021 (union (insert (head!225 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (reverse!5 (Cons!53 e2!3 (rear!51 q1!1)))))))))

(assert (= (and d!1046 c!499) b!1691))

(assert (= (and d!1046 (not c!499)) b!1692))

(declare-fun m!2181 () Bool)

(assert (=> b!1692 m!2181))

(declare-fun m!2183 () Bool)

(assert (=> b!1692 m!2183))

(assert (=> b!1511 d!1046))

(declare-fun d!1048 () Bool)

(declare-fun e!1022 () Bool)

(assert (=> d!1048 e!1022))

(declare-fun res!807 () Bool)

(assert (=> d!1048 (=> (not res!807) (not e!1022))))

(declare-fun lt!411 () List!53)

(assert (=> d!1048 (= res!807 (= (size!23 lt!411) (+ (size!23 (reverse!5 (tail!237 (Cons!53 e2!3 (rear!51 q1!1))))) (size!23 (Cons!53 (head!225 (Cons!53 e2!3 (rear!51 q1!1))) Nil!54)))))))

(declare-fun e!1023 () List!53)

(assert (=> d!1048 (= lt!411 e!1023)))

(declare-fun c!500 () Bool)

(assert (=> d!1048 (= c!500 (is-Nil!54 (reverse!5 (tail!237 (Cons!53 e2!3 (rear!51 q1!1))))))))

(assert (=> d!1048 (= (concat!2 (reverse!5 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))) (Cons!53 (head!225 (Cons!53 e2!3 (rear!51 q1!1))) Nil!54)) lt!411)))

(declare-fun b!1693 () Bool)

(assert (=> b!1693 (= e!1023 (Cons!53 (head!225 (Cons!53 e2!3 (rear!51 q1!1))) Nil!54))))

(declare-fun b!1694 () Bool)

(assert (=> b!1694 (= e!1023 (Cons!53 (head!225 (reverse!5 (tail!237 (Cons!53 e2!3 (rear!51 q1!1))))) (concat!2 (tail!237 (reverse!5 (tail!237 (Cons!53 e2!3 (rear!51 q1!1))))) (Cons!53 (head!225 (Cons!53 e2!3 (rear!51 q1!1))) Nil!54))))))

(declare-fun b!1695 () Bool)

(assert (=> b!1695 (= e!1022 (= (content!22 lt!411) (union (content!22 (reverse!5 (tail!237 (Cons!53 e2!3 (rear!51 q1!1))))) (content!22 (Cons!53 (head!225 (Cons!53 e2!3 (rear!51 q1!1))) Nil!54)))))))

(assert (= (and d!1048 c!500) b!1693))

(assert (= (and d!1048 (not c!500)) b!1694))

(assert (= (and d!1048 res!807) b!1695))

(declare-fun m!2185 () Bool)

(assert (=> d!1048 m!2185))

(assert (=> d!1048 m!1875))

(declare-fun m!2187 () Bool)

(assert (=> d!1048 m!2187))

(declare-fun m!2189 () Bool)

(assert (=> d!1048 m!2189))

(declare-fun m!2191 () Bool)

(assert (=> b!1694 m!2191))

(declare-fun m!2193 () Bool)

(assert (=> b!1695 m!2193))

(assert (=> b!1695 m!1875))

(declare-fun m!2195 () Bool)

(assert (=> b!1695 m!2195))

(declare-fun m!2197 () Bool)

(assert (=> b!1695 m!2197))

(assert (=> b!1517 d!1048))

(declare-fun d!1050 () Bool)

(declare-fun lt!412 () List!53)

(assert (=> d!1050 (= (content!22 lt!412) (content!22 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))))))

(declare-fun e!1024 () List!53)

(assert (=> d!1050 (= lt!412 e!1024)))

(declare-fun c!501 () Bool)

(assert (=> d!1050 (= c!501 (is-Nil!54 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))))))

(assert (=> d!1050 (= (reverse!5 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))) lt!412)))

(declare-fun b!1696 () Bool)

(assert (=> b!1696 (= e!1024 Nil!54)))

(declare-fun b!1697 () Bool)

(assert (=> b!1697 (= e!1024 (concat!2 (reverse!5 (tail!237 (tail!237 (Cons!53 e2!3 (rear!51 q1!1))))) (Cons!53 (head!225 (tail!237 (Cons!53 e2!3 (rear!51 q1!1)))) Nil!54)))))

(assert (= (and d!1050 c!501) b!1696))

(assert (= (and d!1050 (not c!501)) b!1697))

(declare-fun m!2199 () Bool)

(assert (=> d!1050 m!2199))

(assert (=> d!1050 m!2087))

(declare-fun m!2201 () Bool)

(assert (=> b!1697 m!2201))

(assert (=> b!1697 m!2201))

(declare-fun m!2203 () Bool)

(assert (=> b!1697 m!2203))

(assert (=> b!1517 d!1050))

(declare-fun d!1052 () Bool)

(declare-fun e!1025 () Bool)

(assert (=> d!1052 e!1025))

(declare-fun res!808 () Bool)

(assert (=> d!1052 (=> (not res!808) (not e!1025))))

(declare-fun lt!413 () List!53)

(assert (=> d!1052 (= res!808 (= (size!23 lt!413) (+ (size!23 (reverse!5 (tail!237 (rear!51 q3!1)))) (size!23 (Cons!53 (head!225 (rear!51 q3!1)) Nil!54)))))))

(declare-fun e!1026 () List!53)

(assert (=> d!1052 (= lt!413 e!1026)))

(declare-fun c!502 () Bool)

(assert (=> d!1052 (= c!502 (is-Nil!54 (reverse!5 (tail!237 (rear!51 q3!1)))))))

(assert (=> d!1052 (= (concat!2 (reverse!5 (tail!237 (rear!51 q3!1))) (Cons!53 (head!225 (rear!51 q3!1)) Nil!54)) lt!413)))

(declare-fun b!1698 () Bool)

(assert (=> b!1698 (= e!1026 (Cons!53 (head!225 (rear!51 q3!1)) Nil!54))))

(declare-fun b!1699 () Bool)

(assert (=> b!1699 (= e!1026 (Cons!53 (head!225 (reverse!5 (tail!237 (rear!51 q3!1)))) (concat!2 (tail!237 (reverse!5 (tail!237 (rear!51 q3!1)))) (Cons!53 (head!225 (rear!51 q3!1)) Nil!54))))))

(declare-fun b!1700 () Bool)

(assert (=> b!1700 (= e!1025 (= (content!22 lt!413) (union (content!22 (reverse!5 (tail!237 (rear!51 q3!1)))) (content!22 (Cons!53 (head!225 (rear!51 q3!1)) Nil!54)))))))

(assert (= (and d!1052 c!502) b!1698))

(assert (= (and d!1052 (not c!502)) b!1699))

(assert (= (and d!1052 res!808) b!1700))

(declare-fun m!2205 () Bool)

(assert (=> d!1052 m!2205))

(assert (=> d!1052 m!1913))

(declare-fun m!2207 () Bool)

(assert (=> d!1052 m!2207))

(declare-fun m!2209 () Bool)

(assert (=> d!1052 m!2209))

(declare-fun m!2211 () Bool)

(assert (=> b!1699 m!2211))

(declare-fun m!2213 () Bool)

(assert (=> b!1700 m!2213))

(assert (=> b!1700 m!1913))

(declare-fun m!2215 () Bool)

(assert (=> b!1700 m!2215))

(declare-fun m!2217 () Bool)

(assert (=> b!1700 m!2217))

(assert (=> b!1538 d!1052))

(declare-fun d!1054 () Bool)

(declare-fun lt!414 () List!53)

(assert (=> d!1054 (= (content!22 lt!414) (content!22 (tail!237 (rear!51 q3!1))))))

(declare-fun e!1027 () List!53)

(assert (=> d!1054 (= lt!414 e!1027)))

(declare-fun c!503 () Bool)

(assert (=> d!1054 (= c!503 (is-Nil!54 (tail!237 (rear!51 q3!1))))))

(assert (=> d!1054 (= (reverse!5 (tail!237 (rear!51 q3!1))) lt!414)))

(declare-fun b!1701 () Bool)

(assert (=> b!1701 (= e!1027 Nil!54)))

(declare-fun b!1702 () Bool)

(assert (=> b!1702 (= e!1027 (concat!2 (reverse!5 (tail!237 (tail!237 (rear!51 q3!1)))) (Cons!53 (head!225 (tail!237 (rear!51 q3!1))) Nil!54)))))

(assert (= (and d!1054 c!503) b!1701))

(assert (= (and d!1054 (not c!503)) b!1702))

(declare-fun m!2219 () Bool)

(assert (=> d!1054 m!2219))

(assert (=> d!1054 m!2169))

(declare-fun m!2221 () Bool)

(assert (=> b!1702 m!2221))

(assert (=> b!1702 m!2221))

(declare-fun m!2223 () Bool)

(assert (=> b!1702 m!2223))

(assert (=> b!1538 d!1054))

(declare-fun d!1056 () Bool)

(declare-fun c!504 () Bool)

(assert (=> d!1056 (= c!504 (is-Nil!54 lt!363))))

(declare-fun e!1028 () (Set (_ BitVec 32)))

(assert (=> d!1056 (= (content!22 lt!363) e!1028)))

(declare-fun b!1703 () Bool)

(assert (=> b!1703 (= e!1028 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1704 () Bool)

(assert (=> b!1704 (= e!1028 (union (insert (head!225 lt!363) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 lt!363))))))

(assert (= (and d!1056 c!504) b!1703))

(assert (= (and d!1056 (not c!504)) b!1704))

(declare-fun m!2225 () Bool)

(assert (=> b!1704 m!2225))

(declare-fun m!2227 () Bool)

(assert (=> b!1704 m!2227))

(assert (=> d!912 d!1056))

(declare-fun d!1058 () Bool)

(declare-fun c!505 () Bool)

(assert (=> d!1058 (= c!505 (is-Nil!54 (Cons!53 e3!1 (rear!51 q2!1))))))

(declare-fun e!1029 () (Set (_ BitVec 32)))

(assert (=> d!1058 (= (content!22 (Cons!53 e3!1 (rear!51 q2!1))) e!1029)))

(declare-fun b!1705 () Bool)

(assert (=> b!1705 (= e!1029 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!1706 () Bool)

(assert (=> b!1706 (= e!1029 (union (insert (head!225 (Cons!53 e3!1 (rear!51 q2!1))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!237 (Cons!53 e3!1 (rear!51 q2!1))))))))

(assert (= (and d!1058 c!505) b!1705))

(assert (= (and d!1058 (not c!505)) b!1706))

(declare-fun m!2229 () Bool)

(assert (=> b!1706 m!2229))

(assert (=> b!1706 m!2039))

(assert (=> d!912 d!1058))

(push 1)

(assert (not b!1686))

(assert (not b!1631))

(assert (not b!1647))

(assert (not b!1674))

(assert (not d!1018))

(assert (not b!1633))

(assert (not b!1664))

(assert (not b!1695))

(assert (not b!1643))

(assert (not b!1607))

(assert (not d!954))

(assert (not b!1590))

(assert (not b!1596))

(assert (not b!1635))

(assert (not b!1678))

(assert (not b!1667))

(assert (not d!950))

(assert (not b!1688))

(assert (not b!1702))

(assert (not b!1699))

(assert (not b!1625))

(assert (not b!1611))

(assert (not b!1588))

(assert (not b!1637))

(assert (not b!1578))

(assert (not b!1568))

(assert (not d!1016))

(assert (not b!1653))

(assert (not d!1050))

(assert (not b!1660))

(assert (not b!1606))

(assert (not d!1052))

(assert (not b!1662))

(assert (not d!1024))

(assert (not b!1574))

(assert (not b!1704))

(assert (not d!1054))

(assert (not b!1649))

(assert (not b!1639))

(assert (not b!1682))

(assert (not b!1600))

(assert (not b!1593))

(assert (not b!1694))

(assert (not b!1582))

(assert (not b!1615))

(assert (not b!1680))

(assert (not b!1700))

(assert (not b!1576))

(assert (not b!1602))

(assert (not b!1672))

(assert (not b!1580))

(assert (not b!1651))

(assert (not d!1048))

(assert (not b!1659))

(assert (not b!1641))

(assert (not b!1706))

(assert (not b!1617))

(assert (not b!1690))

(assert (not b!1595))

(assert (not b!1621))

(assert (not b!1684))

(assert (not b!1697))

(assert (not d!1022))

(assert (not b!1584))

(assert (not b!1627))

(assert (not b!1666))

(assert (not d!964))

(assert (not b!1598))

(assert (not b!1586))

(assert (not b!1570))

(assert (not b!1676))

(assert (not b!1613))

(assert (not b!1657))

(assert (not b!1572))

(assert (not b!1623))

(assert (not b!1619))

(assert (not b!1670))

(assert (not b!1692))

(assert (not d!956))

(assert (not b!1591))

(assert (not b!1609))

(assert (not b!1629))

(assert (not b!1669))

(assert (not b!1645))

(assert (not b!1604))

(assert (not b!1655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

