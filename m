Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8B51F3B0
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 14:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5flSF82oihEo9EKnPZb8dpsFO/v4vUqnXqNjZIJhPg=; b=Bo1igatcY2Uvo7
	+/X2z+iUwWhBaxNdAA5ANQGY3/eNzTUTtQ0pLzXvvzHgmoUVdwO8E8uDU8HRVbwktax02mVs7ieLA
	7zR/Abo8kQ2tD6yUwe+pp7atpI307yB88nM0ZQfqqINqa/G50yj9A+hfOq0sismJo1OzILBhAc4TU
	y3nCCtnxIB+l1Y+Y2aXNRYZ01E4e/F1EyINzAFzFd6z8Na9g0incws/ul77ZztXbwk+RI9YaaCIad
	NdVl+ys9j4hJImCZrQTHVFjEJa+MqihhFvoOgDhyHgq6/sYtAe0WVHH4Vf8v1Tm4MtLxROG0aeqfv
	jye4TpGuZ0npn8hv/I1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQspx-0002xk-EC; Wed, 15 May 2019 12:16:45 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQspf-0002lg-Hl
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 12:16:29 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FCGL2P028972
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 14:16:21 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5221D4C43;
 Wed, 15 May 2019 14:16:18 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 99b240d7;
 Wed, 15 May 2019 14:16:17 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 May 2019 14:16:03 +0200
Message-Id: <1557922563-11442-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557922563-11442-1-git-send-email-ynezz@true.cz>
References: <1557922563-11442-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_051627_902885_E9CAD472 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
Subject: [OpenWrt-Devel] [PATCH iwinfo 2/2] Iron out all extra compiler
 warnings
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

aXdpbmZvX2xpYi5jOjM1MjoxNjogZXJyb3I6IGNvbXBhcmlzb24gYmV0d2VlbiBzaWduZWQgYW5k
IHVuc2lnbmVkIGludGVnZXIgZXhwcmVzc2lvbnMgWy1XZXJyb3I9c2lnbi1jb21wYXJlXQppd2lu
Zm9fbGliLmM6MzYzOjE2OiBlcnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5z
aWduZWQgaW50ZWdlciBleHByZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCml3aW5mb19s
aWIuYzozNzQ6MTY6IGVycm9yOiBjb21wYXJpc29uIGJldHdlZW4gc2lnbmVkIGFuZCB1bnNpZ25l
ZCBpbnRlZ2VyIGV4cHJlc3Npb25zIFstV2Vycm9yPXNpZ24tY29tcGFyZV0KaXdpbmZvX2x1YS5j
OjE5MzoyMzogZXJyb3I6IGNvbXBhcmlzb24gYmV0d2VlbiBzaWduZWQgYW5kIHVuc2lnbmVkIGlu
dGVnZXIgZXhwcmVzc2lvbnMgWy1XZXJyb3I9c2lnbi1jb21wYXJlXQppd2luZm9fbHVhLmM6MjA0
OjIzOiBlcnJvcjogY29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdl
ciBleHByZXNzaW9ucyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCml3aW5mb19sdWEuYzoyMTU6MjM6
IGVycm9yOiBjb21wYXJpc29uIGJldHdlZW4gc2lnbmVkIGFuZCB1bnNpZ25lZCBpbnRlZ2VyIGV4
cHJlc3Npb25zIFstV2Vycm9yPXNpZ24tY29tcGFyZV0KaXdpbmZvX2x1YS5jOjIyNjoyMzogZXJy
b3I6IGNvbXBhcmlzb24gYmV0d2VlbiBzaWduZWQgYW5kIHVuc2lnbmVkIGludGVnZXIgZXhwcmVz
c2lvbnMgWy1XZXJyb3I9c2lnbi1jb21wYXJlXQppd2luZm9fbHVhLmM6NTQxOjE3OiBlcnJvcjog
Y29tcGFyaXNvbiBiZXR3ZWVuIHNpZ25lZCBhbmQgdW5zaWduZWQgaW50ZWdlciBleHByZXNzaW9u
cyBbLVdlcnJvcj1zaWduLWNvbXBhcmVdCml3aW5mb19jbGkuYzo3Njk6MTY6IGVycm9yOiBjb21w
YXJpc29uIGJldHdlZW4gc2lnbmVkIGFuZCB1bnNpZ25lZCBpbnRlZ2VyIGV4cHJlc3Npb25zIFst
V2Vycm9yPXNpZ24tY29tcGFyZV0KaXdpbmZvX2NsaS5jOjgyNDoxNzogZXJyb3I6IGNvbXBhcmlz
b24gYmV0d2VlbiBzaWduZWQgYW5kIHVuc2lnbmVkIGludGVnZXIgZXhwcmVzc2lvbnMgWy1XZXJy
b3I9c2lnbi1jb21wYXJlXQoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4KLS0tCiBpd2luZm9fY2xpLmMgfCA3ICsrKystLS0KIGl3aW5mb19saWIuYyB8IDYgKysr
LS0tCiBpd2luZm9fbHVhLmMgfCA1ICsrKy0tCiAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaXdpbmZvX2NsaS5jIGIvaXdpbmZv
X2NsaS5jCmluZGV4IGRiYTc1Mjk5OTk5Ni4uOGY4MGFhNDFjZDIwIDEwMDY0NAotLS0gYS9pd2lu
Zm9fY2xpLmMKKysrIGIvaXdpbmZvX2NsaS5jCkBAIC03NTgsNyArNzU4LDggQEAgc3RhdGljIHZv
aWQgcHJpbnRfY291bnRyeWxpc3QoY29uc3Qgc3RydWN0IGl3aW5mb19vcHMgKml3LCBjb25zdCBj
aGFyICppZm5hbWUpCiAKIHN0YXRpYyB2b2lkIHByaW50X2h0bW9kZWxpc3QoY29uc3Qgc3RydWN0
IGl3aW5mb19vcHMgKml3LCBjb25zdCBjaGFyICppZm5hbWUpCiB7Ci0JaW50IGksIGh0bW9kZXMg
PSAwOworCXVuc2lnbmVkIGludCBpOworCWludCBodG1vZGVzID0gMDsKIAogCWlmIChpdy0+aHRt
b2RlbGlzdChpZm5hbWUsICZodG1vZGVzKSkKIAl7CkBAIC04MjEsOSArODIyLDkgQEAgaW50IG1h
aW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogCXsKIAkJZ2xvYigiL3N5cy9jbGFzcy9uZXQvKiIs
IDAsIE5VTEwsICZnbG9iYnVmKTsKIAotCQlmb3IgKGkgPSAwOyBpIDwgZ2xvYmJ1Zi5nbF9wYXRo
YzsgaSsrKQorCQlmb3IgKHVuc2lnbmVkIGludCB5ID0gMDsgeSA8IGdsb2JidWYuZ2xfcGF0aGM7
IHkrKykKIAkJewotCQkJcCA9IHN0cnJjaHIoZ2xvYmJ1Zi5nbF9wYXRodltpXSwgJy8nKTsKKwkJ
CXAgPSBzdHJyY2hyKGdsb2JidWYuZ2xfcGF0aHZbeV0sICcvJyk7CiAKIAkJCWlmICghcCkKIAkJ
CQljb250aW51ZTsKZGlmZiAtLWdpdCBhL2l3aW5mb19saWIuYyBiL2l3aW5mb19saWIuYwppbmRl
eCBmYTliYjlmMTRmNGMuLmUyYzNkYjFiMzJjOCAxMDA2NDQKLS0tIGEvaXdpbmZvX2xpYi5jCisr
KyBiL2l3aW5mb19saWIuYwpAQCAtMzQ3LDcgKzM0Nyw3IEBAIGNvbnN0IGNoYXIgKiBpd2luZm9f
dHlwZShjb25zdCBjaGFyICppZm5hbWUpCiAKIGNvbnN0IHN0cnVjdCBpd2luZm9fb3BzICogaXdp
bmZvX2JhY2tlbmQoY29uc3QgY2hhciAqaWZuYW1lKQogewotCWludCBpOworCXVuc2lnbmVkIGlu
dCBpOwogCiAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoYmFja2VuZHMpOyBpKyspCiAJCWlm
IChiYWNrZW5kc1tpXS0+cHJvYmUoaWZuYW1lKSkKQEAgLTM1OCw3ICszNTgsNyBAQCBjb25zdCBz
dHJ1Y3QgaXdpbmZvX29wcyAqIGl3aW5mb19iYWNrZW5kKGNvbnN0IGNoYXIgKmlmbmFtZSkKIAog
Y29uc3Qgc3RydWN0IGl3aW5mb19vcHMgKiBpd2luZm9fYmFja2VuZF9ieV9uYW1lKGNvbnN0IGNo
YXIgKm5hbWUpCiB7Ci0JaW50IGk7CisJdW5zaWduZWQgaW50IGk7CiAKIAlmb3IgKGkgPSAwOyBp
IDwgQVJSQVlfU0laRShiYWNrZW5kcyk7IGkrKykKIAkJaWYgKCFzdHJjbXAoYmFja2VuZHNbaV0t
Pm5hbWUsIG5hbWUpKQpAQCAtMzY5LDcgKzM2OSw3IEBAIGNvbnN0IHN0cnVjdCBpd2luZm9fb3Bz
ICogaXdpbmZvX2JhY2tlbmRfYnlfbmFtZShjb25zdCBjaGFyICpuYW1lKQogCiB2b2lkIGl3aW5m
b19maW5pc2godm9pZCkKIHsKLQlpbnQgaTsKKwl1bnNpZ25lZCBpbnQgaTsKIAogCWZvciAoaSA9
IDA7IGkgPCBBUlJBWV9TSVpFKGJhY2tlbmRzKTsgaSsrKQogCQliYWNrZW5kc1tpXS0+Y2xvc2Uo
KTsKZGlmZiAtLWdpdCBhL2l3aW5mb19sdWEuYyBiL2l3aW5mb19sdWEuYwppbmRleCBiYjQzNDM4
ZDhkZDUuLjM5MWVjMDJjNWU4YSAxMDA2NDQKLS0tIGEvaXdpbmZvX2x1YS5jCisrKyBiL2l3aW5m
b19sdWEuYwpAQCAtMTczLDcgKzE3Myw3IEBAIHN0YXRpYyBjaGFyICogaXdpbmZvX2NyeXB0b19k
ZXNjKHN0cnVjdCBpd2luZm9fY3J5cHRvX2VudHJ5ICpjKQogLyogQnVpbGQgTHVhIHRhYmxlIGZy
b20gY3J5cHRvIGRhdGEgKi8KIHN0YXRpYyB2b2lkIGl3aW5mb19MX2NyeXB0b3RhYmxlKGx1YV9T
dGF0ZSAqTCwgc3RydWN0IGl3aW5mb19jcnlwdG9fZW50cnkgKmMpCiB7Ci0JaW50IGksIGo7CisJ
dW5zaWduZWQgaW50IGksIGo7CiAKIAlsdWFfbmV3dGFibGUoTCk7CiAKQEAgLTUzMiw3ICs1MzIs
OCBAQCBzdGF0aWMgaW50IGl3aW5mb19MX2h3bW9kZWxpc3QobHVhX1N0YXRlICpMLCBpbnQgKCpm
dW5jKShjb25zdCBjaGFyICosIGludCAqKSkKIHN0YXRpYyBpbnQgaXdpbmZvX0xfaHRtb2RlbGlz
dChsdWFfU3RhdGUgKkwsIGludCAoKmZ1bmMpKGNvbnN0IGNoYXIgKiwgaW50ICopKQogewogCWNv
bnN0IGNoYXIgKmlmbmFtZSA9IGx1YUxfY2hlY2tzdHJpbmcoTCwgMSk7Ci0JaW50IGksIGh0bW9k
ZXMgPSAwOworCWludCBodG1vZGVzID0gMDsKKwl1bnNpZ25lZCBpbnQgaTsKIAogCWlmICghKCpm
dW5jKShpZm5hbWUsICZodG1vZGVzKSkKIAl7Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
