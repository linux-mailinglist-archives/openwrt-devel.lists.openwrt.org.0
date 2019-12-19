Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A7412704F
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wO60C9u5tY0MuXB22EpKPIciy0T2Gsw8PbO18uZDtU=; b=rR6He08AYArlWF
	W9qaqfKPDQDwLutyG9xu7/B6VUOjvOAoIE7+UgFpC/8XO6wHPgNXiONDftUfaRi15f6/WYNjQY9Bp
	6U53YatpcwCguzVsoTM5iFbj1umaf7bvt92hWxk94sIfkLvvXiNyTd9b0sdB/fj3g4S0fgTovO3Gd
	nds4qX7I2x1DeTfAVe47JQmj0VZGt8udEzY+8R6UN0Bq6F6X4xeqUj+7TuGeLnl4+bsj45c2S2FbS
	e4y0Up/pdePZnC7TALjZMHstObjwXcwGFl47KLwAvtKemmr6UFZ+mQeFNdoRY/W65Hw5IXEW8UMGU
	sUT3bqAuqX+av0Umnjxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3uz-0004rw-OL; Thu, 19 Dec 2019 22:05:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3uH-0003XS-EL
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:04:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C11194B90;
 Thu, 19 Dec 2019 23:04:27 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 89f3a5a9;
 Thu, 19 Dec 2019 23:04:18 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:04:13 +0100
Message-Id: <20191219220421.22206-2-ynezz@true.cz>
In-Reply-To: <20191219220421.22206-1-ynezz@true.cz>
References: <20191219220421.22206-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_140429_705369_E5E025BF 
X-CRM114-Status: UNSURE (   6.84  )
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
Subject: [OpenWrt-Devel] [PATCH ucert 1/9] cmake: add proper include and
 library dependencies
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

T3RoZXJ3aXNlIGl0J3Mgbm90IHBvc3NpYmxlIHRvIGNvbXBpbGUgaXQgcHJvcGVybHkgaWYgdGhl
IGRlcGVuZGVuY2llcwphcmUgbm90IGluc3RhbGxlZCBpbiB0aGUgc3RhbmRhcmQgaW5jbHVkZS9s
aWJyYXJpZXMgcGF0aHMuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PgotLS0KIENNYWtlTGlzdHMudHh0IHwgMTIgKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0NNYWtlTGlz
dHMudHh0IGIvQ01ha2VMaXN0cy50eHQKaW5kZXggNGM4MTE4NGNhZjgyLi4xNDg4OGFjMzgxMzUg
MTAwNjQ0Ci0tLSBhL0NNYWtlTGlzdHMudHh0CisrKyBiL0NNYWtlTGlzdHMudHh0CkBAIC01LDcg
KzUsMTMgQEAgQUREX0RFRklOSVRJT05TKC1PcyAtZ2dkYiAtV2FsbCAtLXN0ZD1nbnU5OSAtV21p
c3NpbmctZGVjbGFyYXRpb25zKQogCiBTRVQoQ01BS0VfU0hBUkVEX0xJQlJBUllfTElOS19DX0ZM
QUdTICIiKQogCi1maW5kX2xpYnJhcnkoanNvbiBOQU1FUyBqc29uLWMganNvbikKK0ZJTkRfUEFU
SCh1Ym94X2luY2x1ZGVfZGlyIE5BTUVTIGxpYnVib3gvdXNvY2suaCkKK0ZJTkRfUEFUSChqc29u
Y19pbmNsdWRlX2RpciBOQU1FUyBqc29uLWMvanNvbi5oKQorSU5DTFVERV9ESVJFQ1RPUklFUygk
e3Vib3hfaW5jbHVkZV9kaXJ9ICR7anNvbmNfaW5jbHVkZV9kaXJ9KQorCitGSU5EX0xJQlJBUlko
dWJveCBOQU1FUyB1Ym94KQorRklORF9MSUJSQVJZKGJsb2Jtc2dfanNvbiBOQU1FUyBibG9ibXNn
X2pzb24pCitGSU5EX0xJQlJBUlkoanNvbiBOQU1FUyBqc29uLWMganNvbikKIAogSUYoVUNFUlRf
SE9TVF9CVUlMRCkKIEFERF9ERUZJTklUSU9OUygtRFVDRVJUX0hPU1RfQlVJTEQpCkBAIC0xOSwx
MCArMjUsMTAgQEAgRU5ESUYoKQogQUREX0VYRUNVVEFCTEUodWNlcnQgdWNlcnQuYyB1c2lnbi1l
eGVjLmMpCiBJRihVQ0VSVF9GVUxMKQogQUREX0RFRklOSVRJT05TKC1EVUNFUlRfRlVMTCkKLVRB
UkdFVF9MSU5LX0xJQlJBUklFUyh1Y2VydCB1Ym94IGJsb2Jtc2dfanNvbiAke2pzb259KQorVEFS
R0VUX0xJTktfTElCUkFSSUVTKHVjZXJ0ICR7dWJveH0gJHtibG9ibXNnX2pzb259ICR7anNvbn0p
CiBFTFNFKCkKIEFERF9ERUZJTklUSU9OUygtRFVDRVJUX1NUUklQX01FU1NBR0VTKQotVEFSR0VU
X0xJTktfTElCUkFSSUVTKHVjZXJ0IHVib3gpCitUQVJHRVRfTElOS19MSUJSQVJJRVModWNlcnQg
JHt1Ym94fSkKIEVORElGKCkKIAogSU5TVEFMTChUQVJHRVRTIHVjZXJ0IFJVTlRJTUUgREVTVElO
QVRJT04gYmluKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
