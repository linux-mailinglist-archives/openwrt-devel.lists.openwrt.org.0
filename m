Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360E7715F7
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 12:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zW19UtiLUGNave/5EFgsX2YGA9uyZ4ItcH3TAEP6q5g=; b=QCmy7rWvmZs28f
	FswEh+Lj/+hAUW8FDUxOeUFwROdxNEdAOn7h+U1kUqq04i5J5dS1Ug1ON0/RcJavpIShzoRDtx+i+
	fBYQ1OeHYaJljNMbzxDugLtd67r1GPdFyVdpvTzkjKuzvNvrEgSsK6/ne+zAV/UoWp/LLFXc321+i
	rO1gWV5LvKJ7dmWt3qgu9Cj2wbNOuCQHFxcpdjwc5cdzWzQmxz3diI3XZH9PVjbj1QbsSZQzdnVWd
	SKR4kHyx8c53tciwZRjMvav9mibHz/nKClywcSVRSTOOfDOYG8xSwjvtUyi6OhWAGYZGrb1Sd8BEI
	XK/mvpn8QsOz4oaHPBkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpryu-0007tN-Mu; Tue, 23 Jul 2019 10:25:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hprye-0007fA-6n
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 10:25:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E589E3C67;
 Tue, 23 Jul 2019 12:24:58 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id aa90040e;
 Tue, 23 Jul 2019 12:24:52 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 23 Jul 2019 12:24:51 +0200
Message-Id: <20190723102452.30621-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_032500_402061_BFB23A94 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] base-files: implement generic
 service_running
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

RFJZIGlzIGdvb2QsIG90aGVyd2lzZSB3ZSdyZSBnb2luZyB0byBzdWZmZXIgd2l0aCBhIGNvcHkm
cGFzdGUgZGlzZWFzZQppbiB0aGUgaW5pdCBzY3JpcHRzLgoKU2lnbmVkLW9mZi1ieTogUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRj
L3JjLmNvbW1vbiB8IDkgKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2V0
Yy9yYy5jb21tb24gYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRjL3JjLmNvbW1vbgppbmRl
eCA3NWRiZWVkZjM0ZDQuLjNiZDM4MmFlMjdhYyAxMDA3NTUKLS0tIGEvcGFja2FnZS9iYXNlLWZp
bGVzL2ZpbGVzL2V0Yy9yYy5jb21tb24KKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2V0
Yy9yYy5jb21tb24KQEAgLTk1LDcgKzk1LDExIEBAIHNlcnZpY2VfZGF0YSgpIHsKIH0KIAogc2Vy
dmljZV9ydW5uaW5nKCkgewotCXJldHVybiAwCisJWyAtbiAiJFVTRV9QUk9DRCIgXSB8fCByZXR1
cm4gMAorCisJbG9jYWwgc2VydmljZT0iJHsxOi0kKGJhc2VuYW1lICRpbml0c2NyaXB0KX0iCisJ
bG9jYWwgaW5zdGFuY2U9IiR7MjotKn0iCisJcHJvY2RfcnVubmluZyAiJHNlcnZpY2UiICIke2lu
c3RhbmNlfSIgIiRAIgogfQogCiAke0lOSVRfVFJBQ0U6K3NldCAteH0KQEAgLTEwNCw2ICsxMDgs
OSBAQCAke0lOSVRfVFJBQ0U6K3NldCAteH0KIAogWyAtbiAiJFVTRV9QUk9DRCIgXSAmJiB7CiAJ
RVhUUkFfQ09NTUFORFM9IiR7RVhUUkFfQ09NTUFORFN9IHJ1bm5pbmcgdHJhY2UiCisJRVhUUkFf
SEVMUD0iXAorCXJ1bm5pbmcJQ2hlY2sgaWYgc2VydmljZSBpcyBydW5uaW5nCisJIgogCiAJLiAk
SVBLR19JTlNUUk9PVC9saWIvZnVuY3Rpb25zL3Byb2NkLnNoCiAJYmFzZXNjcmlwdD0kKHJlYWRs
aW5rICIkaW5pdHNjcmlwdCIpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
