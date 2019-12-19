Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D4A127052
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dE5/83D/XNQBWk0+dZ0e61YnwFwZxicvOMpsz1cy3j4=; b=lAJFSECCekYhac
	/UpI7TNYKLebWeNkfUDtz9W7WBp7yurIIQJN74DxW2q14HGSHFqg0zvPV2TT7XCT+5aISpnWkzsfb
	iS3BvYEKHU5DPWqQmh0Kt+1vbTTZj4Ol+5+Gc8SekKCBlrsIJA0SG43V4zc5Rnv6Z/jNE8UP04mSx
	2jqzuOiq1bhVZJ0SKD42PDNSFknqHaDKtHcVkhkxOnXKdppD4Op2lm9vYD0uL21VXrZWQgDa8zW0y
	hhPUoi+HAt+wfRrU9LqWZ0LRAk7O+JoCNL9aJwfhGIbKYcsp9q9KJgqM6T3qcm6AZpudR1+Jf6ek/
	SHsNprZvpMLlwfJISzzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3vr-0007hp-82; Thu, 19 Dec 2019 22:06:07 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uI-0003bV-Rp
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:38 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 207A24B92;
 Thu, 19 Dec 2019 23:04:29 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 5a7ee360;
 Thu, 19 Dec 2019 23:04:19 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:15 +0100
Message-Id: <20191219220421.22206-4-ynezz@true.cz>
In-Reply-To: <20191219220421.22206-1-ynezz@true.cz>
References: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140431_239740_6386F0BB 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH ucert 3/9] cmake: enable hardening compiler
 flags and fix the reported issues
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

TGV0cyBlbmFibGUgc29tZSB1c2VmdWwgZmxhZ3MgaW4gb3JkZXIgdG8gc3BvdCBwb3NzaWJsZSBp
c3N1ZXMgZHVyaW5nClFBIG9uIENJIChHQ0MgdmVyc2lvbiA2IGFuZCBoaWdoZXIpLiBGaXggd2Fy
bmluZ3MgdW5jb3ZlcmVkIGJ5IHRoaXMgbmV3CmZsYWdzIGFzIHJlcG9ydGVkIGJ5IGNsYW5nLTkg
b24geDg2LzY0OgoKIHVjZXJ0LmM6MTU4OjMzOiBlcnJvcjogY29tcGFyaXNvbiBvZiBpbnRlZ2Vy
cyBvZiBkaWZmZXJlbnQgc2lnbnM6ICd1bnNpZ25lZCBsb25nJyBhbmQgJ2ludCcgWy1XZXJyb3Is
LVdzaWduLWNvbXBhcmVdCiB1Y2VydC5jOjE3NjoxNDogZXJyb3I6IGNvbXBhcmlzb24gb2YgaW50
ZWdlcnMgb2YgZGlmZmVyZW50IHNpZ25zOiAnaW50JyBhbmQgJ3Vuc2lnbmVkIGxvbmcnIFstV2Vy
cm9yLC1Xc2lnbi1jb21wYXJlXQogdWNlcnQuYzozMTQ6MTg6IGVycm9yOiBjb21wYXJpc29uIG9m
IGludGVnZXJzIG9mIGRpZmZlcmVudCBzaWduczogJ19fdGltZV90JyAoYWthICdsb25nJykgYW5k
ICd1aW50NjRfdCcgKGFrYSAndW5zaWduZWQgbG9uZycpIFstV2Vycm9yLC1Xc2lnbi1jb21wYXJl
XQogdWNlcnQuYzozMTU6MTg6IGVycm9yOiBjb21wYXJpc29uIG9mIGludGVnZXJzIG9mIGRpZmZl
cmVudCBzaWduczogJ19fdGltZV90JyAoYWthICdsb25nJykgYW5kICd1aW50NjRfdCcgKGFrYSAn
dW5zaWduZWQgbG9uZycpIFstV2Vycm9yLC1Xc2lnbi1jb21wYXJlXQogdWNlcnQuYzo1NTc6MTc6
IGVycm9yOiBjb21wYXJpc29uIG9mIGludGVnZXJzIG9mIGRpZmZlcmVudCBzaWduczogJ19fdGlt
ZV90JyAoYWthICdsb25nJykgYW5kICd1aW50NjRfdCcgKGFrYSAndW5zaWduZWQgbG9uZycpIFst
V2Vycm9yLC1Xc2lnbi1jb21wYXJlXQoKUmVmOiBodHRwczovL2RldmVsb3BlcnMucmVkaGF0LmNv
bS9ibG9nLzIwMTgvMDMvMjEvY29tcGlsZXItYW5kLWxpbmtlci1mbGFncy1nY2MvClNpZ25lZC1v
ZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogQ01ha2VMaXN0cy50eHQg
fCAgOCArKysrKysrLQogdWNlcnQuYyAgICAgICAgfCAxOCArKysrKysrKysrKy0tLS0tLS0KIDIg
ZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9DTWFrZUxpc3RzLnR4dCBiL0NNYWtlTGlzdHMudHh0CmluZGV4IDE0ODg4YWMzODEzNS4u
NDM2YWJjNjg1N2IzIDEwMDY0NAotLS0gYS9DTWFrZUxpc3RzLnR4dAorKysgYi9DTWFrZUxpc3Rz
LnR4dApAQCAtMSw3ICsxLDEzIEBACiBjbWFrZV9taW5pbXVtX3JlcXVpcmVkKFZFUlNJT04gMi42
KQogCiBQUk9KRUNUKHVjZXJ0IEMpCi1BRERfREVGSU5JVElPTlMoLU9zIC1nZ2RiIC1XYWxsIC0t
c3RkPWdudTk5IC1XbWlzc2luZy1kZWNsYXJhdGlvbnMpCisKK0FERF9ERUZJTklUSU9OUygtV2Fs
bCAtV2Vycm9yKQorSUYoQ01BS0VfQ19DT01QSUxFUl9WRVJTSU9OIFZFUlNJT05fR1JFQVRFUiA2
KQorCUFERF9ERUZJTklUSU9OUygtV2V4dHJhIC1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVj
bGFyYXRpb24pCisJQUREX0RFRklOSVRJT05TKC1XZm9ybWF0IC1XZXJyb3I9Zm9ybWF0LXNlY3Vy
aXR5IC1XZXJyb3I9Zm9ybWF0LW5vbmxpdGVyYWwpCitFTkRJRigpCitBRERfREVGSU5JVElPTlMo
LU9zIC1zdGQ9Z251OTkgLWdnZGIgLVdtaXNzaW5nLWRlY2xhcmF0aW9ucyAtV25vLXVudXNlZC1w
YXJhbWV0ZXIpCiAKIFNFVChDTUFLRV9TSEFSRURfTElCUkFSWV9MSU5LX0NfRkxBR1MgIiIpCiAK
ZGlmZiAtLWdpdCBhL3VjZXJ0LmMgYi91Y2VydC5jCmluZGV4IDU2OWIzMWQ1ZjE2ZS4uODUwM2Vl
YjI2Y2Q4IDEwMDY0NAotLS0gYS91Y2VydC5jCisrKyBiL3VjZXJ0LmMKQEAgLTQ4LDkgKzQ4LDEz
IEBAIHN0YXRpYyBlbnVtIHsKIAogc3RhdGljIGJvb2wgcXVpZXQ7CiAjaWZuZGVmIFVDRVJUX1NU
UklQX01FU1NBR0VTCi0jZGVmaW5lIERQUklOVEYoZm9ybWF0LCAuLi4pIGlmICghcXVpZXQpIGZw
cmludGYoc3RkZXJyLCAiJXMoJWQpOiAiIGZvcm1hdCwgX19mdW5jX18sIF9fTElORV9fLCAjIyBf
X1ZBX0FSR1NfXykKKyNkZWZpbmUgRFBSSU5URihmb3JtYXQsIC4uLikJCQkJCQkJCQlcCisJZG8g
ewkJCQkJCQkJCQkJXAorCQlpZiAoIXF1aWV0KQkJCQkJCQkJCVwKKwkJCWZwcmludGYoc3RkZXJy
LCAiJXMoJWQpOiAiIGZvcm1hdCwgX19mdW5jX18sIF9fTElORV9fLCAjIyBfX1ZBX0FSR1NfXyk7
CVwKKwl9IHdoaWxlICgwKQogI2Vsc2UKLSNkZWZpbmUgRFBSSU5URihmb3JtYXQsIC4uLikKKyNk
ZWZpbmUgRFBSSU5URihmb3JtYXQsIC4uLikgZG8geyB9IHdoaWxlICgwKQogI2VuZGlmCiAKIC8q
CkBAIC0xMzMsNyArMTM3LDcgQEAgc3RhdGljIGludCBjZXJ0X2xvYWQoY29uc3QgY2hhciAqY2Vy
dGZpbGUsIHN0cnVjdCBsaXN0X2hlYWQgKmNoYWluKSB7CiAJc3RydWN0IGNlcnRfb2JqZWN0ICpj
b2JqOwogCWNoYXIgZmlsZWJ1ZltDRVJUX0JVRl9MRU5dOwogCWludCByZXQgPSAwLCBwcmV0ID0g
MDsKLQlpbnQgbGVuLCBwb3MgPSAwOworCXNpemVfdCBsZW4sIHBvcyA9IDA7CiAKIAlmID0gZm9w
ZW4oY2VydGZpbGUsICJyIik7CiAJaWYgKCFmKQpAQCAtMjY5LDggKzI3Myw4IEBAIHN0YXRpYyBp
bnQgY2hhaW5fdmVyaWZ5KGNvbnN0IGNoYXIgKm1zZ2ZpbGUsIGNvbnN0IGNoYXIgKnB1YmtleWZp
bGUsCiAJbGlzdF9mb3JfZWFjaF9lbnRyeShjb2JqLCBjaGFpbiwgbGlzdCkgewogCQkvKiBibG9i
IGhhcyBwYXlsb2FkLCB2ZXJpZnkgdGhhdCB1c2luZyBzaWduYXR1cmUgKi8KIAkJaWYgKGNvYmot
PmNlcnRbQ0VSVF9BVFRSX1BBWUxPQURdKSB7Ci0JCQl1aW50NjRfdCB2YWxpZGZyb207Ci0JCQl1
aW50NjRfdCBleHBpcmVzYXQ7CisJCQl0aW1lX3QgdmFsaWRmcm9tOworCQkJdGltZV90IGV4cGly
ZXNhdDsKIAkJCXVpbnQzMl90IGNlcnR0eXBlOwogCiAJCQlyZXQgPSBjZXJ0X3ZlcmlmeV9ibG9i
KGNvYmotPmNlcnQsIGNoYWluZWRwdWJrZXlbMF0/Y2hhaW5lZHB1YmtleTpwdWJrZXlmaWxlLCBw
dWJrZXlkaXIpOwpAQCAtNDk5LDggKzUwMyw4IEBAIHN0YXRpYyBpbnQgY2VydF9wcm9jZXNzX3Jl
dm9rZXIoY29uc3QgY2hhciAqY2VydGZpbGUsIGNvbnN0IGNoYXIgKnB1YmtleWRpcikgewogCXN0
cnVjdCBibG9iX2F0dHIgKnBheWxvYWR0YltDRVJUX1BMX0FUVFJfTUFYXTsKIAlzdHJ1Y3Qgc3Rh
dCBzdDsKIAlzdHJ1Y3QgdGltZXZhbCB0djsKLQl1aW50NjRfdCB2YWxpZGZyb207Ci0JdWludDMy
X3QgY2VydHR5cGU7CisJdGltZV90IHZhbGlkZnJvbTsKKwllbnVtIGNlcnR0eXBlX2lkIGNlcnR0
eXBlOwogCWNoYXIgKmZpbmdlcnByaW50OwogCWNoYXIgcmZuYW1lWzUxMl07CiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
