## 위젯의 타입


### 1. Stateless Widget 
- 컴퓨터 프로그래밍에서의 stateful이란 Value값을 지속적으로 추적하거나 보존
- 쉽게말해 상태가 없는 정적인 위젯
- 스크린 상에 존재만 할 뿐 아무것도 하지 않음

### 2. Stateful Widget
- 컴퓨터 프로그래밍에서의 stateless란 이전 상호작용의 어떠한 값도 저장하지 않음 
- 계속 움직임이나 변화가 있는 위젯
- 사용자의 interaction에 따라서 모양이 바뀜
- 데이터를 받게 되었을때 모양이 바뀜 

[참조 : 유튜브채널 코딩셰프][widget_youtube]

__*위젯은 플러터를 구성하고 있는 모든것!*__

![state_less_ful]

[참조 : Stateless vs. Stateful][state_less_ful_link]

### 3. Inherited Widget
- widget들을 계층구조로 표현하여 정리한것
- widget은 하위 자식위젯을 포함하여 계층구조를 이루어 부모자식 관계를 이룸
- Parent widget을 widget container라고 부르기도 함

![tree]

[참조 : Flutter란?][tree_link]





[dal]: <https://dillinger.io/>
[widget_youtube]:<https://www.youtube.com/watch?v=jI4kqLdqXic&list=PLQt_pzi-LLfpcRFhWMywTePfZ2aPapvyl&index=5>

[state_less_ful]: <https://miro.medium.com/max/700/0*4dAnkDc2odhmeyjv.png>
[state_less_ful_link]:<https://itnext.io/stateless-vs-stateful-cde9d178084f>

[tree]: <https://user-images.githubusercontent.com/55340876/74588822-fa8f9980-5042-11ea-817e-43afd451c3b4.png>
[tree_link]: <https://chajinjoo.netlify.app/Flutter/2002/200207_flutterAndWidget/>
