# Generated by Django 3.0.3 on 2020-09-29 13:53

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('review', '0001_initial'),
        ('comment', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='comment',
            name='review',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='fk_comment_review', to='review.Review'),
        ),
    ]
