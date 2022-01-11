# Установка Docker

Нужно установить Docker 

# Работа с проектом

1. Необходимо склонировать проект

```
git clone https://github.com/karpulix/dna-tools.git 
```

2. Соберём Docker образ

```
cd dna-tools
chmod +x ./build.sh
./build.sh
```

3. Теперь можно запускать , проверим что утилиты в контейнере запускаются

```
docker run karpulix/mira-assembler mira -v
```
```
docker run karpulix/mira-assembler cutadapt --version
````


