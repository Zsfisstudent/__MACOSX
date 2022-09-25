import requests
import pymysql
import re

def  input_veg_info(veg):
    """
    向表里插入信息
    :return:
    """
    try:
        db = pymysql.connect(host="localhost", user="root", password="20011019", database="mybatis", charset="utf8")
        #host 链接本机  user账户 password密码 database索要打开的库 charestUTF8
        print("数据库链接成功！")
        cursor = db.cursor()
        data = []
        #使用cursor()方法创建一个游标
        for i in range(25):
            data.append( [veg[i], veg[i+25], veg[i+50] ,veg[i+75]])
        try:
                cursor.executemany("insert into veg(菜名,市场,价格,日期)values (%s,%s,%s,%s)",data)
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


def get_veg_info():
    header = {
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54"}
    veg_info = []
    for i in range(10):
        url = "http://www.vipveg.com/price/2022/all/m9d-1cta-1by-1p" + str(i) + ".html"
        r = requests.get(url, headers=header)
        r.encoding = "utf-8"

        ##菜名
        get = re.compile(r'行情" target="_blank">\w+</a></td>')
        cn = re.compile(r'[\u4e00-\u9fa5]+')
        html = get.findall(r.text)
        cst = ''.join(html)
        res = cn.findall(cst)
        cst = ''.join(res)
        res = cst.split("行情")
        res.remove('')
        ##价格
        price = re.compile(r'"A">￥\d+\.?\d+')
        vp = price.findall(r.text)
        pr = ''.join(vp)
        veg_price = pr.split('"A">￥')
        veg_price.remove('')

        ##地址
        place = re.compile(r'<td width="35%" height="30" align="left" class="p_l_5">.+target="_blank">')
        vpl = place.findall(r.text)
        pla = ''.join(vpl)
        veg_place = cn.findall(pla)

        ##日期
        date = re.compile(r'<td width="12%" height="30" align="center">.+</td>')
        vdt = date.findall(r.text)
        dt = ''.join(vdt)
        dat = dt.split('<td width="12%" height="30" align="center">')
        dat.remove('')
        dt = ''.join(dat)
        dat = dt.split("</td>")
        dat.remove('')


##veg_info按照菜名（0-24），地址（25-49），价格（50-74），日期排列（75-99），访问方式为veg_info[i]
        veg_info = res + veg_place + veg_price + dat

        input_veg_info(veg_info)
    return 1


##/




'''

        ##存入TXT（用存入数据库语句替换，每个循环的veg_info含有100个数据）
        filename = "output.txt"
        with open(filename, "a") as object:
            object.write(str(veg_info)+"\n")
            object.close()
        print(i)
        ###
'''
##get_veg_info()##测试用

#####11

get_veg_info()

