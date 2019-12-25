Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C2212A719
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Dec 2019 10:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jnsywbw10XCRk41WQ6EJt2+JKg+xn2aEHOO3s1ULBUw=; b=EEWqcPC1e0u/Zi74Gm3IDeefqB
	M6VPPIzUxmqFKthnNQWkqUE7yWxsfY01HFwsNxJYP7wN6U69CFDyaKiVYM0HTBmNvXGRsQ/xlFixc
	AUwbOGRgL332o9PR7IfYwZVQMma7TOLyoQxksSiPocwy4ewiR2GoA+3M25OCG/yuDc4WNSK8hon2I
	+sOvjfP6KKs60jjqB42/KToaWp8a2wx5tYvsJzk1K/+jsXvE/PtIhQrTUCwLW+dxNp3M7g0x87oxm
	PvUYR7RZWrwgR8I63ipc0p5bf11tdErq/cGQV8h99SNjl8YCZ/aPX+jhS9YjhKP/a3RfdW1w4D1dl
	LFQPhK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik3HP-0005uN-V4; Wed, 25 Dec 2019 09:48:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik3HF-0005tv-TQ
 for openwrt-devel@lists.openwrt.org; Wed, 25 Dec 2019 09:48:28 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 12DD946F9;
 Wed, 25 Dec 2019 10:48:21 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 9a5d388f;
 Wed, 25 Dec 2019 10:48:11 +0100 (CET)
Date: Wed, 25 Dec 2019 10:48:11 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20191225094811.GH70645@meh.true.cz>
References: <20191224180213.3542623-1-raj.khem@gmail.com>
 <20191224215051.GF70645@meh.true.cz>
 <CAMKF1sqyKBm0Yz=rtgL9JnPPRzyxfcemnuLpfV-SEQYqgTiFOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMKF1sqyKBm0Yz=rtgL9JnPPRzyxfcemnuLpfV-SEQYqgTiFOA@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_014826_101205_71CCD30A 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

S2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT4gWzIwMTktMTItMjQgMTQ6MTU6MjZdOgoKPiBP
biBUdWUsIERlYyAyNCwgMjAxOSBhdCAxOjUxIFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+IAo+ID4gS2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT4gWzIwMTktMTIt
MjQgMTA6MDI6MTNdOgo+ID4KPiA+IEhpLAo+ID4KPiA+IHVzZSAiUEFUQ0ggbGlidWJveCIgc3Vi
amVjdCBwcmVmaXgsIGJlY2F1c2UgdGhlcmUgaXMgbm8gYmxvYm1zZy5jIGZpbGUgaW4KPiA+IHRo
ZQo+ID4gbWFpbiB0cmVlLgo+ID4KPiA+ID4gRml4ZXMgZXJyb3I6ICdfX2J1aWx0aW5fc3RyY3B5
JyBvZmZzZXQgNiBmcm9tIHRoZSBvYmplY3QgYXQgJ2F0dHInIGlzCj4gPiBvdXQgb2YKPiA+ID4g
dGhlIGJvdW5kcyBvZiByZWZlcmVuY2VkIHN1Ym9iamVjdCAnbmFtZScgd2l0aCB0eXBlICd1aW50
OF90WzBdJyB7YWthCj4gPiA+ICd1bnNpZ25lZCBjaGFyWzBdJ30gYXQgb2Zmc2V0IDYgWy1XZXJy
b3I9YXJyYXktYm91bmRzXQoKV2hhdCBhYm91dCBmb2xsb3dpbmcgZml4WzFdPyBUaGUgdGFyZ2V0
IGhkci0+bmFtZSBidWZmZXIgaGFzIGFscmVhZHkgdGhlCnRlcm1pbmF0aW5nIDAgaW5jbHVkZWQg
YXMgYmxvYm1zZ19oZHJsZW4gaGFzIHN0cmxlbisxIGFuZCBibG9iX25ldygpIG1lbXNldHMKdGhl
IGJ1ZmZlciB0byAwLgoKMS4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtbGlidWJv
eC9jb21taXQvMzc3NWIzYWEyOGRlOGMyMGQ5NmI2ZjAyNzg2YTMyNzQyM2IwNzQ4YQoKRnJvbSAz
Nzc1YjNhYTI4ZGU4YzIwZDk2YjZmMDI3ODZhMzI3NDIzYjA3NDhhIE1vbiBTZXAgMTcgMDA6MDA6
MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/UGV0cj0yMD1DNT1BMHRldGlhcj89IDx5bmV6ekB0cnVl
LmN6PgpEYXRlOiBXZWQsIDI1IERlYyAyMDE5IDEwOjI3OjU5ICswMTAwClN1YmplY3Q6IFtQQVRD
SF0gYmxvYm1zZzogZml4IGFycmF5IG91dCBvZiBib3VuZHMgR0NDIDEwIHdhcm5pbmcKTUlNRS1W
ZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CkNvbnRl
bnQtVHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQKCkZpeGVzIGZvbGxvd2luZyB3YXJuaW5nIHJlcG9y
dGVkIGJ5IEdDQyAxMC4wLjAgMjAxOTEyMDM6CgogYmxvYm1zZy5jOjIzNDoyOiBlcnJvcjogJ3N0
cmNweScgb2Zmc2V0IDYgZnJvbSB0aGUgb2JqZWN0IGF0ICdhdHRyJyBpcyBvdXQgb2YKdGhlIGJv
dW5kcyBvZiByZWZlcmVuY2VkIHN1Ym9iamVjdCAnbmFtZScgd2l0aCB0eXBlICd1aW50OF90WzBd
JyB7YWthCid1bnNpZ25lZCBjaGFyWzBdJ30gYXQgb2Zmc2V0IDYgWy1XZXJyb3I9YXJyYXktYm91
bmRzXQogICAyMzQgfCAgc3RyY3B5KChjaGFyICopIGhkci0+bmFtZSwgKGNvbnN0IGNoYXIgKilu
YW1lKTsKICAgICAgIHwgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn4KCiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gYmxvYm1zZy5jOjE2OgogYmxvYm1zZy5oOjQy
OjEwOiBub3RlOiBzdWJvYmplY3QgJ25hbWUnIGRlY2xhcmVkIGhlcmUKICAgIDQyIHwgIHVpbnQ4
X3QgbmFtZVtdOwogICAgICAgfCAgICAgICAgICBefn5+CgpSZXBvcnRlZC1ieTogS2hlbSBSYWog
PHJhai5raGVtQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpA
dHJ1ZS5jej4KLS0tCiBibG9ibXNnLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9ibG9ibXNnLmMgYi9ibG9ibXNnLmMK
aW5kZXggNDhkYmE4MTU2ZDU4Li5lZjY4ZDhhZTU5ZjcgMTAwNjQ0Ci0tLSBhL2Jsb2Jtc2cuYwor
KysgYi9ibG9ibXNnLmMKQEAgLTI0MCw3ICsyNDAsNyBAQCBibG9ibXNnX25ldyhzdHJ1Y3QgYmxv
Yl9idWYgKmJ1ZiwgaW50IHR5cGUsIGNvbnN0IGNoYXIKKm5hbWUsIGludCBwYXlsb2FkX2xlbiwg
dgogCWF0dHItPmlkX2xlbiB8PSBiZTMyX3RvX2NwdShCTE9CX0FUVFJfRVhURU5ERUQpOwogCWhk
ciA9IGJsb2JfZGF0YShhdHRyKTsKIAloZHItPm5hbWVsZW4gPSBjcHVfdG9fYmUxNihuYW1lbGVu
KTsKLQlzdHJjcHkoKGNoYXIgKikgaGRyLT5uYW1lLCAoY29uc3QgY2hhciAqKW5hbWUpOworCW1l
bWNweShoZHItPm5hbWUsIG5hbWUsIG5hbWVsZW4pOwogCXBhZF9lbmQgPSAqZGF0YSA9IGJsb2Jt
c2dfZGF0YShhdHRyKTsKIAlwYWRfc3RhcnQgPSAoY2hhciAqKSAmaGRyLT5uYW1lW25hbWVsZW5d
OwogCWlmIChwYWRfc3RhcnQgPCBwYWRfZW5kKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
