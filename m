Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9852312B517
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 15:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7p7YWFgT2XjVV1Di4OApdTw2zeQK3b8nmvRn/EQeVYI=; b=qi4UwNBbbminR3
	mnYJNDztnPf6urQgieryctpt9x2jQJyLea6iT4U2GiePCetn/Oi2IafjkI6alBuN4MB2Tq42Z8XEG
	4syoy7a+maIlnnV61Z6Xl5I0Ngiyq1LXCtTR5lQ0Y9l+JsZk1M6bxguybxIMfarbL5B01VCaZeSjn
	kEJ51emo2mGTWGSBtYgJKAYvq6rxTKzxKhTM6ELh4ypazVKnLLDjm3fpimqRHtYPiDwbUThlDL4ci
	k1zcq+xtTQuOVJ5MqJJ6ZxYVaCLq/82Uf2uuJxp1m/ep9nbxwgaUb8m1be8HKjsqIVWUlvMUJOtLB
	Z5plRSnr0pI5YwOemHVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikqPK-0005vt-EN; Fri, 27 Dec 2019 14:16:02 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikqOn-0005bh-Pw
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 14:15:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 57581393B;
 Fri, 27 Dec 2019 15:15:27 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f061c865;
 Fri, 27 Dec 2019 15:15:16 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Dec 2019 15:15:19 +0100
Message-Id: <20191227141519.15626-1-ynezz@true.cz>
MIME-Version: 1.0
In-Reply-To: <20191227135922.13972-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_061530_004757_C5B2F626 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 ubus] ubusd/libubus-io: fix socket
 descriptor passing
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
Cc: Hannu Nyman <hannu.nyman@welho.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SW4gY29tbWl0IDVkN2NhODMwOWQwYSAoInVidXNkL2xpYnVidXMtaW86IGZpeCB2YXJpYWJsZSBz
aXplZCBzdHJ1Y3QKcG9zaXRpb24gd2FybmluZyIpIHRoZSBwb3NpdGlvbiBvZiBjbXNnaGRyIHN0
cnVjdCBoYXMgYmVlbiBjaGFuZ2VkIGluCm9yZGVyIHRvIGZpeCBjbGFuZy05IGNvbXBpbGVyIHdh
cm5pbmcsIGJ1dCBpdCBoYXMgaW50cm9kdWNlZCByZWdyZXNzaW9uCmluIGF0IGxlYXN0IGBsb2dy
ZWFkYCB3aGljaCBoYW5nZWQgaW5kZWZpbml0ZWx5LgoKU28gdGhpcyBwYXRjaCByZXdvcmtzIHRo
ZSBzb2NrZXQgZGVzY3JpcHRvciBwYXNzaW5nIGluIGEgd2F5IHJlY29tbWVuZGVkCmluIHRoZSBg
Y21zZygzKWAgbWFudWFsIHBhZ2UuCgpSZWY6IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3Bp
cGVybWFpbC9vcGVud3J0LWRldmVsLzIwMTktRGVjZW1iZXIvMDIwODQwLmh0bWwKRml4ZXM6IDVk
N2NhODMwOWQwYSAoInVidXNkL2xpYnVidXMtaW86IGZpeCB2YXJpYWJsZSBzaXplZCBzdHJ1Y3Qg
cG9zaXRpb24gd2FybmluZyIpClJlcG9ydGVkLWJ5OiBIYW5udSBOeW1hbiA8aGFubnUubnltYW5A
d2VsaG8uY29tPgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgot
LS0KCiBjaGFuZ2VzIHNpbmNlIHYxOgoKICAtIHJlbW92ZWQgdW5uZWNlc3NhcnkgcmVuYW1lIG9m
IHRoZSBgbXNnaGRyYCB2YXJpYWJsZSB0byBuZXcgYG1zZ2AgbmFtZQoKIGxpYnVidXMtaW8uYyB8
IDgwICsrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
IHVidXNkLmMgICAgICB8IDM1ICsrKysrKysrKysrKy0tLS0tLS0tLS0tCiB1YnVzZF9tYWluLmMg
fCA0MSArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgODMgaW5z
ZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGlidWJ1cy1pby5jIGIv
bGlidWJ1cy1pby5jCmluZGV4IGJhMTAxNmQwZmEwOS4uMzU2MWFjNDYyZWI5IDEwMDY0NAotLS0g
YS9saWJ1YnVzLWlvLmMKKysrIGIvbGlidWJ1cy1pby5jCkBAIC01OSwyMyArNTksMjQgQEAgc3Rh
dGljIHZvaWQgd2FpdF9kYXRhKGludCBmZCwgYm9vbCB3cml0ZSkKIAogc3RhdGljIGludCB3cml0
ZXZfcmV0cnkoaW50IGZkLCBzdHJ1Y3QgaW92ZWMgKmlvdiwgaW50IGlvdl9sZW4sIGludCBzb2Nr
X2ZkKQogewotCXN0YXRpYyBzdHJ1Y3QgewotCQlpbnQgZmQ7Ci0JCXN0cnVjdCBjbXNnaGRyIGg7
Ci0JfSBmZF9idWYgPSB7Ci0JCS5oID0gewotCQkJLmNtc2dfbGVuID0gc2l6ZW9mKGZkX2J1Ziks
Ci0JCQkuY21zZ19sZXZlbCA9IFNPTF9TT0NLRVQsCi0JCQkuY21zZ190eXBlID0gU0NNX1JJR0hU
UywKLQkJfQotCX07Ci0Jc3RydWN0IG1zZ2hkciBtc2doZHIgPSB7Ci0JCS5tc2dfaW92ID0gaW92
LAotCQkubXNnX2lvdmxlbiA9IGlvdl9sZW4sCi0JCS5tc2dfY29udHJvbCA9ICZmZF9idWYsCi0J
CS5tc2dfY29udHJvbGxlbiA9IHNpemVvZihmZF9idWYpLAotCX07CisJdWludDhfdCBmZF9idWZb
Q01TR19TUEFDRShzaXplb2YoaW50KSldID0geyAwIH07CisJc3RydWN0IG1zZ2hkciBtc2doZHIg
PSB7IDAgfTsKKwlzdHJ1Y3QgY21zZ2hkciAqY21zZzsKIAlpbnQgbGVuID0gMDsKKwlpbnQgKnBm
ZDsKKworCW1zZ2hkci5tc2dfaW92ID0gaW92LAorCW1zZ2hkci5tc2dfaW92bGVuID0gaW92X2xl
biwKKwltc2doZHIubXNnX2NvbnRyb2wgPSBmZF9idWY7CisJbXNnaGRyLm1zZ19jb250cm9sbGVu
ID0gc2l6ZW9mKGZkX2J1Zik7CisKKwljbXNnID0gQ01TR19GSVJTVEhEUigmbXNnaGRyKTsKKwlj
bXNnLT5jbXNnX3R5cGUgPSBTQ01fUklHSFRTOworCWNtc2ctPmNtc2dfbGV2ZWwgPSBTT0xfU09D
S0VUOworCWNtc2ctPmNtc2dfbGVuID0gQ01TR19MRU4oc2l6ZW9mKGludCkpOworCisJcGZkID0g
KGludCAqKSBDTVNHX0RBVEEoY21zZyk7CisJbXNnaGRyLm1zZ19jb250cm9sbGVuID0gY21zZy0+
Y21zZ19sZW47CiAKIAlkbyB7CiAJCXNzaXplX3QgY3VyX2xlbjsKQEAgLTg0LDcgKzg1LDcgQEAg
c3RhdGljIGludCB3cml0ZXZfcmV0cnkoaW50IGZkLCBzdHJ1Y3QgaW92ZWMgKmlvdiwgaW50IGlv
dl9sZW4sIGludCBzb2NrX2ZkKQogCQkJbXNnaGRyLm1zZ19jb250cm9sID0gTlVMTDsKIAkJCW1z
Z2hkci5tc2dfY29udHJvbGxlbiA9IDA7CiAJCX0gZWxzZSB7Ci0JCQlmZF9idWYuZmQgPSBzb2Nr
X2ZkOworCQkJKnBmZCA9IHNvY2tfZmQ7CiAJCX0KIAogCQljdXJfbGVuID0gc2VuZG1zZyhmZCwg
Jm1zZ2hkciwgMCk7CkBAIC0xNTYsMzMgKzE1NywzOCBAQCBpbnQgX19oaWRkZW4gdWJ1c19zZW5k
X21zZyhzdHJ1Y3QgdWJ1c19jb250ZXh0ICpjdHgsIHVpbnQzMl90IHNlcSwKIAogc3RhdGljIGlu
dCByZWN2X3JldHJ5KHN0cnVjdCB1YnVzX2NvbnRleHQgKmN0eCwgc3RydWN0IGlvdmVjICppb3Ys
IGJvb2wgd2FpdCwgaW50ICpyZWN2X2ZkKQogewotCWludCBieXRlcywgdG90YWwgPSAwOwotCWlu
dCBmZCA9IGN0eC0+c29jay5mZDsKLQlzdGF0aWMgc3RydWN0IHsKLQkJaW50IGZkOwotCQlzdHJ1
Y3QgY21zZ2hkciBoOwotCX0gZmRfYnVmID0gewotCQkuaCA9IHsKLQkJCS5jbXNnX3R5cGUgPSBT
Q01fUklHSFRTLAotCQkJLmNtc2dfbGV2ZWwgPSBTT0xfU09DS0VULAotCQkJLmNtc2dfbGVuID0g
c2l6ZW9mKGZkX2J1ZiksCi0JCX0sCi0JfTsKLQlzdHJ1Y3QgbXNnaGRyIG1zZ2hkciA9IHsKLQkJ
Lm1zZ19pb3YgPSBpb3YsCi0JCS5tc2dfaW92bGVuID0gMSwKLQl9OworCXVpbnQ4X3QgZmRfYnVm
W0NNU0dfU1BBQ0Uoc2l6ZW9mKGludCkpXSA9IHsgMCB9OworCXN0cnVjdCBtc2doZHIgbXNnaGRy
ID0geyAwIH07CisJc3RydWN0IGNtc2doZHIgKmNtc2c7CisJaW50IHRvdGFsID0gMDsKKwlpbnQg
Ynl0ZXM7CisJaW50ICpwZmQ7CisJaW50IGZkOworCisJZmQgPSBjdHgtPnNvY2suZmQ7CisKKwlt
c2doZHIubXNnX2lvdiA9IGlvdiwKKwltc2doZHIubXNnX2lvdmxlbiA9IDEsCisJbXNnaGRyLm1z
Z19jb250cm9sID0gZmRfYnVmOworCW1zZ2hkci5tc2dfY29udHJvbGxlbiA9IHNpemVvZihmZF9i
dWYpOworCisJY21zZyA9IENNU0dfRklSU1RIRFIoJm1zZ2hkcik7CisJY21zZy0+Y21zZ190eXBl
ID0gU0NNX1JJR0hUUzsKKwljbXNnLT5jbXNnX2xldmVsID0gU09MX1NPQ0tFVDsKKwljbXNnLT5j
bXNnX2xlbiA9IENNU0dfTEVOKHNpemVvZihpbnQpKTsKKworCXBmZCA9IChpbnQgKikgQ01TR19E
QVRBKGNtc2cpOwogCiAJd2hpbGUgKGlvdi0+aW92X2xlbiA+IDApIHsKIAkJaWYgKHJlY3ZfZmQp
IHsKLQkJCW1zZ2hkci5tc2dfY29udHJvbCA9ICZmZF9idWY7Ci0JCQltc2doZHIubXNnX2NvbnRy
b2xsZW4gPSBzaXplb2YoZmRfYnVmKTsKKwkJCW1zZ2hkci5tc2dfY29udHJvbCA9IGZkX2J1ZjsK
KwkJCW1zZ2hkci5tc2dfY29udHJvbGxlbiA9IGNtc2ctPmNtc2dfbGVuOwogCQl9IGVsc2Ugewog
CQkJbXNnaGRyLm1zZ19jb250cm9sID0gTlVMTDsKIAkJCW1zZ2hkci5tc2dfY29udHJvbGxlbiA9
IDA7CiAJCX0KIAotCQlmZF9idWYuZmQgPSAtMTsKKwkJKnBmZCA9IC0xOwogCQlieXRlcyA9IHJl
Y3Ztc2coZmQsICZtc2doZHIsIDApOwogCQlpZiAoIWJ5dGVzKQogCQkJcmV0dXJuIC0xOwpAQCAt
MTk5LDcgKzIwNSw3IEBAIHN0YXRpYyBpbnQgcmVjdl9yZXRyeShzdHJ1Y3QgdWJ1c19jb250ZXh0
ICpjdHgsIHN0cnVjdCBpb3ZlYyAqaW92LCBib29sIHdhaXQsIGluCiAJCQlyZXR1cm4gMDsKIAog
CQlpZiAocmVjdl9mZCkKLQkJCSpyZWN2X2ZkID0gZmRfYnVmLmZkOworCQkJKnJlY3ZfZmQgPSAq
cGZkOwogCiAJCXJlY3ZfZmQgPSBOVUxMOwogCmRpZmYgLS1naXQgYS91YnVzZC5jIGIvdWJ1c2Qu
YwppbmRleCAwZDQzOTc3YzBiZGUuLjU5OTM2NTM3ODVlMCAxMDA2NDQKLS0tIGEvdWJ1c2QuYwor
KysgYi91YnVzZC5jCkBAIC04MiwyNyArODIsMjggQEAgdm9pZCB1YnVzX21zZ19mcmVlKHN0cnVj
dCB1YnVzX21zZ19idWYgKnViKQogCiBzc2l6ZV90IHVidXNfbXNnX3dyaXRldihpbnQgZmQsIHN0
cnVjdCB1YnVzX21zZ19idWYgKnViLCBzaXplX3Qgb2Zmc2V0KQogeworCXVpbnQ4X3QgZmRfYnVm
W0NNU0dfU1BBQ0Uoc2l6ZW9mKGludCkpXSA9IHsgMCB9OwogCXN0YXRpYyBzdHJ1Y3QgaW92ZWMg
aW92WzJdOwotCXN0YXRpYyBzdHJ1Y3QgewotCQlpbnQgZmQ7Ci0JCXN0cnVjdCBjbXNnaGRyIGg7
Ci0JfSBmZF9idWYgPSB7Ci0JCS5oID0gewotCQkJLmNtc2dfbGVuID0gc2l6ZW9mKGZkX2J1Ziks
Ci0JCQkuY21zZ19sZXZlbCA9IFNPTF9TT0NLRVQsCi0JCQkuY21zZ190eXBlID0gU0NNX1JJR0hU
UywKLQkJfSwKLQl9OwotCXN0cnVjdCBtc2doZHIgbXNnaGRyID0gewotCQkubXNnX2lvdiA9IGlv
diwKLQkJLm1zZ19pb3ZsZW4gPSBBUlJBWV9TSVpFKGlvdiksCi0JCS5tc2dfY29udHJvbCA9ICZm
ZF9idWYsCi0JCS5tc2dfY29udHJvbGxlbiA9IHNpemVvZihmZF9idWYpLAotCX07CisJc3RydWN0
IG1zZ2hkciBtc2doZHIgPSB7IDAgfTsKIAlzdHJ1Y3QgdWJ1c19tc2doZHIgaGRyOworCXN0cnVj
dCBjbXNnaGRyICpjbXNnOwogCXNzaXplX3QgcmV0OworCWludCAqcGZkOwogCi0JZmRfYnVmLmZk
ID0gdWItPmZkOworCW1zZ2hkci5tc2dfaW92ID0gaW92OworCW1zZ2hkci5tc2dfaW92bGVuID0g
QVJSQVlfU0laRShpb3YpOworCW1zZ2hkci5tc2dfY29udHJvbCA9IGZkX2J1ZjsKKwltc2doZHIu
bXNnX2NvbnRyb2xsZW4gPSBzaXplb2YoZmRfYnVmKTsKKworCWNtc2cgPSBDTVNHX0ZJUlNUSERS
KCZtc2doZHIpOworCWNtc2ctPmNtc2dfdHlwZSA9IFNDTV9SSUdIVFM7CisJY21zZy0+Y21zZ19s
ZXZlbCA9IFNPTF9TT0NLRVQ7CisJY21zZy0+Y21zZ19sZW4gPSBDTVNHX0xFTihzaXplb2YoaW50
KSk7CisKKwlwZmQgPSAoaW50ICopIENNU0dfREFUQShjbXNnKTsKKwltc2doZHIubXNnX2NvbnRy
b2xsZW4gPSBjbXNnLT5jbXNnX2xlbjsKKworCSpwZmQgPSB1Yi0+ZmQ7CiAJaWYgKHViLT5mZCA8
IDAgfHwgb2Zmc2V0KSB7CiAJCW1zZ2hkci5tc2dfY29udHJvbCA9IE5VTEw7CiAJCW1zZ2hkci5t
c2dfY29udHJvbGxlbiA9IDA7CmRpZmYgLS1naXQgYS91YnVzZF9tYWluLmMgYi91YnVzZF9tYWlu
LmMKaW5kZXggODE4NjhjMTQ4MmJjLi5mOTc3ZmYzMGQxMmQgMTAwNjQ0Ci0tLSBhL3VidXNkX21h
aW4uYworKysgYi91YnVzZF9tYWluLmMKQEAgLTUwLDIyICs1MCwyNSBAQCBzdGF0aWMgdm9pZCBo
YW5kbGVfY2xpZW50X2Rpc2Nvbm5lY3Qoc3RydWN0IHVidXNfY2xpZW50ICpjbCkKIHN0YXRpYyB2
b2lkIGNsaWVudF9jYihzdHJ1Y3QgdWxvb3BfZmQgKnNvY2ssIHVuc2lnbmVkIGludCBldmVudHMp
CiB7CiAJc3RydWN0IHVidXNfY2xpZW50ICpjbCA9IGNvbnRhaW5lcl9vZihzb2NrLCBzdHJ1Y3Qg
dWJ1c19jbGllbnQsIHNvY2spOworCXVpbnQ4X3QgZmRfYnVmW0NNU0dfU1BBQ0Uoc2l6ZW9mKGlu
dCkpXSA9IHsgMCB9OworCXN0cnVjdCBtc2doZHIgbXNnaGRyID0geyAwIH07CiAJc3RydWN0IHVi
dXNfbXNnX2J1ZiAqdWI7CiAJc3RhdGljIHN0cnVjdCBpb3ZlYyBpb3Y7Ci0Jc3RhdGljIHN0cnVj
dCB7Ci0JCWludCBmZDsKLQkJc3RydWN0IGNtc2doZHIgaDsKLQl9IGZkX2J1ZiA9IHsKLQkJLmgg
PSB7Ci0JCQkuY21zZ190eXBlID0gU0NNX1JJR0hUUywKLQkJCS5jbXNnX2xldmVsID0gU09MX1NP
Q0tFVCwKLQkJCS5jbXNnX2xlbiA9IHNpemVvZihmZF9idWYpLAotCQl9Ci0JfTsKLQlzdHJ1Y3Qg
bXNnaGRyIG1zZ2hkciA9IHsKLQkJLm1zZ19pb3YgPSAmaW92LAotCQkubXNnX2lvdmxlbiA9IDEs
Ci0JfTsKKwlzdHJ1Y3QgY21zZ2hkciAqY21zZzsKKwlpbnQgKnBmZDsKKworCW1zZ2hkci5tc2df
aW92ID0gJmlvdiwKKwltc2doZHIubXNnX2lvdmxlbiA9IDEsCisJbXNnaGRyLm1zZ19jb250cm9s
ID0gZmRfYnVmOworCW1zZ2hkci5tc2dfY29udHJvbGxlbiA9IHNpemVvZihmZF9idWYpOworCisJ
Y21zZyA9IENNU0dfRklSU1RIRFIoJm1zZ2hkcik7CisJY21zZy0+Y21zZ190eXBlID0gU0NNX1JJ
R0hUUzsKKwljbXNnLT5jbXNnX2xldmVsID0gU09MX1NPQ0tFVDsKKwljbXNnLT5jbXNnX2xlbiA9
IENNU0dfTEVOKHNpemVvZihpbnQpKTsKKworCXBmZCA9IChpbnQgKikgQ01TR19EQVRBKGNtc2cp
OworCW1zZ2hkci5tc2dfY29udHJvbGxlbiA9IGNtc2ctPmNtc2dfbGVuOwogCiAJLyogZmlyc3Qg
dHJ5IHRvIHR4IG1vcmUgcGVuZGluZyBkYXRhICovCiAJd2hpbGUgKCh1YiA9IHVidXNfbXNnX2hl
YWQoY2wpKSkgewpAQCAtMTAwLDE0ICsxMDMsMTQgQEAgcmV0cnk6CiAJCWludCBvZmZzZXQgPSBj
bC0+cGVuZGluZ19tc2dfb2Zmc2V0OwogCQlpbnQgYnl0ZXM7CiAKLQkJZmRfYnVmLmZkID0gLTE7
CisJCSpwZmQgPSAtMTsKIAogCQlpb3YuaW92X2Jhc2UgPSAoKGNoYXIgKikgJmNsLT5oZHJidWYp
ICsgb2Zmc2V0OwogCQlpb3YuaW92X2xlbiA9IHNpemVvZihjbC0+aGRyYnVmKSAtIG9mZnNldDsK
IAogCQlpZiAoY2wtPnBlbmRpbmdfbXNnX2ZkIDwgMCkgewotCQkJbXNnaGRyLm1zZ19jb250cm9s
ID0gJmZkX2J1ZjsKLQkJCW1zZ2hkci5tc2dfY29udHJvbGxlbiA9IHNpemVvZihmZF9idWYpOwor
CQkJbXNnaGRyLm1zZ19jb250cm9sID0gZmRfYnVmOworCQkJbXNnaGRyLm1zZ19jb250cm9sbGVu
ID0gY21zZy0+Y21zZ19sZW47CiAJCX0gZWxzZSB7CiAJCQltc2doZHIubXNnX2NvbnRyb2wgPSBO
VUxMOwogCQkJbXNnaGRyLm1zZ19jb250cm9sbGVuID0gMDsKQEAgLTExNyw4ICsxMjAsOCBAQCBy
ZXRyeToKIAkJaWYgKGJ5dGVzIDwgMCkKIAkJCWdvdG8gb3V0OwogCi0JCWlmIChmZF9idWYuZmQg
Pj0gMCkKLQkJCWNsLT5wZW5kaW5nX21zZ19mZCA9IGZkX2J1Zi5mZDsKKwkJaWYgKCpwZmQgPj0g
MCkKKwkJCWNsLT5wZW5kaW5nX21zZ19mZCA9ICpwZmQ7CiAKIAkJY2wtPnBlbmRpbmdfbXNnX29m
ZnNldCArPSBieXRlczsKIAkJaWYgKGNsLT5wZW5kaW5nX21zZ19vZmZzZXQgPCAoaW50KSBzaXpl
b2YoY2wtPmhkcmJ1ZikpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
