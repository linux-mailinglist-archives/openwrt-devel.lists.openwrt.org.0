Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130077A092
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 07:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:References:In-Reply-To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fOx06jnb4IbhLCVgRw20pIX8sk6UaNcDZNr/giXx1o8=; b=Y2q9TuCdxooI13jZWRZIFPBHW
	A1wUpuweODSfoj7H/43NMRJ39Mh3XBQ6tE/sMrQ081AIqT8m43FavSraf/+SnXBx68NjvripRNYLw
	J+q0ze6dWGReX7pJ/k9vQEKToFYGlTXoXajv2ric669TrVr39Mq2BJkhjzzZOkDiHBZ7cNdJ8IIg/
	H9ecricXaQ+vQVjgHAfuIbhxSRwC5oZER/fQnAPSMNKa7YY8D9mu73PvD6dSBMJMFaqIRvkCh+dvn
	nQXZqP6vGNfSLIWEx29t+BQaV+ccKBN6YtxHYWw5qeUwQ9MdBaMNAt9U1p08tUCmSRcpR5Dd4xZkI
	Sr2LHHgUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsL1v-0000Vk-Uu; Tue, 30 Jul 2019 05:50:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsL1j-0000Vb-BP
 for openwrt-devel@bombadil.infradead.org; Tue, 30 Jul 2019 05:50:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Date:
 Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:Cc:To:From:
 References:In-Reply-To:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=rFx9fn+T+Fv0dWMRaz79ZKt6ZkiHfLTyX3pIweAoLhk=; b=tP1JV8x58wzf
 q+pMHIalwXytDRFEQQtcvVqHgCimvpvAAsbpa0bolzsgiRvzq3CcHT/ZnGzsUyUyUpZplfDmPvafH
 xN7rz+59qivo31sproRSW0JklOMbPuw7m5+D+iuzeWApniobqnF9pukL02yNIPztSqFh9bDXxd2So
 /vZYQ9c7mNgd0VARchHdklJzEs0Ks7T5TRGtPmegH+IcFoe2xgHPM2emwkBqinLCYXeJpY18feSM1
 7dwHGaaVPQlRht7sDAiMPA4Y7vC58+0GYJWDYLJ0cDHWpCnP+W3xru+flTnx4aB1+fxflXCHzqtTO
 cBT6kEQXNpsFy/XVnPULwQ==;
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsL1q-0000qW-VT
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 05:50:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1564465788; bh=rFx9fn+T+Fv0dWMRaz79ZKt6ZkiHfLTyX3pIweAoLhk=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=p9mR/L3Gg/gXucYDrp2KdjliBsdx6ZofUH1QSf0zfTIxPjP0V9NAqsCaODOXkosi0
 MJNDTZTMbdoUUklBauSstHtlpPhqls/T9XWN4cBCb2bmWWZ0dJXMS+vcCg45+dexQp
 R2F+6jELhvAuSr4hGr31+VdS4ZvKn3FRfb9wTsdQ=
X-QQ-FEAT: 3jlOKZxptE7NRZ1cqKPUS6d7hGFijRRCSatnryZwZSl6r94rs8IzQBHdyxdhS
 fjiIfSWjXplxqWWZiNCI+tkyaR6nPTXvGA8NLUzNlrbsJJ+x6tovHsujebhVSMhExpV6/bS
 plObHhz9WQD4Ys2BJ+Oc0mAcwJWF8DWUGblBSdGvW1YqI5VWzee7T0L9ZgBrQmyQF+tFAgd
 AHB4falywcxYIOMm7hYllz9ILwB0609VvqQkaDrXn8ZshAvzhctHaUT35uQupFkw8QjpYou
 iapVSb9mUIFIZiLnDOt644yaD7/yDY3zsCfw==
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 115.205.26.8
In-Reply-To: <00a901d5461b$c893d310$59bb7930$@adrianschmutzler.de>
References: <1564114882-63441-1-git-send-email-wurobinson@qq.com>
 <00a901d5461b$c893d310$59bb7930$@adrianschmutzler.de>
X-QQ-STYLE: 
X-QQ-mid: webmail438t1564465787t9434585
From: "=?gb18030?B?x9LM/bfn0vc=?=" <wurobinson@qq.com>
To: "=?gb18030?B?QWRyaWFuIFNjaG11dHpsZXI=?=" <mail@adrianschmutzler.de>
Mime-Version: 1.0
Date: Tue, 30 Jul 2019 13:49:47 +0800
X-Priority: 3
Message-ID: <tencent_599CEF7667E63EBDE4896D3CC7EBA9D68A05@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-ReplyHash: 2721042739
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Tue, 30 Jul 2019 13:49:48 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign2
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_065031_546232_F7F302FE 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: [OpenWrt-Devel] =?gb18030?b?UkWjulJFOiAgW1BBVENIXSByYW1pcHM6IGFk?=
 =?gb18030?q?d_support_to_JS7628_development_board?=
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
Cc: =?gb18030?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============4004809845658883564=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============4004809845658883564==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5D3FDA7B_09AC7B58_6704C665"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5D3FDA7B_09AC7B58_6704C665
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SGkgQWRyaWFuLA0KICAgIEJlZm9yZSBJIGRpZCB0aGlzIGNvbW1pdCwgSSByZWZlcnJlZCB0
byAibXQ3NjI4YW5fdW5pZWxlY191NzYyOC0wMS0xMjhtLTE2bS5kdHMiLiBZZXMsIEkgdXNl
IHRoZSBtZW1vcnkgYXV0by1kZXRlY3RlZCBmdW5jdGlvbi4gV2lsbCB5b3UgaGVscCBtZSB0
byBtb2RpeSBpbmZvcm1hdGlvbiBjb25jZXJuaW5nIFJBTSBzaXplPyBPciBpZiB5b3UgaGF2
ZSBtb3JlIGFkdmljZXMsIHlvdSBjYW4gdGVsbCBtZSwgc28gSSBjYW4gbW9kaWZ5IHRoZW0g
aW4gdGhlIG5leHQgY29tbWl0Lg0KDQoNCkJlc3QNClJvYmluc29uIHd1

------=_NextPart_5D3FDA7B_09AC7B58_6704C665
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PGRpdj5IaSZuYnNwOzxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogJnF1b3Q7bHVjaWRhIEdy
YW5kZSZxdW90OywgVmVyZGFuYSwgJnF1b3Q7TWljcm9zb2Z0IFlhSGVpJnF1b3Q7OyI+QWRy
aWFuLDwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogJnF1b3Q7
bHVjaWRhIEdyYW5kZSZxdW90OywgVmVyZGFuYSwgJnF1b3Q7TWljcm9zb2Z0IFlhSGVpJnF1
b3Q7OyI+Jm5ic3A7ICZuYnNwOyZuYnNwOzwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1mYW1p
bHk6ICZxdW90O2x1Y2lkYSBHcmFuZGUmcXVvdDssIFZlcmRhbmEsICZxdW90O01pY3Jvc29m
dCBZYUhlaSZxdW90OzsiPkJlZm9yZSBJIGRpZCB0aGlzIGNvbW1pdCwgSSByZWZlcnJlZCB0
byAiPC9zcGFuPjxmb250IGZhY2U9Imx1Y2lkYSBHcmFuZGUsIFZlcmRhbmEsIE1pY3Jvc29m
dCBZYUhlaSI+bXQ3NjI4YW5fdW5pZWxlY191NzYyOC0wMS0xMjhtLTE2bS5kdHM8L2ZvbnQ+
PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiAmcXVvdDtsdWNpZGEgR3JhbmRlJnF1b3Q7LCBW
ZXJkYW5hLCAmcXVvdDtNaWNyb3NvZnQgWWFIZWkmcXVvdDs7Ij4iLiZuYnNwOzwvc3Bhbj48
c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6ICZxdW90O2x1Y2lkYSBHcmFuZGUmcXVvdDssIFZl
cmRhbmEsICZxdW90O01pY3Jvc29mdCBZYUhlaSZxdW90OzsiPlllcywgSSB1c2UgdGhlJm5i
c3A7PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogJnF1b3Q7bHVjaWRhIEdyYW5k
ZSZxdW90OywgVmVyZGFuYSwgJnF1b3Q7TWljcm9zb2Z0IFlhSGVpJnF1b3Q7OyI+bWVtb3J5
Jm5ic3A7YXV0by1kZXRlY3RlZCBmdW5jdGlvbi4gV2lsbCB5b3UgaGVscCBtZSB0byBtb2Rp
eSZuYnNwOzwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6ICZxdW90O2x1Y2lkYSBH
cmFuZGUmcXVvdDssIFZlcmRhbmEsICZxdW90O01pY3Jvc29mdCBZYUhlaSZxdW90OzsiPmlu
Zm9ybWF0aW9uJm5ic3A7Y29uY2VybmluZyZuYnNwO1JBTSZuYnNwO3NpemU8L3NwYW4+PHNw
YW4gc3R5bGU9ImZvbnQtZmFtaWx5OiAmcXVvdDtsdWNpZGEgR3JhbmRlJnF1b3Q7LCBWZXJk
YW5hLCAmcXVvdDtNaWNyb3NvZnQgWWFIZWkmcXVvdDs7Ij4/IE9yIGk8L3NwYW4+PHNwYW4g
c3R5bGU9ImZvbnQtZmFtaWx5OiAmcXVvdDtsdWNpZGEgR3JhbmRlJnF1b3Q7LCBWZXJkYW5h
LCAmcXVvdDtNaWNyb3NvZnQgWWFIZWkmcXVvdDs7Ij5mIHlvdSBoYXZlIG1vcmUgYWR2aWNl
cywgeW91IGNhbiB0ZWxsIG1lLCBzbyBJIGNhbiBtb2RpZnkgdGhlbSBpbiB0aGUgbmV4dCBj
b21taXQuPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiAmcXVv
dDtsdWNpZGEgR3JhbmRlJnF1b3Q7LCBWZXJkYW5hLCAmcXVvdDtNaWNyb3NvZnQgWWFIZWkm
cXVvdDs7Ij48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5
OiAmcXVvdDtsdWNpZGEgR3JhbmRlJnF1b3Q7LCBWZXJkYW5hLCAmcXVvdDtNaWNyb3NvZnQg
WWFIZWkmcXVvdDs7Ij5CZXN0PC9zcGFuPjwvZGl2PjxkaXY+PGZvbnQgZmFjZT0ibHVjaWRh
IEdyYW5kZSwgVmVyZGFuYSwgTWljcm9zb2Z0IFlhSGVpIj5Sb2JpbnNvbiB3dTwvZm9udD48
L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogJnF1b3Q7bHVjaWRhIEdyYW5k
ZSZxdW90OywgVmVyZGFuYSwgJnF1b3Q7TWljcm9zb2Z0IFlhSGVpJnF1b3Q7OyI+PC9zcGFu
PjwvZGl2Pg==

------=_NextPart_5D3FDA7B_09AC7B58_6704C665--





--===============4004809845658883564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4004809845658883564==--




