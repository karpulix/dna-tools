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
docker run --rm karpulix/mira-assembler mira -v
```
```
docker run --rm karpulix/mira-assembler cutadapt --version
````

4. Этапы - специфическая процедура, специально для Анны

## Удаляем адапты

Предположим, что файлы типа этого flu_1_S26_L001_R1_001.fastq.gz лежат в папке ~/myfolder/Flu_data/

Чтобы убрать адаптеры, запустим:
```
docker run --rm karpulix/mira-assembler adapt-run -v /full/path/to/myfolder/Flu_data/:/data
```


