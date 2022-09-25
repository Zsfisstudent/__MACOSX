import requests
import re
header = {"user-agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54"}
url = "http://www.vipveg.com/price/2022/all/m9d-1cta-1by-1p4298.html"
r=requests.get(url, headers=header)
r.encoding = "utf-8"


##提取市场
##'''
get = re.compile(r'<td width="35%" height="30" align="left" class="p_l_5">.+target="_blank">')
cn = re.compile(r'[\u4e00-\u9fa5]+')
html = get.findall(r.text)
cst = ''.join(html)
res = cn.findall(cst)
output=open("outputplace.txt", "w")
output.write(str(res))
output.close()
##'''

###提取菜名
##'''
get = re.compile(r'行情" target="_blank">\w+</a></td>')
cn = re.compile(r'[\u4e00-\u9fa5]+')
html = get.findall(r.text)
cst = ''.join(html)
res = cn.findall(cst)
cst = ''.join(res)
res = cst.split("行情")
res.remove('')
output=open("outputname.txt", "w")
output.write(str(res))
output.close()
##'''

###提取价格
##'''
get = re.compile(r'"A">￥\d+\.?\d+')
html = get.findall(r.text)
pr = ''.join(html)
res = pr.split('"A">￥')
res.remove('')
output=open("outputprice.txt", "w")
output.write(str(res))
output.close()
##'''

#输出
'''
output=open("output.txt", "w")
output.write(str(res))
output.close()
'''

