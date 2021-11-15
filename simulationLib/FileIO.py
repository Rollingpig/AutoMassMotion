"""
    Danrui Li
    2020.10
"""
import csv


def read_inputs(file_name):
    with open(file_name, newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=' ', quotechar='|')
        # reader = csv.reader(csvfile, quotechar='|')
        table = []
        for row in reader:
            # 如果row非空
            if row:
                table.append(row[0].split(','))
    result = []
    head = table[0]
    key_num = len(head)
    for item in table[1:]:
        temp_dict = {}
        for j in range(key_num):
            temp_dict[head[j]] = float(item[j])
        result.append(temp_dict)
    return result


def save_results(data, file_path):
    if data:
        # 提取首行数据的键值，作为所有数据的查询键值
        header = list(data[0].keys())
        # 将键值作为表头
        result = [header]
        for item in data:
            t = [item[key] for key in header]
            result.append(t)
        # 打开文件路径
        out = open(file_path, 'a', newline='')
        # 如果不加上参数 newline='' 表示以空格作为换行符，
        # 而是用 with open(birth_weight_file, "w") as f: 语句。
        # 则生成的表格中会出现空行。
        # 设定写入模式，写入的时候不会抹掉原有数据
        csv_write = csv.writer(out, dialect='excel')
        # 写入具体内容
        for datum in result:
            csv_write.writerow(datum)
        out.close()
