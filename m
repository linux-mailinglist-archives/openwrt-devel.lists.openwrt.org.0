Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2D617401C
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 20:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:MIME-Version:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UX+kvUL0p/qjWAPB549Q+40ahnVj1L7ujEcrJmYadmo=; b=Bch
	x2pU6STAA811FU7SWMcpxCsdqMRizwGVaojLDyGhIAlMzLKlZNnpyw1DQzPLwwQqvH6MZTEHb6ocM
	qF+z4sZ+QEjabm3LbVoex4+pvMJp2Ca4Vf/R2Jxor4dIFQZCgFsi2OaKNRSizb6MkJdR2AS0Qsbtt
	ocGpPQw+XYvx3RPK799Ksy7lDhtGLDap0hQJ/ptPgJAbxSTVdTIBZhEA6iIiAGk7nlg79dv2vGZjB
	7k2yrINNzn0qObpk7VmSwO1Glb7PIZnSgFmBFrcj3gAwly+9//Ju7he1TCTFpwGe3UpkmkrZ+gVSo
	IWNHtlLDhsqOY/m8/W3qyQbFXshLY3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7l0j-0002QW-Lm; Fri, 28 Feb 2020 19:09:21 +0000
Received: from m61-177.188.com ([123.58.177.61])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7l0c-0002Q7-Dj
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 19:09:16 +0000
Received: from chinazzcxzhuyunfu$188.com ( [218.204.252.141] ) by
 ajax-webmail-wmsvr1 (Coremail) ; Sat, 29 Feb 2020 03:04:07 +0800 (CST)
X-Originating-IP: [218.204.252.141]
Date: Sat, 29 Feb 2020 03:04:07 +0800 (CST)
From: chinazzcxzhuyunfu  <chinazzcxzhuyunfu@188.com>
To: openwrt-devel@lists.openwrt.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
 20190614(cb3344cf) Copyright (c) 2002-2020 www.mailtech.cn 188com
MIME-Version: 1.0
Message-ID: <6990a4a0.1fc58b.1708d2f3b4e.Coremail.chinazzcxzhuyunfu@188.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: C2Z4CgBHcDsoZFleBfcAAA--.10763W
X-CM-SenderInfo: xfkl0th22f56pkx130lix6im2yof0z/1tbiAQrXFVeMhcaotwABsP
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_110914_790957_B57AFB5C 
X-CRM114-Status: UNSURE (  -1.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chinazzcxzhuyunfu[at]188.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
Subject: [OpenWrt-Devel] Enquiries
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4266549901923931554=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4266549901923931554==
Content-Type: multipart/alternative; 
	boundary="----=_Part_8049092_1028160544.1582916647758"

------=_Part_8049092_1028160544.1582916647758
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

RGVhciBNci4KCldlIGFyZSBhIGxhcmdlIGNvbXByZWhlbnNpdmUgaW5kdXN0cmlhbCBjb21wYW55
IGluIEhlbm5hLCBDaGluYS4gVGhlIGNvbXBhbnkgaGFzIGhhcmR3YXJlIGFuZCBlbGVjdHJvbmlj
IGVudGVycHJpc2VzLCBpbXBvcnQgYW5kIGV4cG9ydCBjb21wYW5pZXMuIFRlY2hub2xvZ3kgdHJh
bnNmZXIsIHRlY2huaWNhbCB0cmFpbmluZy4gT3ZlcnNlYXMgYWdlbnQgYW5kIG90aGVyIGJ1c2lu
ZXNzLgoKQWNjb3JkaW5nIHRvIHRoZSBjdXJyZW50IGRlbWFuZCBvZiBvdXIgbmF0aW9uYWwgbWFy
a2V0LCB3ZSB1cmdlbnRseSBuZWVkIHRvIGltcG9ydCBhIGJhdGNoIG9mIGRpc3Bvc2FibGUgbWVk
aWNhbCBhbmQgTjk1IG1hc2sgbWFudWZhY3R1cmluZyBtYWNoaW5lcy4gV2UgbGVhcm5lZCBmcm9t
IG91ciBpbXBvcnQgYW5kIGV4cG9ydCBwbGF0Zm9ybSB0aGF0IHlvdSBhcmUgYSBwcm9mZXNzaW9u
YWwgbWFudWZhY3R1cmVyIG9mIHRoaXMgbWFjaGluZS4gU2VuZCBlIC0gbWFpbCBpbnF1aXJpZXMu
IElmIHlvdSBjYW4gc3VwcGx5IHVzIHdpdGggdGhpcyBwcm9kdWN0LCBwbGVhc2Ugc2VuZCB1cyB0
aGUgaW5mb3JtYXRpb24gYW5kIHByaWNlIGFzIHNvb24gYXMgcG9zc2libGUuIElmIHlvdXIgcHJp
Y2UgaXMgYWNjZXB0YWJsZSB0byB1cy4gTGV0J3MgZGlzY3VzcyB0aGUgZGV0YWlscyBvZiB0aGUg
ZGVhbC4gTG9va2luZyBmb3J3YXJkIHRvIHlvdXIgcmVwbHkuCgogCgpCZXN0IFJlZ2FyZHOjoQoK
IAoKVGhlIGdlbmVyYWwgbWFuYWdlcqO6Wmh1IGZ1bGFpCgpIZW5hbiBDaGFuZ3h1IEltcG9ydCAm
IEV4cG9ydCBUcmFkaW5nIENvLiwgTHRkCgpBZGRyZXNzOiBOby4gMjIsIEppbnNodWkgZGlzdHJp
Y3QgRG9uZ2ZlbmcgUm9hZCwgWmhlbmd6aG91IENpdHkuKENoaW5hKS4KCk5vdGU6IElmIHlvdSBh
cmUgbm90IHRoZSBtYW51ZmFjdHVyZXIgb2YgdGhpcyBwcm9kdWN0LCBwbGVhc2UgZGVsZXRlIG91
ciBFbWFpbC4KCgoKCgoKCgoKCgotLQoKzfjS11ZJUNPKz+TM4dDRo7qwssirytW3otPKvP6jrM7x
sdi6y8q1zfnAtNPKvP612Na3oaLS+NDQ1cu6xbXIu/rD3NDFz6KjrMfrzai5/bXnu7C78srTxrW1
yLbg1ta3vcq9yLfIz9DFz6LV5sq10NSjrMzhuN++r8zoo6zH687wx+HS1824wra49sjL1tjSqtDF
z6KhowpBbGVydCBtZXNzYWdlIG9mIE5ldGVhc2UgVmlwbWFpbKO6TmV2ZXIgcHJvdmlkZSB5b3Vy
IHBhc3N3b3JkLCBzZWN1cml0eSBxdWVzdGlvbnMsIHZlcmlmaWNhdGlvbiBjb2Rlcywgb3IgYW55
IG90aGVyIHBlcnNvbmFsIGltcG9ydGFudCBpbmZvcm1hdGlvbiBkZXRhaWxzIHRvIGFueW9uZSBl
bHNlLgpZb3UgY2FuIGlkZW50aWZ5IG1haWwgbWVzc2FnZSBieSB0ZWxlcGhvbmUsdmlkZW8tY2hh
dCBvciBvdGhlciB3YXlzLllvdSBzaG91bGQgbWFrZSBzdXJlIHRoYXQgeW91ciBlbWFpbCBhZGRy
ZXNzLCBiYW5rIGFjY291bnQgYW5kIG90aGVyIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiBhcyBz
ZWN1cmUgYXMgcG9zc2libGUuIFRoYW5rIHlvdSBmb3Iga2VlcGluZyB5b3VyIGVtYWlsIGFjY291
bnQgc2VjdXJlLg==
------=_Part_8049092_1028160544.1582916647758
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9ImNvbG9yOiByZ2IoMCwgMCwgMCk7IGxpbmUt
aGVpZ2h0OiAxLjc7IGZvbnQtZmFtaWx5OiBBcmlhbDsgZm9udC1zaXplOiAxNHB4OyI+PHAgc3R5
bGU9Im1hcmdpbjogMHB4OyI+PGZvbnQgZmFjZT0iy87M5SIgc2l6ZT0iMyI+PHNwYW4gbGFuZz0i
RU4tVVMiPjxmb250IGZhY2U9IlRpbWVzIE5ldyBSb21hbiI+PGIgc3R5bGU9Im1zby1iaWRpLWZv
bnQtd2VpZ2h0OiBub3JtYWw7Ij48c3BhbiBzdHlsZT0ibXNvLXNwYWNlcnVuOiB5ZXM7Ij48Zm9u
dCBmYWNlPSLLzszlIiBzaXplPSIzIj48c3BhbiBsYW5nPSJFTi1VUyI+PGZvbnQgZmFjZT0iVGlt
ZXMgTmV3IFJvbWFuIj5EZWFyIE1yLjwvZm9udD48L3NwYW4+PC9mb250Pjxmb250IGZhY2U9IsvO
zOUiIHNpemU9IjMiPgoKPC9mb250Pjwvc3Bhbj48L2I+PC9mb250Pjwvc3Bhbj48L2ZvbnQ+PC9w
PjxkaXY+PGRpdj48cCBzdHlsZT0ibWFyZ2luOiAwY20gMGNtIDBwdDsiPjxzcGFuIGxhbmc9IkVO
LVVTIj48Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9tYW4iPldlIGFyZSBhIGxhcmdlIGNvbXByZWhl
bnNpdmUgaW5kdXN0cmlhbApjb21wYW55IGluIEhlbm5hLCBDaGluYS4gVGhlIGNvbXBhbnkgaGFz
IGhhcmR3YXJlIGFuZCBlbGVjdHJvbmljIGVudGVycHJpc2VzLAppbXBvcnQgYW5kIGV4cG9ydCBj
b21wYW5pZXMuIFRlY2hub2xvZ3kgdHJhbnNmZXIsIHRlY2huaWNhbCB0cmFpbmluZy4gT3ZlcnNl
YXMKYWdlbnQgYW5kIG90aGVyIGJ1c2luZXNzLjwvZm9udD48L3NwYW4+PC9wPjxmb250IGZhY2U9
IsvOzOUiIHNpemU9IjMiPgoKPC9mb250PjxwIHN0eWxlPSJtYXJnaW46IDBjbSAwY20gMHB0OyI+
PHNwYW4gbGFuZz0iRU4tVVMiPjxmb250IGZhY2U9IlRpbWVzIE5ldyBSb21hbiI+QWNjb3JkaW5n
IHRvIHRoZSBjdXJyZW50IGRlbWFuZCBvZiBvdXIKbmF0aW9uYWwgbWFya2V0LCB3ZSB1cmdlbnRs
eSBuZWVkIHRvIGltcG9ydCBhIGJhdGNoIG9mIGRpc3Bvc2FibGUgbWVkaWNhbCBhbmQKTjk1IG1h
c2sgbWFudWZhY3R1cmluZyBtYWNoaW5lcy4gV2UgbGVhcm5lZCBmcm9tIG91ciBpbXBvcnQgYW5k
IGV4cG9ydCBwbGF0Zm9ybQp0aGF0IHlvdSBhcmUgYSBwcm9mZXNzaW9uYWwgbWFudWZhY3R1cmVy
IG9mIHRoaXMgbWFjaGluZS4gU2VuZCBlIC0gbWFpbAppbnF1aXJpZXMuIElmIHlvdSBjYW4gc3Vw
cGx5IHVzIHdpdGggdGhpcyBwcm9kdWN0LCBwbGVhc2Ugc2VuZCB1cyB0aGUKaW5mb3JtYXRpb24g
YW5kIHByaWNlIGFzIHNvb24gYXMgcG9zc2libGUuIElmIHlvdXIgcHJpY2UgaXMgYWNjZXB0YWJs
ZSB0byB1cy4KTGV0J3MgZGlzY3VzcyB0aGUgZGV0YWlscyBvZiB0aGUgZGVhbC4gTG9va2luZyBm
b3J3YXJkIHRvIHlvdXIgcmVwbHkuPC9mb250Pjwvc3Bhbj48L3A+PGZvbnQgZmFjZT0iy87M5SIg
c2l6ZT0iMyI+Cgo8L2ZvbnQ+PHAgc3R5bGU9Im1hcmdpbjogMGNtIDBjbSAwcHQ7Ij48c3BhbiBs
YW5nPSJFTi1VUyI+PGZvbnQgZmFjZT0iVGltZXMgTmV3IFJvbWFuIj4mbmJzcDs8L2ZvbnQ+PC9z
cGFuPjwvcD48Zm9udCBmYWNlPSLLzszlIiBzaXplPSIzIj4KCjwvZm9udD48cCBzdHlsZT0ibWFy
Z2luOiAwY20gMGNtIDBwdDsiPjxmb250IGZhY2U9IlRpbWVzIE5ldyBSb21hbiI+PHNwYW4gbGFu
Zz0iRU4tVVMiPkJlc3QgUmVnYXJkczwvc3Bhbj48L2ZvbnQ+PHNwYW4gc3R5bGU9ImZvbnQtZmFt
aWx5OiDLzszlOyIgcm9tYW49IiIgbmV3PSIiIHRpbWVzPSIiPqOhPC9zcGFuPjwvcD48Zm9udCBm
YWNlPSLLzszlIiBzaXplPSIzIj4KCjwvZm9udD48cCBzdHlsZT0ibWFyZ2luOiAwY20gMGNtIDBw
dDsiPjxzcGFuIGxhbmc9IkVOLVVTIj48Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9tYW4iPiZuYnNw
OzwvZm9udD48L3NwYW4+PC9wPjxmb250IGZhY2U9IsvOzOUiIHNpemU9IjMiPgoKPC9mb250Pjxw
IHN0eWxlPSJtYXJnaW46IDBjbSAwY20gMHB0OyI+PGZvbnQgZmFjZT0iVGltZXMgTmV3IFJvbWFu
Ij48c3BhbiBsYW5nPSJFTi1VUyI+VGhlIGdlbmVyYWwgbWFuYWdlcjwvc3Bhbj48L2ZvbnQ+PHNw
YW4gc3R5bGU9ImZvbnQtZmFtaWx5OiDLzszlOyIgcm9tYW49IiIgbmV3PSIiIHRpbWVzPSIiPqO6
PC9zcGFuPjxzcGFuIGxhbmc9IkVOLVVTIj48Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9tYW4iPlpo
dSBmdWxhaTwvZm9udD48L3NwYW4+PC9wPjxmb250IGZhY2U9IsvOzOUiIHNpemU9IjMiPgoKPC9m
b250PjxwIHN0eWxlPSJtYXJnaW46IDBjbSAwY20gMHB0OyI+PGIgc3R5bGU9Im1zby1iaWRpLWZv
bnQtd2VpZ2h0OiBub3JtYWw7Ij48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImNvbG9yOiByZ2Io
MzEsIDczLCAxMjUpOyBmb250LXNpemU6IDE2cHQ7Ij48Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9t
YW4iPkhlbmFuIENoYW5neHUgSW1wb3J0ICZhbXA7IEV4cG9ydApUcmFkaW5nIENvLiwgTHRkPC9m
b250Pjwvc3Bhbj48L2I+PC9wPjxmb250IGZhY2U9IsvOzOUiIHNpemU9IjMiPgoKPC9mb250Pjxw
IGFsaWduPSJsZWZ0IiBzdHlsZT0ibWFyZ2luOiAwY20gMGNtIDBwdDsgdGV4dC1hbGlnbjogbGVm
dDsiPjxiIHN0eWxlPSJtc28tYmlkaS1mb250LXdlaWdodDogbm9ybWFsOyI+PHNwYW4gbGFuZz0i
RU4tVVMiIHN0eWxlPSJjb2xvcjogcmdiKDMxLCA3MywgMTI1KTsgZm9udC1zaXplOiA5cHQ7Ij48
Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9tYW4iPkFkZHJlc3M6IE5vLiAyMiwKSmluc2h1aSBkaXN0
cmljdCBEb25nZmVuZyBSb2FkLCBaaGVuZ3pob3UgQ2l0eS4oQ2hpbmEpLjwvZm9udD48L3NwYW4+
PC9iPjwvcD48Zm9udCBmYWNlPSLLzszlIiBzaXplPSIzIj4KCjwvZm9udD48cCBzdHlsZT0ibWFy
Z2luOiAwY20gMGNtIDBwdDsiPjxmb250IGZhY2U9IlRpbWVzIE5ldyBSb21hbiI+PHNwYW4gbGFu
Zz0iRU4tVVMiIHN0eWxlPSJjb2xvcjogYmxhY2s7IG1zby1iaWRpLWZvbnQtc2l6ZTogMTAuNXB0
OyI+Tm90ZTo8L3NwYW4+PHNwYW4gbGFuZz0iRU4tVVMiPiBJZiB5b3UgYXJlIG5vdCB0aGUgbWFu
dWZhY3R1cmVyIG9mIHRoaXMKcHJvZHVjdCwgcGxlYXNlIGRlbGV0ZSBvdXIgRW1haWwuPC9zcGFu
PjwvZm9udD48L3A+PGZvbnQgZmFjZT0iy87M5SIgc2l6ZT0iMyI+Cgo8L2ZvbnQ+PGJyPjwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGJyPjwv
ZGl2PjwvZGl2PjxkaXYgc3R5bGU9InBvc2l0aW9uOiByZWxhdGl2ZTsgLW1zLXpvb206IDE7Ij4t
LTxicj48c3BhbiB0aXRsZT0ibmV0ZWFzZWZvb3RlciI+PGRpdiBpZD0ibmV0ZWFzZV9tYWlsX2Zv
b3RlciIgc3R5bGU9InBvc2l0aW9uOiByZWxhdGl2ZTsgLW1zLXpvb206IDE7Ij48aHIgc3R5bGU9
ImZvbnQtZmFtaWx5OiBIZWx2ZXRpY2EsOyIgdmVyZGFuYT0iIiB5YWhlaT0iIiBtaWNyb3NvZnQ9
IiI+PGZvbnQgY29sb3I9ImdyYXkiIGZhY2U9IkFyaWFsIiBzaXplPSIxIj7N+NLXVklQ08rP5Mzh
0NGjurCyyKvK1bei08q8/qOszvGx2LrLyrXN+cC008q8/rXY1rehotL40NDVy7rFtci7+sPc0MXP
oqOsx+vNqLn9tee7sLvyytPGtbXItuDW1re9yr3It8jP0MXPotXmyrXQ1KOszOG4376vzOijrMfr
zvDH4dLXzbjCtrj2yMvW2NKq0MXPoqGjPGJyPkFsZXJ0IG1lc3NhZ2Ugb2YgTmV0ZWFzZSBWaXBt
YWlso7pOZXZlciBwcm92aWRlIHlvdXIgcGFzc3dvcmQsIHNlY3VyaXR5IHF1ZXN0aW9ucywgdmVy
aWZpY2F0aW9uIGNvZGVzLCBvciBhbnkgb3RoZXIgcGVyc29uYWwgaW1wb3J0YW50IGluZm9ybWF0
aW9uIGRldGFpbHMgdG8gYW55b25lIGVsc2UuPGJyPllvdSBjYW4gaWRlbnRpZnkgbWFpbCBtZXNz
YWdlIGJ5IHRlbGVwaG9uZSx2aWRlby1jaGF0IG9yIG90aGVyIHdheXMuWW91IHNob3VsZCBtYWtl
IHN1cmUgdGhhdCB5b3VyIGVtYWlsIGFkZHJlc3MsIGJhbmsgYWNjb3VudCBhbmQgb3RoZXIgY29u
ZmlkZW50aWFsIGluZm9ybWF0aW9uIGFzIHNlY3VyZSBhcyBwb3NzaWJsZS4gVGhhbmsgeW91IGZv
ciBrZWVwaW5nIHlvdXIgZW1haWwgYWNjb3VudCBzZWN1cmUuPC9mb250PjxkaXYgc3R5bGU9ImNs
ZWFyOiBib3RoOyI+PC9kaXY+PC9kaXY+PC9zcGFuPjxkaXYgc3R5bGU9ImNsZWFyOiBib3RoOyI+
PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+
------=_Part_8049092_1028160544.1582916647758--



--===============4266549901923931554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4266549901923931554==--


