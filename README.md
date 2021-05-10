# happyDiary
Using GPT-2, create happyDiary

* Fine tuning data: [Kaggle](https://www.kaggle.com/ritresearch/happydb)
    + Amazon의 Mechanical Turk를 통해 100,000 개 이상의 행복한 순간을 모아 놓은 코퍼스입니다.
``` 
Each worker is given the following task:
What made you happy today? Reflect on the past 24 hours, and recall three actual events that happened to you that made you happy. 
Write down your happy moment in a complete sentence. (Write three such moments.)
```

### Model information
    Base model: gpt-2
    Epoch: 5

huggingface의 gpt-2 모델을 바탕으로, 키워드를 입력하면 가상의 행복한 일상을 만들어내는 서비스입니다.
    
