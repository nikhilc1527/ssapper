; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12386 () Bool)

(assert start!12386)

(declare-fun res!48086 () Bool)

(declare-fun e!50117 () Bool)

(assert (=> start!12386 (=> (not res!48086) (not e!50117))))

(declare-datatypes () ((Tree!137 (Leaf!661) (TreeExt!2 (__x!313 Int)) (Node!178 (value!8758 (_ BitVec 32)) (left!1861 Tree!137) (right!1867 Tree!137)))))

(declare-fun tree!174 () Tree!137)

(declare-fun isBraun!0 (Tree!137) Bool)

(assert (=> start!12386 (= res!48086 (isBraun!0 tree!174))))

(assert (=> start!12386 e!50117))

(assert (=> start!12386 true))

(declare-fun b!91549 () Bool)

(declare-fun res!48087 () Bool)

(assert (=> b!91549 (=> (not res!48087) (not e!50117))))

(assert (=> b!91549 (= res!48087 (is-Node!178 tree!174))))

(declare-fun b!91550 () Bool)

(declare-fun res!48088 () Bool)

(assert (=> b!91550 (=> (not res!48088) (not e!50117))))

(declare-fun res!48059 () Tree!137)

(declare-fun x!33376 () (_ BitVec 32))

(declare-fun insert!11 (Tree!137 (_ BitVec 32)) Tree!137)

(assert (=> b!91550 (= res!48088 (= res!48059 (Node!178 (value!8758 tree!174) (insert!11 (left!1861 tree!174) x!33376) (right!1867 tree!174))))))

(declare-fun b!91551 () Bool)

(assert (=> b!91551 (= e!50117 (not (isBraun!0 res!48059)))))

(assert (=> b!91551 (is-Node!178 res!48059)))

(assert (= (and start!12386 res!48086) b!91549))

(assert (= (and b!91549 res!48087) b!91550))

(assert (= (and b!91550 res!48088) b!91551))

(declare-fun m!87286 () Bool)

(assert (=> start!12386 m!87286))

(declare-fun m!87288 () Bool)

(assert (=> b!91550 m!87288))

(declare-fun m!87290 () Bool)

(assert (=> b!91551 m!87290))

(push 1)

(assert (not start!12386))

(assert (not b!91551))

(assert (not b!91550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60152 () Bool)

(declare-fun res!48097 () Bool)

(declare-fun e!50123 () Bool)

(assert (=> d!60152 (=> res!48097 e!50123)))

(assert (=> d!60152 (= res!48097 (not (is-Node!178 tree!174)))))

(assert (=> d!60152 (= (isBraun!0 tree!174) e!50123)))

(declare-fun b!91558 () Bool)

(declare-fun e!50122 () Bool)

(assert (=> b!91558 (= e!50123 e!50122)))

(declare-fun res!48095 () Bool)

(assert (=> b!91558 (=> (not res!48095) (not e!50122))))

(assert (=> b!91558 (= res!48095 (isBraun!0 (left!1861 tree!174)))))

(declare-fun b!91559 () Bool)

(declare-fun res!48096 () Bool)

(assert (=> b!91559 (=> (not res!48096) (not e!50122))))

(assert (=> b!91559 (= res!48096 (isBraun!0 (right!1867 tree!174)))))

(declare-fun b!91560 () Bool)

(declare-fun lt!20561 () (_ BitVec 32))

(declare-fun lt!20562 () (_ BitVec 32))

(assert (=> b!91560 (= e!50122 (or (= lt!20561 lt!20562) (= lt!20561 (bvadd lt!20562 #b00000000000000000000000000000001))))))

(declare-fun height!0 (Tree!137) (_ BitVec 32))

(assert (=> b!91560 (= lt!20562 (height!0 (right!1867 tree!174)))))

(assert (=> b!91560 (= lt!20561 (height!0 (left!1861 tree!174)))))

(assert (= (and d!60152 (not res!48097)) b!91558))

(assert (= (and b!91558 res!48095) b!91559))

(assert (= (and b!91559 res!48096) b!91560))

(declare-fun m!87292 () Bool)

(assert (=> b!91558 m!87292))

(declare-fun m!87294 () Bool)

(assert (=> b!91559 m!87294))

(declare-fun m!87296 () Bool)

(assert (=> b!91560 m!87296))

(declare-fun m!87298 () Bool)

(assert (=> b!91560 m!87298))

(assert (=> start!12386 d!60152))

(declare-fun d!60154 () Bool)

(declare-fun res!48100 () Bool)

(declare-fun e!50125 () Bool)

(assert (=> d!60154 (=> res!48100 e!50125)))

(assert (=> d!60154 (= res!48100 (not (is-Node!178 res!48059)))))

(assert (=> d!60154 (= (isBraun!0 res!48059) e!50125)))

(declare-fun b!91561 () Bool)

(declare-fun e!50124 () Bool)

(assert (=> b!91561 (= e!50125 e!50124)))

(declare-fun res!48098 () Bool)

(assert (=> b!91561 (=> (not res!48098) (not e!50124))))

(assert (=> b!91561 (= res!48098 (isBraun!0 (left!1861 res!48059)))))

(declare-fun b!91562 () Bool)

(declare-fun res!48099 () Bool)

(assert (=> b!91562 (=> (not res!48099) (not e!50124))))

(assert (=> b!91562 (= res!48099 (isBraun!0 (right!1867 res!48059)))))

(declare-fun b!91563 () Bool)

(declare-fun lt!20563 () (_ BitVec 32))

(declare-fun lt!20564 () (_ BitVec 32))

(assert (=> b!91563 (= e!50124 (or (= lt!20563 lt!20564) (= lt!20563 (bvadd lt!20564 #b00000000000000000000000000000001))))))

(assert (=> b!91563 (= lt!20564 (height!0 (right!1867 res!48059)))))

(assert (=> b!91563 (= lt!20563 (height!0 (left!1861 res!48059)))))

(assert (= (and d!60154 (not res!48100)) b!91561))

(assert (= (and b!91561 res!48098) b!91562))

(assert (= (and b!91562 res!48099) b!91563))

(declare-fun m!87300 () Bool)

(assert (=> b!91561 m!87300))

(declare-fun m!87302 () Bool)

(assert (=> b!91562 m!87302))

(declare-fun m!87304 () Bool)

(assert (=> b!91563 m!87304))

(declare-fun m!87306 () Bool)

(assert (=> b!91563 m!87306))

(assert (=> b!91551 d!60154))

(declare-fun d!60156 () Bool)

(declare-fun e!50131 () Bool)

(assert (=> d!60156 e!50131))

(declare-fun res!48104 () Bool)

(assert (=> d!60156 (=> (not res!48104) (not e!50131))))

(declare-fun lt!20567 () Tree!137)

(assert (=> d!60156 (= res!48104 (is-Node!178 lt!20567))))

(declare-fun e!50130 () Tree!137)

(assert (=> d!60156 (= lt!20567 e!50130)))

(declare-fun c!22305 () Bool)

(assert (=> d!60156 (= c!22305 (is-Node!178 (left!1861 tree!174)))))

(assert (=> d!60156 (isBraun!0 (left!1861 tree!174))))

(assert (=> d!60156 (= (insert!11 (left!1861 tree!174) x!33376) lt!20567)))

(declare-fun b!91570 () Bool)

(assert (=> b!91570 (= e!50130 (Node!178 (value!8758 (left!1861 tree!174)) (insert!11 (left!1861 (left!1861 tree!174)) x!33376) (right!1867 (left!1861 tree!174))))))

(declare-fun b!91571 () Bool)

(assert (=> b!91571 (= e!50130 (Node!178 x!33376 Leaf!661 Leaf!661))))

(declare-fun b!91572 () Bool)

(assert (=> b!91572 (= e!50131 (isBraun!0 lt!20567))))

(assert (= (and d!60156 c!22305) b!91570))

(assert (= (and d!60156 (not c!22305)) b!91571))

(assert (= (and d!60156 res!48104) b!91572))

(assert (=> d!60156 m!87292))

(declare-fun m!87308 () Bool)

(assert (=> b!91570 m!87308))

(declare-fun m!87310 () Bool)

(assert (=> b!91572 m!87310))

(assert (=> b!91550 d!60156))

(push 1)

(assert (not d!60156))

(assert (not b!91561))

(assert (not b!91570))

(assert (not b!91563))

(assert (not b!91562))

(assert (not b!91572))

(assert (not b!91560))

(assert (not b!91559))

(assert (not b!91558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60158 () Bool)

(declare-fun res!48107 () Bool)

(declare-fun e!50133 () Bool)

(assert (=> d!60158 (=> res!48107 e!50133)))

(assert (=> d!60158 (= res!48107 (not (is-Node!178 (left!1861 res!48059))))))

(assert (=> d!60158 (= (isBraun!0 (left!1861 res!48059)) e!50133)))

(declare-fun b!91573 () Bool)

(declare-fun e!50132 () Bool)

(assert (=> b!91573 (= e!50133 e!50132)))

(declare-fun res!48105 () Bool)

(assert (=> b!91573 (=> (not res!48105) (not e!50132))))

(assert (=> b!91573 (= res!48105 (isBraun!0 (left!1861 (left!1861 res!48059))))))

(declare-fun b!91574 () Bool)

(declare-fun res!48106 () Bool)

(assert (=> b!91574 (=> (not res!48106) (not e!50132))))

(assert (=> b!91574 (= res!48106 (isBraun!0 (right!1867 (left!1861 res!48059))))))

(declare-fun b!91575 () Bool)

(declare-fun lt!20568 () (_ BitVec 32))

(declare-fun lt!20569 () (_ BitVec 32))

(assert (=> b!91575 (= e!50132 (or (= lt!20568 lt!20569) (= lt!20568 (bvadd lt!20569 #b00000000000000000000000000000001))))))

(assert (=> b!91575 (= lt!20569 (height!0 (right!1867 (left!1861 res!48059))))))

(assert (=> b!91575 (= lt!20568 (height!0 (left!1861 (left!1861 res!48059))))))

(assert (= (and d!60158 (not res!48107)) b!91573))

(assert (= (and b!91573 res!48105) b!91574))

(assert (= (and b!91574 res!48106) b!91575))

(declare-fun m!87312 () Bool)

(assert (=> b!91573 m!87312))

(declare-fun m!87314 () Bool)

(assert (=> b!91574 m!87314))

(declare-fun m!87316 () Bool)

(assert (=> b!91575 m!87316))

(declare-fun m!87318 () Bool)

(assert (=> b!91575 m!87318))

(assert (=> b!91561 d!60158))

(declare-fun d!60160 () Bool)

(declare-fun res!48110 () Bool)

(declare-fun e!50135 () Bool)

(assert (=> d!60160 (=> res!48110 e!50135)))

(assert (=> d!60160 (= res!48110 (not (is-Node!178 lt!20567)))))

(assert (=> d!60160 (= (isBraun!0 lt!20567) e!50135)))

(declare-fun b!91576 () Bool)

(declare-fun e!50134 () Bool)

(assert (=> b!91576 (= e!50135 e!50134)))

(declare-fun res!48108 () Bool)

(assert (=> b!91576 (=> (not res!48108) (not e!50134))))

(assert (=> b!91576 (= res!48108 (isBraun!0 (left!1861 lt!20567)))))

(declare-fun b!91577 () Bool)

(declare-fun res!48109 () Bool)

(assert (=> b!91577 (=> (not res!48109) (not e!50134))))

(assert (=> b!91577 (= res!48109 (isBraun!0 (right!1867 lt!20567)))))

(declare-fun b!91578 () Bool)

(declare-fun lt!20570 () (_ BitVec 32))

(declare-fun lt!20571 () (_ BitVec 32))

(assert (=> b!91578 (= e!50134 (or (= lt!20570 lt!20571) (= lt!20570 (bvadd lt!20571 #b00000000000000000000000000000001))))))

(assert (=> b!91578 (= lt!20571 (height!0 (right!1867 lt!20567)))))

(assert (=> b!91578 (= lt!20570 (height!0 (left!1861 lt!20567)))))

(assert (= (and d!60160 (not res!48110)) b!91576))

(assert (= (and b!91576 res!48108) b!91577))

(assert (= (and b!91577 res!48109) b!91578))

(declare-fun m!87320 () Bool)

(assert (=> b!91576 m!87320))

(declare-fun m!87322 () Bool)

(assert (=> b!91577 m!87322))

(declare-fun m!87324 () Bool)

(assert (=> b!91578 m!87324))

(declare-fun m!87326 () Bool)

(assert (=> b!91578 m!87326))

(assert (=> b!91572 d!60160))

(declare-fun d!60162 () Bool)

(declare-fun res!48113 () Bool)

(declare-fun e!50137 () Bool)

(assert (=> d!60162 (=> res!48113 e!50137)))

(assert (=> d!60162 (= res!48113 (not (is-Node!178 (right!1867 res!48059))))))

(assert (=> d!60162 (= (isBraun!0 (right!1867 res!48059)) e!50137)))

(declare-fun b!91579 () Bool)

(declare-fun e!50136 () Bool)

(assert (=> b!91579 (= e!50137 e!50136)))

(declare-fun res!48111 () Bool)

(assert (=> b!91579 (=> (not res!48111) (not e!50136))))

(assert (=> b!91579 (= res!48111 (isBraun!0 (left!1861 (right!1867 res!48059))))))

(declare-fun b!91580 () Bool)

(declare-fun res!48112 () Bool)

(assert (=> b!91580 (=> (not res!48112) (not e!50136))))

(assert (=> b!91580 (= res!48112 (isBraun!0 (right!1867 (right!1867 res!48059))))))

(declare-fun b!91581 () Bool)

(declare-fun lt!20572 () (_ BitVec 32))

(declare-fun lt!20573 () (_ BitVec 32))

(assert (=> b!91581 (= e!50136 (or (= lt!20572 lt!20573) (= lt!20572 (bvadd lt!20573 #b00000000000000000000000000000001))))))

(assert (=> b!91581 (= lt!20573 (height!0 (right!1867 (right!1867 res!48059))))))

(assert (=> b!91581 (= lt!20572 (height!0 (left!1861 (right!1867 res!48059))))))

(assert (= (and d!60162 (not res!48113)) b!91579))

(assert (= (and b!91579 res!48111) b!91580))

(assert (= (and b!91580 res!48112) b!91581))

(declare-fun m!87328 () Bool)

(assert (=> b!91579 m!87328))

(declare-fun m!87330 () Bool)

(assert (=> b!91580 m!87330))

(declare-fun m!87332 () Bool)

(assert (=> b!91581 m!87332))

(declare-fun m!87334 () Bool)

(assert (=> b!91581 m!87334))

(assert (=> b!91562 d!60162))

(declare-fun d!60164 () Bool)

(declare-fun e!50139 () Bool)

(assert (=> d!60164 e!50139))

(declare-fun res!48114 () Bool)

(assert (=> d!60164 (=> (not res!48114) (not e!50139))))

(declare-fun lt!20574 () Tree!137)

(assert (=> d!60164 (= res!48114 (is-Node!178 lt!20574))))

(declare-fun e!50138 () Tree!137)

(assert (=> d!60164 (= lt!20574 e!50138)))

(declare-fun c!22306 () Bool)

(assert (=> d!60164 (= c!22306 (is-Node!178 (left!1861 (left!1861 tree!174))))))

(assert (=> d!60164 (isBraun!0 (left!1861 (left!1861 tree!174)))))

(assert (=> d!60164 (= (insert!11 (left!1861 (left!1861 tree!174)) x!33376) lt!20574)))

(declare-fun b!91582 () Bool)

(assert (=> b!91582 (= e!50138 (Node!178 (value!8758 (left!1861 (left!1861 tree!174))) (insert!11 (left!1861 (left!1861 (left!1861 tree!174))) x!33376) (right!1867 (left!1861 (left!1861 tree!174)))))))

(declare-fun b!91583 () Bool)

(assert (=> b!91583 (= e!50138 (Node!178 x!33376 Leaf!661 Leaf!661))))

(declare-fun b!91584 () Bool)

(assert (=> b!91584 (= e!50139 (isBraun!0 lt!20574))))

(assert (= (and d!60164 c!22306) b!91582))

(assert (= (and d!60164 (not c!22306)) b!91583))

(assert (= (and d!60164 res!48114) b!91584))

(declare-fun m!87336 () Bool)

(assert (=> d!60164 m!87336))

(declare-fun m!87338 () Bool)

(assert (=> b!91582 m!87338))

(declare-fun m!87340 () Bool)

(assert (=> b!91584 m!87340))

(assert (=> b!91570 d!60164))

(declare-fun d!60166 () Bool)

(declare-fun res!48117 () Bool)

(declare-fun e!50141 () Bool)

(assert (=> d!60166 (=> res!48117 e!50141)))

(assert (=> d!60166 (= res!48117 (not (is-Node!178 (right!1867 tree!174))))))

(assert (=> d!60166 (= (isBraun!0 (right!1867 tree!174)) e!50141)))

(declare-fun b!91585 () Bool)

(declare-fun e!50140 () Bool)

(assert (=> b!91585 (= e!50141 e!50140)))

(declare-fun res!48115 () Bool)

(assert (=> b!91585 (=> (not res!48115) (not e!50140))))

(assert (=> b!91585 (= res!48115 (isBraun!0 (left!1861 (right!1867 tree!174))))))

(declare-fun b!91586 () Bool)

(declare-fun res!48116 () Bool)

(assert (=> b!91586 (=> (not res!48116) (not e!50140))))

(assert (=> b!91586 (= res!48116 (isBraun!0 (right!1867 (right!1867 tree!174))))))

(declare-fun b!91587 () Bool)

(declare-fun lt!20575 () (_ BitVec 32))

(declare-fun lt!20576 () (_ BitVec 32))

(assert (=> b!91587 (= e!50140 (or (= lt!20575 lt!20576) (= lt!20575 (bvadd lt!20576 #b00000000000000000000000000000001))))))

(assert (=> b!91587 (= lt!20576 (height!0 (right!1867 (right!1867 tree!174))))))

(assert (=> b!91587 (= lt!20575 (height!0 (left!1861 (right!1867 tree!174))))))

(assert (= (and d!60166 (not res!48117)) b!91585))

(assert (= (and b!91585 res!48115) b!91586))

(assert (= (and b!91586 res!48116) b!91587))

(declare-fun m!87342 () Bool)

(assert (=> b!91585 m!87342))

(declare-fun m!87344 () Bool)

(assert (=> b!91586 m!87344))

(declare-fun m!87346 () Bool)

(assert (=> b!91587 m!87346))

(declare-fun m!87348 () Bool)

(assert (=> b!91587 m!87348))

(assert (=> b!91559 d!60166))

(declare-fun b!91592 () Bool)

(declare-fun e!50144 () (_ BitVec 32))

(declare-fun lt!20581 () (_ BitVec 32))

(declare-fun lt!20582 () (_ BitVec 32))

(assert (=> b!91592 (= e!50144 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20581 lt!20582) lt!20581 lt!20582)))))

(assert (=> b!91592 (= lt!20582 (height!0 (right!1867 (right!1867 tree!174))))))

(assert (=> b!91592 (= lt!20581 (height!0 (left!1861 (right!1867 tree!174))))))

(declare-fun d!60168 () Bool)

(declare-fun c!22309 () Bool)

(assert (=> d!60168 (= c!22309 (is-Node!178 (right!1867 tree!174)))))

(assert (=> d!60168 (= (height!0 (right!1867 tree!174)) e!50144)))

(declare-fun b!91593 () Bool)

(assert (=> b!91593 (= e!50144 #b00000000000000000000000000000000)))

(assert (= (and d!60168 c!22309) b!91592))

(assert (= (and d!60168 (not c!22309)) b!91593))

(assert (=> b!91592 m!87346))

(assert (=> b!91592 m!87348))

(assert (=> b!91560 d!60168))

(declare-fun b!91594 () Bool)

(declare-fun e!50145 () (_ BitVec 32))

(declare-fun lt!20583 () (_ BitVec 32))

(declare-fun lt!20584 () (_ BitVec 32))

(assert (=> b!91594 (= e!50145 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20583 lt!20584) lt!20583 lt!20584)))))

(assert (=> b!91594 (= lt!20584 (height!0 (right!1867 (left!1861 tree!174))))))

(assert (=> b!91594 (= lt!20583 (height!0 (left!1861 (left!1861 tree!174))))))

(declare-fun d!60170 () Bool)

(declare-fun c!22310 () Bool)

(assert (=> d!60170 (= c!22310 (is-Node!178 (left!1861 tree!174)))))

(assert (=> d!60170 (= (height!0 (left!1861 tree!174)) e!50145)))

(declare-fun b!91595 () Bool)

(assert (=> b!91595 (= e!50145 #b00000000000000000000000000000000)))

(assert (= (and d!60170 c!22310) b!91594))

(assert (= (and d!60170 (not c!22310)) b!91595))

(declare-fun m!87350 () Bool)

(assert (=> b!91594 m!87350))

(declare-fun m!87352 () Bool)

(assert (=> b!91594 m!87352))

(assert (=> b!91560 d!60170))

(declare-fun d!60172 () Bool)

(declare-fun res!48120 () Bool)

(declare-fun e!50147 () Bool)

(assert (=> d!60172 (=> res!48120 e!50147)))

(assert (=> d!60172 (= res!48120 (not (is-Node!178 (left!1861 tree!174))))))

(assert (=> d!60172 (= (isBraun!0 (left!1861 tree!174)) e!50147)))

(declare-fun b!91596 () Bool)

(declare-fun e!50146 () Bool)

(assert (=> b!91596 (= e!50147 e!50146)))

(declare-fun res!48118 () Bool)

(assert (=> b!91596 (=> (not res!48118) (not e!50146))))

(assert (=> b!91596 (= res!48118 (isBraun!0 (left!1861 (left!1861 tree!174))))))

(declare-fun b!91597 () Bool)

(declare-fun res!48119 () Bool)

(assert (=> b!91597 (=> (not res!48119) (not e!50146))))

(assert (=> b!91597 (= res!48119 (isBraun!0 (right!1867 (left!1861 tree!174))))))

(declare-fun b!91598 () Bool)

(declare-fun lt!20585 () (_ BitVec 32))

(declare-fun lt!20586 () (_ BitVec 32))

(assert (=> b!91598 (= e!50146 (or (= lt!20585 lt!20586) (= lt!20585 (bvadd lt!20586 #b00000000000000000000000000000001))))))

(assert (=> b!91598 (= lt!20586 (height!0 (right!1867 (left!1861 tree!174))))))

(assert (=> b!91598 (= lt!20585 (height!0 (left!1861 (left!1861 tree!174))))))

(assert (= (and d!60172 (not res!48120)) b!91596))

(assert (= (and b!91596 res!48118) b!91597))

(assert (= (and b!91597 res!48119) b!91598))

(assert (=> b!91596 m!87336))

(declare-fun m!87354 () Bool)

(assert (=> b!91597 m!87354))

(assert (=> b!91598 m!87350))

(assert (=> b!91598 m!87352))

(assert (=> b!91558 d!60172))

(assert (=> d!60156 d!60172))

(declare-fun b!91599 () Bool)

(declare-fun e!50148 () (_ BitVec 32))

(declare-fun lt!20587 () (_ BitVec 32))

(declare-fun lt!20588 () (_ BitVec 32))

(assert (=> b!91599 (= e!50148 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20587 lt!20588) lt!20587 lt!20588)))))

(assert (=> b!91599 (= lt!20588 (height!0 (right!1867 (right!1867 res!48059))))))

(assert (=> b!91599 (= lt!20587 (height!0 (left!1861 (right!1867 res!48059))))))

(declare-fun d!60174 () Bool)

(declare-fun c!22311 () Bool)

(assert (=> d!60174 (= c!22311 (is-Node!178 (right!1867 res!48059)))))

(assert (=> d!60174 (= (height!0 (right!1867 res!48059)) e!50148)))

(declare-fun b!91600 () Bool)

(assert (=> b!91600 (= e!50148 #b00000000000000000000000000000000)))

(assert (= (and d!60174 c!22311) b!91599))

(assert (= (and d!60174 (not c!22311)) b!91600))

(assert (=> b!91599 m!87332))

(assert (=> b!91599 m!87334))

(assert (=> b!91563 d!60174))

(declare-fun b!91601 () Bool)

(declare-fun e!50149 () (_ BitVec 32))

(declare-fun lt!20589 () (_ BitVec 32))

(declare-fun lt!20590 () (_ BitVec 32))

(assert (=> b!91601 (= e!50149 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20589 lt!20590) lt!20589 lt!20590)))))

(assert (=> b!91601 (= lt!20590 (height!0 (right!1867 (left!1861 res!48059))))))

(assert (=> b!91601 (= lt!20589 (height!0 (left!1861 (left!1861 res!48059))))))

(declare-fun d!60176 () Bool)

(declare-fun c!22312 () Bool)

(assert (=> d!60176 (= c!22312 (is-Node!178 (left!1861 res!48059)))))

(assert (=> d!60176 (= (height!0 (left!1861 res!48059)) e!50149)))

(declare-fun b!91602 () Bool)

(assert (=> b!91602 (= e!50149 #b00000000000000000000000000000000)))

(assert (= (and d!60176 c!22312) b!91601))

(assert (= (and d!60176 (not c!22312)) b!91602))

(assert (=> b!91601 m!87316))

(assert (=> b!91601 m!87318))

(assert (=> b!91563 d!60176))

(push 1)

(assert (not b!91586))

(assert (not b!91594))

(assert (not b!91592))

(assert (not b!91577))

(assert (not b!91580))

(assert (not b!91574))

(assert (not b!91575))

(assert (not b!91597))

(assert (not b!91579))

(assert (not b!91581))

(assert (not b!91576))

(assert (not b!91585))

(assert (not b!91596))

(assert (not b!91599))

(assert (not d!60164))

(assert (not b!91584))

(assert (not b!91578))

(assert (not b!91598))

(assert (not b!91601))

(assert (not b!91582))

(assert (not b!91587))

(assert (not b!91573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!91603 () Bool)

(declare-fun e!50150 () (_ BitVec 32))

(declare-fun lt!20591 () (_ BitVec 32))

(declare-fun lt!20592 () (_ BitVec 32))

(assert (=> b!91603 (= e!50150 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20591 lt!20592) lt!20591 lt!20592)))))

(assert (=> b!91603 (= lt!20592 (height!0 (right!1867 (right!1867 (right!1867 tree!174)))))))

(assert (=> b!91603 (= lt!20591 (height!0 (left!1861 (right!1867 (right!1867 tree!174)))))))

(declare-fun d!60178 () Bool)

(declare-fun c!22313 () Bool)

(assert (=> d!60178 (= c!22313 (is-Node!178 (right!1867 (right!1867 tree!174))))))

(assert (=> d!60178 (= (height!0 (right!1867 (right!1867 tree!174))) e!50150)))

(declare-fun b!91604 () Bool)

(assert (=> b!91604 (= e!50150 #b00000000000000000000000000000000)))

(assert (= (and d!60178 c!22313) b!91603))

(assert (= (and d!60178 (not c!22313)) b!91604))

(declare-fun m!87356 () Bool)

(assert (=> b!91603 m!87356))

(declare-fun m!87358 () Bool)

(assert (=> b!91603 m!87358))

(assert (=> b!91592 d!60178))

(declare-fun b!91605 () Bool)

(declare-fun e!50151 () (_ BitVec 32))

(declare-fun lt!20593 () (_ BitVec 32))

(declare-fun lt!20594 () (_ BitVec 32))

(assert (=> b!91605 (= e!50151 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20593 lt!20594) lt!20593 lt!20594)))))

(assert (=> b!91605 (= lt!20594 (height!0 (right!1867 (left!1861 (right!1867 tree!174)))))))

(assert (=> b!91605 (= lt!20593 (height!0 (left!1861 (left!1861 (right!1867 tree!174)))))))

(declare-fun d!60180 () Bool)

(declare-fun c!22314 () Bool)

(assert (=> d!60180 (= c!22314 (is-Node!178 (left!1861 (right!1867 tree!174))))))

(assert (=> d!60180 (= (height!0 (left!1861 (right!1867 tree!174))) e!50151)))

(declare-fun b!91606 () Bool)

(assert (=> b!91606 (= e!50151 #b00000000000000000000000000000000)))

(assert (= (and d!60180 c!22314) b!91605))

(assert (= (and d!60180 (not c!22314)) b!91606))

(declare-fun m!87360 () Bool)

(assert (=> b!91605 m!87360))

(declare-fun m!87362 () Bool)

(assert (=> b!91605 m!87362))

(assert (=> b!91592 d!60180))

(declare-fun b!91607 () Bool)

(declare-fun e!50152 () (_ BitVec 32))

(declare-fun lt!20595 () (_ BitVec 32))

(declare-fun lt!20596 () (_ BitVec 32))

(assert (=> b!91607 (= e!50152 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20595 lt!20596) lt!20595 lt!20596)))))

(assert (=> b!91607 (= lt!20596 (height!0 (right!1867 (right!1867 (right!1867 res!48059)))))))

(assert (=> b!91607 (= lt!20595 (height!0 (left!1861 (right!1867 (right!1867 res!48059)))))))

(declare-fun d!60182 () Bool)

(declare-fun c!22315 () Bool)

(assert (=> d!60182 (= c!22315 (is-Node!178 (right!1867 (right!1867 res!48059))))))

(assert (=> d!60182 (= (height!0 (right!1867 (right!1867 res!48059))) e!50152)))

(declare-fun b!91608 () Bool)

(assert (=> b!91608 (= e!50152 #b00000000000000000000000000000000)))

(assert (= (and d!60182 c!22315) b!91607))

(assert (= (and d!60182 (not c!22315)) b!91608))

(declare-fun m!87364 () Bool)

(assert (=> b!91607 m!87364))

(declare-fun m!87366 () Bool)

(assert (=> b!91607 m!87366))

(assert (=> b!91581 d!60182))

(declare-fun b!91609 () Bool)

(declare-fun e!50153 () (_ BitVec 32))

(declare-fun lt!20597 () (_ BitVec 32))

(declare-fun lt!20598 () (_ BitVec 32))

(assert (=> b!91609 (= e!50153 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20597 lt!20598) lt!20597 lt!20598)))))

(assert (=> b!91609 (= lt!20598 (height!0 (right!1867 (left!1861 (right!1867 res!48059)))))))

(assert (=> b!91609 (= lt!20597 (height!0 (left!1861 (left!1861 (right!1867 res!48059)))))))

(declare-fun d!60184 () Bool)

(declare-fun c!22316 () Bool)

(assert (=> d!60184 (= c!22316 (is-Node!178 (left!1861 (right!1867 res!48059))))))

(assert (=> d!60184 (= (height!0 (left!1861 (right!1867 res!48059))) e!50153)))

(declare-fun b!91610 () Bool)

(assert (=> b!91610 (= e!50153 #b00000000000000000000000000000000)))

(assert (= (and d!60184 c!22316) b!91609))

(assert (= (and d!60184 (not c!22316)) b!91610))

(declare-fun m!87368 () Bool)

(assert (=> b!91609 m!87368))

(declare-fun m!87370 () Bool)

(assert (=> b!91609 m!87370))

(assert (=> b!91581 d!60184))

(assert (=> b!91599 d!60182))

(assert (=> b!91599 d!60184))

(declare-fun d!60186 () Bool)

(declare-fun res!48123 () Bool)

(declare-fun e!50155 () Bool)

(assert (=> d!60186 (=> res!48123 e!50155)))

(assert (=> d!60186 (= res!48123 (not (is-Node!178 lt!20574)))))

(assert (=> d!60186 (= (isBraun!0 lt!20574) e!50155)))

(declare-fun b!91611 () Bool)

(declare-fun e!50154 () Bool)

(assert (=> b!91611 (= e!50155 e!50154)))

(declare-fun res!48121 () Bool)

(assert (=> b!91611 (=> (not res!48121) (not e!50154))))

(assert (=> b!91611 (= res!48121 (isBraun!0 (left!1861 lt!20574)))))

(declare-fun b!91612 () Bool)

(declare-fun res!48122 () Bool)

(assert (=> b!91612 (=> (not res!48122) (not e!50154))))

(assert (=> b!91612 (= res!48122 (isBraun!0 (right!1867 lt!20574)))))

(declare-fun b!91613 () Bool)

(declare-fun lt!20599 () (_ BitVec 32))

(declare-fun lt!20600 () (_ BitVec 32))

(assert (=> b!91613 (= e!50154 (or (= lt!20599 lt!20600) (= lt!20599 (bvadd lt!20600 #b00000000000000000000000000000001))))))

(assert (=> b!91613 (= lt!20600 (height!0 (right!1867 lt!20574)))))

(assert (=> b!91613 (= lt!20599 (height!0 (left!1861 lt!20574)))))

(assert (= (and d!60186 (not res!48123)) b!91611))

(assert (= (and b!91611 res!48121) b!91612))

(assert (= (and b!91612 res!48122) b!91613))

(declare-fun m!87372 () Bool)

(assert (=> b!91611 m!87372))

(declare-fun m!87374 () Bool)

(assert (=> b!91612 m!87374))

(declare-fun m!87376 () Bool)

(assert (=> b!91613 m!87376))

(declare-fun m!87378 () Bool)

(assert (=> b!91613 m!87378))

(assert (=> b!91584 d!60186))

(declare-fun d!60188 () Bool)

(declare-fun res!48126 () Bool)

(declare-fun e!50157 () Bool)

(assert (=> d!60188 (=> res!48126 e!50157)))

(assert (=> d!60188 (= res!48126 (not (is-Node!178 (right!1867 lt!20567))))))

(assert (=> d!60188 (= (isBraun!0 (right!1867 lt!20567)) e!50157)))

(declare-fun b!91614 () Bool)

(declare-fun e!50156 () Bool)

(assert (=> b!91614 (= e!50157 e!50156)))

(declare-fun res!48124 () Bool)

(assert (=> b!91614 (=> (not res!48124) (not e!50156))))

(assert (=> b!91614 (= res!48124 (isBraun!0 (left!1861 (right!1867 lt!20567))))))

(declare-fun b!91615 () Bool)

(declare-fun res!48125 () Bool)

(assert (=> b!91615 (=> (not res!48125) (not e!50156))))

(assert (=> b!91615 (= res!48125 (isBraun!0 (right!1867 (right!1867 lt!20567))))))

(declare-fun b!91616 () Bool)

(declare-fun lt!20601 () (_ BitVec 32))

(declare-fun lt!20602 () (_ BitVec 32))

(assert (=> b!91616 (= e!50156 (or (= lt!20601 lt!20602) (= lt!20601 (bvadd lt!20602 #b00000000000000000000000000000001))))))

(assert (=> b!91616 (= lt!20602 (height!0 (right!1867 (right!1867 lt!20567))))))

(assert (=> b!91616 (= lt!20601 (height!0 (left!1861 (right!1867 lt!20567))))))

(assert (= (and d!60188 (not res!48126)) b!91614))

(assert (= (and b!91614 res!48124) b!91615))

(assert (= (and b!91615 res!48125) b!91616))

(declare-fun m!87380 () Bool)

(assert (=> b!91614 m!87380))

(declare-fun m!87382 () Bool)

(assert (=> b!91615 m!87382))

(declare-fun m!87384 () Bool)

(assert (=> b!91616 m!87384))

(declare-fun m!87386 () Bool)

(assert (=> b!91616 m!87386))

(assert (=> b!91577 d!60188))

(declare-fun d!60190 () Bool)

(declare-fun res!48129 () Bool)

(declare-fun e!50159 () Bool)

(assert (=> d!60190 (=> res!48129 e!50159)))

(assert (=> d!60190 (= res!48129 (not (is-Node!178 (right!1867 (right!1867 tree!174)))))))

(assert (=> d!60190 (= (isBraun!0 (right!1867 (right!1867 tree!174))) e!50159)))

(declare-fun b!91617 () Bool)

(declare-fun e!50158 () Bool)

(assert (=> b!91617 (= e!50159 e!50158)))

(declare-fun res!48127 () Bool)

(assert (=> b!91617 (=> (not res!48127) (not e!50158))))

(assert (=> b!91617 (= res!48127 (isBraun!0 (left!1861 (right!1867 (right!1867 tree!174)))))))

(declare-fun b!91618 () Bool)

(declare-fun res!48128 () Bool)

(assert (=> b!91618 (=> (not res!48128) (not e!50158))))

(assert (=> b!91618 (= res!48128 (isBraun!0 (right!1867 (right!1867 (right!1867 tree!174)))))))

(declare-fun b!91619 () Bool)

(declare-fun lt!20603 () (_ BitVec 32))

(declare-fun lt!20604 () (_ BitVec 32))

(assert (=> b!91619 (= e!50158 (or (= lt!20603 lt!20604) (= lt!20603 (bvadd lt!20604 #b00000000000000000000000000000001))))))

(assert (=> b!91619 (= lt!20604 (height!0 (right!1867 (right!1867 (right!1867 tree!174)))))))

(assert (=> b!91619 (= lt!20603 (height!0 (left!1861 (right!1867 (right!1867 tree!174)))))))

(assert (= (and d!60190 (not res!48129)) b!91617))

(assert (= (and b!91617 res!48127) b!91618))

(assert (= (and b!91618 res!48128) b!91619))

(declare-fun m!87388 () Bool)

(assert (=> b!91617 m!87388))

(declare-fun m!87390 () Bool)

(assert (=> b!91618 m!87390))

(assert (=> b!91619 m!87356))

(assert (=> b!91619 m!87358))

(assert (=> b!91586 d!60190))

(declare-fun b!91620 () Bool)

(declare-fun e!50160 () (_ BitVec 32))

(declare-fun lt!20605 () (_ BitVec 32))

(declare-fun lt!20606 () (_ BitVec 32))

(assert (=> b!91620 (= e!50160 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20605 lt!20606) lt!20605 lt!20606)))))

(assert (=> b!91620 (= lt!20606 (height!0 (right!1867 (right!1867 lt!20567))))))

(assert (=> b!91620 (= lt!20605 (height!0 (left!1861 (right!1867 lt!20567))))))

(declare-fun d!60192 () Bool)

(declare-fun c!22317 () Bool)

(assert (=> d!60192 (= c!22317 (is-Node!178 (right!1867 lt!20567)))))

(assert (=> d!60192 (= (height!0 (right!1867 lt!20567)) e!50160)))

(declare-fun b!91621 () Bool)

(assert (=> b!91621 (= e!50160 #b00000000000000000000000000000000)))

(assert (= (and d!60192 c!22317) b!91620))

(assert (= (and d!60192 (not c!22317)) b!91621))

(assert (=> b!91620 m!87384))

(assert (=> b!91620 m!87386))

(assert (=> b!91578 d!60192))

(declare-fun b!91622 () Bool)

(declare-fun e!50161 () (_ BitVec 32))

(declare-fun lt!20607 () (_ BitVec 32))

(declare-fun lt!20608 () (_ BitVec 32))

(assert (=> b!91622 (= e!50161 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20607 lt!20608) lt!20607 lt!20608)))))

(assert (=> b!91622 (= lt!20608 (height!0 (right!1867 (left!1861 lt!20567))))))

(assert (=> b!91622 (= lt!20607 (height!0 (left!1861 (left!1861 lt!20567))))))

(declare-fun d!60194 () Bool)

(declare-fun c!22318 () Bool)

(assert (=> d!60194 (= c!22318 (is-Node!178 (left!1861 lt!20567)))))

(assert (=> d!60194 (= (height!0 (left!1861 lt!20567)) e!50161)))

(declare-fun b!91623 () Bool)

(assert (=> b!91623 (= e!50161 #b00000000000000000000000000000000)))

(assert (= (and d!60194 c!22318) b!91622))

(assert (= (and d!60194 (not c!22318)) b!91623))

(declare-fun m!87392 () Bool)

(assert (=> b!91622 m!87392))

(declare-fun m!87394 () Bool)

(assert (=> b!91622 m!87394))

(assert (=> b!91578 d!60194))

(declare-fun b!91624 () Bool)

(declare-fun e!50162 () (_ BitVec 32))

(declare-fun lt!20609 () (_ BitVec 32))

(declare-fun lt!20610 () (_ BitVec 32))

(assert (=> b!91624 (= e!50162 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20609 lt!20610) lt!20609 lt!20610)))))

(assert (=> b!91624 (= lt!20610 (height!0 (right!1867 (right!1867 (left!1861 tree!174)))))))

(assert (=> b!91624 (= lt!20609 (height!0 (left!1861 (right!1867 (left!1861 tree!174)))))))

(declare-fun d!60196 () Bool)

(declare-fun c!22319 () Bool)

(assert (=> d!60196 (= c!22319 (is-Node!178 (right!1867 (left!1861 tree!174))))))

(assert (=> d!60196 (= (height!0 (right!1867 (left!1861 tree!174))) e!50162)))

(declare-fun b!91625 () Bool)

(assert (=> b!91625 (= e!50162 #b00000000000000000000000000000000)))

(assert (= (and d!60196 c!22319) b!91624))

(assert (= (and d!60196 (not c!22319)) b!91625))

(declare-fun m!87396 () Bool)

(assert (=> b!91624 m!87396))

(declare-fun m!87398 () Bool)

(assert (=> b!91624 m!87398))

(assert (=> b!91598 d!60196))

(declare-fun b!91626 () Bool)

(declare-fun e!50163 () (_ BitVec 32))

(declare-fun lt!20611 () (_ BitVec 32))

(declare-fun lt!20612 () (_ BitVec 32))

(assert (=> b!91626 (= e!50163 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20611 lt!20612) lt!20611 lt!20612)))))

(assert (=> b!91626 (= lt!20612 (height!0 (right!1867 (left!1861 (left!1861 tree!174)))))))

(assert (=> b!91626 (= lt!20611 (height!0 (left!1861 (left!1861 (left!1861 tree!174)))))))

(declare-fun d!60198 () Bool)

(declare-fun c!22320 () Bool)

(assert (=> d!60198 (= c!22320 (is-Node!178 (left!1861 (left!1861 tree!174))))))

(assert (=> d!60198 (= (height!0 (left!1861 (left!1861 tree!174))) e!50163)))

(declare-fun b!91627 () Bool)

(assert (=> b!91627 (= e!50163 #b00000000000000000000000000000000)))

(assert (= (and d!60198 c!22320) b!91626))

(assert (= (and d!60198 (not c!22320)) b!91627))

(declare-fun m!87400 () Bool)

(assert (=> b!91626 m!87400))

(declare-fun m!87402 () Bool)

(assert (=> b!91626 m!87402))

(assert (=> b!91598 d!60198))

(declare-fun d!60200 () Bool)

(declare-fun res!48132 () Bool)

(declare-fun e!50165 () Bool)

(assert (=> d!60200 (=> res!48132 e!50165)))

(assert (=> d!60200 (= res!48132 (not (is-Node!178 (right!1867 (left!1861 res!48059)))))))

(assert (=> d!60200 (= (isBraun!0 (right!1867 (left!1861 res!48059))) e!50165)))

(declare-fun b!91628 () Bool)

(declare-fun e!50164 () Bool)

(assert (=> b!91628 (= e!50165 e!50164)))

(declare-fun res!48130 () Bool)

(assert (=> b!91628 (=> (not res!48130) (not e!50164))))

(assert (=> b!91628 (= res!48130 (isBraun!0 (left!1861 (right!1867 (left!1861 res!48059)))))))

(declare-fun b!91629 () Bool)

(declare-fun res!48131 () Bool)

(assert (=> b!91629 (=> (not res!48131) (not e!50164))))

(assert (=> b!91629 (= res!48131 (isBraun!0 (right!1867 (right!1867 (left!1861 res!48059)))))))

(declare-fun b!91630 () Bool)

(declare-fun lt!20613 () (_ BitVec 32))

(declare-fun lt!20614 () (_ BitVec 32))

(assert (=> b!91630 (= e!50164 (or (= lt!20613 lt!20614) (= lt!20613 (bvadd lt!20614 #b00000000000000000000000000000001))))))

(assert (=> b!91630 (= lt!20614 (height!0 (right!1867 (right!1867 (left!1861 res!48059)))))))

(assert (=> b!91630 (= lt!20613 (height!0 (left!1861 (right!1867 (left!1861 res!48059)))))))

(assert (= (and d!60200 (not res!48132)) b!91628))

(assert (= (and b!91628 res!48130) b!91629))

(assert (= (and b!91629 res!48131) b!91630))

(declare-fun m!87404 () Bool)

(assert (=> b!91628 m!87404))

(declare-fun m!87406 () Bool)

(assert (=> b!91629 m!87406))

(declare-fun m!87408 () Bool)

(assert (=> b!91630 m!87408))

(declare-fun m!87410 () Bool)

(assert (=> b!91630 m!87410))

(assert (=> b!91574 d!60200))

(assert (=> b!91594 d!60196))

(assert (=> b!91594 d!60198))

(declare-fun d!60202 () Bool)

(declare-fun res!48135 () Bool)

(declare-fun e!50167 () Bool)

(assert (=> d!60202 (=> res!48135 e!50167)))

(assert (=> d!60202 (= res!48135 (not (is-Node!178 (left!1861 (left!1861 res!48059)))))))

(assert (=> d!60202 (= (isBraun!0 (left!1861 (left!1861 res!48059))) e!50167)))

(declare-fun b!91631 () Bool)

(declare-fun e!50166 () Bool)

(assert (=> b!91631 (= e!50167 e!50166)))

(declare-fun res!48133 () Bool)

(assert (=> b!91631 (=> (not res!48133) (not e!50166))))

(assert (=> b!91631 (= res!48133 (isBraun!0 (left!1861 (left!1861 (left!1861 res!48059)))))))

(declare-fun b!91632 () Bool)

(declare-fun res!48134 () Bool)

(assert (=> b!91632 (=> (not res!48134) (not e!50166))))

(assert (=> b!91632 (= res!48134 (isBraun!0 (right!1867 (left!1861 (left!1861 res!48059)))))))

(declare-fun b!91633 () Bool)

(declare-fun lt!20615 () (_ BitVec 32))

(declare-fun lt!20616 () (_ BitVec 32))

(assert (=> b!91633 (= e!50166 (or (= lt!20615 lt!20616) (= lt!20615 (bvadd lt!20616 #b00000000000000000000000000000001))))))

(assert (=> b!91633 (= lt!20616 (height!0 (right!1867 (left!1861 (left!1861 res!48059)))))))

(assert (=> b!91633 (= lt!20615 (height!0 (left!1861 (left!1861 (left!1861 res!48059)))))))

(assert (= (and d!60202 (not res!48135)) b!91631))

(assert (= (and b!91631 res!48133) b!91632))

(assert (= (and b!91632 res!48134) b!91633))

(declare-fun m!87412 () Bool)

(assert (=> b!91631 m!87412))

(declare-fun m!87414 () Bool)

(assert (=> b!91632 m!87414))

(declare-fun m!87416 () Bool)

(assert (=> b!91633 m!87416))

(declare-fun m!87418 () Bool)

(assert (=> b!91633 m!87418))

(assert (=> b!91573 d!60202))

(declare-fun d!60204 () Bool)

(declare-fun res!48138 () Bool)

(declare-fun e!50169 () Bool)

(assert (=> d!60204 (=> res!48138 e!50169)))

(assert (=> d!60204 (= res!48138 (not (is-Node!178 (left!1861 (right!1867 tree!174)))))))

(assert (=> d!60204 (= (isBraun!0 (left!1861 (right!1867 tree!174))) e!50169)))

(declare-fun b!91634 () Bool)

(declare-fun e!50168 () Bool)

(assert (=> b!91634 (= e!50169 e!50168)))

(declare-fun res!48136 () Bool)

(assert (=> b!91634 (=> (not res!48136) (not e!50168))))

(assert (=> b!91634 (= res!48136 (isBraun!0 (left!1861 (left!1861 (right!1867 tree!174)))))))

(declare-fun b!91635 () Bool)

(declare-fun res!48137 () Bool)

(assert (=> b!91635 (=> (not res!48137) (not e!50168))))

(assert (=> b!91635 (= res!48137 (isBraun!0 (right!1867 (left!1861 (right!1867 tree!174)))))))

(declare-fun b!91636 () Bool)

(declare-fun lt!20617 () (_ BitVec 32))

(declare-fun lt!20618 () (_ BitVec 32))

(assert (=> b!91636 (= e!50168 (or (= lt!20617 lt!20618) (= lt!20617 (bvadd lt!20618 #b00000000000000000000000000000001))))))

(assert (=> b!91636 (= lt!20618 (height!0 (right!1867 (left!1861 (right!1867 tree!174)))))))

(assert (=> b!91636 (= lt!20617 (height!0 (left!1861 (left!1861 (right!1867 tree!174)))))))

(assert (= (and d!60204 (not res!48138)) b!91634))

(assert (= (and b!91634 res!48136) b!91635))

(assert (= (and b!91635 res!48137) b!91636))

(declare-fun m!87420 () Bool)

(assert (=> b!91634 m!87420))

(declare-fun m!87422 () Bool)

(assert (=> b!91635 m!87422))

(assert (=> b!91636 m!87360))

(assert (=> b!91636 m!87362))

(assert (=> b!91585 d!60204))

(declare-fun d!60206 () Bool)

(declare-fun res!48141 () Bool)

(declare-fun e!50171 () Bool)

(assert (=> d!60206 (=> res!48141 e!50171)))

(assert (=> d!60206 (= res!48141 (not (is-Node!178 (left!1861 (left!1861 tree!174)))))))

(assert (=> d!60206 (= (isBraun!0 (left!1861 (left!1861 tree!174))) e!50171)))

(declare-fun b!91637 () Bool)

(declare-fun e!50170 () Bool)

(assert (=> b!91637 (= e!50171 e!50170)))

(declare-fun res!48139 () Bool)

(assert (=> b!91637 (=> (not res!48139) (not e!50170))))

(assert (=> b!91637 (= res!48139 (isBraun!0 (left!1861 (left!1861 (left!1861 tree!174)))))))

(declare-fun b!91638 () Bool)

(declare-fun res!48140 () Bool)

(assert (=> b!91638 (=> (not res!48140) (not e!50170))))

(assert (=> b!91638 (= res!48140 (isBraun!0 (right!1867 (left!1861 (left!1861 tree!174)))))))

(declare-fun b!91639 () Bool)

(declare-fun lt!20619 () (_ BitVec 32))

(declare-fun lt!20620 () (_ BitVec 32))

(assert (=> b!91639 (= e!50170 (or (= lt!20619 lt!20620) (= lt!20619 (bvadd lt!20620 #b00000000000000000000000000000001))))))

(assert (=> b!91639 (= lt!20620 (height!0 (right!1867 (left!1861 (left!1861 tree!174)))))))

(assert (=> b!91639 (= lt!20619 (height!0 (left!1861 (left!1861 (left!1861 tree!174)))))))

(assert (= (and d!60206 (not res!48141)) b!91637))

(assert (= (and b!91637 res!48139) b!91638))

(assert (= (and b!91638 res!48140) b!91639))

(declare-fun m!87424 () Bool)

(assert (=> b!91637 m!87424))

(declare-fun m!87426 () Bool)

(assert (=> b!91638 m!87426))

(assert (=> b!91639 m!87400))

(assert (=> b!91639 m!87402))

(assert (=> d!60164 d!60206))

(assert (=> b!91587 d!60178))

(assert (=> b!91587 d!60180))

(declare-fun d!60208 () Bool)

(declare-fun res!48144 () Bool)

(declare-fun e!50173 () Bool)

(assert (=> d!60208 (=> res!48144 e!50173)))

(assert (=> d!60208 (= res!48144 (not (is-Node!178 (right!1867 (right!1867 res!48059)))))))

(assert (=> d!60208 (= (isBraun!0 (right!1867 (right!1867 res!48059))) e!50173)))

(declare-fun b!91640 () Bool)

(declare-fun e!50172 () Bool)

(assert (=> b!91640 (= e!50173 e!50172)))

(declare-fun res!48142 () Bool)

(assert (=> b!91640 (=> (not res!48142) (not e!50172))))

(assert (=> b!91640 (= res!48142 (isBraun!0 (left!1861 (right!1867 (right!1867 res!48059)))))))

(declare-fun b!91641 () Bool)

(declare-fun res!48143 () Bool)

(assert (=> b!91641 (=> (not res!48143) (not e!50172))))

(assert (=> b!91641 (= res!48143 (isBraun!0 (right!1867 (right!1867 (right!1867 res!48059)))))))

(declare-fun b!91642 () Bool)

(declare-fun lt!20621 () (_ BitVec 32))

(declare-fun lt!20622 () (_ BitVec 32))

(assert (=> b!91642 (= e!50172 (or (= lt!20621 lt!20622) (= lt!20621 (bvadd lt!20622 #b00000000000000000000000000000001))))))

(assert (=> b!91642 (= lt!20622 (height!0 (right!1867 (right!1867 (right!1867 res!48059)))))))

(assert (=> b!91642 (= lt!20621 (height!0 (left!1861 (right!1867 (right!1867 res!48059)))))))

(assert (= (and d!60208 (not res!48144)) b!91640))

(assert (= (and b!91640 res!48142) b!91641))

(assert (= (and b!91641 res!48143) b!91642))

(declare-fun m!87428 () Bool)

(assert (=> b!91640 m!87428))

(declare-fun m!87430 () Bool)

(assert (=> b!91641 m!87430))

(assert (=> b!91642 m!87364))

(assert (=> b!91642 m!87366))

(assert (=> b!91580 d!60208))

(declare-fun b!91643 () Bool)

(declare-fun e!50174 () (_ BitVec 32))

(declare-fun lt!20623 () (_ BitVec 32))

(declare-fun lt!20624 () (_ BitVec 32))

(assert (=> b!91643 (= e!50174 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20623 lt!20624) lt!20623 lt!20624)))))

(assert (=> b!91643 (= lt!20624 (height!0 (right!1867 (right!1867 (left!1861 res!48059)))))))

(assert (=> b!91643 (= lt!20623 (height!0 (left!1861 (right!1867 (left!1861 res!48059)))))))

(declare-fun d!60210 () Bool)

(declare-fun c!22321 () Bool)

(assert (=> d!60210 (= c!22321 (is-Node!178 (right!1867 (left!1861 res!48059))))))

(assert (=> d!60210 (= (height!0 (right!1867 (left!1861 res!48059))) e!50174)))

(declare-fun b!91644 () Bool)

(assert (=> b!91644 (= e!50174 #b00000000000000000000000000000000)))

(assert (= (and d!60210 c!22321) b!91643))

(assert (= (and d!60210 (not c!22321)) b!91644))

(assert (=> b!91643 m!87408))

(assert (=> b!91643 m!87410))

(assert (=> b!91575 d!60210))

(declare-fun b!91645 () Bool)

(declare-fun e!50175 () (_ BitVec 32))

(declare-fun lt!20625 () (_ BitVec 32))

(declare-fun lt!20626 () (_ BitVec 32))

(assert (=> b!91645 (= e!50175 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20625 lt!20626) lt!20625 lt!20626)))))

(assert (=> b!91645 (= lt!20626 (height!0 (right!1867 (left!1861 (left!1861 res!48059)))))))

(assert (=> b!91645 (= lt!20625 (height!0 (left!1861 (left!1861 (left!1861 res!48059)))))))

(declare-fun d!60212 () Bool)

(declare-fun c!22322 () Bool)

(assert (=> d!60212 (= c!22322 (is-Node!178 (left!1861 (left!1861 res!48059))))))

(assert (=> d!60212 (= (height!0 (left!1861 (left!1861 res!48059))) e!50175)))

(declare-fun b!91646 () Bool)

(assert (=> b!91646 (= e!50175 #b00000000000000000000000000000000)))

(assert (= (and d!60212 c!22322) b!91645))

(assert (= (and d!60212 (not c!22322)) b!91646))

(assert (=> b!91645 m!87416))

(assert (=> b!91645 m!87418))

(assert (=> b!91575 d!60212))

(declare-fun d!60214 () Bool)

(declare-fun res!48147 () Bool)

(declare-fun e!50177 () Bool)

(assert (=> d!60214 (=> res!48147 e!50177)))

(assert (=> d!60214 (= res!48147 (not (is-Node!178 (left!1861 (right!1867 res!48059)))))))

(assert (=> d!60214 (= (isBraun!0 (left!1861 (right!1867 res!48059))) e!50177)))

(declare-fun b!91647 () Bool)

(declare-fun e!50176 () Bool)

(assert (=> b!91647 (= e!50177 e!50176)))

(declare-fun res!48145 () Bool)

(assert (=> b!91647 (=> (not res!48145) (not e!50176))))

(assert (=> b!91647 (= res!48145 (isBraun!0 (left!1861 (left!1861 (right!1867 res!48059)))))))

(declare-fun b!91648 () Bool)

(declare-fun res!48146 () Bool)

(assert (=> b!91648 (=> (not res!48146) (not e!50176))))

(assert (=> b!91648 (= res!48146 (isBraun!0 (right!1867 (left!1861 (right!1867 res!48059)))))))

(declare-fun b!91649 () Bool)

(declare-fun lt!20627 () (_ BitVec 32))

(declare-fun lt!20628 () (_ BitVec 32))

(assert (=> b!91649 (= e!50176 (or (= lt!20627 lt!20628) (= lt!20627 (bvadd lt!20628 #b00000000000000000000000000000001))))))

(assert (=> b!91649 (= lt!20628 (height!0 (right!1867 (left!1861 (right!1867 res!48059)))))))

(assert (=> b!91649 (= lt!20627 (height!0 (left!1861 (left!1861 (right!1867 res!48059)))))))

(assert (= (and d!60214 (not res!48147)) b!91647))

(assert (= (and b!91647 res!48145) b!91648))

(assert (= (and b!91648 res!48146) b!91649))

(declare-fun m!87432 () Bool)

(assert (=> b!91647 m!87432))

(declare-fun m!87434 () Bool)

(assert (=> b!91648 m!87434))

(assert (=> b!91649 m!87368))

(assert (=> b!91649 m!87370))

(assert (=> b!91579 d!60214))

(declare-fun d!60216 () Bool)

(declare-fun e!50179 () Bool)

(assert (=> d!60216 e!50179))

(declare-fun res!48148 () Bool)

(assert (=> d!60216 (=> (not res!48148) (not e!50179))))

(declare-fun lt!20629 () Tree!137)

(assert (=> d!60216 (= res!48148 (is-Node!178 lt!20629))))

(declare-fun e!50178 () Tree!137)

(assert (=> d!60216 (= lt!20629 e!50178)))

(declare-fun c!22323 () Bool)

(assert (=> d!60216 (= c!22323 (is-Node!178 (left!1861 (left!1861 (left!1861 tree!174)))))))

(assert (=> d!60216 (isBraun!0 (left!1861 (left!1861 (left!1861 tree!174))))))

(assert (=> d!60216 (= (insert!11 (left!1861 (left!1861 (left!1861 tree!174))) x!33376) lt!20629)))

(declare-fun b!91650 () Bool)

(assert (=> b!91650 (= e!50178 (Node!178 (value!8758 (left!1861 (left!1861 (left!1861 tree!174)))) (insert!11 (left!1861 (left!1861 (left!1861 (left!1861 tree!174)))) x!33376) (right!1867 (left!1861 (left!1861 (left!1861 tree!174))))))))

(declare-fun b!91651 () Bool)

(assert (=> b!91651 (= e!50178 (Node!178 x!33376 Leaf!661 Leaf!661))))

(declare-fun b!91652 () Bool)

(assert (=> b!91652 (= e!50179 (isBraun!0 lt!20629))))

(assert (= (and d!60216 c!22323) b!91650))

(assert (= (and d!60216 (not c!22323)) b!91651))

(assert (= (and d!60216 res!48148) b!91652))

(assert (=> d!60216 m!87424))

(declare-fun m!87436 () Bool)

(assert (=> b!91650 m!87436))

(declare-fun m!87438 () Bool)

(assert (=> b!91652 m!87438))

(assert (=> b!91582 d!60216))

(declare-fun d!60218 () Bool)

(declare-fun res!48151 () Bool)

(declare-fun e!50181 () Bool)

(assert (=> d!60218 (=> res!48151 e!50181)))

(assert (=> d!60218 (= res!48151 (not (is-Node!178 (right!1867 (left!1861 tree!174)))))))

(assert (=> d!60218 (= (isBraun!0 (right!1867 (left!1861 tree!174))) e!50181)))

(declare-fun b!91653 () Bool)

(declare-fun e!50180 () Bool)

(assert (=> b!91653 (= e!50181 e!50180)))

(declare-fun res!48149 () Bool)

(assert (=> b!91653 (=> (not res!48149) (not e!50180))))

(assert (=> b!91653 (= res!48149 (isBraun!0 (left!1861 (right!1867 (left!1861 tree!174)))))))

(declare-fun b!91654 () Bool)

(declare-fun res!48150 () Bool)

(assert (=> b!91654 (=> (not res!48150) (not e!50180))))

(assert (=> b!91654 (= res!48150 (isBraun!0 (right!1867 (right!1867 (left!1861 tree!174)))))))

(declare-fun b!91655 () Bool)

(declare-fun lt!20630 () (_ BitVec 32))

(declare-fun lt!20631 () (_ BitVec 32))

(assert (=> b!91655 (= e!50180 (or (= lt!20630 lt!20631) (= lt!20630 (bvadd lt!20631 #b00000000000000000000000000000001))))))

(assert (=> b!91655 (= lt!20631 (height!0 (right!1867 (right!1867 (left!1861 tree!174)))))))

(assert (=> b!91655 (= lt!20630 (height!0 (left!1861 (right!1867 (left!1861 tree!174)))))))

(assert (= (and d!60218 (not res!48151)) b!91653))

(assert (= (and b!91653 res!48149) b!91654))

(assert (= (and b!91654 res!48150) b!91655))

(declare-fun m!87440 () Bool)

(assert (=> b!91653 m!87440))

(declare-fun m!87442 () Bool)

(assert (=> b!91654 m!87442))

(assert (=> b!91655 m!87396))

(assert (=> b!91655 m!87398))

(assert (=> b!91597 d!60218))

(declare-fun d!60220 () Bool)

(declare-fun res!48154 () Bool)

(declare-fun e!50183 () Bool)

(assert (=> d!60220 (=> res!48154 e!50183)))

(assert (=> d!60220 (= res!48154 (not (is-Node!178 (left!1861 lt!20567))))))

(assert (=> d!60220 (= (isBraun!0 (left!1861 lt!20567)) e!50183)))

(declare-fun b!91656 () Bool)

(declare-fun e!50182 () Bool)

(assert (=> b!91656 (= e!50183 e!50182)))

(declare-fun res!48152 () Bool)

(assert (=> b!91656 (=> (not res!48152) (not e!50182))))

(assert (=> b!91656 (= res!48152 (isBraun!0 (left!1861 (left!1861 lt!20567))))))

(declare-fun b!91657 () Bool)

(declare-fun res!48153 () Bool)

(assert (=> b!91657 (=> (not res!48153) (not e!50182))))

(assert (=> b!91657 (= res!48153 (isBraun!0 (right!1867 (left!1861 lt!20567))))))

(declare-fun b!91658 () Bool)

(declare-fun lt!20632 () (_ BitVec 32))

(declare-fun lt!20633 () (_ BitVec 32))

(assert (=> b!91658 (= e!50182 (or (= lt!20632 lt!20633) (= lt!20632 (bvadd lt!20633 #b00000000000000000000000000000001))))))

(assert (=> b!91658 (= lt!20633 (height!0 (right!1867 (left!1861 lt!20567))))))

(assert (=> b!91658 (= lt!20632 (height!0 (left!1861 (left!1861 lt!20567))))))

(assert (= (and d!60220 (not res!48154)) b!91656))

(assert (= (and b!91656 res!48152) b!91657))

(assert (= (and b!91657 res!48153) b!91658))

(declare-fun m!87444 () Bool)

(assert (=> b!91656 m!87444))

(declare-fun m!87446 () Bool)

(assert (=> b!91657 m!87446))

(assert (=> b!91658 m!87392))

(assert (=> b!91658 m!87394))

(assert (=> b!91576 d!60220))

(assert (=> b!91601 d!60210))

(assert (=> b!91601 d!60212))

(assert (=> b!91596 d!60206))

(push 1)

(assert (not b!91634))

(assert (not b!91640))

(assert (not b!91619))

(assert (not b!91620))

(assert (not b!91618))

(assert (not b!91616))

(assert (not b!91632))

(assert (not b!91649))

(assert (not b!91639))

(assert (not b!91647))

(assert (not b!91607))

(assert (not b!91630))

(assert (not b!91631))

(assert (not b!91614))

(assert (not b!91635))

(assert (not b!91648))

(assert (not b!91603))

(assert (not b!91629))

(assert (not b!91654))

(assert (not b!91636))

(assert (not b!91628))

(assert (not b!91642))

(assert (not b!91605))

(assert (not d!60216))

(assert (not b!91643))

(assert (not b!91626))

(assert (not b!91612))

(assert (not b!91633))

(assert (not b!91637))

(assert (not b!91624))

(assert (not b!91645))

(assert (not b!91613))

(assert (not b!91657))

(assert (not b!91656))

(assert (not b!91622))

(assert (not b!91638))

(assert (not b!91615))

(assert (not b!91609))

(assert (not b!91617))

(assert (not b!91611))

(assert (not b!91652))

(assert (not b!91653))

(assert (not b!91658))

(assert (not b!91655))

(assert (not b!91641))

(assert (not b!91650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60222 () Bool)

(declare-fun res!48157 () Bool)

(declare-fun e!50185 () Bool)

(assert (=> d!60222 (=> res!48157 e!50185)))

(assert (=> d!60222 (= res!48157 (not (is-Node!178 (right!1867 (right!1867 (left!1861 tree!174))))))))

(assert (=> d!60222 (= (isBraun!0 (right!1867 (right!1867 (left!1861 tree!174)))) e!50185)))

(declare-fun b!91659 () Bool)

(declare-fun e!50184 () Bool)

(assert (=> b!91659 (= e!50185 e!50184)))

(declare-fun res!48155 () Bool)

(assert (=> b!91659 (=> (not res!48155) (not e!50184))))

(assert (=> b!91659 (= res!48155 (isBraun!0 (left!1861 (right!1867 (right!1867 (left!1861 tree!174))))))))

(declare-fun b!91660 () Bool)

(declare-fun res!48156 () Bool)

(assert (=> b!91660 (=> (not res!48156) (not e!50184))))

(assert (=> b!91660 (= res!48156 (isBraun!0 (right!1867 (right!1867 (right!1867 (left!1861 tree!174))))))))

(declare-fun b!91661 () Bool)

(declare-fun lt!20634 () (_ BitVec 32))

(declare-fun lt!20635 () (_ BitVec 32))

(assert (=> b!91661 (= e!50184 (or (= lt!20634 lt!20635) (= lt!20634 (bvadd lt!20635 #b00000000000000000000000000000001))))))

(assert (=> b!91661 (= lt!20635 (height!0 (right!1867 (right!1867 (right!1867 (left!1861 tree!174))))))))

(assert (=> b!91661 (= lt!20634 (height!0 (left!1861 (right!1867 (right!1867 (left!1861 tree!174))))))))

(assert (= (and d!60222 (not res!48157)) b!91659))

(assert (= (and b!91659 res!48155) b!91660))

(assert (= (and b!91660 res!48156) b!91661))

(declare-fun m!87448 () Bool)

(assert (=> b!91659 m!87448))

(declare-fun m!87450 () Bool)

(assert (=> b!91660 m!87450))

(declare-fun m!87452 () Bool)

(assert (=> b!91661 m!87452))

(declare-fun m!87454 () Bool)

(assert (=> b!91661 m!87454))

(assert (=> b!91654 d!60222))

(declare-fun b!91662 () Bool)

(declare-fun e!50186 () (_ BitVec 32))

(declare-fun lt!20636 () (_ BitVec 32))

(declare-fun lt!20637 () (_ BitVec 32))

(assert (=> b!91662 (= e!50186 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20636 lt!20637) lt!20636 lt!20637)))))

(assert (=> b!91662 (= lt!20637 (height!0 (right!1867 (right!1867 (left!1861 lt!20567)))))))

(assert (=> b!91662 (= lt!20636 (height!0 (left!1861 (right!1867 (left!1861 lt!20567)))))))

(declare-fun d!60224 () Bool)

(declare-fun c!22324 () Bool)

(assert (=> d!60224 (= c!22324 (is-Node!178 (right!1867 (left!1861 lt!20567))))))

(assert (=> d!60224 (= (height!0 (right!1867 (left!1861 lt!20567))) e!50186)))

(declare-fun b!91663 () Bool)

(assert (=> b!91663 (= e!50186 #b00000000000000000000000000000000)))

(assert (= (and d!60224 c!22324) b!91662))

(assert (= (and d!60224 (not c!22324)) b!91663))

(declare-fun m!87456 () Bool)

(assert (=> b!91662 m!87456))

(declare-fun m!87458 () Bool)

(assert (=> b!91662 m!87458))

(assert (=> b!91658 d!60224))

(declare-fun b!91664 () Bool)

(declare-fun e!50187 () (_ BitVec 32))

(declare-fun lt!20638 () (_ BitVec 32))

(declare-fun lt!20639 () (_ BitVec 32))

(assert (=> b!91664 (= e!50187 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20638 lt!20639) lt!20638 lt!20639)))))

(assert (=> b!91664 (= lt!20639 (height!0 (right!1867 (left!1861 (left!1861 lt!20567)))))))

(assert (=> b!91664 (= lt!20638 (height!0 (left!1861 (left!1861 (left!1861 lt!20567)))))))

(declare-fun d!60226 () Bool)

(declare-fun c!22325 () Bool)

(assert (=> d!60226 (= c!22325 (is-Node!178 (left!1861 (left!1861 lt!20567))))))

(assert (=> d!60226 (= (height!0 (left!1861 (left!1861 lt!20567))) e!50187)))

(declare-fun b!91665 () Bool)

(assert (=> b!91665 (= e!50187 #b00000000000000000000000000000000)))

(assert (= (and d!60226 c!22325) b!91664))

(assert (= (and d!60226 (not c!22325)) b!91665))

(declare-fun m!87460 () Bool)

(assert (=> b!91664 m!87460))

(declare-fun m!87462 () Bool)

(assert (=> b!91664 m!87462))

(assert (=> b!91658 d!60226))

(declare-fun b!91666 () Bool)

(declare-fun e!50188 () (_ BitVec 32))

(declare-fun lt!20640 () (_ BitVec 32))

(declare-fun lt!20641 () (_ BitVec 32))

(assert (=> b!91666 (= e!50188 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20640 lt!20641) lt!20640 lt!20641)))))

(assert (=> b!91666 (= lt!20641 (height!0 (right!1867 (right!1867 lt!20574))))))

(assert (=> b!91666 (= lt!20640 (height!0 (left!1861 (right!1867 lt!20574))))))

(declare-fun d!60228 () Bool)

(declare-fun c!22326 () Bool)

(assert (=> d!60228 (= c!22326 (is-Node!178 (right!1867 lt!20574)))))

(assert (=> d!60228 (= (height!0 (right!1867 lt!20574)) e!50188)))

(declare-fun b!91667 () Bool)

(assert (=> b!91667 (= e!50188 #b00000000000000000000000000000000)))

(assert (= (and d!60228 c!22326) b!91666))

(assert (= (and d!60228 (not c!22326)) b!91667))

(declare-fun m!87464 () Bool)

(assert (=> b!91666 m!87464))

(declare-fun m!87466 () Bool)

(assert (=> b!91666 m!87466))

(assert (=> b!91613 d!60228))

(declare-fun b!91668 () Bool)

(declare-fun e!50189 () (_ BitVec 32))

(declare-fun lt!20642 () (_ BitVec 32))

(declare-fun lt!20643 () (_ BitVec 32))

(assert (=> b!91668 (= e!50189 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20642 lt!20643) lt!20642 lt!20643)))))

(assert (=> b!91668 (= lt!20643 (height!0 (right!1867 (left!1861 lt!20574))))))

(assert (=> b!91668 (= lt!20642 (height!0 (left!1861 (left!1861 lt!20574))))))

(declare-fun d!60230 () Bool)

(declare-fun c!22327 () Bool)

(assert (=> d!60230 (= c!22327 (is-Node!178 (left!1861 lt!20574)))))

(assert (=> d!60230 (= (height!0 (left!1861 lt!20574)) e!50189)))

(declare-fun b!91669 () Bool)

(assert (=> b!91669 (= e!50189 #b00000000000000000000000000000000)))

(assert (= (and d!60230 c!22327) b!91668))

(assert (= (and d!60230 (not c!22327)) b!91669))

(declare-fun m!87468 () Bool)

(assert (=> b!91668 m!87468))

(declare-fun m!87470 () Bool)

(assert (=> b!91668 m!87470))

(assert (=> b!91613 d!60230))

(declare-fun d!60232 () Bool)

(declare-fun e!50191 () Bool)

(assert (=> d!60232 e!50191))

(declare-fun res!48158 () Bool)

(assert (=> d!60232 (=> (not res!48158) (not e!50191))))

(declare-fun lt!20644 () Tree!137)

(assert (=> d!60232 (= res!48158 (is-Node!178 lt!20644))))

(declare-fun e!50190 () Tree!137)

(assert (=> d!60232 (= lt!20644 e!50190)))

(declare-fun c!22328 () Bool)

(assert (=> d!60232 (= c!22328 (is-Node!178 (left!1861 (left!1861 (left!1861 (left!1861 tree!174))))))))

(assert (=> d!60232 (isBraun!0 (left!1861 (left!1861 (left!1861 (left!1861 tree!174)))))))

(assert (=> d!60232 (= (insert!11 (left!1861 (left!1861 (left!1861 (left!1861 tree!174)))) x!33376) lt!20644)))

(declare-fun b!91670 () Bool)

(assert (=> b!91670 (= e!50190 (Node!178 (value!8758 (left!1861 (left!1861 (left!1861 (left!1861 tree!174))))) (insert!11 (left!1861 (left!1861 (left!1861 (left!1861 (left!1861 tree!174))))) x!33376) (right!1867 (left!1861 (left!1861 (left!1861 (left!1861 tree!174)))))))))

(declare-fun b!91671 () Bool)

(assert (=> b!91671 (= e!50190 (Node!178 x!33376 Leaf!661 Leaf!661))))

(declare-fun b!91672 () Bool)

(assert (=> b!91672 (= e!50191 (isBraun!0 lt!20644))))

(assert (= (and d!60232 c!22328) b!91670))

(assert (= (and d!60232 (not c!22328)) b!91671))

(assert (= (and d!60232 res!48158) b!91672))

(declare-fun m!87472 () Bool)

(assert (=> d!60232 m!87472))

(declare-fun m!87474 () Bool)

(assert (=> b!91670 m!87474))

(declare-fun m!87476 () Bool)

(assert (=> b!91672 m!87476))

(assert (=> b!91650 d!60232))

(declare-fun d!60234 () Bool)

(declare-fun res!48161 () Bool)

(declare-fun e!50193 () Bool)

(assert (=> d!60234 (=> res!48161 e!50193)))

(assert (=> d!60234 (= res!48161 (not (is-Node!178 lt!20629)))))

(assert (=> d!60234 (= (isBraun!0 lt!20629) e!50193)))

(declare-fun b!91673 () Bool)

(declare-fun e!50192 () Bool)

(assert (=> b!91673 (= e!50193 e!50192)))

(declare-fun res!48159 () Bool)

(assert (=> b!91673 (=> (not res!48159) (not e!50192))))

(assert (=> b!91673 (= res!48159 (isBraun!0 (left!1861 lt!20629)))))

(declare-fun b!91674 () Bool)

(declare-fun res!48160 () Bool)

(assert (=> b!91674 (=> (not res!48160) (not e!50192))))

(assert (=> b!91674 (= res!48160 (isBraun!0 (right!1867 lt!20629)))))

(declare-fun b!91675 () Bool)

(declare-fun lt!20645 () (_ BitVec 32))

(declare-fun lt!20646 () (_ BitVec 32))

(assert (=> b!91675 (= e!50192 (or (= lt!20645 lt!20646) (= lt!20645 (bvadd lt!20646 #b00000000000000000000000000000001))))))

(assert (=> b!91675 (= lt!20646 (height!0 (right!1867 lt!20629)))))

(assert (=> b!91675 (= lt!20645 (height!0 (left!1861 lt!20629)))))

(assert (= (and d!60234 (not res!48161)) b!91673))

(assert (= (and b!91673 res!48159) b!91674))

(assert (= (and b!91674 res!48160) b!91675))

(declare-fun m!87478 () Bool)

(assert (=> b!91673 m!87478))

(declare-fun m!87480 () Bool)

(assert (=> b!91674 m!87480))

(declare-fun m!87482 () Bool)

(assert (=> b!91675 m!87482))

(declare-fun m!87484 () Bool)

(assert (=> b!91675 m!87484))

(assert (=> b!91652 d!60234))

(declare-fun d!60236 () Bool)

(declare-fun res!48164 () Bool)

(declare-fun e!50195 () Bool)

(assert (=> d!60236 (=> res!48164 e!50195)))

(assert (=> d!60236 (= res!48164 (not (is-Node!178 (left!1861 (left!1861 (left!1861 tree!174))))))))

(assert (=> d!60236 (= (isBraun!0 (left!1861 (left!1861 (left!1861 tree!174)))) e!50195)))

(declare-fun b!91676 () Bool)

(declare-fun e!50194 () Bool)

(assert (=> b!91676 (= e!50195 e!50194)))

(declare-fun res!48162 () Bool)

(assert (=> b!91676 (=> (not res!48162) (not e!50194))))

(assert (=> b!91676 (= res!48162 (isBraun!0 (left!1861 (left!1861 (left!1861 (left!1861 tree!174))))))))

(declare-fun b!91677 () Bool)

(declare-fun res!48163 () Bool)

(assert (=> b!91677 (=> (not res!48163) (not e!50194))))

(assert (=> b!91677 (= res!48163 (isBraun!0 (right!1867 (left!1861 (left!1861 (left!1861 tree!174))))))))

(declare-fun b!91678 () Bool)

(declare-fun lt!20647 () (_ BitVec 32))

(declare-fun lt!20648 () (_ BitVec 32))

(assert (=> b!91678 (= e!50194 (or (= lt!20647 lt!20648) (= lt!20647 (bvadd lt!20648 #b00000000000000000000000000000001))))))

(assert (=> b!91678 (= lt!20648 (height!0 (right!1867 (left!1861 (left!1861 (left!1861 tree!174))))))))

(assert (=> b!91678 (= lt!20647 (height!0 (left!1861 (left!1861 (left!1861 (left!1861 tree!174))))))))

(assert (= (and d!60236 (not res!48164)) b!91676))

(assert (= (and b!91676 res!48162) b!91677))

(assert (= (and b!91677 res!48163) b!91678))

(assert (=> b!91676 m!87472))

(declare-fun m!87486 () Bool)

(assert (=> b!91677 m!87486))

(declare-fun m!87488 () Bool)

(assert (=> b!91678 m!87488))

(declare-fun m!87490 () Bool)

(assert (=> b!91678 m!87490))

(assert (=> d!60216 d!60236))

(declare-fun d!60238 () Bool)

(declare-fun res!48167 () Bool)

(declare-fun e!50197 () Bool)

(assert (=> d!60238 (=> res!48167 e!50197)))

(assert (=> d!60238 (= res!48167 (not (is-Node!178 (left!1861 lt!20574))))))

(assert (=> d!60238 (= (isBraun!0 (left!1861 lt!20574)) e!50197)))

(declare-fun b!91679 () Bool)

(declare-fun e!50196 () Bool)

(assert (=> b!91679 (= e!50197 e!50196)))

(declare-fun res!48165 () Bool)

(assert (=> b!91679 (=> (not res!48165) (not e!50196))))

(assert (=> b!91679 (= res!48165 (isBraun!0 (left!1861 (left!1861 lt!20574))))))

(declare-fun b!91680 () Bool)

(declare-fun res!48166 () Bool)

(assert (=> b!91680 (=> (not res!48166) (not e!50196))))

(assert (=> b!91680 (= res!48166 (isBraun!0 (right!1867 (left!1861 lt!20574))))))

(declare-fun b!91681 () Bool)

(declare-fun lt!20649 () (_ BitVec 32))

(declare-fun lt!20650 () (_ BitVec 32))

(assert (=> b!91681 (= e!50196 (or (= lt!20649 lt!20650) (= lt!20649 (bvadd lt!20650 #b00000000000000000000000000000001))))))

(assert (=> b!91681 (= lt!20650 (height!0 (right!1867 (left!1861 lt!20574))))))

(assert (=> b!91681 (= lt!20649 (height!0 (left!1861 (left!1861 lt!20574))))))

(assert (= (and d!60238 (not res!48167)) b!91679))

(assert (= (and b!91679 res!48165) b!91680))

(assert (= (and b!91680 res!48166) b!91681))

(declare-fun m!87492 () Bool)

(assert (=> b!91679 m!87492))

(declare-fun m!87494 () Bool)

(assert (=> b!91680 m!87494))

(assert (=> b!91681 m!87468))

(assert (=> b!91681 m!87470))

(assert (=> b!91611 d!60238))

(declare-fun b!91682 () Bool)

(declare-fun e!50198 () (_ BitVec 32))

(declare-fun lt!20651 () (_ BitVec 32))

(declare-fun lt!20652 () (_ BitVec 32))

(assert (=> b!91682 (= e!50198 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20651 lt!20652) lt!20651 lt!20652)))))

(assert (=> b!91682 (= lt!20652 (height!0 (right!1867 (right!1867 (left!1861 (right!1867 tree!174))))))))

(assert (=> b!91682 (= lt!20651 (height!0 (left!1861 (right!1867 (left!1861 (right!1867 tree!174))))))))

(declare-fun d!60240 () Bool)

(declare-fun c!22329 () Bool)

(assert (=> d!60240 (= c!22329 (is-Node!178 (right!1867 (left!1861 (right!1867 tree!174)))))))

(assert (=> d!60240 (= (height!0 (right!1867 (left!1861 (right!1867 tree!174)))) e!50198)))

(declare-fun b!91683 () Bool)

(assert (=> b!91683 (= e!50198 #b00000000000000000000000000000000)))

(assert (= (and d!60240 c!22329) b!91682))

(assert (= (and d!60240 (not c!22329)) b!91683))

(declare-fun m!87496 () Bool)

(assert (=> b!91682 m!87496))

(declare-fun m!87498 () Bool)

(assert (=> b!91682 m!87498))

(assert (=> b!91636 d!60240))

(declare-fun b!91684 () Bool)

(declare-fun e!50199 () (_ BitVec 32))

(declare-fun lt!20653 () (_ BitVec 32))

(declare-fun lt!20654 () (_ BitVec 32))

(assert (=> b!91684 (= e!50199 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20653 lt!20654) lt!20653 lt!20654)))))

(assert (=> b!91684 (= lt!20654 (height!0 (right!1867 (left!1861 (left!1861 (right!1867 tree!174))))))))

(assert (=> b!91684 (= lt!20653 (height!0 (left!1861 (left!1861 (left!1861 (right!1867 tree!174))))))))

(declare-fun d!60242 () Bool)

(declare-fun c!22330 () Bool)

(assert (=> d!60242 (= c!22330 (is-Node!178 (left!1861 (left!1861 (right!1867 tree!174)))))))

(assert (=> d!60242 (= (height!0 (left!1861 (left!1861 (right!1867 tree!174)))) e!50199)))

(declare-fun b!91685 () Bool)

(assert (=> b!91685 (= e!50199 #b00000000000000000000000000000000)))

(assert (= (and d!60242 c!22330) b!91684))

(assert (= (and d!60242 (not c!22330)) b!91685))

(declare-fun m!87500 () Bool)

(assert (=> b!91684 m!87500))

(declare-fun m!87502 () Bool)

(assert (=> b!91684 m!87502))

(assert (=> b!91636 d!60242))

(declare-fun b!91686 () Bool)

(declare-fun e!50200 () (_ BitVec 32))

(declare-fun lt!20655 () (_ BitVec 32))

(declare-fun lt!20656 () (_ BitVec 32))

(assert (=> b!91686 (= e!50200 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20655 lt!20656) lt!20655 lt!20656)))))

(assert (=> b!91686 (= lt!20656 (height!0 (right!1867 (right!1867 (left!1861 (left!1861 res!48059))))))))

(assert (=> b!91686 (= lt!20655 (height!0 (left!1861 (right!1867 (left!1861 (left!1861 res!48059))))))))

(declare-fun d!60244 () Bool)

(declare-fun c!22331 () Bool)

(assert (=> d!60244 (= c!22331 (is-Node!178 (right!1867 (left!1861 (left!1861 res!48059)))))))

(assert (=> d!60244 (= (height!0 (right!1867 (left!1861 (left!1861 res!48059)))) e!50200)))

(declare-fun b!91687 () Bool)

(assert (=> b!91687 (= e!50200 #b00000000000000000000000000000000)))

(assert (= (and d!60244 c!22331) b!91686))

(assert (= (and d!60244 (not c!22331)) b!91687))

(declare-fun m!87504 () Bool)

(assert (=> b!91686 m!87504))

(declare-fun m!87506 () Bool)

(assert (=> b!91686 m!87506))

(assert (=> b!91633 d!60244))

(declare-fun b!91688 () Bool)

(declare-fun e!50201 () (_ BitVec 32))

(declare-fun lt!20657 () (_ BitVec 32))

(declare-fun lt!20658 () (_ BitVec 32))

(assert (=> b!91688 (= e!50201 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20657 lt!20658) lt!20657 lt!20658)))))

(assert (=> b!91688 (= lt!20658 (height!0 (right!1867 (left!1861 (left!1861 (left!1861 res!48059))))))))

(assert (=> b!91688 (= lt!20657 (height!0 (left!1861 (left!1861 (left!1861 (left!1861 res!48059))))))))

(declare-fun d!60246 () Bool)

(declare-fun c!22332 () Bool)

(assert (=> d!60246 (= c!22332 (is-Node!178 (left!1861 (left!1861 (left!1861 res!48059)))))))

(assert (=> d!60246 (= (height!0 (left!1861 (left!1861 (left!1861 res!48059)))) e!50201)))

(declare-fun b!91689 () Bool)

(assert (=> b!91689 (= e!50201 #b00000000000000000000000000000000)))

(assert (= (and d!60246 c!22332) b!91688))

(assert (= (and d!60246 (not c!22332)) b!91689))

(declare-fun m!87508 () Bool)

(assert (=> b!91688 m!87508))

(declare-fun m!87510 () Bool)

(assert (=> b!91688 m!87510))

(assert (=> b!91633 d!60246))

(declare-fun d!60248 () Bool)

(declare-fun res!48170 () Bool)

(declare-fun e!50203 () Bool)

(assert (=> d!60248 (=> res!48170 e!50203)))

(assert (=> d!60248 (= res!48170 (not (is-Node!178 (right!1867 (right!1867 (left!1861 res!48059))))))))

(assert (=> d!60248 (= (isBraun!0 (right!1867 (right!1867 (left!1861 res!48059)))) e!50203)))

(declare-fun b!91690 () Bool)

(declare-fun e!50202 () Bool)

(assert (=> b!91690 (= e!50203 e!50202)))

(declare-fun res!48168 () Bool)

(assert (=> b!91690 (=> (not res!48168) (not e!50202))))

(assert (=> b!91690 (= res!48168 (isBraun!0 (left!1861 (right!1867 (right!1867 (left!1861 res!48059))))))))

(declare-fun b!91691 () Bool)

(declare-fun res!48169 () Bool)

(assert (=> b!91691 (=> (not res!48169) (not e!50202))))

(assert (=> b!91691 (= res!48169 (isBraun!0 (right!1867 (right!1867 (right!1867 (left!1861 res!48059))))))))

(declare-fun b!91692 () Bool)

(declare-fun lt!20659 () (_ BitVec 32))

(declare-fun lt!20660 () (_ BitVec 32))

(assert (=> b!91692 (= e!50202 (or (= lt!20659 lt!20660) (= lt!20659 (bvadd lt!20660 #b00000000000000000000000000000001))))))

(assert (=> b!91692 (= lt!20660 (height!0 (right!1867 (right!1867 (right!1867 (left!1861 res!48059))))))))

(assert (=> b!91692 (= lt!20659 (height!0 (left!1861 (right!1867 (right!1867 (left!1861 res!48059))))))))

(assert (= (and d!60248 (not res!48170)) b!91690))

(assert (= (and b!91690 res!48168) b!91691))

(assert (= (and b!91691 res!48169) b!91692))

(declare-fun m!87512 () Bool)

(assert (=> b!91690 m!87512))

(declare-fun m!87514 () Bool)

(assert (=> b!91691 m!87514))

(declare-fun m!87516 () Bool)

(assert (=> b!91692 m!87516))

(declare-fun m!87518 () Bool)

(assert (=> b!91692 m!87518))

(assert (=> b!91629 d!60248))

(declare-fun d!60250 () Bool)

(declare-fun res!48173 () Bool)

(declare-fun e!50205 () Bool)

(assert (=> d!60250 (=> res!48173 e!50205)))

(assert (=> d!60250 (= res!48173 (not (is-Node!178 (left!1861 (left!1861 (left!1861 res!48059))))))))

(assert (=> d!60250 (= (isBraun!0 (left!1861 (left!1861 (left!1861 res!48059)))) e!50205)))

(declare-fun b!91693 () Bool)

(declare-fun e!50204 () Bool)

(assert (=> b!91693 (= e!50205 e!50204)))

(declare-fun res!48171 () Bool)

(assert (=> b!91693 (=> (not res!48171) (not e!50204))))

(assert (=> b!91693 (= res!48171 (isBraun!0 (left!1861 (left!1861 (left!1861 (left!1861 res!48059))))))))

(declare-fun b!91694 () Bool)

(declare-fun res!48172 () Bool)

(assert (=> b!91694 (=> (not res!48172) (not e!50204))))

(assert (=> b!91694 (= res!48172 (isBraun!0 (right!1867 (left!1861 (left!1861 (left!1861 res!48059))))))))

(declare-fun b!91695 () Bool)

(declare-fun lt!20661 () (_ BitVec 32))

(declare-fun lt!20662 () (_ BitVec 32))

(assert (=> b!91695 (= e!50204 (or (= lt!20661 lt!20662) (= lt!20661 (bvadd lt!20662 #b00000000000000000000000000000001))))))

(assert (=> b!91695 (= lt!20662 (height!0 (right!1867 (left!1861 (left!1861 (left!1861 res!48059))))))))

(assert (=> b!91695 (= lt!20661 (height!0 (left!1861 (left!1861 (left!1861 (left!1861 res!48059))))))))

(assert (= (and d!60250 (not res!48173)) b!91693))

(assert (= (and b!91693 res!48171) b!91694))

(assert (= (and b!91694 res!48172) b!91695))

(declare-fun m!87520 () Bool)

(assert (=> b!91693 m!87520))

(declare-fun m!87522 () Bool)

(assert (=> b!91694 m!87522))

(assert (=> b!91695 m!87508))

(assert (=> b!91695 m!87510))

(assert (=> b!91631 d!60250))

(declare-fun b!91696 () Bool)

(declare-fun e!50206 () (_ BitVec 32))

(declare-fun lt!20663 () (_ BitVec 32))

(declare-fun lt!20664 () (_ BitVec 32))

(assert (=> b!91696 (= e!50206 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20663 lt!20664) lt!20663 lt!20664)))))

(assert (=> b!91696 (= lt!20664 (height!0 (right!1867 (right!1867 (left!1861 (left!1861 tree!174))))))))

(assert (=> b!91696 (= lt!20663 (height!0 (left!1861 (right!1867 (left!1861 (left!1861 tree!174))))))))

(declare-fun d!60252 () Bool)

(declare-fun c!22333 () Bool)

(assert (=> d!60252 (= c!22333 (is-Node!178 (right!1867 (left!1861 (left!1861 tree!174)))))))

(assert (=> d!60252 (= (height!0 (right!1867 (left!1861 (left!1861 tree!174)))) e!50206)))

(declare-fun b!91697 () Bool)

(assert (=> b!91697 (= e!50206 #b00000000000000000000000000000000)))

(assert (= (and d!60252 c!22333) b!91696))

(assert (= (and d!60252 (not c!22333)) b!91697))

(declare-fun m!87524 () Bool)

(assert (=> b!91696 m!87524))

(declare-fun m!87526 () Bool)

(assert (=> b!91696 m!87526))

(assert (=> b!91639 d!60252))

(declare-fun b!91698 () Bool)

(declare-fun e!50207 () (_ BitVec 32))

(declare-fun lt!20665 () (_ BitVec 32))

(declare-fun lt!20666 () (_ BitVec 32))

(assert (=> b!91698 (= e!50207 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20665 lt!20666) lt!20665 lt!20666)))))

(assert (=> b!91698 (= lt!20666 (height!0 (right!1867 (left!1861 (left!1861 (left!1861 tree!174))))))))

(assert (=> b!91698 (= lt!20665 (height!0 (left!1861 (left!1861 (left!1861 (left!1861 tree!174))))))))

(declare-fun d!60254 () Bool)

(declare-fun c!22334 () Bool)

(assert (=> d!60254 (= c!22334 (is-Node!178 (left!1861 (left!1861 (left!1861 tree!174)))))))

(assert (=> d!60254 (= (height!0 (left!1861 (left!1861 (left!1861 tree!174)))) e!50207)))

(declare-fun b!91699 () Bool)

(assert (=> b!91699 (= e!50207 #b00000000000000000000000000000000)))

(assert (= (and d!60254 c!22334) b!91698))

(assert (= (and d!60254 (not c!22334)) b!91699))

(assert (=> b!91698 m!87488))

(assert (=> b!91698 m!87490))

(assert (=> b!91639 d!60254))

(assert (=> b!91645 d!60244))

(assert (=> b!91645 d!60246))

(declare-fun d!60256 () Bool)

(declare-fun res!48176 () Bool)

(declare-fun e!50209 () Bool)

(assert (=> d!60256 (=> res!48176 e!50209)))

(assert (=> d!60256 (= res!48176 (not (is-Node!178 (left!1861 (left!1861 lt!20567)))))))

(assert (=> d!60256 (= (isBraun!0 (left!1861 (left!1861 lt!20567))) e!50209)))

(declare-fun b!91700 () Bool)

(declare-fun e!50208 () Bool)

(assert (=> b!91700 (= e!50209 e!50208)))

(declare-fun res!48174 () Bool)

(assert (=> b!91700 (=> (not res!48174) (not e!50208))))

(assert (=> b!91700 (= res!48174 (isBraun!0 (left!1861 (left!1861 (left!1861 lt!20567)))))))

(declare-fun b!91701 () Bool)

(declare-fun res!48175 () Bool)

(assert (=> b!91701 (=> (not res!48175) (not e!50208))))

(assert (=> b!91701 (= res!48175 (isBraun!0 (right!1867 (left!1861 (left!1861 lt!20567)))))))

(declare-fun b!91702 () Bool)

(declare-fun lt!20667 () (_ BitVec 32))

(declare-fun lt!20668 () (_ BitVec 32))

(assert (=> b!91702 (= e!50208 (or (= lt!20667 lt!20668) (= lt!20667 (bvadd lt!20668 #b00000000000000000000000000000001))))))

(assert (=> b!91702 (= lt!20668 (height!0 (right!1867 (left!1861 (left!1861 lt!20567)))))))

(assert (=> b!91702 (= lt!20667 (height!0 (left!1861 (left!1861 (left!1861 lt!20567)))))))

(assert (= (and d!60256 (not res!48176)) b!91700))

(assert (= (and b!91700 res!48174) b!91701))

(assert (= (and b!91701 res!48175) b!91702))

(declare-fun m!87528 () Bool)

(assert (=> b!91700 m!87528))

(declare-fun m!87530 () Bool)

(assert (=> b!91701 m!87530))

(assert (=> b!91702 m!87460))

(assert (=> b!91702 m!87462))

(assert (=> b!91656 d!60256))

(declare-fun b!91703 () Bool)

(declare-fun e!50210 () (_ BitVec 32))

(declare-fun lt!20669 () (_ BitVec 32))

(declare-fun lt!20670 () (_ BitVec 32))

(assert (=> b!91703 (= e!50210 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20669 lt!20670) lt!20669 lt!20670)))))

(assert (=> b!91703 (= lt!20670 (height!0 (right!1867 (right!1867 (right!1867 (left!1861 tree!174))))))))

(assert (=> b!91703 (= lt!20669 (height!0 (left!1861 (right!1867 (right!1867 (left!1861 tree!174))))))))

(declare-fun d!60258 () Bool)

(declare-fun c!22335 () Bool)

(assert (=> d!60258 (= c!22335 (is-Node!178 (right!1867 (right!1867 (left!1861 tree!174)))))))

(assert (=> d!60258 (= (height!0 (right!1867 (right!1867 (left!1861 tree!174)))) e!50210)))

(declare-fun b!91704 () Bool)

(assert (=> b!91704 (= e!50210 #b00000000000000000000000000000000)))

(assert (= (and d!60258 c!22335) b!91703))

(assert (= (and d!60258 (not c!22335)) b!91704))

(assert (=> b!91703 m!87452))

(assert (=> b!91703 m!87454))

(assert (=> b!91624 d!60258))

(declare-fun b!91705 () Bool)

(declare-fun e!50211 () (_ BitVec 32))

(declare-fun lt!20671 () (_ BitVec 32))

(declare-fun lt!20672 () (_ BitVec 32))

(assert (=> b!91705 (= e!50211 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20671 lt!20672) lt!20671 lt!20672)))))

(assert (=> b!91705 (= lt!20672 (height!0 (right!1867 (left!1861 (right!1867 (left!1861 tree!174))))))))

(assert (=> b!91705 (= lt!20671 (height!0 (left!1861 (left!1861 (right!1867 (left!1861 tree!174))))))))

(declare-fun d!60260 () Bool)

(declare-fun c!22336 () Bool)

(assert (=> d!60260 (= c!22336 (is-Node!178 (left!1861 (right!1867 (left!1861 tree!174)))))))

(assert (=> d!60260 (= (height!0 (left!1861 (right!1867 (left!1861 tree!174)))) e!50211)))

(declare-fun b!91706 () Bool)

(assert (=> b!91706 (= e!50211 #b00000000000000000000000000000000)))

(assert (= (and d!60260 c!22336) b!91705))

(assert (= (and d!60260 (not c!22336)) b!91706))

(declare-fun m!87532 () Bool)

(assert (=> b!91705 m!87532))

(declare-fun m!87534 () Bool)

(assert (=> b!91705 m!87534))

(assert (=> b!91624 d!60260))

(declare-fun d!60262 () Bool)

(declare-fun res!48179 () Bool)

(declare-fun e!50213 () Bool)

(assert (=> d!60262 (=> res!48179 e!50213)))

(assert (=> d!60262 (= res!48179 (not (is-Node!178 (right!1867 (left!1861 (left!1861 res!48059))))))))

(assert (=> d!60262 (= (isBraun!0 (right!1867 (left!1861 (left!1861 res!48059)))) e!50213)))

(declare-fun b!91707 () Bool)

(declare-fun e!50212 () Bool)

(assert (=> b!91707 (= e!50213 e!50212)))

(declare-fun res!48177 () Bool)

(assert (=> b!91707 (=> (not res!48177) (not e!50212))))

(assert (=> b!91707 (= res!48177 (isBraun!0 (left!1861 (right!1867 (left!1861 (left!1861 res!48059))))))))

(declare-fun b!91708 () Bool)

(declare-fun res!48178 () Bool)

(assert (=> b!91708 (=> (not res!48178) (not e!50212))))

(assert (=> b!91708 (= res!48178 (isBraun!0 (right!1867 (right!1867 (left!1861 (left!1861 res!48059))))))))

(declare-fun b!91709 () Bool)

(declare-fun lt!20673 () (_ BitVec 32))

(declare-fun lt!20674 () (_ BitVec 32))

(assert (=> b!91709 (= e!50212 (or (= lt!20673 lt!20674) (= lt!20673 (bvadd lt!20674 #b00000000000000000000000000000001))))))

(assert (=> b!91709 (= lt!20674 (height!0 (right!1867 (right!1867 (left!1861 (left!1861 res!48059))))))))

(assert (=> b!91709 (= lt!20673 (height!0 (left!1861 (right!1867 (left!1861 (left!1861 res!48059))))))))

(assert (= (and d!60262 (not res!48179)) b!91707))

(assert (= (and b!91707 res!48177) b!91708))

(assert (= (and b!91708 res!48178) b!91709))

(declare-fun m!87536 () Bool)

(assert (=> b!91707 m!87536))

(declare-fun m!87538 () Bool)

(assert (=> b!91708 m!87538))

(assert (=> b!91709 m!87504))

(assert (=> b!91709 m!87506))

(assert (=> b!91632 d!60262))

(declare-fun b!91710 () Bool)

(declare-fun e!50214 () (_ BitVec 32))

(declare-fun lt!20675 () (_ BitVec 32))

(declare-fun lt!20676 () (_ BitVec 32))

(assert (=> b!91710 (= e!50214 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20675 lt!20676) lt!20675 lt!20676)))))

(assert (=> b!91710 (= lt!20676 (height!0 (right!1867 (right!1867 (left!1861 (right!1867 res!48059))))))))

(assert (=> b!91710 (= lt!20675 (height!0 (left!1861 (right!1867 (left!1861 (right!1867 res!48059))))))))

(declare-fun d!60264 () Bool)

(declare-fun c!22337 () Bool)

(assert (=> d!60264 (= c!22337 (is-Node!178 (right!1867 (left!1861 (right!1867 res!48059)))))))

(assert (=> d!60264 (= (height!0 (right!1867 (left!1861 (right!1867 res!48059)))) e!50214)))

(declare-fun b!91711 () Bool)

(assert (=> b!91711 (= e!50214 #b00000000000000000000000000000000)))

(assert (= (and d!60264 c!22337) b!91710))

(assert (= (and d!60264 (not c!22337)) b!91711))

(declare-fun m!87540 () Bool)

(assert (=> b!91710 m!87540))

(declare-fun m!87542 () Bool)

(assert (=> b!91710 m!87542))

(assert (=> b!91649 d!60264))

(declare-fun b!91712 () Bool)

(declare-fun e!50215 () (_ BitVec 32))

(declare-fun lt!20677 () (_ BitVec 32))

(declare-fun lt!20678 () (_ BitVec 32))

(assert (=> b!91712 (= e!50215 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20677 lt!20678) lt!20677 lt!20678)))))

(assert (=> b!91712 (= lt!20678 (height!0 (right!1867 (left!1861 (left!1861 (right!1867 res!48059))))))))

(assert (=> b!91712 (= lt!20677 (height!0 (left!1861 (left!1861 (left!1861 (right!1867 res!48059))))))))

(declare-fun d!60266 () Bool)

(declare-fun c!22338 () Bool)

(assert (=> d!60266 (= c!22338 (is-Node!178 (left!1861 (left!1861 (right!1867 res!48059)))))))

(assert (=> d!60266 (= (height!0 (left!1861 (left!1861 (right!1867 res!48059)))) e!50215)))

(declare-fun b!91713 () Bool)

(assert (=> b!91713 (= e!50215 #b00000000000000000000000000000000)))

(assert (= (and d!60266 c!22338) b!91712))

(assert (= (and d!60266 (not c!22338)) b!91713))

(declare-fun m!87544 () Bool)

(assert (=> b!91712 m!87544))

(declare-fun m!87546 () Bool)

(assert (=> b!91712 m!87546))

(assert (=> b!91649 d!60266))

(declare-fun b!91714 () Bool)

(declare-fun e!50216 () (_ BitVec 32))

(declare-fun lt!20679 () (_ BitVec 32))

(declare-fun lt!20680 () (_ BitVec 32))

(assert (=> b!91714 (= e!50216 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20679 lt!20680) lt!20679 lt!20680)))))

(assert (=> b!91714 (= lt!20680 (height!0 (right!1867 (right!1867 (right!1867 (left!1861 res!48059))))))))

(assert (=> b!91714 (= lt!20679 (height!0 (left!1861 (right!1867 (right!1867 (left!1861 res!48059))))))))

(declare-fun d!60268 () Bool)

(declare-fun c!22339 () Bool)

(assert (=> d!60268 (= c!22339 (is-Node!178 (right!1867 (right!1867 (left!1861 res!48059)))))))

(assert (=> d!60268 (= (height!0 (right!1867 (right!1867 (left!1861 res!48059)))) e!50216)))

(declare-fun b!91715 () Bool)

(assert (=> b!91715 (= e!50216 #b00000000000000000000000000000000)))

(assert (= (and d!60268 c!22339) b!91714))

(assert (= (and d!60268 (not c!22339)) b!91715))

(assert (=> b!91714 m!87516))

(assert (=> b!91714 m!87518))

(assert (=> b!91630 d!60268))

(declare-fun b!91716 () Bool)

(declare-fun e!50217 () (_ BitVec 32))

(declare-fun lt!20681 () (_ BitVec 32))

(declare-fun lt!20682 () (_ BitVec 32))

(assert (=> b!91716 (= e!50217 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20681 lt!20682) lt!20681 lt!20682)))))

(assert (=> b!91716 (= lt!20682 (height!0 (right!1867 (left!1861 (right!1867 (left!1861 res!48059))))))))

(assert (=> b!91716 (= lt!20681 (height!0 (left!1861 (left!1861 (right!1867 (left!1861 res!48059))))))))

(declare-fun d!60270 () Bool)

(declare-fun c!22340 () Bool)

(assert (=> d!60270 (= c!22340 (is-Node!178 (left!1861 (right!1867 (left!1861 res!48059)))))))

(assert (=> d!60270 (= (height!0 (left!1861 (right!1867 (left!1861 res!48059)))) e!50217)))

(declare-fun b!91717 () Bool)

(assert (=> b!91717 (= e!50217 #b00000000000000000000000000000000)))

(assert (= (and d!60270 c!22340) b!91716))

(assert (= (and d!60270 (not c!22340)) b!91717))

(declare-fun m!87548 () Bool)

(assert (=> b!91716 m!87548))

(declare-fun m!87550 () Bool)

(assert (=> b!91716 m!87550))

(assert (=> b!91630 d!60270))

(declare-fun d!60272 () Bool)

(declare-fun res!48182 () Bool)

(declare-fun e!50219 () Bool)

(assert (=> d!60272 (=> res!48182 e!50219)))

(assert (=> d!60272 (= res!48182 (not (is-Node!178 (right!1867 (left!1861 lt!20567)))))))

(assert (=> d!60272 (= (isBraun!0 (right!1867 (left!1861 lt!20567))) e!50219)))

(declare-fun b!91718 () Bool)

(declare-fun e!50218 () Bool)

(assert (=> b!91718 (= e!50219 e!50218)))

(declare-fun res!48180 () Bool)

(assert (=> b!91718 (=> (not res!48180) (not e!50218))))

(assert (=> b!91718 (= res!48180 (isBraun!0 (left!1861 (right!1867 (left!1861 lt!20567)))))))

(declare-fun b!91719 () Bool)

(declare-fun res!48181 () Bool)

(assert (=> b!91719 (=> (not res!48181) (not e!50218))))

(assert (=> b!91719 (= res!48181 (isBraun!0 (right!1867 (right!1867 (left!1861 lt!20567)))))))

(declare-fun b!91720 () Bool)

(declare-fun lt!20683 () (_ BitVec 32))

(declare-fun lt!20684 () (_ BitVec 32))

(assert (=> b!91720 (= e!50218 (or (= lt!20683 lt!20684) (= lt!20683 (bvadd lt!20684 #b00000000000000000000000000000001))))))

(assert (=> b!91720 (= lt!20684 (height!0 (right!1867 (right!1867 (left!1861 lt!20567)))))))

(assert (=> b!91720 (= lt!20683 (height!0 (left!1861 (right!1867 (left!1861 lt!20567)))))))

(assert (= (and d!60272 (not res!48182)) b!91718))

(assert (= (and b!91718 res!48180) b!91719))

(assert (= (and b!91719 res!48181) b!91720))

(declare-fun m!87552 () Bool)

(assert (=> b!91718 m!87552))

(declare-fun m!87554 () Bool)

(assert (=> b!91719 m!87554))

(assert (=> b!91720 m!87456))

(assert (=> b!91720 m!87458))

(assert (=> b!91657 d!60272))

(declare-fun b!91721 () Bool)

(declare-fun e!50220 () (_ BitVec 32))

(declare-fun lt!20685 () (_ BitVec 32))

(declare-fun lt!20686 () (_ BitVec 32))

(assert (=> b!91721 (= e!50220 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20685 lt!20686) lt!20685 lt!20686)))))

(assert (=> b!91721 (= lt!20686 (height!0 (right!1867 (right!1867 (right!1867 (right!1867 res!48059))))))))

(assert (=> b!91721 (= lt!20685 (height!0 (left!1861 (right!1867 (right!1867 (right!1867 res!48059))))))))

(declare-fun d!60274 () Bool)

(declare-fun c!22341 () Bool)

(assert (=> d!60274 (= c!22341 (is-Node!178 (right!1867 (right!1867 (right!1867 res!48059)))))))

(assert (=> d!60274 (= (height!0 (right!1867 (right!1867 (right!1867 res!48059)))) e!50220)))

(declare-fun b!91722 () Bool)

(assert (=> b!91722 (= e!50220 #b00000000000000000000000000000000)))

(assert (= (and d!60274 c!22341) b!91721))

(assert (= (and d!60274 (not c!22341)) b!91722))

(declare-fun m!87556 () Bool)

(assert (=> b!91721 m!87556))

(declare-fun m!87558 () Bool)

(assert (=> b!91721 m!87558))

(assert (=> b!91642 d!60274))

(declare-fun b!91723 () Bool)

(declare-fun e!50221 () (_ BitVec 32))

(declare-fun lt!20687 () (_ BitVec 32))

(declare-fun lt!20688 () (_ BitVec 32))

(assert (=> b!91723 (= e!50221 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20687 lt!20688) lt!20687 lt!20688)))))

(assert (=> b!91723 (= lt!20688 (height!0 (right!1867 (left!1861 (right!1867 (right!1867 res!48059))))))))

(assert (=> b!91723 (= lt!20687 (height!0 (left!1861 (left!1861 (right!1867 (right!1867 res!48059))))))))

(declare-fun d!60276 () Bool)

(declare-fun c!22342 () Bool)

(assert (=> d!60276 (= c!22342 (is-Node!178 (left!1861 (right!1867 (right!1867 res!48059)))))))

(assert (=> d!60276 (= (height!0 (left!1861 (right!1867 (right!1867 res!48059)))) e!50221)))

(declare-fun b!91724 () Bool)

(assert (=> b!91724 (= e!50221 #b00000000000000000000000000000000)))

(assert (= (and d!60276 c!22342) b!91723))

(assert (= (and d!60276 (not c!22342)) b!91724))

(declare-fun m!87560 () Bool)

(assert (=> b!91723 m!87560))

(declare-fun m!87562 () Bool)

(assert (=> b!91723 m!87562))

(assert (=> b!91642 d!60276))

(declare-fun b!91725 () Bool)

(declare-fun e!50222 () (_ BitVec 32))

(declare-fun lt!20689 () (_ BitVec 32))

(declare-fun lt!20690 () (_ BitVec 32))

(assert (=> b!91725 (= e!50222 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20689 lt!20690) lt!20689 lt!20690)))))

(assert (=> b!91725 (= lt!20690 (height!0 (right!1867 (right!1867 (right!1867 (right!1867 tree!174))))))))

(assert (=> b!91725 (= lt!20689 (height!0 (left!1861 (right!1867 (right!1867 (right!1867 tree!174))))))))

(declare-fun d!60278 () Bool)

(declare-fun c!22343 () Bool)

(assert (=> d!60278 (= c!22343 (is-Node!178 (right!1867 (right!1867 (right!1867 tree!174)))))))

(assert (=> d!60278 (= (height!0 (right!1867 (right!1867 (right!1867 tree!174)))) e!50222)))

(declare-fun b!91726 () Bool)

(assert (=> b!91726 (= e!50222 #b00000000000000000000000000000000)))

(assert (= (and d!60278 c!22343) b!91725))

(assert (= (and d!60278 (not c!22343)) b!91726))

(declare-fun m!87564 () Bool)

(assert (=> b!91725 m!87564))

(declare-fun m!87566 () Bool)

(assert (=> b!91725 m!87566))

(assert (=> b!91603 d!60278))

(declare-fun b!91727 () Bool)

(declare-fun e!50223 () (_ BitVec 32))

(declare-fun lt!20691 () (_ BitVec 32))

(declare-fun lt!20692 () (_ BitVec 32))

(assert (=> b!91727 (= e!50223 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20691 lt!20692) lt!20691 lt!20692)))))

(assert (=> b!91727 (= lt!20692 (height!0 (right!1867 (left!1861 (right!1867 (right!1867 tree!174))))))))

(assert (=> b!91727 (= lt!20691 (height!0 (left!1861 (left!1861 (right!1867 (right!1867 tree!174))))))))

(declare-fun d!60280 () Bool)

(declare-fun c!22344 () Bool)

(assert (=> d!60280 (= c!22344 (is-Node!178 (left!1861 (right!1867 (right!1867 tree!174)))))))

(assert (=> d!60280 (= (height!0 (left!1861 (right!1867 (right!1867 tree!174)))) e!50223)))

(declare-fun b!91728 () Bool)

(assert (=> b!91728 (= e!50223 #b00000000000000000000000000000000)))

(assert (= (and d!60280 c!22344) b!91727))

(assert (= (and d!60280 (not c!22344)) b!91728))

(declare-fun m!87568 () Bool)

(assert (=> b!91727 m!87568))

(declare-fun m!87570 () Bool)

(assert (=> b!91727 m!87570))

(assert (=> b!91603 d!60280))

(declare-fun d!60282 () Bool)

(declare-fun res!48185 () Bool)

(declare-fun e!50225 () Bool)

(assert (=> d!60282 (=> res!48185 e!50225)))

(assert (=> d!60282 (= res!48185 (not (is-Node!178 (left!1861 (left!1861 (right!1867 res!48059))))))))

(assert (=> d!60282 (= (isBraun!0 (left!1861 (left!1861 (right!1867 res!48059)))) e!50225)))

(declare-fun b!91729 () Bool)

(declare-fun e!50224 () Bool)

(assert (=> b!91729 (= e!50225 e!50224)))

(declare-fun res!48183 () Bool)

(assert (=> b!91729 (=> (not res!48183) (not e!50224))))

(assert (=> b!91729 (= res!48183 (isBraun!0 (left!1861 (left!1861 (left!1861 (right!1867 res!48059))))))))

(declare-fun b!91730 () Bool)

(declare-fun res!48184 () Bool)

(assert (=> b!91730 (=> (not res!48184) (not e!50224))))

(assert (=> b!91730 (= res!48184 (isBraun!0 (right!1867 (left!1861 (left!1861 (right!1867 res!48059))))))))

(declare-fun b!91731 () Bool)

(declare-fun lt!20693 () (_ BitVec 32))

(declare-fun lt!20694 () (_ BitVec 32))

(assert (=> b!91731 (= e!50224 (or (= lt!20693 lt!20694) (= lt!20693 (bvadd lt!20694 #b00000000000000000000000000000001))))))

(assert (=> b!91731 (= lt!20694 (height!0 (right!1867 (left!1861 (left!1861 (right!1867 res!48059))))))))

(assert (=> b!91731 (= lt!20693 (height!0 (left!1861 (left!1861 (left!1861 (right!1867 res!48059))))))))

(assert (= (and d!60282 (not res!48185)) b!91729))

(assert (= (and b!91729 res!48183) b!91730))

(assert (= (and b!91730 res!48184) b!91731))

(declare-fun m!87572 () Bool)

(assert (=> b!91729 m!87572))

(declare-fun m!87574 () Bool)

(assert (=> b!91730 m!87574))

(assert (=> b!91731 m!87544))

(assert (=> b!91731 m!87546))

(assert (=> b!91647 d!60282))

(assert (=> b!91607 d!60274))

(assert (=> b!91607 d!60276))

(declare-fun d!60284 () Bool)

(declare-fun res!48188 () Bool)

(declare-fun e!50227 () Bool)

(assert (=> d!60284 (=> res!48188 e!50227)))

(assert (=> d!60284 (= res!48188 (not (is-Node!178 (left!1861 (right!1867 (right!1867 res!48059))))))))

(assert (=> d!60284 (= (isBraun!0 (left!1861 (right!1867 (right!1867 res!48059)))) e!50227)))

(declare-fun b!91732 () Bool)

(declare-fun e!50226 () Bool)

(assert (=> b!91732 (= e!50227 e!50226)))

(declare-fun res!48186 () Bool)

(assert (=> b!91732 (=> (not res!48186) (not e!50226))))

(assert (=> b!91732 (= res!48186 (isBraun!0 (left!1861 (left!1861 (right!1867 (right!1867 res!48059))))))))

(declare-fun b!91733 () Bool)

(declare-fun res!48187 () Bool)

(assert (=> b!91733 (=> (not res!48187) (not e!50226))))

(assert (=> b!91733 (= res!48187 (isBraun!0 (right!1867 (left!1861 (right!1867 (right!1867 res!48059))))))))

(declare-fun b!91734 () Bool)

(declare-fun lt!20695 () (_ BitVec 32))

(declare-fun lt!20696 () (_ BitVec 32))

(assert (=> b!91734 (= e!50226 (or (= lt!20695 lt!20696) (= lt!20695 (bvadd lt!20696 #b00000000000000000000000000000001))))))

(assert (=> b!91734 (= lt!20696 (height!0 (right!1867 (left!1861 (right!1867 (right!1867 res!48059))))))))

(assert (=> b!91734 (= lt!20695 (height!0 (left!1861 (left!1861 (right!1867 (right!1867 res!48059))))))))

(assert (= (and d!60284 (not res!48188)) b!91732))

(assert (= (and b!91732 res!48186) b!91733))

(assert (= (and b!91733 res!48187) b!91734))

(declare-fun m!87576 () Bool)

(assert (=> b!91732 m!87576))

(declare-fun m!87578 () Bool)

(assert (=> b!91733 m!87578))

(assert (=> b!91734 m!87560))

(assert (=> b!91734 m!87562))

(assert (=> b!91640 d!60284))

(declare-fun b!91735 () Bool)

(declare-fun e!50228 () (_ BitVec 32))

(declare-fun lt!20697 () (_ BitVec 32))

(declare-fun lt!20698 () (_ BitVec 32))

(assert (=> b!91735 (= e!50228 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20697 lt!20698) lt!20697 lt!20698)))))

(assert (=> b!91735 (= lt!20698 (height!0 (right!1867 (right!1867 (right!1867 lt!20567)))))))

(assert (=> b!91735 (= lt!20697 (height!0 (left!1861 (right!1867 (right!1867 lt!20567)))))))

(declare-fun d!60286 () Bool)

(declare-fun c!22345 () Bool)

(assert (=> d!60286 (= c!22345 (is-Node!178 (right!1867 (right!1867 lt!20567))))))

(assert (=> d!60286 (= (height!0 (right!1867 (right!1867 lt!20567))) e!50228)))

(declare-fun b!91736 () Bool)

(assert (=> b!91736 (= e!50228 #b00000000000000000000000000000000)))

(assert (= (and d!60286 c!22345) b!91735))

(assert (= (and d!60286 (not c!22345)) b!91736))

(declare-fun m!87580 () Bool)

(assert (=> b!91735 m!87580))

(declare-fun m!87582 () Bool)

(assert (=> b!91735 m!87582))

(assert (=> b!91620 d!60286))

(declare-fun b!91737 () Bool)

(declare-fun e!50229 () (_ BitVec 32))

(declare-fun lt!20699 () (_ BitVec 32))

(declare-fun lt!20700 () (_ BitVec 32))

(assert (=> b!91737 (= e!50229 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20699 lt!20700) lt!20699 lt!20700)))))

(assert (=> b!91737 (= lt!20700 (height!0 (right!1867 (left!1861 (right!1867 lt!20567)))))))

(assert (=> b!91737 (= lt!20699 (height!0 (left!1861 (left!1861 (right!1867 lt!20567)))))))

(declare-fun d!60288 () Bool)

(declare-fun c!22346 () Bool)

(assert (=> d!60288 (= c!22346 (is-Node!178 (left!1861 (right!1867 lt!20567))))))

(assert (=> d!60288 (= (height!0 (left!1861 (right!1867 lt!20567))) e!50229)))

(declare-fun b!91738 () Bool)

(assert (=> b!91738 (= e!50229 #b00000000000000000000000000000000)))

(assert (= (and d!60288 c!22346) b!91737))

(assert (= (and d!60288 (not c!22346)) b!91738))

(declare-fun m!87584 () Bool)

(assert (=> b!91737 m!87584))

(declare-fun m!87586 () Bool)

(assert (=> b!91737 m!87586))

(assert (=> b!91620 d!60288))

(assert (=> b!91637 d!60236))

(declare-fun d!60290 () Bool)

(declare-fun res!48191 () Bool)

(declare-fun e!50231 () Bool)

(assert (=> d!60290 (=> res!48191 e!50231)))

(assert (=> d!60290 (= res!48191 (not (is-Node!178 (right!1867 (right!1867 lt!20567)))))))

(assert (=> d!60290 (= (isBraun!0 (right!1867 (right!1867 lt!20567))) e!50231)))

(declare-fun b!91739 () Bool)

(declare-fun e!50230 () Bool)

(assert (=> b!91739 (= e!50231 e!50230)))

(declare-fun res!48189 () Bool)

(assert (=> b!91739 (=> (not res!48189) (not e!50230))))

(assert (=> b!91739 (= res!48189 (isBraun!0 (left!1861 (right!1867 (right!1867 lt!20567)))))))

(declare-fun b!91740 () Bool)

(declare-fun res!48190 () Bool)

(assert (=> b!91740 (=> (not res!48190) (not e!50230))))

(assert (=> b!91740 (= res!48190 (isBraun!0 (right!1867 (right!1867 (right!1867 lt!20567)))))))

(declare-fun b!91741 () Bool)

(declare-fun lt!20701 () (_ BitVec 32))

(declare-fun lt!20702 () (_ BitVec 32))

(assert (=> b!91741 (= e!50230 (or (= lt!20701 lt!20702) (= lt!20701 (bvadd lt!20702 #b00000000000000000000000000000001))))))

(assert (=> b!91741 (= lt!20702 (height!0 (right!1867 (right!1867 (right!1867 lt!20567)))))))

(assert (=> b!91741 (= lt!20701 (height!0 (left!1861 (right!1867 (right!1867 lt!20567)))))))

(assert (= (and d!60290 (not res!48191)) b!91739))

(assert (= (and b!91739 res!48189) b!91740))

(assert (= (and b!91740 res!48190) b!91741))

(declare-fun m!87588 () Bool)

(assert (=> b!91739 m!87588))

(declare-fun m!87590 () Bool)

(assert (=> b!91740 m!87590))

(assert (=> b!91741 m!87580))

(assert (=> b!91741 m!87582))

(assert (=> b!91615 d!60290))

(assert (=> b!91655 d!60258))

(assert (=> b!91655 d!60260))

(assert (=> b!91626 d!60252))

(assert (=> b!91626 d!60254))

(assert (=> b!91605 d!60240))

(assert (=> b!91605 d!60242))

(declare-fun d!60292 () Bool)

(declare-fun res!48194 () Bool)

(declare-fun e!50233 () Bool)

(assert (=> d!60292 (=> res!48194 e!50233)))

(assert (=> d!60292 (= res!48194 (not (is-Node!178 (left!1861 (right!1867 (right!1867 tree!174))))))))

(assert (=> d!60292 (= (isBraun!0 (left!1861 (right!1867 (right!1867 tree!174)))) e!50233)))

(declare-fun b!91742 () Bool)

(declare-fun e!50232 () Bool)

(assert (=> b!91742 (= e!50233 e!50232)))

(declare-fun res!48192 () Bool)

(assert (=> b!91742 (=> (not res!48192) (not e!50232))))

(assert (=> b!91742 (= res!48192 (isBraun!0 (left!1861 (left!1861 (right!1867 (right!1867 tree!174))))))))

(declare-fun b!91743 () Bool)

(declare-fun res!48193 () Bool)

(assert (=> b!91743 (=> (not res!48193) (not e!50232))))

(assert (=> b!91743 (= res!48193 (isBraun!0 (right!1867 (left!1861 (right!1867 (right!1867 tree!174))))))))

(declare-fun b!91744 () Bool)

(declare-fun lt!20703 () (_ BitVec 32))

(declare-fun lt!20704 () (_ BitVec 32))

(assert (=> b!91744 (= e!50232 (or (= lt!20703 lt!20704) (= lt!20703 (bvadd lt!20704 #b00000000000000000000000000000001))))))

(assert (=> b!91744 (= lt!20704 (height!0 (right!1867 (left!1861 (right!1867 (right!1867 tree!174))))))))

(assert (=> b!91744 (= lt!20703 (height!0 (left!1861 (left!1861 (right!1867 (right!1867 tree!174))))))))

(assert (= (and d!60292 (not res!48194)) b!91742))

(assert (= (and b!91742 res!48192) b!91743))

(assert (= (and b!91743 res!48193) b!91744))

(declare-fun m!87592 () Bool)

(assert (=> b!91742 m!87592))

(declare-fun m!87594 () Bool)

(assert (=> b!91743 m!87594))

(assert (=> b!91744 m!87568))

(assert (=> b!91744 m!87570))

(assert (=> b!91617 d!60292))

(declare-fun d!60294 () Bool)

(declare-fun res!48197 () Bool)

(declare-fun e!50235 () Bool)

(assert (=> d!60294 (=> res!48197 e!50235)))

(assert (=> d!60294 (= res!48197 (not (is-Node!178 (right!1867 (right!1867 (right!1867 tree!174))))))))

(assert (=> d!60294 (= (isBraun!0 (right!1867 (right!1867 (right!1867 tree!174)))) e!50235)))

(declare-fun b!91745 () Bool)

(declare-fun e!50234 () Bool)

(assert (=> b!91745 (= e!50235 e!50234)))

(declare-fun res!48195 () Bool)

(assert (=> b!91745 (=> (not res!48195) (not e!50234))))

(assert (=> b!91745 (= res!48195 (isBraun!0 (left!1861 (right!1867 (right!1867 (right!1867 tree!174))))))))

(declare-fun b!91746 () Bool)

(declare-fun res!48196 () Bool)

(assert (=> b!91746 (=> (not res!48196) (not e!50234))))

(assert (=> b!91746 (= res!48196 (isBraun!0 (right!1867 (right!1867 (right!1867 (right!1867 tree!174))))))))

(declare-fun b!91747 () Bool)

(declare-fun lt!20705 () (_ BitVec 32))

(declare-fun lt!20706 () (_ BitVec 32))

(assert (=> b!91747 (= e!50234 (or (= lt!20705 lt!20706) (= lt!20705 (bvadd lt!20706 #b00000000000000000000000000000001))))))

(assert (=> b!91747 (= lt!20706 (height!0 (right!1867 (right!1867 (right!1867 (right!1867 tree!174))))))))

(assert (=> b!91747 (= lt!20705 (height!0 (left!1861 (right!1867 (right!1867 (right!1867 tree!174))))))))

(assert (= (and d!60294 (not res!48197)) b!91745))

(assert (= (and b!91745 res!48195) b!91746))

(assert (= (and b!91746 res!48196) b!91747))

(declare-fun m!87596 () Bool)

(assert (=> b!91745 m!87596))

(declare-fun m!87598 () Bool)

(assert (=> b!91746 m!87598))

(assert (=> b!91747 m!87564))

(assert (=> b!91747 m!87566))

(assert (=> b!91618 d!60294))

(assert (=> b!91622 d!60224))

(assert (=> b!91622 d!60226))

(assert (=> b!91616 d!60286))

(assert (=> b!91616 d!60288))

(assert (=> b!91609 d!60264))

(assert (=> b!91609 d!60266))

(declare-fun d!60296 () Bool)

(declare-fun res!48200 () Bool)

(declare-fun e!50237 () Bool)

(assert (=> d!60296 (=> res!48200 e!50237)))

(assert (=> d!60296 (= res!48200 (not (is-Node!178 (left!1861 (right!1867 lt!20567)))))))

(assert (=> d!60296 (= (isBraun!0 (left!1861 (right!1867 lt!20567))) e!50237)))

(declare-fun b!91748 () Bool)

(declare-fun e!50236 () Bool)

(assert (=> b!91748 (= e!50237 e!50236)))

(declare-fun res!48198 () Bool)

(assert (=> b!91748 (=> (not res!48198) (not e!50236))))

(assert (=> b!91748 (= res!48198 (isBraun!0 (left!1861 (left!1861 (right!1867 lt!20567)))))))

(declare-fun b!91749 () Bool)

(declare-fun res!48199 () Bool)

(assert (=> b!91749 (=> (not res!48199) (not e!50236))))

(assert (=> b!91749 (= res!48199 (isBraun!0 (right!1867 (left!1861 (right!1867 lt!20567)))))))

(declare-fun b!91750 () Bool)

(declare-fun lt!20707 () (_ BitVec 32))

(declare-fun lt!20708 () (_ BitVec 32))

(assert (=> b!91750 (= e!50236 (or (= lt!20707 lt!20708) (= lt!20707 (bvadd lt!20708 #b00000000000000000000000000000001))))))

(assert (=> b!91750 (= lt!20708 (height!0 (right!1867 (left!1861 (right!1867 lt!20567)))))))

(assert (=> b!91750 (= lt!20707 (height!0 (left!1861 (left!1861 (right!1867 lt!20567)))))))

(assert (= (and d!60296 (not res!48200)) b!91748))

(assert (= (and b!91748 res!48198) b!91749))

(assert (= (and b!91749 res!48199) b!91750))

(declare-fun m!87600 () Bool)

(assert (=> b!91748 m!87600))

(declare-fun m!87602 () Bool)

(assert (=> b!91749 m!87602))

(assert (=> b!91750 m!87584))

(assert (=> b!91750 m!87586))

(assert (=> b!91614 d!60296))

(declare-fun d!60298 () Bool)

(declare-fun res!48203 () Bool)

(declare-fun e!50239 () Bool)

(assert (=> d!60298 (=> res!48203 e!50239)))

(assert (=> d!60298 (= res!48203 (not (is-Node!178 (right!1867 (left!1861 (right!1867 tree!174))))))))

(assert (=> d!60298 (= (isBraun!0 (right!1867 (left!1861 (right!1867 tree!174)))) e!50239)))

(declare-fun b!91751 () Bool)

(declare-fun e!50238 () Bool)

(assert (=> b!91751 (= e!50239 e!50238)))

(declare-fun res!48201 () Bool)

(assert (=> b!91751 (=> (not res!48201) (not e!50238))))

(assert (=> b!91751 (= res!48201 (isBraun!0 (left!1861 (right!1867 (left!1861 (right!1867 tree!174))))))))

(declare-fun b!91752 () Bool)

(declare-fun res!48202 () Bool)

(assert (=> b!91752 (=> (not res!48202) (not e!50238))))

(assert (=> b!91752 (= res!48202 (isBraun!0 (right!1867 (right!1867 (left!1861 (right!1867 tree!174))))))))

(declare-fun b!91753 () Bool)

(declare-fun lt!20709 () (_ BitVec 32))

(declare-fun lt!20710 () (_ BitVec 32))

(assert (=> b!91753 (= e!50238 (or (= lt!20709 lt!20710) (= lt!20709 (bvadd lt!20710 #b00000000000000000000000000000001))))))

(assert (=> b!91753 (= lt!20710 (height!0 (right!1867 (right!1867 (left!1861 (right!1867 tree!174))))))))

(assert (=> b!91753 (= lt!20709 (height!0 (left!1861 (right!1867 (left!1861 (right!1867 tree!174))))))))

(assert (= (and d!60298 (not res!48203)) b!91751))

(assert (= (and b!91751 res!48201) b!91752))

(assert (= (and b!91752 res!48202) b!91753))

(declare-fun m!87604 () Bool)

(assert (=> b!91751 m!87604))

(declare-fun m!87606 () Bool)

(assert (=> b!91752 m!87606))

(assert (=> b!91753 m!87496))

(assert (=> b!91753 m!87498))

(assert (=> b!91635 d!60298))

(declare-fun d!60300 () Bool)

(declare-fun res!48206 () Bool)

(declare-fun e!50241 () Bool)

(assert (=> d!60300 (=> res!48206 e!50241)))

(assert (=> d!60300 (= res!48206 (not (is-Node!178 (right!1867 (right!1867 (right!1867 res!48059))))))))

(assert (=> d!60300 (= (isBraun!0 (right!1867 (right!1867 (right!1867 res!48059)))) e!50241)))

(declare-fun b!91754 () Bool)

(declare-fun e!50240 () Bool)

(assert (=> b!91754 (= e!50241 e!50240)))

(declare-fun res!48204 () Bool)

(assert (=> b!91754 (=> (not res!48204) (not e!50240))))

(assert (=> b!91754 (= res!48204 (isBraun!0 (left!1861 (right!1867 (right!1867 (right!1867 res!48059))))))))

(declare-fun b!91755 () Bool)

(declare-fun res!48205 () Bool)

(assert (=> b!91755 (=> (not res!48205) (not e!50240))))

(assert (=> b!91755 (= res!48205 (isBraun!0 (right!1867 (right!1867 (right!1867 (right!1867 res!48059))))))))

(declare-fun b!91756 () Bool)

(declare-fun lt!20711 () (_ BitVec 32))

(declare-fun lt!20712 () (_ BitVec 32))

(assert (=> b!91756 (= e!50240 (or (= lt!20711 lt!20712) (= lt!20711 (bvadd lt!20712 #b00000000000000000000000000000001))))))

(assert (=> b!91756 (= lt!20712 (height!0 (right!1867 (right!1867 (right!1867 (right!1867 res!48059))))))))

(assert (=> b!91756 (= lt!20711 (height!0 (left!1861 (right!1867 (right!1867 (right!1867 res!48059))))))))

(assert (= (and d!60300 (not res!48206)) b!91754))

(assert (= (and b!91754 res!48204) b!91755))

(assert (= (and b!91755 res!48205) b!91756))

(declare-fun m!87608 () Bool)

(assert (=> b!91754 m!87608))

(declare-fun m!87610 () Bool)

(assert (=> b!91755 m!87610))

(assert (=> b!91756 m!87556))

(assert (=> b!91756 m!87558))

(assert (=> b!91641 d!60300))

(declare-fun d!60302 () Bool)

(declare-fun res!48209 () Bool)

(declare-fun e!50243 () Bool)

(assert (=> d!60302 (=> res!48209 e!50243)))

(assert (=> d!60302 (= res!48209 (not (is-Node!178 (right!1867 (left!1861 (left!1861 tree!174))))))))

(assert (=> d!60302 (= (isBraun!0 (right!1867 (left!1861 (left!1861 tree!174)))) e!50243)))

(declare-fun b!91757 () Bool)

(declare-fun e!50242 () Bool)

(assert (=> b!91757 (= e!50243 e!50242)))

(declare-fun res!48207 () Bool)

(assert (=> b!91757 (=> (not res!48207) (not e!50242))))

(assert (=> b!91757 (= res!48207 (isBraun!0 (left!1861 (right!1867 (left!1861 (left!1861 tree!174))))))))

(declare-fun b!91758 () Bool)

(declare-fun res!48208 () Bool)

(assert (=> b!91758 (=> (not res!48208) (not e!50242))))

(assert (=> b!91758 (= res!48208 (isBraun!0 (right!1867 (right!1867 (left!1861 (left!1861 tree!174))))))))

(declare-fun b!91759 () Bool)

(declare-fun lt!20713 () (_ BitVec 32))

(declare-fun lt!20714 () (_ BitVec 32))

(assert (=> b!91759 (= e!50242 (or (= lt!20713 lt!20714) (= lt!20713 (bvadd lt!20714 #b00000000000000000000000000000001))))))

(assert (=> b!91759 (= lt!20714 (height!0 (right!1867 (right!1867 (left!1861 (left!1861 tree!174))))))))

(assert (=> b!91759 (= lt!20713 (height!0 (left!1861 (right!1867 (left!1861 (left!1861 tree!174))))))))

(assert (= (and d!60302 (not res!48209)) b!91757))

(assert (= (and b!91757 res!48207) b!91758))

(assert (= (and b!91758 res!48208) b!91759))

(declare-fun m!87612 () Bool)

(assert (=> b!91757 m!87612))

(declare-fun m!87614 () Bool)

(assert (=> b!91758 m!87614))

(assert (=> b!91759 m!87524))

(assert (=> b!91759 m!87526))

(assert (=> b!91638 d!60302))

(declare-fun d!60304 () Bool)

(declare-fun res!48212 () Bool)

(declare-fun e!50245 () Bool)

(assert (=> d!60304 (=> res!48212 e!50245)))

(assert (=> d!60304 (= res!48212 (not (is-Node!178 (right!1867 (left!1861 (right!1867 res!48059))))))))

(assert (=> d!60304 (= (isBraun!0 (right!1867 (left!1861 (right!1867 res!48059)))) e!50245)))

(declare-fun b!91760 () Bool)

(declare-fun e!50244 () Bool)

(assert (=> b!91760 (= e!50245 e!50244)))

(declare-fun res!48210 () Bool)

(assert (=> b!91760 (=> (not res!48210) (not e!50244))))

(assert (=> b!91760 (= res!48210 (isBraun!0 (left!1861 (right!1867 (left!1861 (right!1867 res!48059))))))))

(declare-fun b!91761 () Bool)

(declare-fun res!48211 () Bool)

(assert (=> b!91761 (=> (not res!48211) (not e!50244))))

(assert (=> b!91761 (= res!48211 (isBraun!0 (right!1867 (right!1867 (left!1861 (right!1867 res!48059))))))))

(declare-fun b!91762 () Bool)

(declare-fun lt!20715 () (_ BitVec 32))

(declare-fun lt!20716 () (_ BitVec 32))

(assert (=> b!91762 (= e!50244 (or (= lt!20715 lt!20716) (= lt!20715 (bvadd lt!20716 #b00000000000000000000000000000001))))))

(assert (=> b!91762 (= lt!20716 (height!0 (right!1867 (right!1867 (left!1861 (right!1867 res!48059))))))))

(assert (=> b!91762 (= lt!20715 (height!0 (left!1861 (right!1867 (left!1861 (right!1867 res!48059))))))))

(assert (= (and d!60304 (not res!48212)) b!91760))

(assert (= (and b!91760 res!48210) b!91761))

(assert (= (and b!91761 res!48211) b!91762))

(declare-fun m!87616 () Bool)

(assert (=> b!91760 m!87616))

(declare-fun m!87618 () Bool)

(assert (=> b!91761 m!87618))

(assert (=> b!91762 m!87540))

(assert (=> b!91762 m!87542))

(assert (=> b!91648 d!60304))

(assert (=> b!91643 d!60268))

(assert (=> b!91643 d!60270))

(assert (=> b!91619 d!60278))

(assert (=> b!91619 d!60280))

(declare-fun d!60306 () Bool)

(declare-fun res!48215 () Bool)

(declare-fun e!50247 () Bool)

(assert (=> d!60306 (=> res!48215 e!50247)))

(assert (=> d!60306 (= res!48215 (not (is-Node!178 (left!1861 (left!1861 (right!1867 tree!174))))))))

(assert (=> d!60306 (= (isBraun!0 (left!1861 (left!1861 (right!1867 tree!174)))) e!50247)))

(declare-fun b!91763 () Bool)

(declare-fun e!50246 () Bool)

(assert (=> b!91763 (= e!50247 e!50246)))

(declare-fun res!48213 () Bool)

(assert (=> b!91763 (=> (not res!48213) (not e!50246))))

(assert (=> b!91763 (= res!48213 (isBraun!0 (left!1861 (left!1861 (left!1861 (right!1867 tree!174))))))))

(declare-fun b!91764 () Bool)

(declare-fun res!48214 () Bool)

(assert (=> b!91764 (=> (not res!48214) (not e!50246))))

(assert (=> b!91764 (= res!48214 (isBraun!0 (right!1867 (left!1861 (left!1861 (right!1867 tree!174))))))))

(declare-fun b!91765 () Bool)

(declare-fun lt!20717 () (_ BitVec 32))

(declare-fun lt!20718 () (_ BitVec 32))

(assert (=> b!91765 (= e!50246 (or (= lt!20717 lt!20718) (= lt!20717 (bvadd lt!20718 #b00000000000000000000000000000001))))))

(assert (=> b!91765 (= lt!20718 (height!0 (right!1867 (left!1861 (left!1861 (right!1867 tree!174))))))))

(assert (=> b!91765 (= lt!20717 (height!0 (left!1861 (left!1861 (left!1861 (right!1867 tree!174))))))))

(assert (= (and d!60306 (not res!48215)) b!91763))

(assert (= (and b!91763 res!48213) b!91764))

(assert (= (and b!91764 res!48214) b!91765))

(declare-fun m!87620 () Bool)

(assert (=> b!91763 m!87620))

(declare-fun m!87622 () Bool)

(assert (=> b!91764 m!87622))

(assert (=> b!91765 m!87500))

(assert (=> b!91765 m!87502))

(assert (=> b!91634 d!60306))

(declare-fun d!60308 () Bool)

(declare-fun res!48218 () Bool)

(declare-fun e!50249 () Bool)

(assert (=> d!60308 (=> res!48218 e!50249)))

(assert (=> d!60308 (= res!48218 (not (is-Node!178 (left!1861 (right!1867 (left!1861 res!48059))))))))

(assert (=> d!60308 (= (isBraun!0 (left!1861 (right!1867 (left!1861 res!48059)))) e!50249)))

(declare-fun b!91766 () Bool)

(declare-fun e!50248 () Bool)

(assert (=> b!91766 (= e!50249 e!50248)))

(declare-fun res!48216 () Bool)

(assert (=> b!91766 (=> (not res!48216) (not e!50248))))

(assert (=> b!91766 (= res!48216 (isBraun!0 (left!1861 (left!1861 (right!1867 (left!1861 res!48059))))))))

(declare-fun b!91767 () Bool)

(declare-fun res!48217 () Bool)

(assert (=> b!91767 (=> (not res!48217) (not e!50248))))

(assert (=> b!91767 (= res!48217 (isBraun!0 (right!1867 (left!1861 (right!1867 (left!1861 res!48059))))))))

(declare-fun b!91768 () Bool)

(declare-fun lt!20719 () (_ BitVec 32))

(declare-fun lt!20720 () (_ BitVec 32))

(assert (=> b!91768 (= e!50248 (or (= lt!20719 lt!20720) (= lt!20719 (bvadd lt!20720 #b00000000000000000000000000000001))))))

(assert (=> b!91768 (= lt!20720 (height!0 (right!1867 (left!1861 (right!1867 (left!1861 res!48059))))))))

(assert (=> b!91768 (= lt!20719 (height!0 (left!1861 (left!1861 (right!1867 (left!1861 res!48059))))))))

(assert (= (and d!60308 (not res!48218)) b!91766))

(assert (= (and b!91766 res!48216) b!91767))

(assert (= (and b!91767 res!48217) b!91768))

(declare-fun m!87624 () Bool)

(assert (=> b!91766 m!87624))

(declare-fun m!87626 () Bool)

(assert (=> b!91767 m!87626))

(assert (=> b!91768 m!87548))

(assert (=> b!91768 m!87550))

(assert (=> b!91628 d!60308))

(declare-fun d!60310 () Bool)

(declare-fun res!48221 () Bool)

(declare-fun e!50251 () Bool)

(assert (=> d!60310 (=> res!48221 e!50251)))

(assert (=> d!60310 (= res!48221 (not (is-Node!178 (left!1861 (right!1867 (left!1861 tree!174))))))))

(assert (=> d!60310 (= (isBraun!0 (left!1861 (right!1867 (left!1861 tree!174)))) e!50251)))

(declare-fun b!91769 () Bool)

(declare-fun e!50250 () Bool)

(assert (=> b!91769 (= e!50251 e!50250)))

(declare-fun res!48219 () Bool)

(assert (=> b!91769 (=> (not res!48219) (not e!50250))))

(assert (=> b!91769 (= res!48219 (isBraun!0 (left!1861 (left!1861 (right!1867 (left!1861 tree!174))))))))

(declare-fun b!91770 () Bool)

(declare-fun res!48220 () Bool)

(assert (=> b!91770 (=> (not res!48220) (not e!50250))))

(assert (=> b!91770 (= res!48220 (isBraun!0 (right!1867 (left!1861 (right!1867 (left!1861 tree!174))))))))

(declare-fun b!91771 () Bool)

(declare-fun lt!20721 () (_ BitVec 32))

(declare-fun lt!20722 () (_ BitVec 32))

(assert (=> b!91771 (= e!50250 (or (= lt!20721 lt!20722) (= lt!20721 (bvadd lt!20722 #b00000000000000000000000000000001))))))

(assert (=> b!91771 (= lt!20722 (height!0 (right!1867 (left!1861 (right!1867 (left!1861 tree!174))))))))

(assert (=> b!91771 (= lt!20721 (height!0 (left!1861 (left!1861 (right!1867 (left!1861 tree!174))))))))

(assert (= (and d!60310 (not res!48221)) b!91769))

(assert (= (and b!91769 res!48219) b!91770))

(assert (= (and b!91770 res!48220) b!91771))

(declare-fun m!87628 () Bool)

(assert (=> b!91769 m!87628))

(declare-fun m!87630 () Bool)

(assert (=> b!91770 m!87630))

(assert (=> b!91771 m!87532))

(assert (=> b!91771 m!87534))

(assert (=> b!91653 d!60310))

(declare-fun d!60312 () Bool)

(declare-fun res!48224 () Bool)

(declare-fun e!50253 () Bool)

(assert (=> d!60312 (=> res!48224 e!50253)))

(assert (=> d!60312 (= res!48224 (not (is-Node!178 (right!1867 lt!20574))))))

(assert (=> d!60312 (= (isBraun!0 (right!1867 lt!20574)) e!50253)))

(declare-fun b!91772 () Bool)

(declare-fun e!50252 () Bool)

(assert (=> b!91772 (= e!50253 e!50252)))

(declare-fun res!48222 () Bool)

(assert (=> b!91772 (=> (not res!48222) (not e!50252))))

(assert (=> b!91772 (= res!48222 (isBraun!0 (left!1861 (right!1867 lt!20574))))))

(declare-fun b!91773 () Bool)

(declare-fun res!48223 () Bool)

(assert (=> b!91773 (=> (not res!48223) (not e!50252))))

(assert (=> b!91773 (= res!48223 (isBraun!0 (right!1867 (right!1867 lt!20574))))))

(declare-fun b!91774 () Bool)

(declare-fun lt!20723 () (_ BitVec 32))

(declare-fun lt!20724 () (_ BitVec 32))

(assert (=> b!91774 (= e!50252 (or (= lt!20723 lt!20724) (= lt!20723 (bvadd lt!20724 #b00000000000000000000000000000001))))))

(assert (=> b!91774 (= lt!20724 (height!0 (right!1867 (right!1867 lt!20574))))))

(assert (=> b!91774 (= lt!20723 (height!0 (left!1861 (right!1867 lt!20574))))))

(assert (= (and d!60312 (not res!48224)) b!91772))

(assert (= (and b!91772 res!48222) b!91773))

(assert (= (and b!91773 res!48223) b!91774))

(declare-fun m!87632 () Bool)

(assert (=> b!91772 m!87632))

(declare-fun m!87634 () Bool)

(assert (=> b!91773 m!87634))

(assert (=> b!91774 m!87464))

(assert (=> b!91774 m!87466))

(assert (=> b!91612 d!60312))

(push 1)

(assert (not b!91680))

(assert (not b!91668))

(assert (not b!91703))

(assert (not b!91746))

(assert (not b!91721))

(assert (not b!91770))

(assert (not b!91725))

(assert (not b!91710))

(assert (not b!91714))

(assert (not b!91730))

(assert (not b!91774))

(assert (not b!91677))

(assert (not b!91761))

(assert (not b!91707))

(assert (not b!91718))

(assert (not b!91684))

(assert (not b!91661))

(assert (not b!91681))

(assert (not b!91759))

(assert (not b!91702))

(assert (not b!91748))

(assert (not b!91662))

(assert (not b!91695))

(assert (not b!91693))

(assert (not b!91741))

(assert (not b!91719))

(assert (not b!91745))

(assert (not b!91744))

(assert (not b!91660))

(assert (not b!91755))

(assert (not b!91747))

(assert (not b!91753))

(assert (not b!91709))

(assert (not b!91691))

(assert (not b!91766))

(assert (not b!91676))

(assert (not b!91733))

(assert (not b!91701))

(assert (not b!91700))

(assert (not d!60232))

(assert (not b!91692))

(assert (not b!91750))

(assert (not b!91696))

(assert (not b!91773))

(assert (not b!91754))

(assert (not b!91672))

(assert (not b!91762))

(assert (not b!91767))

(assert (not b!91679))

(assert (not b!91716))

(assert (not b!91772))

(assert (not b!91737))

(assert (not b!91674))

(assert (not b!91659))

(assert (not b!91731))

(assert (not b!91742))

(assert (not b!91682))

(assert (not b!91723))

(assert (not b!91694))

(assert (not b!91708))

(assert (not b!91760))

(assert (not b!91698))

(assert (not b!91749))

(assert (not b!91765))

(assert (not b!91735))

(assert (not b!91678))

(assert (not b!91751))

(assert (not b!91758))

(assert (not b!91739))

(assert (not b!91768))

(assert (not b!91666))

(assert (not b!91705))

(assert (not b!91664))

(assert (not b!91673))

(assert (not b!91757))

(assert (not b!91720))

(assert (not b!91740))

(assert (not b!91690))

(assert (not b!91764))

(assert (not b!91675))

(assert (not b!91670))

(assert (not b!91771))

(assert (not b!91734))

(assert (not b!91752))

(assert (not b!91712))

(assert (not b!91769))

(assert (not b!91727))

(assert (not b!91756))

(assert (not b!91763))

(assert (not b!91743))

(assert (not b!91688))

(assert (not b!91686))

(assert (not b!91732))

(assert (not b!91729))

(check-sat)

(get-model)

(pop 1)

