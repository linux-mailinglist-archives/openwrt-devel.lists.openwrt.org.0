Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F71DE83E
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 11:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUj7HMKjunDi5z0cPe8YOxIMqm20uLDQtq9ZmvJKKWQ=; b=neeAB2ILAQexiN
	aWk/tfvx2T4oa5r+UF1HGMglaXvzyw6uVKG7WC6us6mMBfuJ8ld2uv2yv26Eir2ppVwUJNWbo5Br3
	ieGfVcZB8H+IT4KN94GKyCvMb0vgDd3z3nW03EX9Mog9xgNbbbyffpXLIvev0/vcX9gP2sd8xxUOn
	0IywvEd9HVZ4gK/af2yok3xn6ubF65q0L2QAKZ3W97cL+J7lix7ORSzJmQbIzV8QERkliLAsHZuQR
	Adf1gPesNKHCmCG1zMsejF5FfJopX1NeRRr+LBNxlWfDdZrms1kweolgn4pPiBPLKWUSnHaxFzv8e
	pzJblrscnZtuq3jNOb0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMU8A-0006kS-MU; Mon, 21 Oct 2019 09:37:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMU7O-0005tO-QN
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 09:36:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 517EE35DD;
 Mon, 21 Oct 2019 11:36:46 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3389401d;
 Mon, 21 Oct 2019 11:36:36 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 11:36:41 +0200
Message-Id: <20191021093642.3118-4-ynezz@true.cz>
In-Reply-To: <20191021093642.3118-1-ynezz@true.cz>
References: <20191021093642.3118-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_023651_172470_7A5E4919 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH libnl-tiny 4/5] iron out all extra compiler
 warnings
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Z2NjIDkuMSBvbiB4ODYvNjQgaGFzIHJlcG9ydGVkIGZvbGxvd2luZzoKCiBhdHRyLmM6NDAzOjE5
OiBlcnJvcjogY29tcGFyaXNvbiBvZiBpbnRlZ2VyIGV4cHJlc3Npb25zIG9mIGRpZmZlcmVudCBz
aWduZWRuZXNzOiDigJhpbnTigJkgYW5kIOKAmGxvbmcgdW5zaWduZWQgaW504oCZIFstV2Vycm9y
PXNpZ24tY29tcGFyZV0KIGdlbmwuYzoxNTQ6MjQ6IGVycm9yOiBjb21wYXJpc29uIG9mIGludGVn
ZXIgZXhwcmVzc2lvbnMgb2YgZGlmZmVyZW50IHNpZ25lZG5lc3M6IOKAmGludOKAmSBhbmQg4oCY
dW5zaWduZWQgaW504oCZIFstV2Vycm9yPXNpZ24tY29tcGFyZV0KIGdlbmxfbW5ndC5jOjE1Nzoy
MjogZXJyb3I6IGNvbXBhcmlzb24gb2YgaW50ZWdlciBleHByZXNzaW9ucyBvZiBkaWZmZXJlbnQg
c2lnbmVkbmVzczog4oCYaW504oCZIGFuZCDigJhsb25nIHVuc2lnbmVkIGludOKAmSBbLVdlcnJv
cj1zaWduLWNvbXBhcmVdCiBtc2cuYzoxOTA6MjA6IGVycm9yOiBjb21wYXJpc29uIG9mIGludGVn
ZXIgZXhwcmVzc2lvbnMgb2YgZGlmZmVyZW50IHNpZ25lZG5lc3M6IOKAmGludOKAmSBhbmQg4oCY
bG9uZyB1bnNpZ25lZCBpbnTigJkgWy1XZXJyb3I9c2lnbi1jb21wYXJlXQogbXNnLmM6MTkyOjE4
OiBlcnJvcjogY29tcGFyaXNvbiBvZiBpbnRlZ2VyIGV4cHJlc3Npb25zIG9mIGRpZmZlcmVudCBz
aWduZWRuZXNzOiDigJhfX3UzMuKAmSB7YWthIOKAmGNvbnN0IHVuc2lnbmVkIGludOKAmX0gYW5k
IOKAmGludOKAmSBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCiBtc2cuYzozNjE6MTA6IGVycm9yOiBj
b21wYXJpc29uIG9mIGludGVnZXIgZXhwcmVzc2lvbnMgb2YgZGlmZmVyZW50IHNpZ25lZG5lc3M6
IOKAmHNpemVfdOKAmSB7YWthIOKAmGxvbmcgdW5zaWduZWQgaW504oCZfSBhbmQg4oCYaW504oCZ
IFstV2Vycm9yPXNpZ24tY29tcGFyZV0KIG5sLmM6NDI4OjE4OiBlcnJvcjogY29tcGFyaXNvbiBv
ZiBpbnRlZ2VyIGV4cHJlc3Npb25zIG9mIGRpZmZlcmVudCBzaWduZWRuZXNzOiDigJhzaXplX3Ti
gJkge2FrYSDigJhsb25nIHVuc2lnbmVkIGludOKAmX0gYW5kIOKAmGludOKAmSBbLVdlcnJvcj1z
aWduLWNvbXBhcmVdCiBubC5jOjYwMjoyMzogZXJyb3I6IGNvbXBhcmlzb24gb2YgaW50ZWdlciBl
eHByZXNzaW9ucyBvZiBkaWZmZXJlbnQgc2lnbmVkbmVzczog4oCYX191MzLigJkge2FrYSDigJh1
bnNpZ25lZCBpbnTigJl9IGFuZCDigJhpbnTigJkgWy1XZXJyb3I9c2lnbi1jb21wYXJlXQoKU2ln
bmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBhdHRyLmMgICAg
ICB8IDYgKysrKy0tCiBnZW5sLmMgICAgICB8IDIgKy0KIGdlbmxfbW5ndC5jIHwgMiArLQogbXNn
LmMgICAgICAgfCA4ICsrKysrLS0tCiBubC5jICAgICAgICB8IDQgKystLQogNSBmaWxlcyBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2F0dHIu
YyBiL2F0dHIuYwppbmRleCBlMGY1MDYxMWNmZjkuLmVhZTkxZTUyYmNhYyAxMDA2NDQKLS0tIGEv
YXR0ci5jCisrKyBiL2F0dHIuYwpAQCAtNDAwLDkgKzQwMCwxMSBAQAogICovCiBpbnQgbmxhX29r
KGNvbnN0IHN0cnVjdCBubGF0dHIgKm5sYSwgaW50IHJlbWFpbmluZykKIHsKLQlyZXR1cm4gcmVt
YWluaW5nID49IHNpemVvZigqbmxhKSAmJgorCXNpemVfdCByID0gcmVtYWluaW5nOworCisJcmV0
dXJuIHIgPj0gc2l6ZW9mKCpubGEpICYmCiAJICAgICAgIG5sYS0+bmxhX2xlbiA+PSBzaXplb2Yo
Km5sYSkgJiYKLQkgICAgICAgbmxhLT5ubGFfbGVuIDw9IHJlbWFpbmluZzsKKwkgICAgICAgbmxh
LT5ubGFfbGVuIDw9IHI7CiB9CiAKIC8qKgpkaWZmIC0tZ2l0IGEvZ2VubC5jIGIvZ2VubC5jCmlu
ZGV4IDA1NWJlOTE5ZTFkMy4uZjFkZjNmMDYwYzg3IDEwMDY0NAotLS0gYS9nZW5sLmMKKysrIGIv
Z2VubC5jCkBAIC0xNTEsNyArMTUxLDcgQEAgaW50IGdlbmxtc2dfdmFsaWRfaGRyKHN0cnVjdCBu
bG1zZ2hkciAqbmxoLCBpbnQgaGRybGVuKQogCQlyZXR1cm4gMDsKIAogCWdoZHIgPSBubG1zZ19k
YXRhKG5saCk7Ci0JaWYgKGdlbmxtc2dfbGVuKGdoZHIpIDwgTkxNU0dfQUxJR04oaGRybGVuKSkK
KwlpZiAoKHVuc2lnbmVkKSBnZW5sbXNnX2xlbihnaGRyKSA8IE5MTVNHX0FMSUdOKGhkcmxlbikp
CiAJCXJldHVybiAwOwogCiAJcmV0dXJuIDE7CmRpZmYgLS1naXQgYS9nZW5sX21uZ3QuYyBiL2dl
bmxfbW5ndC5jCmluZGV4IDI0NjUyMWY2OTZhMi4uM2I2MDNjN2FjOWJiIDEwMDY0NAotLS0gYS9n
ZW5sX21uZ3QuYworKysgYi9nZW5sX21uZ3QuYwpAQCAtMTU0LDcgKzE1NCw3IEBAIGludCBnZW5s
X3JlZ2lzdGVyKHN0cnVjdCBubF9jYWNoZV9vcHMgKm9wcykKIAkJZ290byBlcnJvdXQ7CiAJfQog
Ci0JaWYgKG9wcy0+Y29faGRyc2l6ZSA8IEdFTkxfSERSU0laRSgwKSkgeworCWlmICgoc2l6ZV90
KSBvcHMtPmNvX2hkcnNpemUgPCBHRU5MX0hEUlNJWkUoMCkpIHsKIAkJZXJyID0gLU5MRV9JTlZB
TDsKIAkJZ290byBlcnJvdXQ7CiAJfQpkaWZmIC0tZ2l0IGEvbXNnLmMgYi9tc2cuYwppbmRleCBi
NTAyMDQ3YzRjNzQuLjU5OTJlMzgxODEzYiAxMDA2NDQKLS0tIGEvbXNnLmMKKysrIGIvbXNnLmMK
QEAgLTE4Nyw5ICsxODcsMTEgQEAgc3RhdGljIHNpemVfdCBkZWZhdWx0X21zZ19zaXplID0gNDA5
NjsKICAqLwogaW50IG5sbXNnX29rKGNvbnN0IHN0cnVjdCBubG1zZ2hkciAqbmxoLCBpbnQgcmVt
YWluaW5nKQogewotCXJldHVybiAocmVtYWluaW5nID49IHNpemVvZihzdHJ1Y3Qgbmxtc2doZHIp
ICYmCisJc2l6ZV90IHIgPSByZW1haW5pbmc7CisKKwlyZXR1cm4gKHIgPj0gc2l6ZW9mKHN0cnVj
dCBubG1zZ2hkcikgJiYKIAkJbmxoLT5ubG1zZ19sZW4gPj0gc2l6ZW9mKHN0cnVjdCBubG1zZ2hk
cikgJiYKLQkJbmxoLT5ubG1zZ19sZW4gPD0gcmVtYWluaW5nKTsKKwkJbmxoLT5ubG1zZ19sZW4g
PD0gcik7CiB9CiAKIC8qKgpAQCAtMzU4LDcgKzM2MCw3IEBAIHN0cnVjdCBubF9tc2cgKm5sbXNn
X2FsbG9jX3NpbXBsZShpbnQgbmxtc2d0eXBlLCBpbnQgZmxhZ3MpCiAgKi8KIHZvaWQgbmxtc2df
c2V0X2RlZmF1bHRfc2l6ZShzaXplX3QgbWF4KQogewotCWlmIChtYXggPCBubG1zZ190b3RhbF9z
aXplKDApKQorCWlmIChtYXggPCAoc2l6ZV90KSBubG1zZ190b3RhbF9zaXplKDApKQogCQltYXgg
PSBubG1zZ190b3RhbF9zaXplKDApOwogCiAJZGVmYXVsdF9tc2dfc2l6ZSA9IG1heDsKZGlmZiAt
LWdpdCBhL25sLmMgYi9ubC5jCmluZGV4IDJmYjg2NmVjYTkwMy4uMjY0OTQ3MGY1NDJmIDEwMDY0
NAotLS0gYS9ubC5jCisrKyBiL25sLmMKQEAgLTQyNSw3ICs0MjUsNyBAQCByZXRyeToKIAkJfQog
CX0KIAotCWlmIChpb3YuaW92X2xlbiA8IG4gfHwKKwlpZiAoaW92Lmlvdl9sZW4gPCAoc2l6ZV90
KSBuIHx8CiAJICAgIG1zZy5tc2dfZmxhZ3MgJiBNU0dfVFJVTkMpIHsKIAkJLyogUHJvdmlkZWQg
YnVmZmVyIGlzIG5vdCBsb25nIGVub3VnaCwgZW5sYXJnZSBpdAogCQkgKiBhbmQgdHJ5IGFnYWlu
LiAqLwpAQCAtNTk5LDcgKzU5OSw3IEBAIGNvbnRpbnVlX3JlYWRpbmc6CiAJCWVsc2UgaWYgKGhk
ci0+bmxtc2dfdHlwZSA9PSBOTE1TR19FUlJPUikgewogCQkJc3RydWN0IG5sbXNnZXJyICplID0g
bmxtc2dfZGF0YShoZHIpOwogCi0JCQlpZiAoaGRyLT5ubG1zZ19sZW4gPCBubG1zZ19tc2dfc2l6
ZShzaXplb2YoKmUpKSkgeworCQkJaWYgKGhkci0+bmxtc2dfbGVuIDwgKHVuc2lnbmVkKSBubG1z
Z19tc2dfc2l6ZShzaXplb2YoKmUpKSkgewogCQkJCS8qIFRydW5jYXRlZCBlcnJvciBtZXNzYWdl
LCB0aGUgZGVmYXVsdCBhY3Rpb24KIAkJCQkgKiBpcyB0byBzdG9wIHBhcnNpbmcuIFRoZSB1c2Vy
IG1heSBvdmVycnVsZQogCQkJCSAqIHRoaXMgYWN0aW9uIGJ5IHJldHVybmluZyBOTF9TS0lQIG9y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
