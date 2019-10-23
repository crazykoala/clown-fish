"""
写数据库演示
"""
"""
pymysql 操作数据库流程演示
"""

import pymysql

#连接数据库
db = pymysql.connect(host='localhost',
                     port = 3306,
                     user = 'root',
                     password = '123456',
                     database = 'LOL',
                     charset = 'utf8')
#生成游标对象(操作数据库，执行sql语句)
cur = db.cursor()

#执行各种对数据库的写操作
try:
    #执行增删改等语句
    #增加
    # sql = "insert into class_1 (name,age,score) values ('Dave',13,79);"
    #修改
    # sql = "update class_1 set sex ='m' where name = 'Dave';"
    #删除
    # sql = "delete from class_1 where name = 'Dave';"

    #从input输入内容传给sql语句
    # name = input("Name:")
    # age = int(input("Age:"))
    # score = float(input("Score:"))
    # sql = "insert into class_1 (name,age,score) values (%s,%s,%s);"
    # cur.execute(sql,[name,age,score])

    # cur.execute(sql)

    #executemany 多次执行SQL语句
    exe = []
    for i in range(3):
        name = input("Name:")
        age = int(input("Age:"))
        score = float(input("Score:"))
        exe.append((name,age,score))

    sql = "insert into class_1 (name,age,score) values (%s,%s,%s);"
    cur.executemany(sql,exe)

    db.commit() #将操作结果立即提交
except Exception as e:
    db.rollback() #事务回滚
    print(e)

#关闭游标和数据库连接
cur.close()
db.close()