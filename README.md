# RTS-1989_infra
RTS-1989 Infra repository

bastion_IP=51.250.10.65
someinternalhost_IP=10.128.0.9

reddit-app host info
testapp_IP = 51.250.74.140
testapp_port = 9292

Для подключения к хосту к внутреннемму хосту через бастион одной коммандой нужно ввести команду:
ssh -J 51.250.10.65 10.128.0.9

Для подключения по алиасу нужно внести в следующте данные в файл конфигурации ~/.ssh/config:
Host bastion
        HostName 51.250.10.65
        User <Ваш пользователь>

Host someinternalhost
	HostName 10.128.0.9
	User <Ваш пользователь>

Host someinternalhost
	ProxyJump bastion

Домашнее задание terraform-2
    Через packer собрал два образа app и bd
    Добавил три модуля: app, db, vpc
    Создал два окружения prod и stage
    Создал бакет для хранения состояния
