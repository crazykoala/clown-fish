"""
将
"""

import pymysql
import re

#连接数据库
db = pymysql.connect(host='localhost',
                     port = 3306,
                     user = 'root',
                     password = '123456',
                     database = 'dict',
                     charset = 'utf8')
#生成游标对象(操作数据库，执行sql语句)
cur = db.cursor()

#插入图片
# f = open('dict.txt','r')
# args_list =[]
# for line in f:
#     #获取单词和解释
#     tup = re.findall(r"(\S+)\s+(.*)",line)[0]
#     args_list.append(tup)
# f.close()
#
# sql = "insert into words (word,mean) values (%s,%s);"
# try:
#     cur.executemany(sql, args_list)
#     db.commit()
# except Exception as e:
#     db.rollback() #事务回滚
#     print(e)



#关闭游标和数据库连接
cur.close()
db.close()