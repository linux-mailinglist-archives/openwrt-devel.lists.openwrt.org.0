Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEF818A819
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 23:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8rq43jSYKK8IX666zLATrxK+F5tBzWBcDBWq1UxbTc=; b=NtVNjlmBFUAILW
	/9g8vsR9laWIxvU+56WYWwrPT6K1GNm0BZxGXeO82yDziBGqCGW/umNwjEsl24DRqlRBIkpFctPSa
	cwEGxxyEvZaMbxXbEJ8BmypFnPAeDHV1A7foRcEjB7YNsWWFa8/LeII8A6Q8AgnpW476QM+twlkuC
	zEZuuNd3CaZBwmlmnDdBsPxXEYCynpeoCQ+4KPGljiVZxqk9OeZl22jgisGIfRhXwgFkdxrIgbY8I
	chAoT30EBz7YHMzo14E/RHveGIZ3zVod4l/luChmB0cjGwmYSeDq3i4HNVnvGqIF3CG9Kuybqz2PQ
	LJI+7nqNCYJZBTUz9MYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhAT-000771-5w; Wed, 18 Mar 2020 22:28:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhA4-0006uZ-OW
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 22:27:42 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3A2EE4C17;
 Wed, 18 Mar 2020 23:27:37 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e5be2e60;
 Wed, 18 Mar 2020 23:27:24 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:06 +0100
Message-Id: <20200318222713.1495-3-ynezz@true.cz>
In-Reply-To: <20200318222713.1495-1-ynezz@true.cz>
References: <20200318222713.1495-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_152740_942601_E18FA35D 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/9] uboot-sunxi: add support for Olimex
 A64-Olinuxino
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

QWRkaW5nIFUtQm9vdCBpbWFnZSBmb3IgT2xpbWV4IEE2NC1PbGludXhpbm8uCgpTaWduZWQtb2Zm
LWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHBhY2thZ2UvYm9vdC91Ym9v
dC1zdW54aS9NYWtlZmlsZSB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9ib290L3Vib290LXN1bnhpL01ha2VmaWxlIGIv
cGFja2FnZS9ib290L3Vib290LXN1bnhpL01ha2VmaWxlCmluZGV4IDY5ZDVkOTI2OWIyZC4uMzVj
NDA5ODRiODc2IDEwMDY0NAotLS0gYS9wYWNrYWdlL2Jvb3QvdWJvb3Qtc3VueGkvTWFrZWZpbGUK
KysrIGIvcGFja2FnZS9ib290L3Vib290LXN1bnhpL01ha2VmaWxlCkBAIC0yNSw2ICsyNSwxNCBA
QCBkZWZpbmUgVS1Cb290L0RlZmF1bHQKICAgSElEREVOOj0xCiBlbmRlZgogCitkZWZpbmUgVS1C
b290L2E2NC1vbGludXhpbm8KKyAgQlVJTERfU1VCVEFSR0VUOj1jb3J0ZXhhNTMKKyAgTkFNRTo9
T2xpbWV4IEE2NC1PTGludVhpbm8KKyAgQlVJTERfREVWSUNFUzo9b2xpbWV4X2E2NC1vbGludXhp
bm8KKyAgREVQRU5EUzo9K1BBQ0tBR0VfdS1ib290LW9saW1leF9hNjQtb2xpbnV4aW5vOmFybS10
cnVzdGVkLWZpcm13YXJlLXN1bnhpCisgIFVFTlY6PWE2NAorZW5kZWYKKwogZGVmaW5lIFUtQm9v
dC9BMTAtT0xpbnVYaW5vLUxpbWUKICAgQlVJTERfU1VCVEFSR0VUOj1jb3J0ZXhhOAogICBOQU1F
Oj1BMTAgT0xpbnVYaW5vIExJTUUKQEAgLTI2MCw2ICsyNjgsNyBAQCBkZWZpbmUgVS1Cb290L1Np
bm92b2lwX0JQSV9NMl9VbHRyYQogZW5kZWYKIAogVUJPT1RfVEFSR0VUUyA6PSBcCisJYTY0LW9s
aW51eGlubyBcCiAJQTEwLU9MaW51WGluby1MaW1lIFwKIAlBMTMtT0xpbnVYaW5vIFwKIAlBMjAt
T0xpbnVYaW5vLUxpbWUgXAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
