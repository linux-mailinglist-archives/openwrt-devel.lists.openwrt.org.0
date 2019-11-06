Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C04F1489
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:05:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sk8V2aQoRANJ5RRCjl1vJqFlWQhELoXtKgKGClnZd9E=; b=tpEht+V7b020rF
	CtYsjZoqWCL8vFTt6VxHX7lc36C7/xJ/jvKTkeCr77eli/NfU4/j06ihzFklp2xSPqjT7jPAD4oMw
	yC4sEj3ma2Exd12zXFw317IM06l+5nURVBwqSsjccF6C2uhVRihHdgCpbTBeFib21E6V6NxxlQ/Go
	lRI/yoRGdU1Y3ZjNpS2UbpJyM3+fzZKZ1uUqSoQ/8dRsBrcEobA8I/ZCvOPoB009Vsq267haLMoSK
	rFvvEkACwXGGDzg4WRFECQsyzVwd8eJeS7R0r1GSlFozH003Dr70th3lTHB2N2BfXuz3ey2En5ddp
	WbKyJsS0yfjw/33RxSbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJ88-0001TS-Kt; Wed, 06 Nov 2019 11:05:40 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJ7v-0001R1-R4
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:05:29 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F04556B27;
 Wed,  6 Nov 2019 12:05:23 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d6633924;
 Wed, 6 Nov 2019 12:05:14 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 12:05:08 +0100
Message-Id: <20191106110514.20413-4-ynezz@true.cz>
In-Reply-To: <20191106110514.20413-1-ynezz@true.cz>
References: <20191106110514.20413-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_030528_036984_FB4DD742 
X-CRM114-Status: UNSURE (   8.73  )
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
Subject: [OpenWrt-Devel] [PATCH 19.07 03/14] hostapd: Fix security problem
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogSGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+CgpUaGlzIGZpeGVzOgpDVkUt
MjAxOS0xMTU1NSAiRUFQLXB3ZCBtZXNzYWdlIHJlYXNzZW1ibHkgaXNzdWUgd2l0aCB1bmV4cGVj
dGVkIGZyYWdtZW50IgpodHRwczovL3cxLmZpL3NlY3VyaXR5LzIwMTktNS9lYXAtcHdkLW1lc3Nh
Z2UtcmVhc3NlbWJseS1pc3N1ZS13aXRoLXVuZXhwZWN0ZWQtZnJhZ21lbnQudHh0CgpUaGlzIHNo
b3XDtmxkIG5vdCBhZmZlY3QgT3BlbldydCBpbiB0aGUgZGVmYXVsdCBzZXR0aW5ncyBhcyB3ZSBk
byBub3QgdXNlCkVBUC1wd2QuCgpTaWduZWQtb2ZmLWJ5OiBIYXVrZSBNZWhydGVucyA8aGF1a2VA
aGF1a2UtbS5kZT4KKGNoZXJyeSBwaWNrZWQgZnJvbSBjb21taXQgOWYzNGJmNTFkNjBhMjM3Njk2
YjFkNGNjOWI1ZjQ4MzViOTVlN2VhMikKLS0tCiBwYWNrYWdlL25ldHdvcmsvc2VydmljZXMvaG9z
dGFwZC9NYWtlZmlsZSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBk
L01ha2VmaWxlIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvTWFrZWZpbGUKaW5k
ZXggZDA4NjZmNjcwYzBiLi4xOGU0ZWE0NDkwNmMgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvbmV0d29y
ay9zZXJ2aWNlcy9ob3N0YXBkL01ha2VmaWxlCisrKyBiL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNl
cy9ob3N0YXBkL01ha2VmaWxlCkBAIC03LDcgKzcsNyBAQAogaW5jbHVkZSAkKFRPUERJUikvcnVs
ZXMubWsKIAogUEtHX05BTUU6PWhvc3RhcGQKLVBLR19SRUxFQVNFOj03CitQS0dfUkVMRUFTRTo9
OAogCiBQS0dfU09VUkNFX1VSTDo9aHR0cDovL3cxLmZpL2hvc3RhcC5naXQKIFBLR19TT1VSQ0Vf
UFJPVE86PWdpdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
