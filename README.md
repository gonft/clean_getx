# Clean GetX

GetX 상태 관리를 활용한 Clean Architecture 스캐폴딩 프로젝트

## 프로젝트 구조

```
    lib
    ├── app
    │   ├── config                                        // 프로젝트 설정 모음
    │   │   └── firebase                                  // 환경 별 파이어베이스 설정 옵션
    │   │   │   ├── dev.dart
    │   │   │   └── stg.dart
    │   │   │   └── prod.dart
    │   │   └── launch_option.dart                        // 모바일 or Others 환경에 따른 앱 오류 추적 처리
    │   │   └── const                                     // 앱에서 사용되는 컴파일 타임 상수
    │   │       └── (...)
    │   ├── utils                                         // 앱에서 사용되는 유틸리티 모음
    │   │   ├── extensions                                // 확장 클래스
    │   │   │   └── color.dart
    │   │   ├── services                                  // 항상 유지하고 접근하는 서비스들 (API, Cache, Storage) `extends GetxService`
    │   │   │   └── local_storage.dart
    │   │   ├── types                                     // 앱에서 표현하는 타입들
    │   │   │   ├── category_type.dart
    │   │   │   └── tab_type.dart
    │   ├── core
    │   │   └── usecases                                   // 추상 유즈 케이스
    │   │       └── usecase.dart
    │   ├── modules
    │   │   └── pages
    │   │       ├── binding
    │   │       ├── controller
    │   │       ├── view
    │   │       ├── widgets
    │   │       └── key
    │   └── app.dart
    ├── data
    │   ├── models
    │   │   └── (...)
    │   ├── providers
    │   │   ├── database
    │   │   │   └── firebase_database_provider.dart
    │   │   └── network
    │   │       ├── apis
    │   │       │   └── onuii_api.dart
    │   │       └── (...)
    │   └── repositories
    │       └── (...)
    ├── domain
    │   ├── entities
    │   │   └── (...)
    │   ├── repositories
    │   │   └── (...)
    │   └── usecases
    │       └── (...)
    └── main_dev.dart
    └── main_stg.dart
    └── main.dart
```