# Flutter_task_app



## Flutter Widget

- UI를 만들고 구성하는 모든 기본 단위요소
- 눈에 보이지 않는 요소들 까지 위젯(레이아웃을 정의하는 것 까지 위젯)

### Widget의 종류

1.  StateLess Widget
2.  Stateful Widget
3.  Inherited Widget



### Wiget Tree

1. Widget 들은 Tree 구조로 정리될 수 있다.
2. 단, Widget 내에 얼마든지 다른 Widget들이 포함될 수 있다.
3. Widget은 부모 위젯과 자식 위젯으로 구성
4. Parent Widget은 Widget Container라고 부름



### Navigator

라우트, 즉 모든 앱 페이지들을 관리하며 스택이라는 자료구조헝식으로 라우트의 객체들은 관리한다. Push와 Pop 메소드로 관리할 수 있다.

#### Stack 자료구조 / 출처: 위키백과

**스택**(stack)은 제한적으로 접근할 수 있는 나열 구조이다. 그 접근 방법은 언제나 목록의 끝에서만 일어난다. 끝먼저내기 목록(Pushdown list)이라고도 한다.

스택은 한 쪽 끝에서만 자료를 넣거나 뺄 수 있는 선형 구조(LIFO - Last In First Out)으로 되어 있다. 자료를 넣는 것을 '밀어넣는다' 하여 **푸쉬**(push)라고 하고 반대로 넣어둔 자료를 꺼내는 것을 **팝**(pop)이라고 하는데, 이때 꺼내지는 자료는 가장 최근에 푸쉬한 자료부터 나오게 된다. 이처럼 나중에 넣은 값이 먼저 나오는 것을 [LIFO](https://ko.wikipedia.org/wiki/LIFO) 구조라고 한다.

**Dart 에서는 사용하지 않는 매개변수(parameter)는 _(underscore)로 표시한다.(다트 공식문서에서도 이 방법을 권장한다.)**

~~~dart
futureOfVoid.then((_) {
  print('Operation complete.');
});
~~~

Dart 공식문서 내용 -  https://dart.dev/guides/language/effective-dart/style#prefer-using-_-__-etc-for-unused-callback-parameters



## 플루터 과제와 연습

- [flutter_router_task](https://github.com/creatijin/flutter_task_app/tree/master/flutter_router_task)

  플루터 라우터에 대한 이해

  ```dart
  Navigator.pushNamed(context, "/a"),
  Navigator.pop(context),
  Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  ```