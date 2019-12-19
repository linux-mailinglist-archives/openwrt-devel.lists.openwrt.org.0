Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A3212702C
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:01:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/KdwjIjyWBW4pfAdJW5gQSagPwrjhu7k0x1mqJ4Pv4=; b=DNcSpFvGKpo18Y
	x4xGsi0DudQxEvhoW/7ldeYwwH7OhyR099nEks5EfWGk0tCpws5JXHuCjeiReUP+HwH4NXfK+Xpvz
	/7iQgivjbIRa2KpuvLbyDwljFAnN2qIa5RUl5cpjkpAO8/8Yv0swZzolYnKbStNISb6YbebRQT46q
	CoiX5v9FPBY9/0/f1fyiAFgVzoO/J501M8aJG273ez0CnnR735da3XUgp0g7LSDhWbhXF678DvPXL
	fYO1ufG8qmvubAO4EgiYCOmzvpgGLyds+mj1L5A3wY+M0kxHVS7B6ZB0Cxj/WT9qJkIhNL8cjlHKR
	2VWqE8ZNPzjnIM5n17tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3qy-00057Z-4c; Thu, 19 Dec 2019 22:01:04 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3oq-0000tZ-DQ
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3D4B34B4B;
 Thu, 19 Dec 2019 22:58:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 232d54b3;
 Thu, 19 Dec 2019 22:58:35 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:24 +0100
Message-Id: <20191219215836.21773-9-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135852_634942_1500EE51 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH libubox 08/20] blob: refactor attr parsing
 into separate function
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

TWFraW5nIGJsb2JfcGFyc2UgZWFzaWVyIHRvIHJldmlldy4KClNpZ25lZC1vZmYtYnk6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogYmxvYi5jIHwgNjEgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDM1IGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Jsb2Iu
YyBiL2Jsb2IuYwppbmRleCA5YjNkOGFiZTMzMGEuLmVlOTM4OTRiOWU2ZiAxMDA2NDQKLS0tIGEv
YmxvYi5jCisrKyBiL2Jsb2IuYwpAQCAtMjE3LDQ0ICsyMTcsNTMgQEAgYmxvYl9jaGVja190eXBl
KGNvbnN0IHZvaWQgKnB0ciwgdW5zaWduZWQgaW50IGxlbiwgaW50IHR5cGUpCiAJcmV0dXJuIHRy
dWU7CiB9CiAKLWludAotYmxvYl9wYXJzZShzdHJ1Y3QgYmxvYl9hdHRyICphdHRyLCBzdHJ1Y3Qg
YmxvYl9hdHRyICoqZGF0YSwgY29uc3Qgc3RydWN0IGJsb2JfYXR0cl9pbmZvICppbmZvLCBpbnQg
bWF4KQorc3RhdGljIGludAorYmxvYl9wYXJzZV9hdHRyKHN0cnVjdCBibG9iX2F0dHIgKmF0dHIs
IHN0cnVjdCBibG9iX2F0dHIgKipkYXRhLCBjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyX2luZm8gKmlu
Zm8sIGludCBtYXgpCiB7Ci0Jc3RydWN0IGJsb2JfYXR0ciAqcG9zOwogCWludCBmb3VuZCA9IDA7
Ci0Jc2l6ZV90IHJlbTsKKwlpbnQgaWQgPSBibG9iX2lkKGF0dHIpOworCXNpemVfdCBsZW4gPSBi
bG9iX2xlbihhdHRyKTsKIAotCW1lbXNldChkYXRhLCAwLCBzaXplb2Yoc3RydWN0IGJsb2JfYXR0
ciAqKSAqIG1heCk7Ci0JYmxvYl9mb3JfZWFjaF9hdHRyKHBvcywgYXR0ciwgcmVtKSB7Ci0JCWlu
dCBpZCA9IGJsb2JfaWQocG9zKTsKLQkJc2l6ZV90IGxlbiA9IGJsb2JfbGVuKHBvcyk7CisJaWYg
KGlkID49IG1heCkKKwkJcmV0dXJuIDA7CiAKLQkJaWYgKGlkID49IG1heCkKLQkJCWNvbnRpbnVl
OworCWlmIChpbmZvKSB7CisJCWludCB0eXBlID0gaW5mb1tpZF0udHlwZTsKIAotCQlpZiAoaW5m
bykgewotCQkJaW50IHR5cGUgPSBpbmZvW2lkXS50eXBlOworCQlpZiAodHlwZSA8IEJMT0JfQVRU
Ul9MQVNUKSB7CisJCQlpZiAoIWJsb2JfY2hlY2tfdHlwZShibG9iX2RhdGEoYXR0ciksIGxlbiwg
dHlwZSkpCisJCQkJcmV0dXJuIDA7CisJCX0KIAotCQkJaWYgKHR5cGUgPCBCTE9CX0FUVFJfTEFT
VCkgewotCQkJCWlmICghYmxvYl9jaGVja190eXBlKGJsb2JfZGF0YShwb3MpLCBsZW4sIHR5cGUp
KQotCQkJCQljb250aW51ZTsKLQkJCX0KKwkJaWYgKGluZm9baWRdLm1pbmxlbiAmJiBsZW4gPCBp
bmZvW2lkXS5taW5sZW4pCisJCQlyZXR1cm4gMDsKIAotCQkJaWYgKGluZm9baWRdLm1pbmxlbiAm
JiBsZW4gPCBpbmZvW2lkXS5taW5sZW4pCi0JCQkJY29udGludWU7CisJCWlmIChpbmZvW2lkXS5t
YXhsZW4gJiYgbGVuID4gaW5mb1tpZF0ubWF4bGVuKQorCQkJcmV0dXJuIDA7CiAKLQkJCWlmIChp
bmZvW2lkXS5tYXhsZW4gJiYgbGVuID4gaW5mb1tpZF0ubWF4bGVuKQotCQkJCWNvbnRpbnVlOwor
CQlpZiAoaW5mb1tpZF0udmFsaWRhdGUgJiYgIWluZm9baWRdLnZhbGlkYXRlKCZpbmZvW2lkXSwg
YXR0cikpCisJCQlyZXR1cm4gMDsKKwl9CiAKLQkJCWlmIChpbmZvW2lkXS52YWxpZGF0ZSAmJiAh
aW5mb1tpZF0udmFsaWRhdGUoJmluZm9baWRdLCBwb3MpKQotCQkJCWNvbnRpbnVlOwotCQl9CisJ
aWYgKCFkYXRhW2lkXSkKKwkJZm91bmQrKzsKIAotCQlpZiAoIWRhdGFbaWRdKQotCQkJZm91bmQr
KzsKKwlkYXRhW2lkXSA9IGF0dHI7CisJcmV0dXJuIGZvdW5kOworfQogCi0JCWRhdGFbaWRdID0g
cG9zOworaW50CitibG9iX3BhcnNlKHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIHN0cnVjdCBibG9i
X2F0dHIgKipkYXRhLCBjb25zdCBzdHJ1Y3QgYmxvYl9hdHRyX2luZm8gKmluZm8sIGludCBtYXgp
Cit7CisJc3RydWN0IGJsb2JfYXR0ciAqcG9zOworCWludCBmb3VuZCA9IDA7CisJc2l6ZV90IHJl
bTsKKworCW1lbXNldChkYXRhLCAwLCBzaXplb2Yoc3RydWN0IGJsb2JfYXR0ciAqKSAqIG1heCk7
CisJYmxvYl9mb3JfZWFjaF9hdHRyKHBvcywgYXR0ciwgcmVtKSB7CisJCWZvdW5kICs9IGJsb2Jf
cGFyc2VfYXR0cihwb3MsIGRhdGEsIGluZm8sIG1heCk7CiAJfQorCiAJcmV0dXJuIGZvdW5kOwog
fQogCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
