# This is test app for random background module.
1. 설치할 프레임워크 복사 (파인더에서 Xcode Navigator 로 Drag & Drop)
```
1. Destination: Copy items if needed 체크
2. Added folders: Create groups 선택
```
2. project editor -> TARGETS -> 프로젝트 -> General -> Frameworks, Libraries, and Embedded Content
```
- Embed 부분 Embed & Sign 으로 설정

- Do not embed, Embed & Sign, Embed without signing 옵션 정확한 이해 필요.

ref. https://stackoverflow.com/questions/57687170/do-not-embed-embed-sign-embed-without-signing-what-are-they-what-th
```
