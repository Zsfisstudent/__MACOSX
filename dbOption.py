import pymysql

def opop1():
    """
    创建一个表
    :return:
    """
    try:
        db = pymysql.connect(host="localhost", user="root", password="20011019", database="mybatis",charset="utf8")
        #host 链接本机  user账户 password密码 database索要打开的库 charestUTF8
        print("数据库链接成功！")
        cursor = db.cursor()
        #使用cursor()方法创建一个游标
        cursor.execute("DROP TABLE IF EXISTS veg")
        #使用execute()方法执行SQL,如果表存在则删除
        sql = """
        CREATE TABLE veg(
            菜名 varchar(30) NOT NULL,
            市场 varchar (100) NOT NULL,
            价格 varchar(8) DEFAULT NULL, 
            日期 date DEFAULT NULL
        ) 
        """
        #使用预处理语句创建表
        cursor.execute(sql)
        #执行sql语句
        db.close()
        #关闭数据库
    except pymysql.Error as e:
            print("数据库链接失败:"+str(e))

def opop2():
    """
    向表里插入信息
    :return:
    """
    try:
        db = pymysql.connect(host="localhost", user="root", password="root174251", database="mybatis", charset="utf8")
        #host 链接本机  user账户 password密码 database索要打开的库 charestUTF8
        print("数据库链接成功！")
        cursor = db.cursor()
        #使用cursor()方法创建一个游标
        data = [("1","《红楼梦》","曹雪芹","810","1990-1-5"),
                ("2","《三国演义》","罗贯中","820","1990-6-5"),
                ("3","《西游记》","吴承恩","801","1990-5-5"),
                ("4","《水浒传》","施耐庵","803","1990-4-5"),
                ("5","《神雕侠侣》","金庸","840","1990-2-5")
                ]
        try:
                cursor.executemany("insert into booksss(编号,书名,作者,价格,出版日期)values (%s,%s,%s,%s,%s)",data)
                #执行sql语句,插入多条数据
                db.commit()
                #提交数据
        except :
            db.rollback()
            #发生错误时回滚
        db.close()
        #关闭数据库连接
    except pymysql.Error as e:
            print("数据库链接失败:"+str(e))

def opop3():
    """
    查询数据
    :return:
    """
    db = pymysql.connect(host="localhost", user="root", password="root174251", database="mybatis", charset="utf8")
    # host 链接本机  user账户 password密码 database索要打开的库 charestUTF8
    print("数据库链接成功！")
    cursor = db.cursor()
    # 使用cursor()方法创建一个游标
    cursor.execute("select * from booksss;")
    while 1:
        res = cursor.fetchone()
        if res is None:
            # 表示已经取完结果集
            break
        print(res)
    cursor.close()
    db.commit()
    db.close()
    print('sql执行成功')


def opop4():
    """
    删除数据
    :return:
    """
    db = pymysql.connect(host="localhost", user="root", password="root174251", database="mybatis", charset="utf8")
    # host 链接本机  user账户 password密码 database索要打开的库 charestUTF8
    print("数据库链接成功！")
    cursor = db.cursor()

    # 删除前查询所有数据
    cursor.execute("select * from booksss;")
    print('删除前的数据为：')
    for res in cursor.fetchall():
        print(res)

    print('*' * 40)
    # 删除1条数据
    sql = "delete from booksss where 作者 like '施耐庵';"
    cursor.execute(sql)

    # 删除后查询所有数据
    cursor.execute("select * from booksss;")
    print('删除后的数据为：')
    for res in cursor.fetchall():
        print(res)
    cursor.close()
    db.commit()
    db.close()
    print('sql执行成功')


def opop5():
    """
    修改数据
    :return:
    """
    db = pymysql.connect(host="localhost", user="root", password="root174251", database="mybatis", charset="utf8")
    # host 链接本机  user账户 password密码 database索要打开的库 charestUTF8
    print("数据库链接成功！")
    cursor = db.cursor()

    # 修改前查询所有数据
    cursor.execute("select * from booksss;")
    print('修改前的数据为：')
    for res in cursor.fetchall():
        print(res)

    print('*' * 40)
    # 更新表中第1条数据
    cursor.execute("update booksss set 作者 = '李自扬' where 编号=3")

    # 修改后查询所有数据
    cursor.execute("select * from booksss;")
    print('修改后的数据为：')
    for res in cursor.fetchall():
        print(res)

    cursor.close()
    db.commit()
    db.close()
    print('sql执行成功')


if __name__ == '__main__':
    opop1()