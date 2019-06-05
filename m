Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4D735A1A
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 12:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1UtcdmCvTwdVHmNTARqvnbeldS+mpVY66kNOoRptkUE=; b=MLgaDb8MQaGGZe
	fW3iKatxfwwaaStZxLGNYGP7iJBKE46RaytJA2Eczs+DQ0LXdi8chhMdgT4zooesYyr/fHO0oMw/N
	0R46/5ZfWul/4SVXpoD7OHsnOq+Nhzz/hGNvuiTipLi664zvG20Z3kGjd9V/Uaut26rRKMxCWmC1r
	8nizJEc/bGM7b8rN9+Dj8JTig7NKd8AEID3GVeDr62aKPwOj/R2fKWzXJ3y1VRCYmZfVgO6HZ6rJt
	XmiMt5hyH/tMN/cbGQJbaA8SckVPuHm2xeO6hQX3cZfSpJGVl0ZX11R2I3rlBV/ClkdKYpyCIzs/Y
	D6jKTbl5N2V6MtRy38Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSlM-00057H-9u; Wed, 05 Jun 2019 10:03:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSlF-00056m-I7
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 10:03:15 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E11064B87;
 Wed,  5 Jun 2019 12:03:10 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 860b4ae5;
 Wed, 5 Jun 2019 12:03:08 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  5 Jun 2019 12:03:04 +0200
Message-Id: <1559728984-11559-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_030313_747807_B5EA89B7 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] kirkwood: image: fix unwanted 2nd inclusion
 of kernel
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Mathias Kresin <dev@kresin.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SW4gY29tbWl0IGQyZTE4ZGFlMjg5MiAoImtpcmt3b29kOiBjbGVhbnVwIGltYWdlIGJ1aWxkIGNv
ZGUiKSB0aGUgaW1hZ2UKYnVpbGQgY29kZSB3YXMgcmVmYWN0b3JlZCwgc2V0dGluZyBLRVJORUxf
SU5fVUJJPTAgd2hpY2ggZG9lc24ndCB3b3JrIGFzCnRoZSBLRVJORUxfSU5fVUJJIG5lZWRzIHRv
IGJlIHVuc2V0IGluIG9yZGVyIHRvIG1ha2UgaXQgd29ya2luZyBhcwppbnRlbmRlZCwgd2hpY2gg
bGVhZHMgdG8gZmFjdG9yeSBpbWFnZXMgd2l0aCB0d28ga2VybmVscyBpbiB0aGVtOgoKIGJpbndh
bGsgLS1rZWVwLWdvaW5nIG9wZW53cnQta2lya3dvb2QtY2lzY29fb24xMDAtc3F1YXNoZnMtZmFj
dG9yeS5iaW4KIE1ENSBDaGVja3N1bTogIGMzM2UzZDFlYjBjYjYzMmJmMGE0ZGMyODc1OTJlYjcw
CiBERUNJTUFMICAgCUhFWCAgICAgICAJREVTQ1JJUFRJT04KIC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KIDAgICAgICAgICAJMHgwICAgICAgIAl1SW1hZ2UgaGVhZGVyIFsuLi5dICJBUk0gT3Blbldy
dCBMaW51eC00LjE0LjEyMyIKIDU3NjkyMTYgICAJMHg1ODA4MDAgIAl1SW1hZ2UgaGVhZGVyIFsu
Li5dICJBUk0gT3BlbldydCBMaW51eC00LjE0LjEyMyIKCkNjOiBNYXRoaWFzIEtyZXNpbiA8ZGV2
QGtyZXNpbi5tZT4KUmVmOiBodHRwczovL2J1Z3Mub3BlbndydC5vcmcvaW5kZXgucGhwP2RvPWRl
dGFpbHMmdGFza19pZD0yMjg1CkZpeGVzOiBkMmUxOGRhZTI4OTIgKCJraXJrd29vZDogY2xlYW51
cCBpbWFnZSBidWlsZCBjb2RlIikKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpA
dHJ1ZS5jej4KLS0tCiB0YXJnZXQvbGludXgva2lya3dvb2QvaW1hZ2UvTWFrZWZpbGUgfCAxMCAr
KysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9raXJrd29vZC9pbWFnZS9NYWtlZmlsZSBiL3Rh
cmdldC9saW51eC9raXJrd29vZC9pbWFnZS9NYWtlZmlsZQppbmRleCAwNjcyYmEwMzc0MWMuLjZk
ODA2MmIzMzA1NCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2tpcmt3b29kL2ltYWdlL01ha2Vm
aWxlCisrKyBiL3RhcmdldC9saW51eC9raXJrd29vZC9pbWFnZS9NYWtlZmlsZQpAQCAtMzIsNyAr
MzIsNyBAQCBkZWZpbmUgRGV2aWNlL2Npc2NvX29uMTAwCiAgIERFVklDRV9EVFMgOj0ga2lya3dv
b2Qtb24xMDAKICAgREVWSUNFX1BBQ0tBR0VTIDo9IGttb2QtaTJjLW12NjR4eHgKICAgS0VSTkVM
X1NJWkUgOj0gNTM3NmsKLSAgS0VSTkVMX0lOX1VCSSA6PSAwCisgIEtFUk5FTF9JTl9VQkkgOj0K
ICAgVUJJTklaRV9PUFRTIDo9IC1FIDUKICAgSU1BR0UvZmFjdG9yeS5iaW4gOj0gYXBwZW5kLWtl
cm5lbCB8IHBhZC10byAkJCQkKEtFUk5FTF9TSVpFKSB8IGFwcGVuZC11YmkKICAgQk9BUkRfTkFN
RSA6PSBvbjEwMApAQCAtNzEsOCArNzEsOCBAQCBkZWZpbmUgRGV2aWNlL2lvbV9peDJfMjAwCiAg
IFNVQlBBR0VTSVpFIDo9IDI1NgogICBCTE9DS1NJWkUgOj0gMTZLaUIKICAgS0VSTkVMX1NJWkUg
Oj0gMzA3MmsKLSAgS0VSTkVMX0lOX1VCSSA6PSAwCi0gIFVCSU5JWkVfT1BUUyA6PSAtRSA1ICAK
KyAgS0VSTkVMX0lOX1VCSSA6PQorICBVQklOSVpFX09QVFMgOj0gLUUgNQogICBJTUFHRV9TSVpF
IDo9IDMyNTA1ODU2CiAgIElNQUdFL2ZhY3RvcnkuYmluIDo9IGFwcGVuZC1rZXJuZWwgfCBwYWQt
dG8gJCQkJChLRVJORUxfU0laRSkgfCBhcHBlbmQtdWJpIHwgY2hlY2stc2l6ZSAkJCQkKElNQUdF
X1NJWkUpCiBlbmRlZgpAQCAtODMsNyArODMsNyBAQCBkZWZpbmUgRGV2aWNlL2xpbmtzeXNfYXVk
aQogICBERVZJQ0VfUEFDS0FHRVMgOj0ga21vZC1td2w4ayBzd2NvbmZpZyB3cGFkLWJhc2ljIGtt
b2QtZ3Bpby1idXR0b24taG90cGx1ZwogICBERVZJQ0VfRFRTIDo9IGtpcmt3b29kLWxpbmtzeXMt
YXVkaQogICBLRVJORUxfU0laRSA6PSAyNjI0awotICBLRVJORUxfSU5fVUJJIDo9IDAKKyAgS0VS
TkVMX0lOX1VCSSA6PQogICBVQklOSVpFX09QVFMgOj0gLUUgNQogICBJTUFHRS9mYWN0b3J5LmJp
biA6PSBhcHBlbmQta2VybmVsIHwgcGFkLXRvICQkJCQoS0VSTkVMX1NJWkUpIHwgYXBwZW5kLXVi
aQogICBCT0FSRF9OQU1FIDo9IGxpbmtzeXMtYXVkaQpAQCAtOTYsNyArOTYsNyBAQCBkZWZpbmUg
RGV2aWNlL2xpbmtzeXNfdmlwZXIKICAgREVWSUNFX1BBQ0tBR0VTIDo9IGttb2QtbXdsOGsgc3dj
b25maWcgd3BhZC1iYXNpYyBrbW9kLWdwaW8tYnV0dG9uLWhvdHBsdWcKICAgREVWSUNFX0RUUyA6
PSBraXJrd29vZC1saW5rc3lzLXZpcGVyCiAgIEtFUk5FTF9TSVpFIDo9IDI2ODhrCi0gIEtFUk5F
TF9JTl9VQkkgOj0gMAorICBLRVJORUxfSU5fVUJJIDo9CiAgIFVCSU5JWkVfT1BUUyA6PSAtRSA1
CiAgIElNQUdFL2ZhY3RvcnkuYmluIDo9IGFwcGVuZC1rZXJuZWwgfCBwYWQtdG8gJCQkJChLRVJO
RUxfU0laRSkgfCBhcHBlbmQtdWJpCiAgIEJPQVJEX05BTUUgOj0gbGlua3N5cy12aXBlcgotLSAK
MS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
