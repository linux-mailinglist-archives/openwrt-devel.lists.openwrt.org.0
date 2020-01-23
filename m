Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B553D146B19
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 15:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTej6AGbKiafLjRlNJiIpuKrYuohZOPDlgw/MRLRAak=; b=VTUjNIzkjMsuy7
	jJcfJ4vQ0ce4LsEnHvXD0P8LRiG7KRtfdyu/nhA/G3DKQvig1yVoXpzcOEmfVFtzcn4arDzpeThb6
	VyO2F2D36i48NggQGYgDT4ZisH+nC5q7edqrkfIt92REHzNB0+E3tqnIIUkHnGQDaQ1pwdQFxJkwR
	jllIyvGcLTELKGps0kdDgLZTaOy19h6ZNJ0qT1w91kTHDpuWkrb7KHczGSEdnkEGXcjOMnvxZFw+G
	avhyv1wLZnz65slR66A4wJTeX29t2Qu2A4aZkHqU0SQjT64YZ8TPQprx1tHp3NvcTR3WVNQ8sJfSO
	rDTABvhpx9KIC6YjtDtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudLj-000668-34; Thu, 23 Jan 2020 14:20:47 +0000
Received: from max.feld.cvut.cz ([147.32.192.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudLX-00065U-6d
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 14:20:36 +0000
Received: from localhost (unknown [192.168.200.7])
 by max.feld.cvut.cz (Postfix) with ESMTP id BC78919F448D;
 Thu, 23 Jan 2020 15:20:32 +0100 (CET)
X-Virus-Scanned: IMAP STYX AMAVIS
Received: from max.feld.cvut.cz ([192.168.200.1])
 by localhost (styx.feld.cvut.cz [192.168.200.7]) (amavisd-new, port 10044)
 with ESMTP id LXX8MPRGfwaf; Thu, 23 Jan 2020 15:20:30 +0100 (CET)
Received: from localhost.localdomain (labsitronics.feld.cvut.cz
 [147.32.211.25])
 by max.feld.cvut.cz (Postfix) with ESMTP id 6117919F446D;
 Thu, 23 Jan 2020 15:20:30 +0100 (CET)
From: =?UTF-8?q?Ond=C5=99ej=20Votava?= <ondrej.votava@cvut.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 23 Jan 2020 15:20:04 +0100
Message-Id: <20200123142004.23483-1-ondrej.votava@cvut.cz>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
In-Reply-To: <20200120230504.GH69327@meh.true.cz>
References: <20200120230504.GH69327@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_062035_393247_D1FCABB0 
X-CRM114-Status: UNSURE (   7.98  )
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
Cc: ynezz@true.cz, =?UTF-8?q?Ond=C5=99ej=20Votava?= <ondrej.votava@cvut.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QWRkcyBmZWF0dXJlIHRvIHNob3cgZXhpdCBjb2RlIG9mIHByb2Nlc3NlcyBsYXVuY2hlZCBieSBw
cm9jZC4KVGhlIGV4aXQgY29kZSBpcyBzaG93biBmb3IgZmluaXNoZWQgcHJvY2VzcyB3aGVuIHVi
dXMncwpzZXJ2aWNlIGxpc3QgbWV0aG9kIGlzIGNhbGxlZC4KClRoZSBleGl0IGNvZGUgdmFsdWUg
aXMgY29tcHV0ZWQgYWNjb3JkaW5nIHRvIHdhaXRwaWQoMikKYW5kIGh0dHA6Ly90bGRwLm9yZy9M
RFAvYWJzL2h0bWwvZXhpdGNvZGVzLmh0bWwKClNpZ25lZC1vZmYtYnk6IE9uZMWZZWogVm90YXZh
IDxvbmRyZWoudm90YXZhQGN2dXQuY3o+Ci0tLQogc2VydmljZS9pbnN0YW5jZS5jIHwgMjIgKysr
KysrKysrKysrKysrKysrKysrKwogc2VydmljZS9pbnN0YW5jZS5oIHwgIDIgKysKIDIgZmlsZXMg
Y2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NlcnZpY2UvaW5zdGFuY2Uu
YyBiL3NlcnZpY2UvaW5zdGFuY2UuYwppbmRleCBhYmQxZjM0Li4zYWFkNDI2IDEwMDY0NAotLS0g
YS9zZXJ2aWNlL2luc3RhbmNlLmMKKysrIGIvc2VydmljZS9pbnN0YW5jZS5jCkBAIC01NjAsNiAr
NTYwLDI0IEBAIGluc3RhbmNlX2RlbGV0ZShzdHJ1Y3Qgc2VydmljZV9pbnN0YW5jZSAqaW4pCiAJ
c2VydmljZV9zdG9wcGVkKHMpOwogfQogCitzdGF0aWMgaW50CitpbnN0YW5jZV9leGl0X2NvZGUo
aW50IHJldCkKK3sKKwlpZiAoV0lGRVhJVEVEKHJldCkpIHsKKwkJcmV0dXJuIFdFWElUU1RBVFVT
KHJldCk7CisJfQorCisJaWYgKFdJRlNJR05BTEVEKHJldCkpIHsKKwkJcmV0dXJuIFNJR05BTExF
RF9PRkZTRVQgKyBXVEVSTVNJRyhyZXQpOworCX0KKworCWlmIChXSUZTVE9QUEVEKHJldCkpIHsK
KwkJcmV0dXJuIFdTVE9QU0lHKHJldCk7CisJfQorCisJcmV0dXJuIDE7Cit9CisKIHN0YXRpYyB2
b2lkCiBpbnN0YW5jZV9leGl0KHN0cnVjdCB1bG9vcF9wcm9jZXNzICpwLCBpbnQgcmV0KQogewpA
QCAtNTc0LDYgKzU5Miw3IEBAIGluc3RhbmNlX2V4aXQoc3RydWN0IHVsb29wX3Byb2Nlc3MgKnAs
IGludCByZXQpCiAKIAlERUJVRygyLCAiSW5zdGFuY2UgJXM6OiVzIGV4aXQgd2l0aCBlcnJvciBj
b2RlICVkIGFmdGVyICVsZCBzZWNvbmRzXG4iLCBpbi0+c3J2LT5uYW1lLCBpbi0+bmFtZSwgcmV0
LCBydW50aW1lKTsKIAorCWluLT5leGl0X2NvZGUgPSBpbnN0YW5jZV9leGl0X2NvZGUocmV0KTsK
IAl1bG9vcF90aW1lb3V0X2NhbmNlbCgmaW4tPnRpbWVvdXQpOwogCXNlcnZpY2VfZXZlbnQoImlu
c3RhbmNlLnN0b3AiLCBpbi0+c3J2LT5uYW1lLCBpbi0+bmFtZSk7CiAKQEAgLTEwOTEsNiArMTEx
MCw3IEBAIGluc3RhbmNlX2luaXQoc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgKmluLCBzdHJ1Y3Qg
c2VydmljZSAqcywgc3RydWN0IGJsb2JfYXR0ciAqCiAJaW4tPnByb2MuY2IgPSBpbnN0YW5jZV9l
eGl0OwogCWluLT50ZXJtX3RpbWVvdXQgPSA1OwogCWluLT5zeXNsb2dfZmFjaWxpdHkgPSBMT0df
REFFTU9OOworCWluLT5leGl0X2NvZGUgPSAwOwogCiAJaW4tPl9zdGRvdXQuZmQuZmQgPSAtMjsK
IAlpbi0+X3N0ZG91dC5zdHJlYW0uc3RyaW5nX2RhdGEgPSB0cnVlOwpAQCAtMTEyNCw2ICsxMTQ0
LDggQEAgdm9pZCBpbnN0YW5jZV9kdW1wKHN0cnVjdCBibG9iX2J1ZiAqYiwgc3RydWN0IHNlcnZp
Y2VfaW5zdGFuY2UgKmluLCBpbnQgdmVyYm9zZSkKIAlpZiAoaW4tPmNvbW1hbmQpCiAJCWJsb2Jt
c2dfYWRkX2Jsb2IoYiwgaW4tPmNvbW1hbmQpOwogCWJsb2Jtc2dfYWRkX3UzMihiLCAidGVybV90
aW1lb3V0IiwgaW4tPnRlcm1fdGltZW91dCk7CisJaWYgKCFpbi0+cHJvYy5wZW5kaW5nKQorCQli
bG9ibXNnX2FkZF91MzIoYiwgImV4aXRfY29kZSIsIGluLT5leGl0X2NvZGUpOwogCiAJaWYgKCFh
dmxfaXNfZW1wdHkoJmluLT5lcnJvcnMuYXZsKSkgewogCQlzdHJ1Y3QgYmxvYm1zZ19saXN0X25v
ZGUgKnZhcjsKZGlmZiAtLWdpdCBhL3NlcnZpY2UvaW5zdGFuY2UuaCBiL3NlcnZpY2UvaW5zdGFu
Y2UuaAppbmRleCA0MmNjNGJlLi5kN2I0MzE5IDEwMDY0NAotLS0gYS9zZXJ2aWNlL2luc3RhbmNl
LmgKKysrIGIvc2VydmljZS9pbnN0YW5jZS5oCkBAIC0yMSw2ICsyMSw3IEBACiAjaW5jbHVkZSAi
Li4vdXRpbHMvdXRpbHMuaCIKIAogI2RlZmluZSBSRVNQQVdOX0VSUk9SCSg1ICogNjApCisjZGVm
aW5lIFNJR05BTExFRF9PRkZTRVQgMTI4CiAKIHN0cnVjdCBqYWlsIHsKIAlib29sIHByb2NmczsK
QEAgLTYyLDYgKzYzLDcgQEAgc3RydWN0IHNlcnZpY2VfaW5zdGFuY2UgewogCWNoYXIgKnNlY2Nv
bXA7CiAJY2hhciAqcGlkZmlsZTsKIAlpbnQgc3lzbG9nX2ZhY2lsaXR5OworCWludCBleGl0X2Nv
ZGU7CiAKIAl1aW50MzJfdCB0ZXJtX3RpbWVvdXQ7CiAJdWludDMyX3QgcmVzcGF3bl90aW1lb3V0
OwotLSAKMi4yMS4wIChBcHBsZSBHaXQtMTIyLjIpCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
