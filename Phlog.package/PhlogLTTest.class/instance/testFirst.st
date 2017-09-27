as yet unclassified
testFirst
  |aSemaphore|
  self assert: true.
  aSemaphore := Semaphore new.
  100 timesRepeat:[
    [self assert: (ZnEasy get: 'http://admin:password@localhost:8443') isSuccess. aSemaphore signal.] fork.
  ].
  100 timesRepeat:[
    aSemaphore wait.
  ].
  self assert: true.
  
