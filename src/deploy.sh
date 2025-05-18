#!/bin/bash

scp /home/gitlab-runner/builds/8yzU-6Fd/0/students/DO6_CICD.ID_356283/ninapete_student.21_school.ru/DO6_CICD-1/artifacts/s21_cat ninapete@192.168.100.11:/usr/local/bin/
scp /home/gitlab-runner/builds/8yzU-6Fd/0/students/DO6_CICD.ID_356283/ninapete_student.21_school.ru/DO6_CICD-1/artifacts/s21_grep ninapete@192.168.100.11:/usr/local/bin/

ssh ninapete@192.168.100.11 ls -lah /usr/local/bin/