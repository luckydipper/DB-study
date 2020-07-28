from django.db import models

# Create your models here.
from django.db import models


class Question(model.Model):
    subject = models.CharField(max_lenth=200)
    content = models.TextField()
    create_data = models.DateTimeField()

class Answer(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE # 질문이 사라지면 답변도 사라짐
    content = models.TextField()
    create_date = models.DateTimeField()
