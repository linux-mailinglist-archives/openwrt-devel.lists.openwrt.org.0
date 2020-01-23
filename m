Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09C51468D8
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 14:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZ1125MH0ZVmTUGUaW6CZ8Xjjq2ARmSKWxEQZ9FyCIg=; b=u1APokE4A5UbsT
	N4WNzllCrZ5fn18clABfLDcmSwlbRk2MS7zkxtx8SXjzIpMXNLLVuLMlPTzyB7mRBYuoH3p9/tHq8
	RC1FXSxXMczyRaLeqYpTkz5ECR1Fgg8caTIm/jPNZCvffTXN7v2LfwsjXf4I2QYREYQbZqUyu5m4Y
	3jt0b8cTcrYTK1+YNTCBXknFem06yCEuk+KGX8B312q/AFM8XXbYiPYNn5HR/1sr+SXYiAQ9D9mO9
	gktDX047wSEBhENP97+cN2vK5WdkJXhz783yE6RQgIo43AYbx1pdJ8SAEpdXoAeL/MaJJ2weD09uu
	getItfUJzy9yVHE7yvew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucKz-0003yY-GK; Thu, 23 Jan 2020 13:15:57 +0000
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucKt-0003yD-0n
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 13:15:52 +0000
Received: from localhost (unknown [192.168.200.7])
 by max.feld.cvut.cz (Postfix) with ESMTP id ADFA219F4474;
 Thu, 23 Jan 2020 14:15:49 +0100 (CET)
X-Virus-Scanned: IMAP STYX AMAVIS
Received: from max.feld.cvut.cz ([192.168.200.1])
 by localhost (styx.feld.cvut.cz [192.168.200.7]) (amavisd-new, port 10044)
 with ESMTP id TPyIqwGiPcjw; Thu, 23 Jan 2020 14:15:47 +0100 (CET)
Received: from localhost.localdomain (labsitronics.feld.cvut.cz
 [147.32.211.25])
 by max.feld.cvut.cz (Postfix) with ESMTP id 4D32419F4498;
 Thu, 23 Jan 2020 14:15:47 +0100 (CET)
From: ondrej.votava@cvut.cz
To: openwrt-devel@lists.openwrt.org
Date: Thu, 23 Jan 2020 14:15:27 +0100
Message-Id: <20200123131527.23003-1-ondrej.votava@cvut.cz>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
In-Reply-To: <20200120095305.18132-1-ondrej.votava@cvut.cz>
References: <20200120095305.18132-1-ondrej.votava@cvut.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_051551_214526_557B62D1 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.32.192.36 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.32.192.36 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] procd: show process's exit code
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
Cc: =?UTF-8?q?Ond=C5=99ej=20Votava?= <ondrej.votava@cvut.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogT25kxZllaiBWb3RhdmEgPG9uZHJlai52b3RhdmFAY3Z1dC5jej4KCkFkZHMgZmVhdHVy
ZSB0byBzaG93IGV4aXQgY29kZSBvZiBwcm9jZXNzZXMgbGF1bmNoZWQgYnkgcHJvY2QuClRoZSBl
eGl0IGNvZGUgaXMgc2hvd24gZm9yIGZpbmlzaGVkIHByb2Nlc3Mgd2hlbiB1YnVzJ3MKc2Vydmlj
ZSBsaXN0IG1ldGhvZCBpcyBjYWxsZWQuCgpUaGUgZXhpdCBjb2RlIHZhbHVlIGlzIGNvbXB1dGVk
IGFjY29yZGluZyB0byB3YWl0cGlkKDIpCmFuZCBodHRwOi8vdGxkcC5vcmcvTERQL2Ficy9odG1s
L2V4aXRjb2Rlcy5odG1sCgpTaWduZWQtb2ZmLWJ5OiBPbmTFmWVqIFZvdGF2YSA8b25kcmVqLnZv
dGF2YUBjdnV0LmN6PgotLS0KIHNlcnZpY2UvaW5zdGFuY2UuYyB8IDE2ICsrKysrKysrKysrKysr
KysKIHNlcnZpY2UvaW5zdGFuY2UuaCB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NlcnZpY2UvaW5zdGFuY2UuYyBiL3NlcnZpY2UvaW5zdGFu
Y2UuYwppbmRleCBhYmQxZjM0Li4xM2U3ZDBhIDEwMDY0NAotLS0gYS9zZXJ2aWNlL2luc3RhbmNl
LmMKKysrIGIvc2VydmljZS9pbnN0YW5jZS5jCkBAIC01NjAsNiArNTYwLDE4IEBAIGluc3RhbmNl
X2RlbGV0ZShzdHJ1Y3Qgc2VydmljZV9pbnN0YW5jZSAqaW4pCiAJc2VydmljZV9zdG9wcGVkKHMp
OwogfQogCitzdGF0aWMgaW50CitpbnN0YW5jZV9leGl0X2NvZGUoaW50IHJldCkKK3sKKwlpZihX
SUZFWElURUQocmV0KSkgeworCQlyZXR1cm4gV0VYSVRTVEFUVVMocmV0KTsKKwl9CisJZWxzZSBp
ZiAoV0lGU0lHTkFMRUQocmV0KSkgeworCQlyZXR1cm4gMTI4ICsgV1RFUk1TSUcocmV0KTsKKwl9
CisJcmV0dXJuIDE7Cit9CisKIHN0YXRpYyB2b2lkCiBpbnN0YW5jZV9leGl0KHN0cnVjdCB1bG9v
cF9wcm9jZXNzICpwLCBpbnQgcmV0KQogewpAQCAtNTc0LDYgKzU4Niw3IEBAIGluc3RhbmNlX2V4
aXQoc3RydWN0IHVsb29wX3Byb2Nlc3MgKnAsIGludCByZXQpCiAKIAlERUJVRygyLCAiSW5zdGFu
Y2UgJXM6OiVzIGV4aXQgd2l0aCBlcnJvciBjb2RlICVkIGFmdGVyICVsZCBzZWNvbmRzXG4iLCBp
bi0+c3J2LT5uYW1lLCBpbi0+bmFtZSwgcmV0LCBydW50aW1lKTsKIAorCWluLT5leGl0X2NvZGUg
PSBpbnN0YW5jZV9leGl0X2NvZGUocmV0KTsKIAl1bG9vcF90aW1lb3V0X2NhbmNlbCgmaW4tPnRp
bWVvdXQpOwogCXNlcnZpY2VfZXZlbnQoImluc3RhbmNlLnN0b3AiLCBpbi0+c3J2LT5uYW1lLCBp
bi0+bmFtZSk7CiAKQEAgLTEwOTEsNiArMTEwNCw3IEBAIGluc3RhbmNlX2luaXQoc3RydWN0IHNl
cnZpY2VfaW5zdGFuY2UgKmluLCBzdHJ1Y3Qgc2VydmljZSAqcywgc3RydWN0IGJsb2JfYXR0ciAq
CiAJaW4tPnByb2MuY2IgPSBpbnN0YW5jZV9leGl0OwogCWluLT50ZXJtX3RpbWVvdXQgPSA1Owog
CWluLT5zeXNsb2dfZmFjaWxpdHkgPSBMT0dfREFFTU9OOworCWluLT5leGl0X2NvZGUgPSAwOwog
CiAJaW4tPl9zdGRvdXQuZmQuZmQgPSAtMjsKIAlpbi0+X3N0ZG91dC5zdHJlYW0uc3RyaW5nX2Rh
dGEgPSB0cnVlOwpAQCAtMTEyNCw2ICsxMTM4LDggQEAgdm9pZCBpbnN0YW5jZV9kdW1wKHN0cnVj
dCBibG9iX2J1ZiAqYiwgc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluLCBpbnQgdmVyYm9zZSkK
IAlpZiAoaW4tPmNvbW1hbmQpCiAJCWJsb2Jtc2dfYWRkX2Jsb2IoYiwgaW4tPmNvbW1hbmQpOwog
CWJsb2Jtc2dfYWRkX3UzMihiLCAidGVybV90aW1lb3V0IiwgaW4tPnRlcm1fdGltZW91dCk7CisJ
aWYgKCFpbi0+cHJvYy5wZW5kaW5nKQorCQlibG9ibXNnX2FkZF91MzIoYiwgImV4aXRfY29kZSIs
IGluLT5leGl0X2NvZGUpOwogCiAJaWYgKCFhdmxfaXNfZW1wdHkoJmluLT5lcnJvcnMuYXZsKSkg
ewogCQlzdHJ1Y3QgYmxvYm1zZ19saXN0X25vZGUgKnZhcjsKZGlmZiAtLWdpdCBhL3NlcnZpY2Uv
aW5zdGFuY2UuaCBiL3NlcnZpY2UvaW5zdGFuY2UuaAppbmRleCA0MmNjNGJlLi4wNWEyZmMzIDEw
MDY0NAotLS0gYS9zZXJ2aWNlL2luc3RhbmNlLmgKKysrIGIvc2VydmljZS9pbnN0YW5jZS5oCkBA
IC02Miw2ICs2Miw3IEBAIHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlIHsKIAljaGFyICpzZWNjb21w
OwogCWNoYXIgKnBpZGZpbGU7CiAJaW50IHN5c2xvZ19mYWNpbGl0eTsKKwlpbnQgZXhpdF9jb2Rl
OwogCiAJdWludDMyX3QgdGVybV90aW1lb3V0OwogCXVpbnQzMl90IHJlc3Bhd25fdGltZW91dDsK
LS0gCjIuMjEuMCAoQXBwbGUgR2l0LTEyMi4yKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
