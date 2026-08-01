# deformable_detr_test
deformable DETR에 대한 테스트를 위한 레포지토리입니다.
- 실제로 사용하기 위해서는 이 레포지토리 디렉토리에 Deformable-DETR 레포지토리를 clone해야합니다.

```
# build 명령어
sh build.sh

# docker terminal 실행 명령어
sh run.sh
cd ./Deformable-DETR
cd ./models/ops
sh ./make.sh
# unit test (should see all checking is True)
python test.py
```
