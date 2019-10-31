Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635B8EB30F
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 15:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=i7UL+538cv6c6BNxaMlA8A/EVmJTEx/6FN3GQZ9iCAM=; b=Bdl
	Nkg7Rh4AZjeSrTHaDuJ2Fo+zEmMWHBspTW8qkPCrTC2IAJwKPOjU8Op7+2GVX/SP6YFV155AwCI4Z
	ev2m02eBF3Wa+W5JDmVQ/d4qcMGKZ4q+5OVvuU2S5UdxljiCAXGkmoX4IRL6jmF6pJKGyzix9YFHY
	kvyqqE33meijN/hywk8TzBcUm0QlDqyr+4xPfZVavhvPtNROTAAQDoPsvMFB4nTKrxdyjSLCKWXTI
	vB9XETLLIW9R4isU/6BRBDSepklXtiwhU99jlD/NT8W5W5Y6kD0HRxonSK8S44f81eVwaSG7xlDam
	J1eP1GAk+SntKKmfPuMLd3WRswA4oSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBgl-00069K-Um; Thu, 31 Oct 2019 14:44:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBgd-000691-QZ
 for openwrt-devel@bombadil.infradead.org; Thu, 31 Oct 2019 14:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Date:
 Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=JtAbS/IK1q8bBVcGMjWqmW9rQHFzQi6qsBLtvAzqqXk=; b=qkkodQayp10c
 oJxecRxSEvUH8+wjjd8ubLGqf47nom2pBKYvYnJP6kIyIkdkeYMKa6/ztXLhcbRlJ5DIOlX/v9tqU
 J9+d9eH5xAcOM5dTqsm9NtOzfAbckyxROkxWAGtPMpROpszVFyGYFIS58mQQs/wlHV1tuQIkJhmQI
 pyvhhKlhEQV1Gnz43fx8U1ZLIFMeLTQyO/9qbyMQh5MdvWAu+cUk95JRqOSh8vV2J8r398Ts8PQq9
 X6vgm+8GC+y+2meO4KtN+lcTxN1s4lTgrQfySjMYa1QRnZr/5wP0LO+kbb6Qnu/426/fFJsU5XNi3
 dfDPGZ9obkzoQc8GucymVg==;
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBh0-0008JJ-OH
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 14:44:57 +0000
X-QQ-GoodBg: 2
X-QQ-SSF: 00400000000000F0
X-QQ-FEAT: /d/5qLpbrmnNVAXTriZ18h/XP/k3dGO6pC1th7lceivYta9km1OeBEI5Mvzig
 yG5wz5Z2HTo9aMcuFwD3uztng28Qi7jLAnxgV0WvJfo01nADW4qgQySQ827JB5AmUMX0iMO
 QbyXZLGI6WNTAqDyjmbM9RZyFH/YtgMh5Ha7QK1DhZDWdX/eePOmr1KkA1Hp+ydr6XfXsTy
 X4IvxGNevmivceBln4f99NSGzK02fvkbZacrt1ebOf45TdDzpRjvG4X1aTqmrGym7YivMSh
 zlnZt4597CHvzkOkO2xHBQoH9J3mQzpaXSrW+m/qfyjJ/z
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 123.116.235.63
X-QQ-STYLE: 
X-QQ-mid: bizmailvip24t1572533028t72322
From: "=?utf-8?B?5YiY56S86ZuE?=" <lxliu@ikuai8.com>
To: "=?utf-8?B?dGFwcGVy?=" <j.lancett@ntlworld.com>,
 "=?utf-8?B?bmJk?=" <nbd@nbd.name>,
 "=?utf-8?B?SGF1a2UgTWVocnRlbnM=?=" <hauke@hauke-m.de>,
 "=?utf-8?B?b3BlbndydC1kZXZlbA==?=" <openwrt-devel@lists.openwrt.org>
Mime-Version: 1.0
Date: Thu, 31 Oct 2019 22:43:48 +0800
X-Priority: 3
Message-ID: <tencent_33F9B7F879BB78D9288AC8C8@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Thu, 31 Oct 2019 22:43:50 +0800 (CST)
Feedback-ID: bizmailvip:ikuai8.com:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_144455_457555_1BE751FB 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: [OpenWrt-Devel] =?utf-8?b?5Zue5aSNOlJlOiAgW1BBVENILTE5LjA3XSBi?=
 =?utf-8?q?uild=3A_fix_module_strip_invalid?=
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
Content-Type: multipart/mixed; boundary="===============4788298002250755072=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============4788298002250755072==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5DBAF324_0A25A590_16CE35F8"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5DBAF324_0A25A590_16CE35F8
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGZvciB5b3VyIGFuc3dlci4=

------=_NextPart_5DBAF324_0A25A590_16CE35F8
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

PGRpdj5UaGFuayB5b3UgZm9yIHlvdXIgYW5zd2VyLjwvZGl2PjxkaXY+PGJyPjwvZGl2Pjxk
aXY+PGJyPjwvZGl2Pg==

------=_NextPart_5DBAF324_0A25A590_16CE35F8--





--===============4788298002250755072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4788298002250755072==--




