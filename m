Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0622523CF9
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 18:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLX7qWEsvdA9jDvNkmXlxD85FBtkN8SyLWALuC+EOks=; b=FzZK1ap+ZctiO8
	HSEMJPP0YT01ZGB+B6j5TaaX7scTOy6YEH3NNQOL00pAnhH/YpD8N2qSWd4mTNT/HXJCxIbihufi7
	YQv1tvPUYuGMZY03gcWnWRTBNp8qDxRqdtJ4scFQlwCIQaKmUm+b6QFFtnAzQ/DlVnc8P0xynxZ1H
	IpfJ87EDN3fjfvYLhh5Kdg/AncGyPxTe2YkKh5M+zNaKR1L8Z21rLuJS7ztNrsfNHCyFuBf4ubpiG
	GOArFQEUwdQFLc15o+vqDfqIxv5ZuxkQzDnTqqymoYwbOkIi5meWCBPMNMhRw3d3c9fAjHNHNpJh0
	2ZW7EgfCU1ZZ27rCwJTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkvj-0004nb-R5; Mon, 20 May 2019 16:14:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkv9-00049B-Gb
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 16:13:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D5CC44B33;
 Mon, 20 May 2019 18:13:49 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 126efb67;
 Mon, 20 May 2019 18:13:48 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 May 2019 18:13:24 +0200
Message-Id: <1558368805-19484-5-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558368805-19484-1-git-send-email-ynezz@true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_091351_694644_0B20AF26 
X-CRM114-Status: UNSURE (   9.26  )
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
Subject: [OpenWrt-Devel] [PATCH RFC 4/5] build: add urandom-seed to the
 default packages set
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

dXJhbmRvbS1zZWVkIGNvbnRlbnQgd2FzIHNwbGl0IGZyb20gYmFzZS1maWxlcyBpbnRvIHNlcGFy
YXRlIHBhY2thZ2Ugc28KaW4gb3JkZXIgdG8gcHJlc2VydmUgdGhlIGN1cnJlbnQgZnVuY3Rpb25h
bGl0eSB3ZSBuZWVkIHRvIGFkZCBpdCBiYWNrLgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlh
ciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBpbmNsdWRlL3RhcmdldC5tayB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvdGFyZ2V0Lm1rIGIvaW5jbHVkZS90YXJnZXQubWsKaW5kZXggNGYzYmQ0M2U2Y2I2Li4wZWNl
M2U1Njk0ODAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdGFyZ2V0Lm1rCisrKyBiL2luY2x1ZGUvdGFy
Z2V0Lm1rCkBAIC0xMyw3ICsxMyw3IEBAIF9fdGFyZ2V0X2luYz0xCiBERVZJQ0VfVFlQRT89cm91
dGVyCiAKICMgRGVmYXVsdCBwYWNrYWdlcyAtIHRoZSByZWFsbHkgYmFzaWMgc2V0Ci1ERUZBVUxU
X1BBQ0tBR0VTOj1iYXNlLWZpbGVzIGxpYmMgbGliZ2NjIGJ1c3lib3ggZHJvcGJlYXIgbXRkIHVj
aSBvcGtnIG5ldGlmZCBmc3Rvb2xzIHVjbGllbnQtZmV0Y2ggbG9nZAorREVGQVVMVF9QQUNLQUdF
Uzo9YmFzZS1maWxlcyBsaWJjIGxpYmdjYyBidXN5Ym94IGRyb3BiZWFyIG10ZCB1Y2kgb3BrZyBu
ZXRpZmQgZnN0b29scyB1Y2xpZW50LWZldGNoIGxvZ2QgdXJhbmRvbS1zZWVkCiAjIEZvciBuYXMg
dGFyZ2V0cwogREVGQVVMVF9QQUNLQUdFUy5uYXM6PWJsb2NrLW1vdW50IGZkaXNrIGxzYmxrIG1k
YWRtCiAjIEZvciByb3V0ZXIgdGFyZ2V0cwotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
