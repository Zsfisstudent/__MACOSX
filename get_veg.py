import requests
import re

def get_veg_info():
    header = {
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54"}
    veg_info = []
    for i in range(4000):
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
        print(dat[24])
        if str(dat[24]) != "2022-09-24" :
            break

##veg_info按照菜名（0-24），地址（25-49），价格（50-74），日期排列（75-99），访问方式为veg_info[i]
        veg_info = res + veg_place + veg_price + dat
        ##存入TXT（用存入数据库语句替换，每个循环的veg_info含有100个数据
        filename = "output.txt"
        with open(filename, "a") as object:
            object.write(str(veg_info)+"\n")
            object.close()
        print(i)
        ###

    return 1
##get_veg_info()##测试用

#####11

