Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05671132E7
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 19:15:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VBo7CcdQnmDOeB4Uu9THUoa230Bdt3rVddDhQxfCGjU=; b=VW3XU6FpBAIa9p
	Ng+jzosEMq9Qb6Ihcyltq62KlEMFRgqBwhXMKb86FYLj1TQYHdKkgjEEdhiiVQIqJDBBZd9xPQfQo
	1pbfyafSmpodocPyotM0pMyJgrgMX4WTyRgywZhgIwIlYRcHzAuab85yU0SmEVfNA0ne3Mz7Pz6cD
	jk1X54e1SEmotmLQFEMTer8ruiehz1/47UZmkWDDS8Eb3NVISlvJVoxKbe/HOG5Vo96QdoHkMWQB6
	43el0r8xZJwkpypG5lxQFGtPuhZDvQxy7+FO3xcTF6OKMTw7TKjnXAJtQCKIIAYO3psD/tKuiC6Wd
	ZTGyy4Z7nszil9IL4nxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZBU-0002uJ-8b; Wed, 04 Dec 2019 18:15:32 +0000
Received: from mail.aperture-lab.de ([138.201.29.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZBM-0002tE-IN
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 18:15:26 +0000
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1575483313;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=1RD6H0CvxLc7fvphapfKMQlva6j1n5SlvJ1o0xNKDYs=;
 b=Kj5FsD93/eSOYMovY+ClM9E7FOq5LheYNa6C4BMn4nSZRketi8LaxmmsWh7Tmp9jQgRrqz
 Z6rTdZGosZZ1FtCKw5xdlZaq8O7j6EyerLd7bmlX1OGsngYBfJaKpLqWJ/xCr6Prjgt1xY
 hZK16LYSlxkv66XcQK0aHGEpweAIlEblDZI9DA9RA+Ulp7eiyQeT2Aj633ho7q35piMDNH
 DUXgW86kt/Z+ET3CPUwIkEc8wkdq1zq6e2rO6purugmC/F4wUmrGd+8rO1NSLQIcYFub8W
 B/o817eyk3DUgA38xUZlzl0BcOYTe5tvCYfJNXXXy6HrPCIhCzITNhraWe5/Lw==
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Dec 2019 19:14:30 +0100
Message-Id: <20191204181430.4675-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1575483313;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=1RD6H0CvxLc7fvphapfKMQlva6j1n5SlvJ1o0xNKDYs=;
 b=GijlmPvDTkzExO68ZU+vkvUwMCU52xI+VMHLIJ3viOILuMMnpgLl462OwYtXB5KQoHnZQH
 3zPPYrexluW5gJzmh2MictMni+m5VjWPGs788DSHlRlrCXcM3gvQun/UbhuNrRXWRgfncG
 yA115j2lxVFYOBZ6PcpSdNccACvSOcqxM3K/xkEpEhn3SUfrTsD8r9L+gL6/zUTn8OtRmV
 HkuiEti69xYi/YDzUAfPji5jbJ01k5IgxjczV4hKL27Uj+3wHJhMfwyiGQVTrSulVc/Nkh
 X2iGKBOuzY0JQpjK6dIROQBEvukF8R2Q2uTDYd1j9oMvcBj4rKrQQqyY+E23Ug==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1575483313; a=rsa-sha256; cv=none;
 b=nJYVghYmpSxjGBh566uWYLaDKTHO0RvFWJ2R1A/5s441vsmJvI42OoZInt6MLSX0WjuIig
 DI9nFcv59xwkxCLcICLaM2dciWLSWUgCPKbupqvxIUJVH9r/Ou7+OWcGJ4wyP0b5+c6pIz
 c7wMn4EoNwex9Fj06eogU1XjU6YMtL2VXCNSnk6iomllZ79nN+UTTK4mzEvxG1z+P/kaPr
 ztpHH05DD8sOzJqVAaqfuemXJOtcACoqAeueIi653RrugsxxvSq4mEHI4rQ3ODKAvJg69I
 zM5FP5sUvA54wxtgggv+lexZpGZDuslLVtwCLxUio8WH6nRQfviWzbKxGkYj0g==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_101524_910116_6AA4F556 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.201.29.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH v2] imx6: Adding Ka-Ro electronics TX6U-8033
 Module on MB7 baseboard support
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
Cc: =?UTF-8?q?Linus=20L=C3=BCssing?= <ll@simonwunderlich.de>,
 Simon Wunderlich <sw@simonwunderlich.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogTGludXMgTMO8c3NpbmcgPGxsQHNpbW9ud3VuZGVybGljaC5kZT4KClRoaXMgYWRkcyBz
dXBwb3J0IGZvciB0aGUgS2EtUm8gTUI3IGJvYXJkIHdpdGggYSBUWDZVLTgwMzMgbW9kdWxlLgoK
U3BlY2lmaWNhdGlvbiwgYWNjb3JkaW5nIHRvIExpbnV4IERUUyBjb21taXQ6CgogICAgVFg2VS04
MDMzOgogICAgUHJvY2Vzc29yICAgIEZyZWVzY2FsZSBpLk1YIDYgRHVhbCBMaXRlLCA4MDBNSHoK
ICAgIFJBTSAgICAgICAgICAxR2lCIEREUjMgU0RSQU0KICAgIFJPTSAgICAgICAgICA0R2lCIGVN
TUMKICAgIFBvd2VyIHN1cHBseSBTaW5nbGUgMy4xViB0byA1LjVWCiAgICBTaXplICAgICAgICAg
MzFtbSBTTy1ESU1NCiAgICBUZW1wLiBSYW5nZSAgaW5kdXN0cmlhbCBncmFkZSAoLTQwwrBDLy0y
NcKwQyB0byAxMDXCsEMgVGopCgpUaGUgdS1ib290IHNoaXBwZWQgYnkgdGhlIHZlbmRvciBieSBk
ZWZhdWx0IGV4cGVjdHMgdGhlIGZvbGxvd2luZyBwYXJ0aXRpb24KbGF5b3V0OgoKTUJSL01TRE9T
LCBkaXNrLWlkICcwY2M2NmNjMCcgewoJMGNjNjZjYzAtMDEgPT4gZXh0MiwgL3ZtbGludXoKCTBj
YzY2Y2MwLTAyID0+IGV4dDQsIHJvb3Rmcwp9CgpUWDZETCBVLUJvb3QgPiBlbnYgcHJpbnQKYXBw
ZW5kX2Jvb3RhcmdzPXJvb3Rmc3R5cGU9ZXh0NApbLi4uXQpib290Y21kX21tYz1zZXRlbnYgYXV0
b3N0YXJ0IG5vO3J1biBib290YXJnc19tbWM7ZXh0MmxvYWQgbW1jIDAgJHtrZXJuZWxhZGRyfSB2
bWxpbnV6ClsuLi5dCnJvb3RwYXJ0X3V1aWQ9MGNjNjZjYzAtMDIKWy4uLl0KClRoaXMgaXMgYWxz
byBvbmUgb2YgdGhlIHJlYXNvbnMsIHdoeSBvbmx5IGV4dDQgcm9vdGZzIHN1cHBvcnQgd2FzIGFk
ZGVkCmFuZCB0ZXN0ZWQgc28gZmFyLiBObyBzcXVhc2hmcyBzdXBwb3J0IHlldC4KCk90aGVyIHRo
YW4gdGhhdCwgbm90aGluZyBmYW5jeSBuZWVkcyB0byBiZSBhZGRlZCBvciBwcmVzZXJ2ZWQgb24g
dGhlCmVNTUMuCgpDYzogU2ltb24gV3VuZGVybGljaCA8c3dAc2ltb253dW5kZXJsaWNoLmRlPgpT
aWduZWQtb2ZmLWJ5OiBMaW51cyBMw7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgotLS0K
CkNoYW5nZWxvZyB2MjoKKiByZW1vdmVkIHdpbGRjYXJkIGJvYXJkIG5hbWVzCgogdGFyZ2V0L2xp
bnV4L2lteDYvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiAuLi4vaW14Ni9i
YXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsgICAgfCAgIDMgKy0KIHRhcmdldC9saW51
eC9pbXg2L2Jhc2UtZmlsZXMvbGliL2lteDYuc2ggICAgICB8ICAgNCArCiAuLi4vYmFzZS1maWxl
cy9saWIvcHJlaW5pdC83OV9tb3ZlX2NvbmZpZyAgICAgfCAgIDkgKysKIC4uLi9pbXg2L2Jhc2Ut
ZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggICB8IDEwOCArKysrKysrKysrKysrKysrKy0K
IHRhcmdldC9saW51eC9pbXg2L2ltYWdlL01ha2VmaWxlICAgICAgICAgICAgICB8ICAzNCArKysr
KysKIC4uLi9saW51eC9pbXg2L2ltYWdlL2dlbl9rYXJvX3NkY2FyZF9pbWcuc2ggICB8ICAyNiAr
KysrKwogLi4uL2lteDYvcGF0Y2hlcy00LjE0LzEwMC1ib290YXJncy5wYXRjaCAgICAgIHwgIDEz
ICsrKwogdG9vbHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAx
ICsKIDkgZmlsZXMgY2hhbmdlZCwgMTk3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCiBj
cmVhdGUgbW9kZSAxMDA3NTUgdGFyZ2V0L2xpbnV4L2lteDYvaW1hZ2UvZ2VuX2thcm9fc2RjYXJk
X2ltZy5zaAoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pbXg2L01ha2VmaWxlIGIvdGFyZ2V0
L2xpbnV4L2lteDYvTWFrZWZpbGUKaW5kZXggYWM0MzAwZjdlYi4uODA4M2E1NGUxNiAxMDA2NDQK
LS0tIGEvdGFyZ2V0L2xpbnV4L2lteDYvTWFrZWZpbGUKKysrIGIvdGFyZ2V0L2xpbnV4L2lteDYv
TWFrZWZpbGUKQEAgLTIwLDYgKzIwLDYgQEAgaW5jbHVkZSAkKElOQ0xVREVfRElSKS90YXJnZXQu
bWsKIAogS0VSTkVMTkFNRTo9ekltYWdlIGR0YnMKIAotREVGQVVMVF9QQUNLQUdFUyArPSB1Ym9v
dC1lbnZ0b29scyBta2YyZnMgZTJmc3Byb2dzIGJsa2lkCitERUZBVUxUX1BBQ0tBR0VTICs9IHVi
b290LWVudnRvb2xzIG1rZjJmcyBlMmZzcHJvZ3MgYmxraWQgcGFydHgtdXRpbHMKIAogJChldmFs
ICQoY2FsbCBCdWlsZFRhcmdldCkpCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvaW14Ni9iYXNl
LWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsgYi90YXJnZXQvbGludXgvaW14Ni9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKaW5kZXggNmVjNjY3MzQ2ZC4uYzY2MmJlNzJiNyAx
MDA3NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9u
ZXR3b3JrCisrKyBiL3RhcmdldC9saW51eC9pbXg2L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJf
bmV0d29yawpAQCAtMjEsNyArMjEsOCBAQCBjdWJveC1pIHxcCiAqZ3c1NTJ4KQogCXVjaWRlZl9z
ZXRfaW50ZXJmYWNlc19sYW5fd2FuICdldGgwJyAnZXRoMScKIAk7OwotKndhbmRib2FyZCkKKyp3
YW5kYm9hcmQgfFwKK3R4NnUtODAzMykKIAl1Y2lkZWZfc2V0X2ludGVyZmFjZV93YW4gJ2V0aDAn
CiAJOzsKIGVzYWMKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pbXg2L2Jhc2UtZmlsZXMvbGli
L2lteDYuc2ggYi90YXJnZXQvbGludXgvaW14Ni9iYXNlLWZpbGVzL2xpYi9pbXg2LnNoCmluZGV4
IDY4Y2FhZmYxNWYuLmM0Yjg3ZDFjMjEgMTAwNzU1Ci0tLSBhL3RhcmdldC9saW51eC9pbXg2L2Jh
c2UtZmlsZXMvbGliL2lteDYuc2gKKysrIGIvdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxlcy9s
aWIvaW14Ni5zaApAQCAtOTksNiArOTksMTAgQEAgaW14Nl9ib2FyZF9kZXRlY3QoKSB7CiAJCW5h
bWU9IndhbmRib2FyZCIKIAkJOzsKIAorCSJLYS1SbyBlbGVjdHJvbmljcyBUWDZVLTgwMzMgTW9k
dWxlIG9uIE1CNyBiYXNlYm9hcmQiKQorCQluYW1lPSJ0eDZ1LTgwMzMiCisJCTs7CisKIAkqKQog
CQluYW1lPSJnZW5lcmljIgogCQk7OwpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2lteDYvYmFz
ZS1maWxlcy9saWIvcHJlaW5pdC83OV9tb3ZlX2NvbmZpZyBiL3RhcmdldC9saW51eC9pbXg2L2Jh
c2UtZmlsZXMvbGliL3ByZWluaXQvNzlfbW92ZV9jb25maWcKaW5kZXggYmRmMzk3YzRmYy4uZGU3
MTk2YzdhMSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxlcy9saWIvcHJl
aW5pdC83OV9tb3ZlX2NvbmZpZworKysgYi90YXJnZXQvbGludXgvaW14Ni9iYXNlLWZpbGVzL2xp
Yi9wcmVpbml0Lzc5X21vdmVfY29uZmlnCkBAIC0xNSw2ICsxNSwxNSBAQCBtb3ZlX2NvbmZpZygp
IHsKIAkJCXVtb3VudCAvYm9vdAogCQlmaQogCQk7OworCXR4NnUtODAzMykKKwkJbG9jYWwgYm9v
dHBhcnQ9L2Rldi9tbWNibGsycDEKKworCQlpZiBbIC1iICRib290cGFydCBdOyB0aGVuCisJCQlt
a2RpciAtcCAvYm9vdAorCQkJbW91bnQgLXQgZXh0MiAtbyBydyxub2F0aW1lICRib290cGFydCAv
Ym9vdAorCQkJWyAtZiAvYm9vdC9zeXN1cGdyYWRlLnRneiBdICYmIG12IC1mIC9ib290L3N5c3Vw
Z3JhZGUudGd6IC8KKwkJZmkKKwkJOzsKIAllc2FjCiB9CiAKZGlmZiAtLWdpdCBhL3RhcmdldC9s
aW51eC9pbXg2L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggYi90YXJnZXQvbGlu
dXgvaW14Ni9iYXNlLWZpbGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCmluZGV4IGEwOTBjYzA4
MGIuLjljOWJlZDk2ZmUgMTAwNzU1Ci0tLSBhL3RhcmdldC9saW51eC9pbXg2L2Jhc2UtZmlsZXMv
bGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKKysrIGIvdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxl
cy9saWIvdXBncmFkZS9wbGF0Zm9ybS5zaApAQCAtMSw1ICsxLDUgQEAKICMKLSMgQ29weXJpZ2h0
IChDKSAyMDEwLTIwMTUgT3BlbldydC5vcmcKKyMgQ29weXJpZ2h0IChDKSAyMDEwLTIwMTkgT3Bl
bldydC5vcmcKICMKIAogLiAvbGliL2lteDYuc2gKQEAgLTMwLDYgKzMwLDEwMiBAQCBhcGFsaXNf
ZG9fdXBncmFkZSgpIHsKIAl1bW91bnQgL2Jvb3QKIH0KIAorIyAobW9zdGx5KSBjb3BpZWQgZnJv
bSBicmNtMjcwOCBwbGF0Zm9ybS5zaCAod2hpY2ggd2FzIGNvcGllZCBmcm9tIHg4Nj8pCit0eDZ1
XzgwMzNfY2hlY2tfaW1hZ2UoKSB7CisJbG9jYWwgZGlza2RldiBwYXJ0ZGV2IGRpZmYKKworCVsg
IiQjIiAtZ3QgMSBdICYmIHJldHVybiAxCisKKwlleHBvcnRfYm9vdGRldmljZSAmJiBleHBvcnRf
cGFydGRldmljZSBkaXNrZGV2IDAgfHwgeworCQllY2hvICJVbmFibGUgdG8gZGV0ZXJtaW5lIHVw
Z3JhZGUgZGV2aWNlIgorCQlyZXR1cm4gMQorCX0KKworCWdldF9wYXJ0aXRpb25zICIvZGV2LyRk
aXNrZGV2IiBib290ZGlzaworCisJI2V4dHJhY3QgdGhlIGJvb3Qgc2VjdG9yIGZyb20gdGhlIGlt
YWdlCisJZ2V0X2ltYWdlICIkQCIgfCBkZCBvZj0vdG1wL2ltYWdlLmJzIGNvdW50PTEgYnM9NTEy
YiAyPi9kZXYvbnVsbAorCisJZ2V0X3BhcnRpdGlvbnMgL3RtcC9pbWFnZS5icyBpbWFnZQorCisJ
I2NvbXBhcmUgdGFibGVzCisJZGlmZj0iJChncmVwIC1GIC14IC12IC1mIC90bXAvcGFydG1hcC5i
b290ZGlzayAvdG1wL3BhcnRtYXAuaW1hZ2UpIgorCisJcm0gLWYgL3RtcC9pbWFnZS5icyAvdG1w
L3BhcnRtYXAuYm9vdGRpc2sgL3RtcC9wYXJ0bWFwLmltYWdlCisKKwlpZiBbIC1uICIkZGlmZiIg
XTsgdGhlbgorCQllY2hvICJQYXJ0aXRpb24gbGF5b3V0IGhhcyBjaGFuZ2VkLiBGdWxsIGltYWdl
IHdpbGwgYmUgd3JpdHRlbi4iCisJCWFza19ib29sIDAgIkFib3J0IiAmJiBleGl0IDEKKwkJcmV0
dXJuIDAKKwlmaQorCisJcmV0dXJuIDA7Cit9CisKKyMgKG1vc3RseSkgY29waWVkIGZyb20gYnJj
bTI3MDggcGxhdGZvcm0uc2ggKHdoaWNoIHdhcyBjb3BpZWQgZnJvbSB4ODY/KQordHg2dV84MDMz
X2RvX3VwZ3JhZGUoKSB7CisJbG9jYWwgZGlza2RldiBwYXJ0ZGV2IGRpZmYKKworCWV4cG9ydF9i
b290ZGV2aWNlICYmIGV4cG9ydF9wYXJ0ZGV2aWNlIGRpc2tkZXYgMCB8fCB7CisJCWVjaG8gIlVu
YWJsZSB0byBkZXRlcm1pbmUgdXBncmFkZSBkZXZpY2UiCisJCXJldHVybiAxCisJfQorCisJc3lu
YworCisJaWYgWyAiJFNBVkVfUEFSVElUSU9OUyIgPSAiMSIgXTsgdGhlbgorCQlnZXRfcGFydGl0
aW9ucyAiL2Rldi8kZGlza2RldiIgYm9vdGRpc2sKKworCQkjZXh0cmFjdCB0aGUgYm9vdCBzZWN0
b3IgZnJvbSB0aGUgaW1hZ2UKKwkJZ2V0X2ltYWdlICIkQCIgfCBkZCBvZj0vdG1wL2ltYWdlLmJz
IGNvdW50PTEgYnM9NTEyYgorCisJCWdldF9wYXJ0aXRpb25zIC90bXAvaW1hZ2UuYnMgaW1hZ2UK
KworCQkjY29tcGFyZSB0YWJsZXMKKwkJZGlmZj0iJChncmVwIC1GIC14IC12IC1mIC90bXAvcGFy
dG1hcC5ib290ZGlzayAvdG1wL3BhcnRtYXAuaW1hZ2UpIgorCWVsc2UKKwkJZGlmZj0xCisJZmkK
KworCWlmIFsgLW4gIiRkaWZmIiBdOyB0aGVuCisJCWdldF9pbWFnZSAiJEAiIHwgZGQgb2Y9Ii9k
ZXYvJGRpc2tkZXYiIGJzPTJNIGNvbnY9ZnN5bmMKKworCQkjIFNlcGFyYXRlIHJlbW92YWwgYW5k
IGFkZHRpb24gaXMgbmVjZXNzYXJ5OyBvdGhlcndpc2UsIHBhcnRpdGlvbiAxCisJCSMgd2lsbCBi
ZSBtaXNzaW5nIGlmIGl0IG92ZXJsYXBzIHdpdGggdGhlIG9sZCBwYXJ0aXRpb24gMgorCQlwYXJ0
eCAtZCAtICIvZGV2LyRkaXNrZGV2IgorCQlwYXJ0eCAtYSAtICIvZGV2LyRkaXNrZGV2IgorCisJ
CXJldHVybiAwCisJZmkKKworCSNpdGVyYXRlIG92ZXIgZWFjaCBwYXJ0aXRpb24gZnJvbSB0aGUg
aW1hZ2UgYW5kIHdyaXRlIGl0IHRvIHRoZSBib290IGRpc2sKKwl3aGlsZSByZWFkIHBhcnQgc3Rh
cnQgc2l6ZTsgZG8KKwkJaWYgZXhwb3J0X3BhcnRkZXZpY2UgcGFydGRldiAkcGFydDsgdGhlbgor
CQkJZWNobyAiV3JpdGluZyBpbWFnZSB0byAvZGV2LyRwYXJ0ZGV2Li4uIgorCQkJZ2V0X2ltYWdl
ICIkQCIgfCBkZCBvZj0iL2Rldi8kcGFydGRldiIgaWJzPSI1MTIiIG9icz0xTSBza2lwPSIkc3Rh
cnQiIGNvdW50PSIkc2l6ZSIgY29udj1mc3luYworCQllbHNlCisJCQllY2hvICJVbmFibGUgdG8g
ZmluZCBwYXJ0aXRpb24gJHBhcnQgZGV2aWNlLCBza2lwcGVkLiIKKwlmaQorCWRvbmUgPCAvdG1w
L3BhcnRtYXAuaW1hZ2UKKworCSNjb3B5IHBhcnRpdGlvbiB1dWlkCisJZWNobyAiV3JpdGluZyBu
ZXcgVVVJRCB0byAvZGV2LyRkaXNrZGV2Li4uIgorCWdldF9pbWFnZSAiJEAiIHwgZGQgb2Y9Ii9k
ZXYvJGRpc2tkZXYiIGJzPTEgc2tpcD00NDAgY291bnQ9NCBzZWVrPTQ0MCBjb252PWZzeW5jCit9
CisKKyMgKG1vc3RseSkgY29waWVkIGZyb20gYnJjbTI3MDggcGxhdGZvcm0uc2ggKHdoaWNoIHdh
cyBjb3BpZWQgZnJvbSB4ODY/KQordHg2dV84MDMzX2NvcHlfY29uZmlnKCkgeworCWxvY2FsIHBh
cnRkZXYKKworCWlmIGV4cG9ydF9wYXJ0ZGV2aWNlIHBhcnRkZXYgMTsgdGhlbgorCQlta2RpciAt
cCAvYm9vdAorCQlbIC1mIC9ib290L3ZtbGludXouaW1nIF0gfHwgbW91bnQgLXQgZXh0NCAtbyBy
dyxub2F0aW1lICIvZGV2LyRwYXJ0ZGV2IiAvYm9vdAorCQljcCAtYWYgIiRVUEdSQURFX0JBQ0tV
UCIgIi9ib290LyRCQUNLVVBfRklMRSIKKwkJc3luYworCQl1bm1vdW50IC9ib290CisJZmkKK30K
KwogcGxhdGZvcm1fY2hlY2tfaW1hZ2UoKSB7CiAJbG9jYWwgYm9hcmQ9JChib2FyZF9uYW1lKQog
CkBAIC00MSw2ICsxMzcsMTAgQEAgcGxhdGZvcm1fY2hlY2tfaW1hZ2UoKSB7CiAJCW5hbmRfZG9f
cGxhdGZvcm1fY2hlY2sgJGJvYXJkICQxCiAJCXJldHVybiAkPzsKIAkJOzsKKwl0eDZ1LTgwMzMp
CisJCXR4NnVfODAzM19jaGVja19pbWFnZSAiJDEiCisJCXJldHVybiAkPzsKKwkJOzsKIAllc2Fj
CiAKIAllY2hvICJTeXN1cGdyYWRlIGlzIG5vdCB5ZXQgc3VwcG9ydGVkIG9uICRib2FyZC4iCkBA
IC01Nyw2ICsxNTcsOSBAQCBwbGF0Zm9ybV9kb191cGdyYWRlKCkgewogCSpndzUqKQogCQluYW5k
X2RvX3VwZ3JhZGUgIiQxIgogCQk7OworCXR4NnUtODAzMykKKwkJdHg2dV84MDMzX2RvX3VwZ3Jh
ZGUgIiQxIgorCQk7OwogCWVzYWMKIH0KIApAQCAtNjcsNiArMTcwLDkgQEAgcGxhdGZvcm1fY29w
eV9jb25maWcoKSB7CiAJYXBhbGlzKikKIAkJYXBhbGlzX2NvcHlfY29uZmlnCiAJCTs7CisJdHg2
dS04MDMzKQorCQl0eDZ1XzgwMzNfY29weV9jb25maWcKKwkJOzsKIAllc2FjCiB9CiAKZGlmZiAt
LWdpdCBhL3RhcmdldC9saW51eC9pbXg2L2ltYWdlL01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L2lt
eDYvaW1hZ2UvTWFrZWZpbGUKaW5kZXggZDFlOWU5MDM0ZS4uMzRmYjRhMjY5MCAxMDA2NDQKLS0t
IGEvdGFyZ2V0L2xpbnV4L2lteDYvaW1hZ2UvTWFrZWZpbGUKKysrIGIvdGFyZ2V0L2xpbnV4L2lt
eDYvaW1hZ2UvTWFrZWZpbGUKQEAgLTExMyw2ICsxMTMsMjQgQEAgZGVmaW5lIEJ1aWxkL2FwYWxp
cy1lbW1jCiAJJChCdWlsZC9pbXg2LWNvbWJpbmVkLWltYWdlLWNsZWFuKQogZW5kZWYKIAorZGVm
aW5lIEJ1aWxkL2thcm8tYm9vdC1pbWcKKwkkKFJNKSAtcmYgJEAuYm9vdGRpcgorCW1rZGlyICRA
LmJvb3RkaXIKKworCSQoQ1ApICQoSU1BR0VfS0VSTkVMKSAkQC5ib290ZGlyLyQoS0VSTkVMX0lN
RykKKworCWdlbmV4dDJmcyAtLWJsb2NrLXNpemUgJChCTE9DS1NJWkU6JWs9JUtpKSAtLXNpemUt
aW4tYmxvY2tzICQkKCgxMDI0ICogMTAyNCAqICQoQ09ORklHX1RBUkdFVF9LRVJORUxfUEFSVFNJ
WkUpIC8gKCQoc3Vic3QgaywqIDEwMjQsJChCTE9DS1NJWkUpKSkpKSAtLXJvb3QgJEAuYm9vdGRp
ciAkQC5ib290CisKKwkjIGNvbnZlcnQgaXQgdG8gcmV2aXNpb24gMSAtIG5lZWRlZCBmb3IgdS1i
b290IGV4dDJsb2FkCisJJChTVEFHSU5HX0RJUl9IT1NUKS9iaW4vdHVuZTJmcyAtTyBmaWxldHlw
ZSAkQC5ib290CisJJChTVEFHSU5HX0RJUl9IT1NUKS9iaW4vZTJmc2NrIC1wRGYgJEAuYm9vdCA+
IC9kZXYvbnVsbAorZW5kZWYKKworZGVmaW5lIEJ1aWxkL2thcm8tc2RjYXJkLWltZworCS4vZ2Vu
X2thcm9fc2RjYXJkX2ltZy5zaCAkQCAkQC5ib290ICQoSU1BR0VfUk9PVEZTKSAkKENPTkZJR19U
QVJHRVRfS0VSTkVMX1BBUlRTSVpFKSAkKENPTkZJR19UQVJHRVRfUk9PVEZTX1BBUlRTSVpFKQor
ZW5kZWYKKworCiAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjCiAjIERldmljZXMKICMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMKQEAgLTIzMiw0ICsyNTAsMjAgQEAgZGVmaW5lIERldmljZS9hcGFsaXMKIGVuZGVm
CiBUQVJHRVRfREVWSUNFUyArPSBhcGFsaXMKIAorZGVmaW5lIERldmljZS90eDZ1LTgwMzMKKyAg
REVWSUNFX1RJVExFIDo9IEthLVJvIGVsZWN0cm9uaWNzIFRYNlUtODAzMyBNb2R1bGUgb24gTUI3
IGJhc2Vib2FyZAorICBERVZJQ0VfRFRTIDo9IGlteDZkbC10eDZ1LTgwMzMKKyAgRklMRVNZU1RF
TVMgOj0gZXh0NAorICBCTE9DS1NJWkUgOj0gNGsKKyAgS0VSTkVMX1NVRkZJWCA6PSAtekltYWdl
CisgIEtFUk5FTF9OQU1FIDo9IHpJbWFnZQorICBLRVJORUwgOj0ga2VybmVsLWJpbgorICBLRVJO
RUxfSU1HIDo9IHZtbGludXoKKyAgSU1BR0VTIDo9IGZhY3RvcnkuaW1nLmd6IHN5c3VwZ3JhZGUu
aW1nLmd6CisgIElNQUdFX1NJWkUgOj0gMzc3Nm0KKyAgSU1BR0Uvc3lzdXBncmFkZS5pbWcuZ3og
Oj0ga2Fyby1ib290LWltZyB8IGthcm8tc2RjYXJkLWltZyB8IGNoZWNrLXNpemUgJCQkJChJTUFH
RV9TSVpFKSB8IGd6aXAgfCBhcHBlbmQtbWV0YWRhdGEKKyAgSU1BR0UvZmFjdG9yeS5pbWcuZ3og
Oj0ga2Fyby1ib290LWltZyB8IGthcm8tc2RjYXJkLWltZyB8IGNoZWNrLXNpemUgJCQkJChJTUFH
RV9TSVpFKSB8IGd6aXAKK2VuZGVmCitUQVJHRVRfREVWSUNFUyArPSB0eDZ1LTgwMzMKKwogJChl
dmFsICQoY2FsbCBCdWlsZEltYWdlKSkKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pbXg2L2lt
YWdlL2dlbl9rYXJvX3NkY2FyZF9pbWcuc2ggYi90YXJnZXQvbGludXgvaW14Ni9pbWFnZS9nZW5f
a2Fyb19zZGNhcmRfaW1nLnNoCm5ldyBmaWxlIG1vZGUgMTAwNzU1CmluZGV4IDAwMDAwMDAwMDAu
LjM2MmNlNTgzOGIKLS0tIC9kZXYvbnVsbAorKysgYi90YXJnZXQvbGludXgvaW14Ni9pbWFnZS9n
ZW5fa2Fyb19zZGNhcmRfaW1nLnNoCkBAIC0wLDAgKzEsMjYgQEAKKyMhL3Vzci9iaW4vZW52IGJh
c2gKKworc2V0IC14CitbICQjIC1lcSA1IF0gfHwgeworICAgIGVjaG8gIlNZTlRBWDogJDAgPGZp
bGU+IDxib290ZnMgaW1hZ2U+IDxyb290ZnMgaW1hZ2U+IDxib290ZnMgc2l6ZT4gPHJvb3RmcyBz
aXplPiIKKyAgICBleGl0IDEKK30KKworT1VUUFVUPSIkMSIKK0JPT1RGUz0iJDIiCitST09URlM9
IiQzIgorQk9PVEZTU0laRT0iJDQiCitST09URlNTSVpFPSIkNSIKKworaGVhZD00CitzZWN0PTYz
CisKK3NldCBgcHRnZW4gLW8gJE9VVFBVVCAtaCAkaGVhZCAtcyAkc2VjdCAtbCA0MDk2IC10IDgz
IC1TIDB4MGNjNjZjYzAgLXAgJHtCT09URlNTSVpFfU0gLXQgODMgLXAgJHtST09URlNTSVpFfU1g
CisKK0JPT1RPRkZTRVQ9IiQoKCQxIC8gNTEyKSkiCitCT09UU0laRT0iJCgoJDIgLyA1MTIpKSIK
K1JPT1RGU09GRlNFVD0iJCgoJDMgLyA1MTIpKSIKK1JPT1RGU1NJWkU9IiQoKCQ0IC8gNTEyKSki
CisKK2RkIGJzPTUxMiBpZj0iJEJPT1RGUyIgb2Y9IiRPVVRQVVQiIHNlZWs9IiRCT09UT0ZGU0VU
IiBjb252PW5vdHJ1bmMKK2RkIGJzPTUxMiBpZj0iJFJPT1RGUyIgb2Y9IiRPVVRQVVQiIHNlZWs9
IiRST09URlNPRkZTRVQiIGNvbnY9bm90cnVuYwpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2lt
eDYvcGF0Y2hlcy00LjE0LzEwMC1ib290YXJncy5wYXRjaCBiL3RhcmdldC9saW51eC9pbXg2L3Bh
dGNoZXMtNC4xNC8xMDAtYm9vdGFyZ3MucGF0Y2gKaW5kZXggMDk1NDM5MTIwMy4uNmMwMjVlMTVk
YiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2lteDYvcGF0Y2hlcy00LjE0LzEwMC1ib290YXJn
cy5wYXRjaAorKysgYi90YXJnZXQvbGludXgvaW14Ni9wYXRjaGVzLTQuMTQvMTAwLWJvb3Rhcmdz
LnBhdGNoCkBAIC0xLDMgKzEsMTYgQEAKKy0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC10
eDZ1LTgwMzMuZHRzCisrKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2ZGwtdHg2dS04MDMzLmR0
cworQEAgLTUxLDYgKzUxLDEwIEBACisgCQlkaXNwbGF5ID0gJmRpc3BsYXk7CisgCX07CisgCisr
CWNob3NlbiB7CisrCQlib290YXJncyA9ICJjb25zb2xlPXR0eW14YzAsMTE1MjAwIjsKKysJfTsK
KysKKyAJYmFja2xpZ2h0OiBiYWNrbGlnaHQgeworIAkJY29tcGF0aWJsZSA9ICJwd20tYmFja2xp
Z2h0IjsKKyAJCXB3bXMgPSA8JnB3bTIgMCA1MDAwMDAgUFdNX1BPTEFSSVRZX0lOVkVSVEVEPjsK
IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC13YW5kYm9hcmQuZHRzCiArKysgYi9hcmNo
L2FybS9ib290L2R0cy9pbXg2ZGwtd2FuZGJvYXJkLmR0cwogQEAgLTE5LDQgKzE5LDggQEAKZGlm
ZiAtLWdpdCBhL3Rvb2xzL01ha2VmaWxlIGIvdG9vbHMvTWFrZWZpbGUKaW5kZXggMmY1N2QyNTUy
NS4uMDM0ZTU0YzVkOSAxMDA2NDQKLS0tIGEvdG9vbHMvTWFrZWZpbGUKKysrIGIvdG9vbHMvTWFr
ZWZpbGUKQEAgLTM5LDYgKzM5LDcgQEAgdG9vbHMtJChCVUlMRF9JU0wpICs9IGlzbAogdG9vbHMt
JChDT05GSUdfVVNFX1NQQVJTRSkgKz0gc3BhcnNlCiB0b29scy0kKENPTkZJR19UQVJHRVRfYXBt
ODIxeHgpJChDT05GSUdfVEFSR0VUX2dlbWluaSkgKz0gZ2VuZXh0MmZzCiB0b29scy0kKENPTkZJ
R19UQVJHRVRfdGVncmEpICs9IGNib290aW1hZ2UgY2Jvb3RpbWFnZS1jb25maWdzCit0b29scy0k
KENPTkZJR19UQVJHRVRfaW14NikgKz0gZ2VuZXh0MmZzCiAKICMgYnVpbGRkaXIgZGVwZW5kZW5j
aWVzCiAkKGN1cmRpcikvYmlzb24vY29tcGlsZSA6PSAkKGN1cmRpcikvZmxleC9jb21waWxlCi0t
IAoyLjI0LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
