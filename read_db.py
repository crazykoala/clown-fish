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

#输入姓名查询信息
# name_input = input("请输入想要查找的姓名：")
# #执行各种对数据库的读操作
# sql = 'select * from interest where name = "%s";'%name_input
# cur.execute(sql)

#查询性别为m分数大于85
sql = 'select * from class_1 where sex = %s and score > %s;'
cur.execute(sql,['o',85])

#迭代cur获取查询结果
for i in cur:
    print(i)

#获取一个查询结果
# one_row = cur.fetchone()
# print(one_row)

#获取多个查询结果
# many_row = cur.fetchmany(2)
# print(many_row)

#关闭游标和数据库连接
cur.close()
db.close()