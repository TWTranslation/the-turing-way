(rr-testing-overview)=

# テストタイプの概要

さまざまな種類のテストがあり、ここで説明します。

まず、正の検査と負の検査があります。
正のテストは、ある数値を乗算する関数が正しい答えを出力することをテストするなど、何かが機能することを確認します。
否定的なテストは、何かが必要なときにエラーが発生することを確認します。
例えば、光の速度より速くは何も行くことができません。 プラズマ物理のシミュレーションコードにはテストが含まれているかもしれません これより速く粒子があれば エラーが出るかもしれません コードにはより深い問題があることを示しています

これらの2種類のテストに加えて、プロジェクトのさまざまな側面をテストする異なるレベルのテストもあります。
これらのレベルは以下のように概説されており、正と負の両方のテストがこれらのレベルのいずれかに存在する可能性があります。
徹底的なテストスイートには、これらのレベルのすべてのテストが含まれます(いくつかのレベルは非常に少ない必要がありますが)。

(rr-testing-types-of-testing)=

## テストの種類

[](#rr-testing-smoketest): Very brief initial checks that ensures the basic requirements required to run the project hold.
If these fail there is no point proceeding to additional levels of testing until they are fixed.

[](#rr-testing-unittest): A level of the software testing process where individual units of a software are tested. The purpose is to validate that each unit of the software performs as designed.

[](#rr-testing-types-integrationtest): A level of software testing where individual units are combined and tested as a group.
The purpose of this level of testing is to expose faults in the interaction between integrated units.

[](#rr-testing-systemtest): A level of the software testing process where a complete, integrated system is tested.
The purpose of this test is to evaluate whether the system as a whole gives the correct outputs for given inputs.

[](#rr-testing-acceptance-regression): A level of the software testing process where a system is tested for acceptability.
The purpose of this test is to evaluate the system's compliance with the project requirements and assess whether it is acceptable for the purpose.

Here's an analogy: during the process of manufacturing a ballpoint pen, the cap, the body, the tail, the ink cartridge and the ballpoint are produced separately and unit tested separately.
When two or more units are ready, they are assembled and integration testing is performed, for example a test to check the cap fits on the body.
When the complete pen is integrated, system testing is performed to check it can be used to write like any pen should.
Acceptance testing could be a check to ensure the pen is the colour the customer ordered.

There is also another kind of testing called regression testing.
Regression testing is a type of testing that can be performed at any of the four main levels and compares the results of tests before and after a change is made to the code, and gives an error if these are different.

These different types of tests are discussed in more detail in the next subchapters.
