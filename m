Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D202EF219
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVn86fuuaHfAahsvYNDUmHNUGuGWL77ern8yZ13Uouw=; b=F61KllRB0gkT9M
	O9YvLgkx8t7dnWWgOxS0e6AuCksYISumay66BkhspFkxfUTUeCF0t4CuT5a5f4NH8OHNUBjb7+c15
	u5ZxQ6ndJnJPEVbknO9JV5z8S7BclEfsa894MDDTkmeNQESdj0vOg5VDdDaGPC3gETZF5pUZnnq8W
	SqnEioTaAq5ES9nJa4sCKzxjadt7BGc0cH2dNvVJGkd8G0zH8tc0bZcGQWnYdxVrjvGjLmx53OKJ4
	2M5GXz3RVUbZ12qaBaLoVc8BZR+6u9zQSCESSYcCbXSy3Ow2p+8XtSZBNiwo2eGdyMpv9Mjdi7J77
	+uNJiB8M8uCHPbZBZp4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmsT-0002Bu-PX; Tue, 05 Nov 2019 00:39:21 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqP-00086u-7j
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:14 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A9AEE4D84;
 Tue,  5 Nov 2019 01:37:10 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 111ef809;
 Tue, 5 Nov 2019 01:37:01 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:47 +0100
Message-Id: <20191105003657.16540-9-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163713_438950_9328408E 
X-CRM114-Status: UNSURE (   5.55  )
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
Subject: [OpenWrt-Devel] [PATCH uci 08/18] tests: shunit2: run all tests
 under Valgrind by default
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

VGhlIG1vcmUgdGVzdHMsIHRoZSBiZXR0ZXIuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFy
IDx5bmV6ekB0cnVlLmN6PgotLS0KIHRlc3RzL3NodW5pdDIvdGVzdHMuc2ggfCAyICsrCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvc2h1bml0Mi90
ZXN0cy5zaCBiL3Rlc3RzL3NodW5pdDIvdGVzdHMuc2gKaW5kZXggNzJjNDg3NDlmZWI2Li4wMGY1
NmM1ZTMxOTUgMTAwNzU1Ci0tLSBhL3Rlc3RzL3NodW5pdDIvdGVzdHMuc2gKKysrIGIvdGVzdHMv
c2h1bml0Mi90ZXN0cy5zaApAQCAtMTEsNiArMTEsOCBAQCBVQ0lfQklOPSR7VUNJX0JJTjotIi4u
L3VjaSJ9CiAJZWNobyAidWNpIGlzIG5vdCBwcmVzZW50LiIgPiYyCiAJcmV0dXJuIDEKIH0KK1ZB
TEdSSU5EPSJ2YWxncmluZCAtLXF1aWV0IC0tc2hvdy1sZWFrLWtpbmRzPWFsbCAtLWxlYWstY2hl
Y2s9ZnVsbCAtLXRyYWNrLW9yaWdpbnM9eWVzIgorVUNJX0JJTj0iJHtWQUxHUklORH0gJHtVQ0lf
QklOfSIKIFVDST0iJHtVQ0lfQklOfSAtYyAke0NPTkZJR19ESVJ9IC1wICR7Q0hBTkdFU19ESVJ9
IgogVUNJX1E9IiR7VUNJX0JJTn0gLWMgJHtDT05GSUdfRElSfSAtcCAke0NIQU5HRVNfRElSfSAt
cSIKIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
