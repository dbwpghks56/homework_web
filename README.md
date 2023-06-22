# Homework_web

### Front Url
https://homework-web.netlify.app <br>
```
서버 Repository 입니다.
https://github.com/dbwpghks56/homework_server
```
※ 아직 서버가 배포 되어있지 않기 때문에 로컬 환경에서 서버를 8090 포트로 실행한 뒤 OEmbed 가 지원하는 url을 입력하시면 됩니다.

### Technologies used:

• Flutter  
• dart  
• json_annotation    
• retrofit        
• riverpod    
• dio

## Installation

```bash
$ git clone https://github.com/dbwpghks56/homework_web.git
```

## Running the app
```
$ flutter run -d web --web-renderer html
```

### json_annotation      
Request or Response 객체를 json으로 직렬화 혹은 역직렬화 하기 쉽게 만들기 위한 package 입니다.     
어노테이션을 이용해 활용하고 toJson, fromJson 을 쉽게 생성할 수 있습니다.

### retrofit 
현재 동작중인 Api 서버와 연동하기 위해 사용된 package 입니다.     
어노테이션을 이용해 쉽게 사용할 수 있고 Rest Api 에 대해서 쉽게 통신할 수 있습니다.

### riverpod 
객체 혹은 값에 대해서 상태관리를 하기 위해 사용된 package 입니다.     
provider를 이용해 상태를 관리하게 되고 쉽게 접근 및 변경할 수 있습니다.

### dio 
Http 통신하기 위해 사용된 package 입니다.
interceptor 를 이용해 request, error, response 에 대해 쉽게 접근하고 가공할 수 있습니다.     
현재 프로젝트에서는 Api 서버의 공통 response에서 data 및 Http Status 를 이용하기 위해 사용되었습니다.





