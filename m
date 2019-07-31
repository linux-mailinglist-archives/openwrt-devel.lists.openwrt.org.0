Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A558E7BA81
	for <lists+openwrt-devel@lfdr.de>; Wed, 31 Jul 2019 09:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:References:In-Reply-To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xPC3TMQYXu6gIXBE5VH1wUPdynb02zwQMeHftQLgG04=; b=V0ADL8HpRouk6k9vTlRGRy5ch
	xbZizn9K0zQ/QR0MDkBi1tXli0fUV9SDxNchE2KbdGxSerGgl8vRNVQ65LzM/msp+6EPgQeLzOhNK
	jKJS5KTdwwihA1H0raK2h3/+Y5bWs0wPePzaU6pFVghy49VGz/LzHuaPnHrLO+b2cj1nFoLXroNvp
	4QYqNsSEgYXXO1L+0umi23yNeIxM38ToEJ/zPMu6yc0+JqDeyEt+YPVDXcBWxqpUCHMOOq/OuTNLU
	xrkmGRjEM/C8eTzfjhFq1p6DinM1D3ZpIZpejmCwf98BFhdUHITf43hBAmHtoAXaAjB+/t9wZeViY
	hFoZuMoeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiqB-000564-V9; Wed, 31 Jul 2019 07:16:04 +0000
Received: from smtpbg510.qq.com ([203.205.250.17] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsipC-0003fH-5k
 for openwrt-devel@lists.openwrt.org; Wed, 31 Jul 2019 07:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1564557248; bh=qsLVg0/w8n2iQmlm4kIoycPpbcqZDKZd43HRrM5MLnI=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=FpMzPqtn1ZTHMjVxnov2cSEFnz1Hsh5wshlPC8qvlabuTDKCWBcN4PiJ4XGhbd25Y
 35nigNrFN2UsAAKx1Dh/raXi9SANz9e0pD9cmj+VZ+ZkB4UN9DTwBJrP5nLrpbhJNw
 ymq+wTgGeE4I0SS+BVzlhzmZ66xWTriFbSw6uGVE=
X-QQ-FEAT: ft+MkQHxVkvu7S4U+uVLYDYANePRAkIzH3o6vWI02mSAjiYR5fKGAvEt/zdGy
 aHfqA3kC3KehPXs9OCVcc4Ur6Nzu8YXNh6sdXL1eSds76y9lp3QHnjhyrF675dfiLH8bReu
 R1q4RvOuHaX82b4f6SKGZehcV1sfpQJgS4a5YQRfw2tBYQ+v7835iRVVbhmAgALlQIX3gGR
 OvULAr7uZe4APORkLRZqGKIxwcoiIqMepI4rUJ9KET0+6W89hsmrxmuPy1/9ifcUgoh3kAg
 oKITDsm+fdb4uSdp5xvljQaEI9jZvcHWLzfqQGwek3vCCc
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 115.205.26.8
In-Reply-To: <00ac01d546cc$1359c2a0$3a0d47e0$@adrianschmutzler.de>
References: <1564114882-63441-1-git-send-email-wurobinson@qq.com>	<00a901d5461b$c893d310$59bb7930$@adrianschmutzler.de>
 <tencent_599CEF7667E63EBDE4896D3CC7EBA9D68A05@qq.com>
 <00ac01d546cc$1359c2a0$3a0d47e0$@adrianschmutzler.de>
X-QQ-STYLE: 
X-QQ-mid: webmail438t1564557247t6089747
From: "=?gb18030?B?Um9iaW5zb24gV3U=?=" <wurobinson@qq.com>
To: "=?gb18030?B?QWRyaWFuIFNjaG11dHpsZXI=?=" <mail@adrianschmutzler.de>
Mime-Version: 1.0
Date: Wed, 31 Jul 2019 15:14:07 +0800
X-Priority: 3
Message-ID: <tencent_CC467618EF234A1AD97E72589FEEAC58F909@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-ReplyHash: 3088107052
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Wed, 31 Jul 2019 15:14:07 +0800 (CST)
Feedback-ID: webmail:qq.com:bgweb:bgweb2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_001509_448749_89E8BAF6 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.250.17 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: [OpenWrt-Devel] =?gb18030?b?UkWjulJFOiBSRaO6UkU6ICBbUEFUQ0hdIHJh?=
 =?gb18030?q?mips=3A_add_support_to_JS7628_development_board?=
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
Content-Type: multipart/mixed; boundary="===============0369679736125291292=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============0369679736125291292==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5D413FBF_0B6BB198_34E2AF61"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5D413FBF_0B6BB198_34E2AF61
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SGkgQWRyaWFuLA0KSXQgaXMgb2sgdG8gcmVuYW1lIG15IGRldmljZXMgd2l0aG91dCBtZW1v
cnkgc2l6ZS4gSSB3aWxsIGFkZCB0d28gdHlwZXMgb2YgYm9hcmQgd2hpY2ggYXJlIG5hbWVk
ICJKUzc2ODgiKE1UNzY4OEFOIGNoaXApIGFuZCAiWlRLNzYyOFAiKE1UNzYyOERBTiBjaGlw
KSwgYWZ0ZXIgIkpTNzYyOCIgY29tbWl0IHN1Y2NlZWQgLiANClRoZXNlIGJvYXJkcyBhcmUg
YmFzZWQgb24gIipqczc2eDguZHRzaSIgYXMgdGhleSBhbGwgaGF2ZSB0aGUgc2FtZSBjaGlw
IGNvcmUuDQoNCg0KQmVzdA0KUm9iaW5zb24gd3U=

------=_NextPart_5D413FBF_0B6BB198_34E2AF61
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PGRpdj5IaSBBZHJpYW4sPHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMzEsIDczLCAxMjUpOyBm
b250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNC42NjY3cHg7
Ij48L3NwYW4+PC9kaXY+PGRpdj5JdCBpcyBvayB0byByZW5hbWUgbXkgZGV2aWNlcyB3aXRo
b3V0IG1lbW9yeSBzaXplLiBJIHdpbGwgYWRkIHR3byB0eXBlcyBvZiBib2FyZCB3aGljaCBh
cmUgbmFtZWQgIkpTNzY4OCIoTVQ3Njg4QU4gY2hpcCkgYW5kICJaVEs3NjI4UCIoTVQ3NjI4
REFOIGNoaXApLCBhZnRlciAiSlM3NjI4IiBjb21taXQgc3VjY2VlZCAuJm5ic3A7PC9kaXY+
PGRpdj5UaGVzZSBib2FyZHMgYXJlIGJhc2VkIG9uICIqanM3Nng4LmR0c2kiIGFzIHRoZXkg
YWxsIGhhdmUgdGhlIHNhbWUgY2hpcCBjb3JlLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+
PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6ICZxdW90O2x1Y2lkYSBHcmFuZGUmcXVvdDssIFZl
cmRhbmEsICZxdW90O01pY3Jvc29mdCBZYUhlaSZxdW90OzsiPkJlc3Q8L2Rpdj48ZGl2IHN0
eWxlPSJmb250LWZhbWlseTogJnF1b3Q7bHVjaWRhIEdyYW5kZSZxdW90OywgVmVyZGFuYSwg
JnF1b3Q7TWljcm9zb2Z0IFlhSGVpJnF1b3Q7OyI+PGZvbnQgZmFjZT0ibHVjaWRhIEdyYW5k
ZSwgVmVyZGFuYSwgTWljcm9zb2Z0IFlhSGVpIiBzdHlsZT0ibGluZS1oZWlnaHQ6IDIzLjhw
eDsiPlJvYmluc29uIHd1PC9mb250PjwvZGl2PjwvZGl2Pg==

------=_NextPart_5D413FBF_0B6BB198_34E2AF61--



--===============0369679736125291292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0369679736125291292==--


