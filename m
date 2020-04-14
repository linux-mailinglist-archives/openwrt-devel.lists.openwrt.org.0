Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807F01A8E12
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 23:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bfE7sXVLyBhdSAmmNpdwmLE9dl6ZNqU01eND1PXpQVY=; b=j2+VjMtfcCRbPC
	3yk+F+1FqeZ62qrUCztTM00BkWofRzzJv1ARgpwJJx+V+CTA5ZyTz0Rsn6zkLj1zjmWNva30j/hfh
	urdTIfypd3Q1uibLNUHYIoz6pq5uTy2O01pb0fAJhpYtSSXsQ3ViX78QwdIfkvEvvqD7DhCSQiL83
	wzsRcB164VqboZj1d75H9H1raxWTymd4HtqYCJh451fd6X1DBxzayD+KVWXdBeRXyhQTYbur2VT2N
	di9wVZBy2Jadvkv6nlRVzxVaYowtk7rUhopVy+/xrWc7aXQd2fFN7Xjehm4AYA6yNzQw1ozVZRRTy
	ED/u/6cBejmwy5gnyCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTUh-00013D-83; Tue, 14 Apr 2020 21:53:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOTUS-00011M-UZ
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 21:53:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4AC043ABD;
 Tue, 14 Apr 2020 23:53:07 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 39afdf2c;
 Tue, 14 Apr 2020 23:52:53 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 23:53:03 +0200
Message-Id: <20200414215303.23321-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_145309_310427_ED798437 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] uboot-imx6: bump to 2020.04 release
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
Cc: Vladimir Vid <vladimir.vid@sartura.hr>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Tim Harvey <tharvey@gateworks.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmVmcmVzaGVkIGFsbCBwYXRjaGVzLCBydW4gdGVzdGVkIG9uIGFwYWxpcy4KCkNjOiBWbGFkaW1p
ciBWaWQgPHZsYWRpbWlyLnZpZEBzYXJ0dXJhLmhyPgpDYzogVGltIEhhcnZleSA8dGhhcnZleUBn
YXRld29ya3MuY29tPgpDYzogS29lbiBWYW5kZXB1dHRlIDxrb2VuLnZhbmRlcHV0dGVAbmNlbnRy
aWMuY29tPgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0K
IHBhY2thZ2UvYm9vdC91Ym9vdC1pbXg2L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICB8
ICA0ICsrLS0KIC4uLmlzX2lteDZfZGVmY29uZmlnLWVuYWJsZS1zb21lLXVzZWZ1bC1jb21tYW5k
cy5wYXRjaCB8ICA2ICsrLS0tLQogLi4uL3BhdGNoZXMvMTEwLW14NmN1Ym94aS1tbWMtZmFsbGJh
Y2sucGF0Y2ggICAgICAgICAgIHwgIDQgKystLQogLi4uLzExMS1teDZjdWJveGlfZGVmY29uZmln
LWZvcmNlLW1tYy1ib290LnBhdGNoICAgICAgIHwgMTAgKysrKystLS0tLQogNCBmaWxlcyBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9wYWNr
YWdlL2Jvb3QvdWJvb3QtaW14Ni9NYWtlZmlsZSBiL3BhY2thZ2UvYm9vdC91Ym9vdC1pbXg2L01h
a2VmaWxlCmluZGV4IDNmNmJiMWM1ZGUxMC4uNzlhY2Q0YWJmNzQyIDEwMDY0NAotLS0gYS9wYWNr
YWdlL2Jvb3QvdWJvb3QtaW14Ni9NYWtlZmlsZQorKysgYi9wYWNrYWdlL2Jvb3QvdWJvb3QtaW14
Ni9NYWtlZmlsZQpAQCAtNywxMCArNywxMCBAQAogCiBpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5t
awogCi1QS0dfVkVSU0lPTjo9MjAyMC4wMQorUEtHX1ZFUlNJT046PTIwMjAuMDQKIFBLR19SRUxF
QVNFOj0xCiAKLVBLR19IQVNIOj1hYTQ1M2M2MDMyMDhiMWIyN2JkMDM1MjU3NzVhN2Y3OWI0NDNh
ZGVjNTc3ZmRjNmU4ZjA2OTc0MDI1YTEzNWYxCitQS0dfSEFTSDo9ZmU3MzJhYWYwMzdkOWNjM2Mw
OTA5YmFkODM2MmFmMzY2YWU5NjRiYmRhYzY5MTNhMzQwODFmZjRhZDU2NTM3MgogCiBpbmNsdWRl
ICQoSU5DTFVERV9ESVIpL3UtYm9vdC5tawogaW5jbHVkZSAkKElOQ0xVREVfRElSKS9wYWNrYWdl
Lm1rCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jvb3QvdWJvb3QtaW14Ni9wYXRjaGVzLzAwMDEtYXBh
bGlzX2lteDZfZGVmY29uZmlnLWVuYWJsZS1zb21lLXVzZWZ1bC1jb21tYW5kcy5wYXRjaCBiL3Bh
Y2thZ2UvYm9vdC91Ym9vdC1pbXg2L3BhdGNoZXMvMDAwMS1hcGFsaXNfaW14Nl9kZWZjb25maWct
ZW5hYmxlLXNvbWUtdXNlZnVsLWNvbW1hbmRzLnBhdGNoCmluZGV4IDE4YWQyZDY2ZDMyNi4uMTBl
ZDkxOGU3NzM0IDEwMDY0NAotLS0gYS9wYWNrYWdlL2Jvb3QvdWJvb3QtaW14Ni9wYXRjaGVzLzAw
MDEtYXBhbGlzX2lteDZfZGVmY29uZmlnLWVuYWJsZS1zb21lLXVzZWZ1bC1jb21tYW5kcy5wYXRj
aAorKysgYi9wYWNrYWdlL2Jvb3QvdWJvb3QtaW14Ni9wYXRjaGVzLzAwMDEtYXBhbGlzX2lteDZf
ZGVmY29uZmlnLWVuYWJsZS1zb21lLXVzZWZ1bC1jb21tYW5kcy5wYXRjaApAQCAtMTQsMTEgKzE0
LDkgQEAgU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KICBjb25m
aWdzL2FwYWxpc19pbXg2X2RlZmNvbmZpZyB8IDUgKysrKysKICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspCiAKLWRpZmYgLS1naXQgYS9jb25maWdzL2FwYWxpc19pbXg2X2RlZmNvbmZp
ZyBiL2NvbmZpZ3MvYXBhbGlzX2lteDZfZGVmY29uZmlnCi1pbmRleCAwZDExYWI1M2Q2NjMuLmJi
YjNlYzFhYTU1NCAxMDA2NDQKIC0tLSBhL2NvbmZpZ3MvYXBhbGlzX2lteDZfZGVmY29uZmlnCiAr
KysgYi9jb25maWdzL2FwYWxpc19pbXg2X2RlZmNvbmZpZwotQEAgLTQzLDYgKzQzLDcgQEAgQ09O
RklHX0NNRF9HUElPPXkKK0BAIC00NCw2ICs0NCw3IEBAIENPTkZJR19DTURfR1BJTz15CiAgQ09O
RklHX0NNRF9HUFQ9eQogIENPTkZJR19DTURfSTJDPXkKICBDT05GSUdfQ01EX01NQz15CkBAIC0y
Niw3ICsyNCw3IEBAIGluZGV4IDBkMTFhYjUzZDY2My4uYmJiM2VjMWFhNTU0IDEwMDY0NAogIENP
TkZJR19DTURfVVNCPXkKICBDT05GSUdfQ01EX1VTQl9TRFA9eQogIENPTkZJR19DTURfVVNCX01B
U1NfU1RPUkFHRT15Ci1AQCAtNTIsNiArNTMsMTAgQEAgQ09ORklHX0NNRF9QTUlDPXkKK0BAIC01
Myw2ICs1NCwxMCBAQCBDT05GSUdfQ01EX1BNSUM9eQogIENPTkZJR19DTURfUkVHVUxBVE9SPXkK
ICBDT05GSUdfT0ZfQ09OVFJPTD15CiAgQ09ORklHX0RFRkFVTFRfREVWSUNFX1RSRUU9ImlteDYt
YXBhbGlzIgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9ib290L3Vib290LWlteDYvcGF0Y2hlcy8xMTAt
bXg2Y3Vib3hpLW1tYy1mYWxsYmFjay5wYXRjaCBiL3BhY2thZ2UvYm9vdC91Ym9vdC1pbXg2L3Bh
dGNoZXMvMTEwLW14NmN1Ym94aS1tbWMtZmFsbGJhY2sucGF0Y2gKaW5kZXggMTExZTFiOTgwOTE4
Li45ZDQ5MGRkZjdlYTggMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvYm9vdC91Ym9vdC1pbXg2L3BhdGNo
ZXMvMTEwLW14NmN1Ym94aS1tbWMtZmFsbGJhY2sucGF0Y2gKKysrIGIvcGFja2FnZS9ib290L3Vi
b290LWlteDYvcGF0Y2hlcy8xMTAtbXg2Y3Vib3hpLW1tYy1mYWxsYmFjay5wYXRjaApAQCAtMSw3
ICsxLDcgQEAKIC0tLSBhL2JvYXJkL3NvbGlkcnVuL214NmN1Ym94aS9teDZjdWJveGkuYwogKysr
IGIvYm9hcmQvc29saWRydW4vbXg2Y3Vib3hpL214NmN1Ym94aS5jCi1AQCAtMjkyLDYgKzI5Miwx
MiBAQCBzdGF0aWMgdm9pZCBzZXR1cF9pb211eF9lbmV0KHZvaWQpCi0gCXVkZWxheSgxMDApOwor
QEAgLTI4Niw2ICsyODYsMTIgQEAgc3RhdGljIHZvaWQgc2V0dXBfaW9tdXhfZW5ldCh2b2lkKQor
IAlncGlvX2ZyZWVfbGlzdF9ub2RldigmZGVzYywgMSk7CiAgfQogIAogK3ZvaWQgYm9hcmRfYm9v
dF9vcmRlcih1MzIgKnNwbF9ib290X2xpc3QpCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jvb3QvdWJv
b3QtaW14Ni9wYXRjaGVzLzExMS1teDZjdWJveGlfZGVmY29uZmlnLWZvcmNlLW1tYy1ib290LnBh
dGNoIGIvcGFja2FnZS9ib290L3Vib290LWlteDYvcGF0Y2hlcy8xMTEtbXg2Y3Vib3hpX2RlZmNv
bmZpZy1mb3JjZS1tbWMtYm9vdC5wYXRjaAppbmRleCAxOWI3M2UzYzlmNWQuLjRjM2RjNGNlMjBl
OCAxMDA2NDQKLS0tIGEvcGFja2FnZS9ib290L3Vib290LWlteDYvcGF0Y2hlcy8xMTEtbXg2Y3Vi
b3hpX2RlZmNvbmZpZy1mb3JjZS1tbWMtYm9vdC5wYXRjaAorKysgYi9wYWNrYWdlL2Jvb3QvdWJv
b3QtaW14Ni9wYXRjaGVzLzExMS1teDZjdWJveGlfZGVmY29uZmlnLWZvcmNlLW1tYy1ib290LnBh
dGNoCkBAIC0xMywxMSArMTMsMTEgQEAgU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5l
enpAdHJ1ZS5jej4KIAogLS0tIGEvY29uZmlncy9teDZjdWJveGlfZGVmY29uZmlnCiArKysgYi9j
b25maWdzL214NmN1Ym94aV9kZWZjb25maWcKLUBAIC02LDYgKzYsNyBAQCBDT05GSUdfU1BMX0xJ
QkNPTU1PTl9TVVBQT1JUPXkKLSBDT05GSUdfU1BMX0xJQkdFTkVSSUNfU1VQUE9SVD15Ci0gQ09O
RklHX1RBUkdFVF9NWDZDVUJPWEk9eQorQEAgLTksNiArOSw3IEBAIENPTkZJR19FTlZfU0laRT0w
eDIwMDAKKyBDT05GSUdfRU5WX09GRlNFVD0weEZFMDAwCisgQ09ORklHX0RNX0dQSU89eQogIENP
TkZJR19TUExfTU1DX1NVUFBPUlQ9eQogK0NPTkZJR19TUExfRk9SQ0VfTU1DX0JPT1Q9eQogIENP
TkZJR19TUExfU0VSSUFMX1NVUFBPUlQ9eQotIENPTkZJR19FTlZfU0laRT0weDIwMDAKLSBDT05G
SUdfRU5WX09GRlNFVD0weEZFMDAwCisgQ09ORklHX05SX0RSQU1fQkFOS1M9MQorIENPTkZJR19T
UEw9eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
