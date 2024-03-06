; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3632 () Bool)

(assert start!3632)

(declare-fun b!23384 () Bool)

(declare-fun res!10370 () Bool)

(declare-fun e!12152 () Bool)

(assert (=> b!23384 (=> (not res!10370) (not e!12152))))

(declare-fun i!252 () Int)

(assert (=> b!23384 (= res!10370 (>= i!252 0))))

(declare-fun b!23385 () Bool)

(declare-datatypes () ((T!1793 (T!1794 (val!69 Int)))))

(declare-fun res!5552 () T!1793)

(declare-fun e!12151 () Bool)

(declare-datatypes () ((Conc!46 (CC!45 (left!690 Conc!46) (right!693 Conc!46)) (Single!45 (x!8846 T!1793)) (Empty!56))))

(declare-fun xs!572 () Conc!46)

(declare-datatypes () ((List!350 (Cons!344 (h!258 T!1793) (t!4345 List!350)) (Nil!345))))

(declare-fun apply!45 (List!350 Int) T!1793)

(declare-fun toList!105 (Conc!46) List!350)

(assert (=> b!23385 (= e!12151 (not (= res!5552 (apply!45 (toList!105 xs!572) i!252))))))

(declare-fun b!23386 () Bool)

(declare-fun res!10368 () Bool)

(assert (=> b!23386 (=> (not res!10368) (not e!12152))))

(declare-fun balanced!43 (Conc!46) Bool)

(assert (=> b!23386 (= res!10368 (balanced!43 xs!572))))

(declare-fun b!23387 () Bool)

(assert (=> b!23387 (= e!12152 e!12151)))

(declare-fun res!10365 () Bool)

(assert (=> b!23387 (=> res!10365 e!12151)))

(declare-fun instAppendIndexAxiom!6 (Conc!46 Int) Bool)

(assert (=> b!23387 (= res!10365 (not (instAppendIndexAxiom!6 xs!572 i!252)))))

(declare-fun b!23388 () Bool)

(declare-fun res!10366 () Bool)

(assert (=> b!23388 (=> (not res!10366) (not e!12152))))

(declare-fun isEmpty!305 (Conc!46) Bool)

(assert (=> b!23388 (= res!10366 (not (isEmpty!305 xs!572)))))

(declare-fun b!23389 () Bool)

(declare-fun e!12153 () Bool)

(declare-fun tp!5110 () Bool)

(declare-fun tp!5111 () Bool)

(assert (=> b!23389 (= e!12153 (and tp!5110 tp!5111))))

(declare-fun b!23390 () Bool)

(declare-fun tp_is_empty!137 () Bool)

(assert (=> b!23390 (= e!12153 tp_is_empty!137)))

(declare-fun res!10371 () Bool)

(assert (=> start!3632 (=> (not res!10371) (not e!12152))))

(declare-fun concInv!42 (Conc!46) Bool)

(assert (=> start!3632 (= res!10371 (concInv!42 xs!572))))

(assert (=> start!3632 e!12152))

(assert (=> start!3632 e!12153))

(assert (=> start!3632 true))

(assert (=> start!3632 tp_is_empty!137))

(declare-fun b!23391 () Bool)

(declare-fun res!10367 () Bool)

(assert (=> b!23391 (=> (not res!10367) (not e!12152))))

(assert (=> b!23391 (= res!10367 (and (is-Single!45 xs!572) (= res!5552 (x!8846 xs!572))))))

(declare-fun b!23392 () Bool)

(declare-fun res!10369 () Bool)

(assert (=> b!23392 (=> (not res!10369) (not e!12152))))

(declare-fun size!250 (Conc!46) Int)

(assert (=> b!23392 (= res!10369 (< i!252 (size!250 xs!572)))))

(assert (= (and start!3632 res!10371) b!23386))

(assert (= (and b!23386 res!10368) b!23388))

(assert (= (and b!23388 res!10366) b!23384))

(assert (= (and b!23384 res!10370) b!23392))

(assert (= (and b!23392 res!10369) b!23391))

(assert (= (and b!23391 res!10367) b!23387))

(assert (= (and b!23387 (not res!10365)) b!23385))

(assert (= (and start!3632 (is-CC!45 xs!572)) b!23389))

(assert (= (and start!3632 (is-Single!45 xs!572)) b!23390))

(declare-fun m!24917 () Bool)

(assert (=> start!3632 m!24917))

(declare-fun m!24919 () Bool)

(assert (=> b!23388 m!24919))

(declare-fun m!24921 () Bool)

(assert (=> b!23385 m!24921))

(assert (=> b!23385 m!24921))

(declare-fun m!24923 () Bool)

(assert (=> b!23385 m!24923))

(declare-fun m!24925 () Bool)

(assert (=> b!23392 m!24925))

(declare-fun m!24927 () Bool)

(assert (=> b!23387 m!24927))

(declare-fun m!24929 () Bool)

(assert (=> b!23386 m!24929))

(push 1)

(assert (not start!3632))

(assert (not b!23392))

(assert (not b!23388))

(assert (not b!23385))

(assert (not b!23386))

(assert (not b!23389))

(assert (not b!23387))

(assert tp_is_empty!137)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13293 () Bool)

(declare-fun c!5457 () Bool)

(assert (=> d!13293 (= c!5457 (= i!252 0))))

(declare-fun e!12156 () T!1793)

(assert (=> d!13293 (= (apply!45 (toList!105 xs!572) i!252) e!12156)))

(declare-fun b!23397 () Bool)

(declare-fun head!537 (List!350) T!1793)

(assert (=> b!23397 (= e!12156 (head!537 (toList!105 xs!572)))))

(declare-fun b!23398 () Bool)

(declare-fun tail!564 (List!350) List!350)

(assert (=> b!23398 (= e!12156 (apply!45 (tail!564 (toList!105 xs!572)) (- i!252 1)))))

(assert (= (and d!13293 c!5457) b!23397))

(assert (= (and d!13293 (not c!5457)) b!23398))

(assert (=> b!23397 m!24921))

(declare-fun m!24931 () Bool)

(assert (=> b!23397 m!24931))

(assert (=> b!23398 m!24921))

(declare-fun m!24933 () Bool)

(assert (=> b!23398 m!24933))

(assert (=> b!23398 m!24933))

(declare-fun m!24935 () Bool)

(assert (=> b!23398 m!24935))

(assert (=> b!23385 d!13293))

(declare-fun d!13295 () Bool)

(declare-fun lt!3623 () List!350)

(declare-fun size!251 (List!350) Int)

(assert (=> d!13295 (= (size!251 lt!3623) (size!250 xs!572))))

(declare-fun e!12161 () List!350)

(assert (=> d!13295 (= lt!3623 e!12161)))

(declare-fun c!5462 () Bool)

(assert (=> d!13295 (= c!5462 (is-Empty!56 xs!572))))

(assert (=> d!13295 (= (toList!105 xs!572) lt!3623)))

(declare-fun b!23409 () Bool)

(declare-fun e!12162 () List!350)

(assert (=> b!23409 (= e!12162 (Cons!344 (x!8846 xs!572) Nil!345))))

(declare-fun b!23407 () Bool)

(assert (=> b!23407 (= e!12161 Nil!345)))

(declare-fun b!23408 () Bool)

(assert (=> b!23408 (= e!12161 e!12162)))

(declare-fun c!5463 () Bool)

(assert (=> b!23408 (= c!5463 (is-Single!45 xs!572))))

(declare-fun b!23410 () Bool)

(declare-fun ++!30 (List!350 List!350) List!350)

(assert (=> b!23410 (= e!12162 (++!30 (toList!105 (left!690 xs!572)) (toList!105 (right!693 xs!572))))))

(assert (= (and b!23408 c!5463) b!23409))

(assert (= (and b!23408 (not c!5463)) b!23410))

(assert (= (and d!13295 c!5462) b!23407))

(assert (= (and d!13295 (not c!5462)) b!23408))

(declare-fun m!24937 () Bool)

(assert (=> d!13295 m!24937))

(assert (=> d!13295 m!24925))

(declare-fun m!24939 () Bool)

(assert (=> b!23410 m!24939))

(declare-fun m!24941 () Bool)

(assert (=> b!23410 m!24941))

(assert (=> b!23410 m!24939))

(assert (=> b!23410 m!24941))

(declare-fun m!24943 () Bool)

(assert (=> b!23410 m!24943))

(assert (=> b!23385 d!13295))

(declare-fun d!13297 () Bool)

(declare-fun res!10381 () Bool)

(declare-fun e!12167 () Bool)

(assert (=> d!13297 (=> res!10381 e!12167)))

(assert (=> d!13297 (= res!10381 (not (is-CC!45 xs!572)))))

(assert (=> d!13297 (= (balanced!43 xs!572) e!12167)))

(declare-fun b!23420 () Bool)

(declare-fun res!10382 () Bool)

(declare-fun e!12168 () Bool)

(assert (=> b!23420 (=> (not res!10382) (not e!12168))))

(declare-fun level!37 (Conc!46) Int)

(assert (=> b!23420 (= res!10382 (<= (- (level!37 (left!690 xs!572)) (level!37 (right!693 xs!572))) 1))))

(declare-fun b!23421 () Bool)

(declare-fun res!10383 () Bool)

(assert (=> b!23421 (=> (not res!10383) (not e!12168))))

(assert (=> b!23421 (= res!10383 (balanced!43 (left!690 xs!572)))))

(declare-fun b!23422 () Bool)

(assert (=> b!23422 (= e!12168 (balanced!43 (right!693 xs!572)))))

(declare-fun b!23419 () Bool)

(assert (=> b!23419 (= e!12167 e!12168)))

(declare-fun res!10384 () Bool)

(assert (=> b!23419 (=> (not res!10384) (not e!12168))))

(assert (=> b!23419 (= res!10384 (>= (- (level!37 (left!690 xs!572)) (level!37 (right!693 xs!572))) (- 1)))))

(assert (= (and d!13297 (not res!10381)) b!23419))

(assert (= (and b!23419 res!10384) b!23420))

(assert (= (and b!23420 res!10382) b!23421))

(assert (= (and b!23421 res!10383) b!23422))

(declare-fun m!24945 () Bool)

(assert (=> b!23420 m!24945))

(declare-fun m!24947 () Bool)

(assert (=> b!23420 m!24947))

(declare-fun m!24949 () Bool)

(assert (=> b!23421 m!24949))

(declare-fun m!24951 () Bool)

(assert (=> b!23422 m!24951))

(assert (=> b!23419 m!24945))

(assert (=> b!23419 m!24947))

(assert (=> b!23386 d!13297))

(declare-fun b!23433 () Bool)

(declare-fun e!12173 () Int)

(assert (=> b!23433 (= e!12173 1)))

(declare-fun b!23432 () Bool)

(declare-fun e!12174 () Int)

(assert (=> b!23432 (= e!12174 e!12173)))

(declare-fun c!5469 () Bool)

(assert (=> b!23432 (= c!5469 (is-Single!45 xs!572))))

(declare-fun b!23434 () Bool)

(assert (=> b!23434 (= e!12173 (+ (size!250 (left!690 xs!572)) (size!250 (right!693 xs!572))))))

(declare-fun b!23431 () Bool)

(assert (=> b!23431 (= e!12174 0)))

(declare-fun d!13299 () Bool)

(declare-fun lt!3626 () Int)

(assert (=> d!13299 (>= lt!3626 0)))

(assert (=> d!13299 (= lt!3626 e!12174)))

(declare-fun c!5468 () Bool)

(assert (=> d!13299 (= c!5468 (is-Empty!56 xs!572))))

(assert (=> d!13299 (= (size!250 xs!572) lt!3626)))

(assert (= (and b!23432 c!5469) b!23433))

(assert (= (and b!23432 (not c!5469)) b!23434))

(assert (= (and d!13299 c!5468) b!23431))

(assert (= (and d!13299 (not c!5468)) b!23432))

(declare-fun m!24953 () Bool)

(assert (=> b!23434 m!24953))

(declare-fun m!24955 () Bool)

(assert (=> b!23434 m!24955))

(assert (=> b!23392 d!13299))

(declare-fun d!13301 () Bool)

(assert (=> d!13301 (= (isEmpty!305 xs!572) (= xs!572 Empty!56))))

(assert (=> b!23388 d!13301))

(declare-fun d!13303 () Bool)

(declare-fun e!12180 () Bool)

(assert (=> d!13303 e!12180))

(declare-fun res!10390 () Bool)

(assert (=> d!13303 (=> res!10390 e!12180)))

(assert (=> d!13303 (= res!10390 (not (is-CC!45 xs!572)))))

(declare-fun e!12179 () Bool)

(assert (=> d!13303 e!12179))

(declare-fun res!10389 () Bool)

(assert (=> d!13303 (=> (not res!10389) (not e!12179))))

(assert (=> d!13303 (= res!10389 (<= 0 i!252))))

(assert (=> d!13303 (= (instAppendIndexAxiom!6 xs!572 i!252) true)))

(declare-fun b!23439 () Bool)

(assert (=> b!23439 (= e!12179 (< i!252 (size!250 xs!572)))))

(declare-fun b!23440 () Bool)

(declare-fun appendIndex!5 (List!350 List!350 Int) Bool)

(assert (=> b!23440 (= e!12180 (appendIndex!5 (toList!105 (left!690 xs!572)) (toList!105 (right!693 xs!572)) i!252))))

(assert (= (and d!13303 res!10389) b!23439))

(assert (= (and d!13303 (not res!10390)) b!23440))

(assert (=> b!23439 m!24925))

(assert (=> b!23440 m!24939))

(assert (=> b!23440 m!24941))

(assert (=> b!23440 m!24939))

(assert (=> b!23440 m!24941))

(declare-fun m!24957 () Bool)

(assert (=> b!23440 m!24957))

(assert (=> b!23387 d!13303))

(declare-fun b!23452 () Bool)

(declare-fun e!12186 () Bool)

(assert (=> b!23452 (= e!12186 (concInv!42 (right!693 xs!572)))))

(declare-fun b!23449 () Bool)

(declare-fun e!12185 () Bool)

(assert (=> b!23449 (= e!12185 e!12186)))

(declare-fun res!10399 () Bool)

(assert (=> b!23449 (=> (not res!10399) (not e!12186))))

(assert (=> b!23449 (= res!10399 (not (isEmpty!305 (left!690 xs!572))))))

(declare-fun b!23451 () Bool)

(declare-fun res!10401 () Bool)

(assert (=> b!23451 (=> (not res!10401) (not e!12186))))

(assert (=> b!23451 (= res!10401 (concInv!42 (left!690 xs!572)))))

(declare-fun b!23450 () Bool)

(declare-fun res!10400 () Bool)

(assert (=> b!23450 (=> (not res!10400) (not e!12186))))

(assert (=> b!23450 (= res!10400 (not (isEmpty!305 (right!693 xs!572))))))

(declare-fun d!13305 () Bool)

(declare-fun res!10402 () Bool)

(assert (=> d!13305 (=> res!10402 e!12185)))

(assert (=> d!13305 (= res!10402 (not (is-CC!45 xs!572)))))

(assert (=> d!13305 (= (concInv!42 xs!572) e!12185)))

(assert (= (and d!13305 (not res!10402)) b!23449))

(assert (= (and b!23449 res!10399) b!23450))

(assert (= (and b!23450 res!10400) b!23451))

(assert (= (and b!23451 res!10401) b!23452))

(declare-fun m!24959 () Bool)

(assert (=> b!23452 m!24959))

(declare-fun m!24961 () Bool)

(assert (=> b!23449 m!24961))

(declare-fun m!24963 () Bool)

(assert (=> b!23451 m!24963))

(declare-fun m!24965 () Bool)

(assert (=> b!23450 m!24965))

(assert (=> start!3632 d!13305))

(declare-fun b!23459 () Bool)

(declare-fun e!12189 () Bool)

(declare-fun tp!5116 () Bool)

(declare-fun tp!5117 () Bool)

(assert (=> b!23459 (= e!12189 (and tp!5116 tp!5117))))

(declare-fun b!23460 () Bool)

(assert (=> b!23460 (= e!12189 tp_is_empty!137)))

(assert (=> b!23389 (= tp!5110 e!12189)))

(assert (= (and b!23389 (is-CC!45 (left!690 xs!572))) b!23459))

(assert (= (and b!23389 (is-Single!45 (left!690 xs!572))) b!23460))

(declare-fun b!23461 () Bool)

(declare-fun e!12190 () Bool)

(declare-fun tp!5118 () Bool)

(declare-fun tp!5119 () Bool)

(assert (=> b!23461 (= e!12190 (and tp!5118 tp!5119))))

(declare-fun b!23462 () Bool)

(assert (=> b!23462 (= e!12190 tp_is_empty!137)))

(assert (=> b!23389 (= tp!5111 e!12190)))

(assert (= (and b!23389 (is-CC!45 (right!693 xs!572))) b!23461))

(assert (= (and b!23389 (is-Single!45 (right!693 xs!572))) b!23462))

(push 1)

(assert (not d!13295))

(assert (not b!23450))

(assert (not b!23420))

(assert (not b!23421))

(assert (not b!23452))

(assert (not b!23449))

(assert (not b!23440))

(assert (not b!23398))

(assert (not b!23422))

(assert (not b!23434))

(assert (not b!23459))

(assert (not b!23461))

(assert (not b!23451))

(assert (not b!23419))

(assert (not b!23410))

(assert (not b!23439))

(assert (not b!23397))

(assert tp_is_empty!137)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!23465 () Bool)

(declare-fun e!12191 () Int)

(assert (=> b!23465 (= e!12191 1)))

(declare-fun b!23464 () Bool)

(declare-fun e!12192 () Int)

(assert (=> b!23464 (= e!12192 e!12191)))

(declare-fun c!5471 () Bool)

(assert (=> b!23464 (= c!5471 (is-Single!45 (left!690 xs!572)))))

(declare-fun b!23466 () Bool)

(assert (=> b!23466 (= e!12191 (+ (size!250 (left!690 (left!690 xs!572))) (size!250 (right!693 (left!690 xs!572)))))))

(declare-fun b!23463 () Bool)

(assert (=> b!23463 (= e!12192 0)))

(declare-fun d!13307 () Bool)

(declare-fun lt!3627 () Int)

(assert (=> d!13307 (>= lt!3627 0)))

(assert (=> d!13307 (= lt!3627 e!12192)))

(declare-fun c!5470 () Bool)

(assert (=> d!13307 (= c!5470 (is-Empty!56 (left!690 xs!572)))))

(assert (=> d!13307 (= (size!250 (left!690 xs!572)) lt!3627)))

(assert (= (and b!23464 c!5471) b!23465))

(assert (= (and b!23464 (not c!5471)) b!23466))

(assert (= (and d!13307 c!5470) b!23463))

(assert (= (and d!13307 (not c!5470)) b!23464))

(declare-fun m!24967 () Bool)

(assert (=> b!23466 m!24967))

(declare-fun m!24969 () Bool)

(assert (=> b!23466 m!24969))

(assert (=> b!23434 d!13307))

(declare-fun b!23469 () Bool)

(declare-fun e!12193 () Int)

(assert (=> b!23469 (= e!12193 1)))

(declare-fun b!23468 () Bool)

(declare-fun e!12194 () Int)

(assert (=> b!23468 (= e!12194 e!12193)))

(declare-fun c!5473 () Bool)

(assert (=> b!23468 (= c!5473 (is-Single!45 (right!693 xs!572)))))

(declare-fun b!23470 () Bool)

(assert (=> b!23470 (= e!12193 (+ (size!250 (left!690 (right!693 xs!572))) (size!250 (right!693 (right!693 xs!572)))))))

(declare-fun b!23467 () Bool)

(assert (=> b!23467 (= e!12194 0)))

(declare-fun d!13309 () Bool)

(declare-fun lt!3628 () Int)

(assert (=> d!13309 (>= lt!3628 0)))

(assert (=> d!13309 (= lt!3628 e!12194)))

(declare-fun c!5472 () Bool)

(assert (=> d!13309 (= c!5472 (is-Empty!56 (right!693 xs!572)))))

(assert (=> d!13309 (= (size!250 (right!693 xs!572)) lt!3628)))

(assert (= (and b!23468 c!5473) b!23469))

(assert (= (and b!23468 (not c!5473)) b!23470))

(assert (= (and d!13309 c!5472) b!23467))

(assert (= (and d!13309 (not c!5472)) b!23468))

(declare-fun m!24971 () Bool)

(assert (=> b!23470 m!24971))

(declare-fun m!24973 () Bool)

(assert (=> b!23470 m!24973))

(assert (=> b!23434 d!13309))

(declare-fun d!13311 () Bool)

(assert (=> d!13311 (= (isEmpty!305 (right!693 xs!572)) (= (right!693 xs!572) Empty!56))))

(assert (=> b!23450 d!13311))

(declare-fun d!13313 () Bool)

(declare-fun res!10403 () Bool)

(declare-fun e!12195 () Bool)

(assert (=> d!13313 (=> res!10403 e!12195)))

(assert (=> d!13313 (= res!10403 (not (is-CC!45 (right!693 xs!572))))))

(assert (=> d!13313 (= (balanced!43 (right!693 xs!572)) e!12195)))

(declare-fun b!23472 () Bool)

(declare-fun res!10404 () Bool)

(declare-fun e!12196 () Bool)

(assert (=> b!23472 (=> (not res!10404) (not e!12196))))

(assert (=> b!23472 (= res!10404 (<= (- (level!37 (left!690 (right!693 xs!572))) (level!37 (right!693 (right!693 xs!572)))) 1))))

(declare-fun b!23473 () Bool)

(declare-fun res!10405 () Bool)

(assert (=> b!23473 (=> (not res!10405) (not e!12196))))

(assert (=> b!23473 (= res!10405 (balanced!43 (left!690 (right!693 xs!572))))))

(declare-fun b!23474 () Bool)

(assert (=> b!23474 (= e!12196 (balanced!43 (right!693 (right!693 xs!572))))))

(declare-fun b!23471 () Bool)

(assert (=> b!23471 (= e!12195 e!12196)))

(declare-fun res!10406 () Bool)

(assert (=> b!23471 (=> (not res!10406) (not e!12196))))

(assert (=> b!23471 (= res!10406 (>= (- (level!37 (left!690 (right!693 xs!572))) (level!37 (right!693 (right!693 xs!572)))) (- 1)))))

(assert (= (and d!13313 (not res!10403)) b!23471))

(assert (= (and b!23471 res!10406) b!23472))

(assert (= (and b!23472 res!10404) b!23473))

(assert (= (and b!23473 res!10405) b!23474))

(declare-fun m!24975 () Bool)

(assert (=> b!23472 m!24975))

(declare-fun m!24977 () Bool)

(assert (=> b!23472 m!24977))

(declare-fun m!24979 () Bool)

(assert (=> b!23473 m!24979))

(declare-fun m!24981 () Bool)

(assert (=> b!23474 m!24981))

(assert (=> b!23471 m!24975))

(assert (=> b!23471 m!24977))

(assert (=> b!23422 d!13313))

(declare-fun b!23478 () Bool)

(declare-fun e!12198 () Bool)

(assert (=> b!23478 (= e!12198 (concInv!42 (right!693 (right!693 xs!572))))))

(declare-fun b!23475 () Bool)

(declare-fun e!12197 () Bool)

(assert (=> b!23475 (= e!12197 e!12198)))

(declare-fun res!10407 () Bool)

(assert (=> b!23475 (=> (not res!10407) (not e!12198))))

(assert (=> b!23475 (= res!10407 (not (isEmpty!305 (left!690 (right!693 xs!572)))))))

(declare-fun b!23477 () Bool)

(declare-fun res!10409 () Bool)

(assert (=> b!23477 (=> (not res!10409) (not e!12198))))

(assert (=> b!23477 (= res!10409 (concInv!42 (left!690 (right!693 xs!572))))))

(declare-fun b!23476 () Bool)

(declare-fun res!10408 () Bool)

(assert (=> b!23476 (=> (not res!10408) (not e!12198))))

(assert (=> b!23476 (= res!10408 (not (isEmpty!305 (right!693 (right!693 xs!572)))))))

(declare-fun d!13315 () Bool)

(declare-fun res!10410 () Bool)

(assert (=> d!13315 (=> res!10410 e!12197)))

(assert (=> d!13315 (= res!10410 (not (is-CC!45 (right!693 xs!572))))))

(assert (=> d!13315 (= (concInv!42 (right!693 xs!572)) e!12197)))

(assert (= (and d!13315 (not res!10410)) b!23475))

(assert (= (and b!23475 res!10407) b!23476))

(assert (= (and b!23476 res!10408) b!23477))

(assert (= (and b!23477 res!10409) b!23478))

(declare-fun m!24983 () Bool)

(assert (=> b!23478 m!24983))

(declare-fun m!24985 () Bool)

(assert (=> b!23475 m!24985))

(declare-fun m!24987 () Bool)

(assert (=> b!23477 m!24987))

(declare-fun m!24989 () Bool)

(assert (=> b!23476 m!24989))

(assert (=> b!23452 d!13315))

(declare-fun d!13317 () Bool)

(declare-fun lt!3631 () Int)

(assert (=> d!13317 (>= lt!3631 0)))

(declare-fun e!12201 () Int)

(assert (=> d!13317 (= lt!3631 e!12201)))

(declare-fun c!5476 () Bool)

(assert (=> d!13317 (= c!5476 (is-Nil!345 lt!3623))))

(assert (=> d!13317 (= (size!251 lt!3623) lt!3631)))

(declare-fun b!23483 () Bool)

(assert (=> b!23483 (= e!12201 0)))

(declare-fun b!23484 () Bool)

(assert (=> b!23484 (= e!12201 (+ 1 (size!251 (t!4345 lt!3623))))))

(assert (= (and d!13317 c!5476) b!23483))

(assert (= (and d!13317 (not c!5476)) b!23484))

(declare-fun m!24991 () Bool)

(assert (=> b!23484 m!24991))

(assert (=> d!13295 d!13317))

(assert (=> d!13295 d!13299))

(declare-fun b!23490 () Bool)

(declare-fun e!12204 () Int)

(declare-fun lt!3638 () Int)

(declare-fun lt!3639 () Int)

(assert (=> b!23490 (= e!12204 (+ 1 (ite (>= lt!3638 lt!3639) lt!3638 lt!3639)))))

(assert (=> b!23490 (= lt!3639 (level!37 (right!693 (left!690 xs!572))))))

(assert (=> b!23490 (= lt!3638 (level!37 (left!690 (left!690 xs!572))))))

(declare-fun d!13319 () Bool)

(declare-fun lt!3640 () Int)

(assert (=> d!13319 (>= lt!3640 0)))

(assert (=> d!13319 (= lt!3640 e!12204)))

(declare-fun c!5479 () Bool)

(assert (=> d!13319 (= c!5479 (or (is-Empty!56 (left!690 xs!572)) (is-Single!45 (left!690 xs!572))))))

(assert (=> d!13319 (= (level!37 (left!690 xs!572)) lt!3640)))

(declare-fun b!23489 () Bool)

(assert (=> b!23489 (= e!12204 0)))

(assert (= (and d!13319 c!5479) b!23489))

(assert (= (and d!13319 (not c!5479)) b!23490))

(declare-fun m!24993 () Bool)

(assert (=> b!23490 m!24993))

(declare-fun m!24995 () Bool)

(assert (=> b!23490 m!24995))

(assert (=> b!23420 d!13319))

(declare-fun b!23492 () Bool)

(declare-fun e!12205 () Int)

(declare-fun lt!3641 () Int)

(declare-fun lt!3642 () Int)

(assert (=> b!23492 (= e!12205 (+ 1 (ite (>= lt!3641 lt!3642) lt!3641 lt!3642)))))

(assert (=> b!23492 (= lt!3642 (level!37 (right!693 (right!693 xs!572))))))

(assert (=> b!23492 (= lt!3641 (level!37 (left!690 (right!693 xs!572))))))

(declare-fun d!13321 () Bool)

(declare-fun lt!3643 () Int)

(assert (=> d!13321 (>= lt!3643 0)))

(assert (=> d!13321 (= lt!3643 e!12205)))

(declare-fun c!5480 () Bool)

(assert (=> d!13321 (= c!5480 (or (is-Empty!56 (right!693 xs!572)) (is-Single!45 (right!693 xs!572))))))

(assert (=> d!13321 (= (level!37 (right!693 xs!572)) lt!3643)))

(declare-fun b!23491 () Bool)

(assert (=> b!23491 (= e!12205 0)))

(assert (= (and d!13321 c!5480) b!23491))

(assert (= (and d!13321 (not c!5480)) b!23492))

(assert (=> b!23492 m!24977))

(assert (=> b!23492 m!24975))

(assert (=> b!23420 d!13321))

(declare-fun b!23504 () Bool)

(declare-fun e!12214 () T!1793)

(assert (=> b!23504 (= e!12214 (apply!45 (toList!105 (right!693 xs!572)) (- i!252 (size!251 (toList!105 (left!690 xs!572))))))))

(declare-fun d!13323 () Bool)

(assert (=> d!13323 (= (apply!45 (++!30 (toList!105 (left!690 xs!572)) (toList!105 (right!693 xs!572))) i!252) e!12214)))

(declare-fun c!5483 () Bool)

(assert (=> d!13323 (= c!5483 (< i!252 (size!251 (toList!105 (left!690 xs!572)))))))

(declare-fun lt!3646 () Bool)

(declare-fun e!12213 () Bool)

(assert (=> d!13323 (= lt!3646 e!12213)))

(declare-fun res!10419 () Bool)

(assert (=> d!13323 (=> res!10419 e!12213)))

(assert (=> d!13323 (= res!10419 (or (is-Nil!345 (toList!105 (left!690 xs!572))) (= i!252 0)))))

(declare-fun e!12212 () Bool)

(assert (=> d!13323 e!12212))

(declare-fun res!10420 () Bool)

(assert (=> d!13323 (=> (not res!10420) (not e!12212))))

(assert (=> d!13323 (= res!10420 (<= 0 i!252))))

(assert (=> d!13323 (= (appendIndex!5 (toList!105 (left!690 xs!572)) (toList!105 (right!693 xs!572)) i!252) true)))

(declare-fun b!23501 () Bool)

(assert (=> b!23501 (= e!12212 (< i!252 (+ (size!251 (toList!105 (left!690 xs!572))) (size!251 (toList!105 (right!693 xs!572))))))))

(declare-fun b!23503 () Bool)

(assert (=> b!23503 (= e!12214 (apply!45 (toList!105 (left!690 xs!572)) i!252))))

(declare-fun b!23502 () Bool)

(assert (=> b!23502 (= e!12213 (appendIndex!5 (t!4345 (toList!105 (left!690 xs!572))) (toList!105 (right!693 xs!572)) (- i!252 1)))))

(assert (= (and d!13323 res!10420) b!23501))

(assert (= (and d!13323 (not res!10419)) b!23502))

(assert (= (and d!13323 c!5483) b!23503))

(assert (= (and d!13323 (not c!5483)) b!23504))

(assert (=> b!23501 m!24939))

(declare-fun m!24997 () Bool)

(assert (=> b!23501 m!24997))

(assert (=> b!23501 m!24941))

(declare-fun m!24999 () Bool)

(assert (=> b!23501 m!24999))

(assert (=> b!23503 m!24939))

(declare-fun m!25001 () Bool)

(assert (=> b!23503 m!25001))

(assert (=> d!13323 m!24939))

(assert (=> d!13323 m!24941))

(assert (=> d!13323 m!24943))

(assert (=> d!13323 m!24943))

(declare-fun m!25003 () Bool)

(assert (=> d!13323 m!25003))

(assert (=> d!13323 m!24939))

(assert (=> d!13323 m!24997))

(assert (=> b!23502 m!24941))

(declare-fun m!25005 () Bool)

(assert (=> b!23502 m!25005))

(assert (=> b!23504 m!24939))

(assert (=> b!23504 m!24997))

(assert (=> b!23504 m!24941))

(declare-fun m!25007 () Bool)

(assert (=> b!23504 m!25007))

(assert (=> b!23440 d!13323))

(declare-fun d!13325 () Bool)

(declare-fun lt!3647 () List!350)

(assert (=> d!13325 (= (size!251 lt!3647) (size!250 (left!690 xs!572)))))

(declare-fun e!12215 () List!350)

(assert (=> d!13325 (= lt!3647 e!12215)))

(declare-fun c!5484 () Bool)

(assert (=> d!13325 (= c!5484 (is-Empty!56 (left!690 xs!572)))))

(assert (=> d!13325 (= (toList!105 (left!690 xs!572)) lt!3647)))

(declare-fun b!23507 () Bool)

(declare-fun e!12216 () List!350)

(assert (=> b!23507 (= e!12216 (Cons!344 (x!8846 (left!690 xs!572)) Nil!345))))

(declare-fun b!23505 () Bool)

(assert (=> b!23505 (= e!12215 Nil!345)))

(declare-fun b!23506 () Bool)

(assert (=> b!23506 (= e!12215 e!12216)))

(declare-fun c!5485 () Bool)

(assert (=> b!23506 (= c!5485 (is-Single!45 (left!690 xs!572)))))

(declare-fun b!23508 () Bool)

(assert (=> b!23508 (= e!12216 (++!30 (toList!105 (left!690 (left!690 xs!572))) (toList!105 (right!693 (left!690 xs!572)))))))

(assert (= (and b!23506 c!5485) b!23507))

(assert (= (and b!23506 (not c!5485)) b!23508))

(assert (= (and d!13325 c!5484) b!23505))

(assert (= (and d!13325 (not c!5484)) b!23506))

(declare-fun m!25009 () Bool)

(assert (=> d!13325 m!25009))

(assert (=> d!13325 m!24953))

(declare-fun m!25011 () Bool)

(assert (=> b!23508 m!25011))

(declare-fun m!25013 () Bool)

(assert (=> b!23508 m!25013))

(assert (=> b!23508 m!25011))

(assert (=> b!23508 m!25013))

(declare-fun m!25015 () Bool)

(assert (=> b!23508 m!25015))

(assert (=> b!23440 d!13325))

(declare-fun d!13327 () Bool)

(declare-fun lt!3648 () List!350)

(assert (=> d!13327 (= (size!251 lt!3648) (size!250 (right!693 xs!572)))))

(declare-fun e!12217 () List!350)

(assert (=> d!13327 (= lt!3648 e!12217)))

(declare-fun c!5486 () Bool)

(assert (=> d!13327 (= c!5486 (is-Empty!56 (right!693 xs!572)))))

(assert (=> d!13327 (= (toList!105 (right!693 xs!572)) lt!3648)))

(declare-fun b!23511 () Bool)

(declare-fun e!12218 () List!350)

(assert (=> b!23511 (= e!12218 (Cons!344 (x!8846 (right!693 xs!572)) Nil!345))))

(declare-fun b!23509 () Bool)

(assert (=> b!23509 (= e!12217 Nil!345)))

(declare-fun b!23510 () Bool)

(assert (=> b!23510 (= e!12217 e!12218)))

(declare-fun c!5487 () Bool)

(assert (=> b!23510 (= c!5487 (is-Single!45 (right!693 xs!572)))))

(declare-fun b!23512 () Bool)

(assert (=> b!23512 (= e!12218 (++!30 (toList!105 (left!690 (right!693 xs!572))) (toList!105 (right!693 (right!693 xs!572)))))))

(assert (= (and b!23510 c!5487) b!23511))

(assert (= (and b!23510 (not c!5487)) b!23512))

(assert (= (and d!13327 c!5486) b!23509))

(assert (= (and d!13327 (not c!5486)) b!23510))

(declare-fun m!25017 () Bool)

(assert (=> d!13327 m!25017))

(assert (=> d!13327 m!24955))

(declare-fun m!25019 () Bool)

(assert (=> b!23512 m!25019))

(declare-fun m!25021 () Bool)

(assert (=> b!23512 m!25021))

(assert (=> b!23512 m!25019))

(assert (=> b!23512 m!25021))

(declare-fun m!25023 () Bool)

(assert (=> b!23512 m!25023))

(assert (=> b!23440 d!13327))

(declare-fun d!13329 () Bool)

(assert (=> d!13329 (= (head!537 (toList!105 xs!572)) (h!258 (toList!105 xs!572)))))

(assert (=> b!23397 d!13329))

(declare-fun b!23524 () Bool)

(declare-fun e!12224 () Bool)

(declare-fun lt!3651 () List!350)

(assert (=> b!23524 (= e!12224 (or (not (= (toList!105 (right!693 xs!572)) Nil!345)) (= lt!3651 (toList!105 (left!690 xs!572)))))))

(declare-fun d!13331 () Bool)

(assert (=> d!13331 e!12224))

(declare-fun res!10427 () Bool)

(assert (=> d!13331 (=> (not res!10427) (not e!12224))))

(declare-fun content!63 (List!350) (Set T!1793))

(assert (=> d!13331 (= res!10427 (= (content!63 lt!3651) (union (content!63 (toList!105 (left!690 xs!572))) (content!63 (toList!105 (right!693 xs!572))))))))

(declare-fun e!12223 () List!350)

(assert (=> d!13331 (= lt!3651 e!12223)))

(declare-fun c!5490 () Bool)

(assert (=> d!13331 (= c!5490 (is-Nil!345 (toList!105 (left!690 xs!572))))))

(assert (=> d!13331 (= (++!30 (toList!105 (left!690 xs!572)) (toList!105 (right!693 xs!572))) lt!3651)))

(declare-fun b!23522 () Bool)

(assert (=> b!23522 (= e!12223 (Cons!344 (h!258 (toList!105 (left!690 xs!572))) (++!30 (t!4345 (toList!105 (left!690 xs!572))) (toList!105 (right!693 xs!572)))))))

(declare-fun b!23523 () Bool)

(declare-fun res!10426 () Bool)

(assert (=> b!23523 (=> (not res!10426) (not e!12224))))

(assert (=> b!23523 (= res!10426 (= (size!251 lt!3651) (+ (size!251 (toList!105 (left!690 xs!572))) (size!251 (toList!105 (right!693 xs!572))))))))

(declare-fun b!23521 () Bool)

(assert (=> b!23521 (= e!12223 (toList!105 (right!693 xs!572)))))

(assert (= (and d!13331 c!5490) b!23521))

(assert (= (and d!13331 (not c!5490)) b!23522))

(assert (= (and d!13331 res!10427) b!23523))

(assert (= (and b!23523 res!10426) b!23524))

(declare-fun m!25025 () Bool)

(assert (=> d!13331 m!25025))

(assert (=> d!13331 m!24939))

(declare-fun m!25027 () Bool)

(assert (=> d!13331 m!25027))

(assert (=> d!13331 m!24941))

(declare-fun m!25029 () Bool)

(assert (=> d!13331 m!25029))

(assert (=> b!23522 m!24941))

(declare-fun m!25031 () Bool)

(assert (=> b!23522 m!25031))

(declare-fun m!25033 () Bool)

(assert (=> b!23523 m!25033))

(assert (=> b!23523 m!24939))

(assert (=> b!23523 m!24997))

(assert (=> b!23523 m!24941))

(assert (=> b!23523 m!24999))

(assert (=> b!23410 d!13331))

(assert (=> b!23410 d!13325))

(assert (=> b!23410 d!13327))

(declare-fun b!23528 () Bool)

(declare-fun e!12226 () Bool)

(assert (=> b!23528 (= e!12226 (concInv!42 (right!693 (left!690 xs!572))))))

(declare-fun b!23525 () Bool)

(declare-fun e!12225 () Bool)

(assert (=> b!23525 (= e!12225 e!12226)))

(declare-fun res!10428 () Bool)

(assert (=> b!23525 (=> (not res!10428) (not e!12226))))

(assert (=> b!23525 (= res!10428 (not (isEmpty!305 (left!690 (left!690 xs!572)))))))

(declare-fun b!23527 () Bool)

(declare-fun res!10430 () Bool)

(assert (=> b!23527 (=> (not res!10430) (not e!12226))))

(assert (=> b!23527 (= res!10430 (concInv!42 (left!690 (left!690 xs!572))))))

(declare-fun b!23526 () Bool)

(declare-fun res!10429 () Bool)

(assert (=> b!23526 (=> (not res!10429) (not e!12226))))

(assert (=> b!23526 (= res!10429 (not (isEmpty!305 (right!693 (left!690 xs!572)))))))

(declare-fun d!13333 () Bool)

(declare-fun res!10431 () Bool)

(assert (=> d!13333 (=> res!10431 e!12225)))

(assert (=> d!13333 (= res!10431 (not (is-CC!45 (left!690 xs!572))))))

(assert (=> d!13333 (= (concInv!42 (left!690 xs!572)) e!12225)))

(assert (= (and d!13333 (not res!10431)) b!23525))

(assert (= (and b!23525 res!10428) b!23526))

(assert (= (and b!23526 res!10429) b!23527))

(assert (= (and b!23527 res!10430) b!23528))

(declare-fun m!25035 () Bool)

(assert (=> b!23528 m!25035))

(declare-fun m!25037 () Bool)

(assert (=> b!23525 m!25037))

(declare-fun m!25039 () Bool)

(assert (=> b!23527 m!25039))

(declare-fun m!25041 () Bool)

(assert (=> b!23526 m!25041))

(assert (=> b!23451 d!13333))

(declare-fun d!13335 () Bool)

(declare-fun res!10432 () Bool)

(declare-fun e!12227 () Bool)

(assert (=> d!13335 (=> res!10432 e!12227)))

(assert (=> d!13335 (= res!10432 (not (is-CC!45 (left!690 xs!572))))))

(assert (=> d!13335 (= (balanced!43 (left!690 xs!572)) e!12227)))

(declare-fun b!23530 () Bool)

(declare-fun res!10433 () Bool)

(declare-fun e!12228 () Bool)

(assert (=> b!23530 (=> (not res!10433) (not e!12228))))

(assert (=> b!23530 (= res!10433 (<= (- (level!37 (left!690 (left!690 xs!572))) (level!37 (right!693 (left!690 xs!572)))) 1))))

(declare-fun b!23531 () Bool)

(declare-fun res!10434 () Bool)

(assert (=> b!23531 (=> (not res!10434) (not e!12228))))

(assert (=> b!23531 (= res!10434 (balanced!43 (left!690 (left!690 xs!572))))))

(declare-fun b!23532 () Bool)

(assert (=> b!23532 (= e!12228 (balanced!43 (right!693 (left!690 xs!572))))))

(declare-fun b!23529 () Bool)

(assert (=> b!23529 (= e!12227 e!12228)))

(declare-fun res!10435 () Bool)

(assert (=> b!23529 (=> (not res!10435) (not e!12228))))

(assert (=> b!23529 (= res!10435 (>= (- (level!37 (left!690 (left!690 xs!572))) (level!37 (right!693 (left!690 xs!572)))) (- 1)))))

(assert (= (and d!13335 (not res!10432)) b!23529))

(assert (= (and b!23529 res!10435) b!23530))

(assert (= (and b!23530 res!10433) b!23531))

(assert (= (and b!23531 res!10434) b!23532))

(assert (=> b!23530 m!24995))

(assert (=> b!23530 m!24993))

(declare-fun m!25043 () Bool)

(assert (=> b!23531 m!25043))

(declare-fun m!25045 () Bool)

(assert (=> b!23532 m!25045))

(assert (=> b!23529 m!24995))

(assert (=> b!23529 m!24993))

(assert (=> b!23421 d!13335))

(declare-fun d!13337 () Bool)

(declare-fun c!5491 () Bool)

(assert (=> d!13337 (= c!5491 (= (- i!252 1) 0))))

(declare-fun e!12229 () T!1793)

(assert (=> d!13337 (= (apply!45 (tail!564 (toList!105 xs!572)) (- i!252 1)) e!12229)))

(declare-fun b!23533 () Bool)

(assert (=> b!23533 (= e!12229 (head!537 (tail!564 (toList!105 xs!572))))))

(declare-fun b!23534 () Bool)

(assert (=> b!23534 (= e!12229 (apply!45 (tail!564 (tail!564 (toList!105 xs!572))) (- (- i!252 1) 1)))))

(assert (= (and d!13337 c!5491) b!23533))

(assert (= (and d!13337 (not c!5491)) b!23534))

(assert (=> b!23533 m!24933))

(declare-fun m!25047 () Bool)

(assert (=> b!23533 m!25047))

(assert (=> b!23534 m!24933))

(declare-fun m!25049 () Bool)

(assert (=> b!23534 m!25049))

(assert (=> b!23534 m!25049))

(declare-fun m!25051 () Bool)

(assert (=> b!23534 m!25051))

(assert (=> b!23398 d!13337))

(declare-fun d!13339 () Bool)

(assert (=> d!13339 (= (tail!564 (toList!105 xs!572)) (t!4345 (toList!105 xs!572)))))

(assert (=> b!23398 d!13339))

(declare-fun d!13341 () Bool)

(assert (=> d!13341 (= (isEmpty!305 (left!690 xs!572)) (= (left!690 xs!572) Empty!56))))

(assert (=> b!23449 d!13341))

(assert (=> b!23419 d!13319))

(assert (=> b!23419 d!13321))

(assert (=> b!23439 d!13299))

(declare-fun b!23535 () Bool)

(declare-fun e!12230 () Bool)

(declare-fun tp!5120 () Bool)

(declare-fun tp!5121 () Bool)

(assert (=> b!23535 (= e!12230 (and tp!5120 tp!5121))))

(declare-fun b!23536 () Bool)

(assert (=> b!23536 (= e!12230 tp_is_empty!137)))

(assert (=> b!23461 (= tp!5118 e!12230)))

(assert (= (and b!23461 (is-CC!45 (left!690 (right!693 xs!572)))) b!23535))

(assert (= (and b!23461 (is-Single!45 (left!690 (right!693 xs!572)))) b!23536))

(declare-fun b!23537 () Bool)

(declare-fun e!12231 () Bool)

(declare-fun tp!5122 () Bool)

(declare-fun tp!5123 () Bool)

(assert (=> b!23537 (= e!12231 (and tp!5122 tp!5123))))

(declare-fun b!23538 () Bool)

(assert (=> b!23538 (= e!12231 tp_is_empty!137)))

(assert (=> b!23461 (= tp!5119 e!12231)))

(assert (= (and b!23461 (is-CC!45 (right!693 (right!693 xs!572)))) b!23537))

(assert (= (and b!23461 (is-Single!45 (right!693 (right!693 xs!572)))) b!23538))

(declare-fun b!23539 () Bool)

(declare-fun e!12232 () Bool)

(declare-fun tp!5124 () Bool)

(declare-fun tp!5125 () Bool)

(assert (=> b!23539 (= e!12232 (and tp!5124 tp!5125))))

(declare-fun b!23540 () Bool)

(assert (=> b!23540 (= e!12232 tp_is_empty!137)))

(assert (=> b!23459 (= tp!5116 e!12232)))

(assert (= (and b!23459 (is-CC!45 (left!690 (left!690 xs!572)))) b!23539))

(assert (= (and b!23459 (is-Single!45 (left!690 (left!690 xs!572)))) b!23540))

(declare-fun b!23541 () Bool)

(declare-fun e!12233 () Bool)

(declare-fun tp!5126 () Bool)

(declare-fun tp!5127 () Bool)

(assert (=> b!23541 (= e!12233 (and tp!5126 tp!5127))))

(declare-fun b!23542 () Bool)

(assert (=> b!23542 (= e!12233 tp_is_empty!137)))

(assert (=> b!23459 (= tp!5117 e!12233)))

(assert (= (and b!23459 (is-CC!45 (right!693 (left!690 xs!572)))) b!23541))

(assert (= (and b!23459 (is-Single!45 (right!693 (left!690 xs!572)))) b!23542))

(push 1)

(assert (not b!23539))

(assert (not b!23512))

(assert (not b!23472))

(assert (not b!23525))

(assert (not b!23522))

(assert (not b!23508))

(assert (not b!23501))

(assert (not d!13325))

(assert (not d!13323))

(assert (not b!23527))

(assert (not b!23476))

(assert (not b!23528))

(assert (not b!23466))

(assert (not b!23502))

(assert (not b!23475))

(assert (not b!23526))

(assert (not b!23471))

(assert (not b!23534))

(assert (not b!23503))

(assert (not b!23478))

(assert (not d!13331))

(assert (not b!23533))

(assert (not b!23532))

(assert (not b!23477))

(assert (not b!23492))

(assert (not b!23490))

(assert (not b!23523))

(assert (not b!23531))

(assert (not b!23484))

(assert (not b!23535))

(assert (not d!13327))

(assert (not b!23473))

(assert (not b!23530))

(assert (not b!23474))

(assert (not b!23537))

(assert (not b!23470))

(assert (not b!23541))

(assert (not b!23529))

(assert tp_is_empty!137)

(assert (not b!23504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

