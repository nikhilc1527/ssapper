; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2996 () Bool)

(assert start!2996)

(declare-fun res!5376 () Bool)

(declare-fun e!7779 () Bool)

(assert (=> start!2996 (=> (not res!5376) (not e!7779))))

(declare-fun i!228 () Int)

(assert (=> start!2996 (= res!5376 (and (>= i!228 0) (not (= i!228 0))))))

(assert (=> start!2996 e!7779))

(assert (=> start!2996 true))

(declare-fun b!14084 () Bool)

(declare-fun res!5377 () Bool)

(assert (=> b!14084 (=> (not res!5377) (not e!7779))))

(declare-datatypes () ((List!317 (Cons!313 (head!535 (_ BitVec 32)) (tail!547 List!317)) (Nil!314))))

(declare-fun x$1!273 () List!317)

(declare-fun createListOfSize!0 (Int) List!317)

(assert (=> b!14084 (= res!5377 (= x$1!273 (Cons!313 #b00000000000000000000000000000000 (createListOfSize!0 (- i!228 1)))))))

(declare-fun b!14085 () Bool)

(declare-fun size!22 (List!317) Int)

(assert (=> b!14085 (= e!7779 (not (= (size!22 x$1!273) i!228)))))

(assert (= (and start!2996 res!5376) b!14084))

(assert (= (and b!14084 res!5377) b!14085))

(declare-fun m!17979 () Bool)

(assert (=> b!14084 m!17979))

(declare-fun m!17981 () Bool)

(assert (=> b!14085 m!17981))

(push 1)

(assert (not b!14084))

(assert (not b!14085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10979 () Bool)

(declare-fun lt!2044 () List!317)

(assert (=> d!10979 (= (size!22 lt!2044) (- i!228 1))))

(declare-fun e!7782 () List!317)

(assert (=> d!10979 (= lt!2044 e!7782)))

(declare-fun c!3924 () Bool)

(assert (=> d!10979 (= c!3924 (= (- i!228 1) 0))))

(assert (=> d!10979 (>= (- i!228 1) 0)))

(assert (=> d!10979 (= (createListOfSize!0 (- i!228 1)) lt!2044)))

(declare-fun b!14090 () Bool)

(assert (=> b!14090 (= e!7782 Nil!314)))

(declare-fun b!14091 () Bool)

(assert (=> b!14091 (= e!7782 (Cons!313 #b00000000000000000000000000000000 (createListOfSize!0 (- (- i!228 1) 1))))))

(assert (= (and d!10979 c!3924) b!14090))

(assert (= (and d!10979 (not c!3924)) b!14091))

(declare-fun m!17983 () Bool)

(assert (=> d!10979 m!17983))

(declare-fun m!17985 () Bool)

(assert (=> b!14091 m!17985))

(assert (=> b!14084 d!10979))

(declare-fun d!10981 () Bool)

(declare-fun lt!2047 () Int)

(assert (=> d!10981 (>= lt!2047 0)))

(declare-fun e!7785 () Int)

(assert (=> d!10981 (= lt!2047 e!7785)))

(declare-fun c!3927 () Bool)

(assert (=> d!10981 (= c!3927 (is-Nil!314 x$1!273))))

(assert (=> d!10981 (= (size!22 x$1!273) lt!2047)))

(declare-fun b!14096 () Bool)

(assert (=> b!14096 (= e!7785 0)))

(declare-fun b!14097 () Bool)

(assert (=> b!14097 (= e!7785 (+ 1 (size!22 (tail!547 x$1!273))))))

(assert (= (and d!10981 c!3927) b!14096))

(assert (= (and d!10981 (not c!3927)) b!14097))

(declare-fun m!17987 () Bool)

(assert (=> b!14097 m!17987))

(assert (=> b!14085 d!10981))

(push 1)

(assert (not b!14097))

(assert (not d!10979))

(assert (not b!14091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

