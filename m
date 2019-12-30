Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC50C12D3BC
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 20:08:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WP4dZgpyfrMkuSph0VzRVD1wyE6gOZuXBTXcQ/yUHfY=; b=JwC3EnXMeESy1eT4gc9l/W3K4b
	07RIk/vyFJmTv9fMXndWg9qmhGWQsDhBXKQUBaRYC4t5jQTQnfi8GYduNFYdTaNOFDuw3inMbE79k
	l/i889bCyMesOdhlIFg3XDtjP2nDjPYWZBbY0BJWHMM2X79/ni4HWb7x0hH2RyLhd0aP637NPCuYB
	8fFDkqYTVc506Sd8+XuXUvAndJLz+OdtTQeugOxpJc6hIjWXIIkaRfRDUb8RSY9o7081SuTyxABFv
	AKL34IBL4WkFbvzSXu8fxs+Y5vd5lVnwjl6Rg5VIW+OkDmbd9XnWFgnB566wz0Z9SU3jOVuWPXX0s
	9TEte3nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im0Oh-0006yY-V7; Mon, 30 Dec 2019 19:08:11 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im0OW-0006xo-8Y
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 19:08:03 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id ECFAA3EDA;
 Mon, 30 Dec 2019 20:07:56 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 312db8d5;
 Mon, 30 Dec 2019 20:07:46 +0100 (CET)
Date: Mon, 30 Dec 2019 20:07:46 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20191230190746.GI70184@meh.true.cz>
References: <mailman.21094.1577616584.2486.openwrt-devel@lists.openwrt.org>
 <20191229222123.GH70184@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191229222123.GH70184@meh.true.cz>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_110800_455132_9C9D2088 
X-CRM114-Status: UNSURE (   3.86  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Cc: Hannu Nyman <hannu.nyman@welho.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMTItMjkgMjM6MjE6MjNdOgoKPiBT
byBwZXJoYXBzIHRoaXMgaXMgc29tZXRoaW5nIENvcnRleC1BNzIgcmVsYXRlZD8KCkkndmUganVz
dCB0cmllZCBpdCB1bmRlciBRRU1VIDQuMi41MCB3aXRoOgoKICogbWFjaGluZTogdmlydAogKiBj
cHU6ICAgICBjb3J0ZXgtYTcyCiAqIHJvb3RmczogIGh0dHA6Ly9kb3dubG9hZHMub3BlbndydC5v
cmcvc25hcHNob3RzL3RhcmdldHMvYXJtdmlydC82NC9vcGVud3J0LWFybXZpcnQtNjQtcm9vdGZz
LXNxdWFzaGZzLmltZy5negogICAgICAgICAgICAoT3BlbldydCBTTkFQU0hPVCwgcjExODI5LWUz
ZTkzOWQ4ZTYpCgphbmQgdGhlIHJlc3VsdCBpcyBzYW1lIGFzIG9uIHg4Ni82NCwgSSdtIHVuYWJs
ZSB0byByZXByb2R1Y2UgdGhlIGlzc3VlOgoKIHJvb3RAT3BlbldydDovIyBzeXN1cGdyYWRlIGh0
dHA6Ly9kb3dubG9hZHMub3BlbndydC5vcmcvc25hcHNob3RzL3RhcmdldHMvYnJjbTI3MDgvYmNt
MjcxMS9vcGVud3J0LWJyY20yNzA4LWJjbTI3MTEtcnBpLTQtc3F1YXNoZnMtc3lzdXBncmFkZS5p
bWcuZ3oKIERvd25sb2FkaW5nICdodHRwOi8vZG93bmxvYWRzLm9wZW53cnQub3JnL3NuYXBzaG90
cy90YXJnZXRzL2JyY20yNzA4L2JjbTI3MTEvb3BlbndydC1icmNtMjcwOC1iY20yNzExLXJwaS00
LXNxdWFzaGZzLXN5c3VwZ3JhZGUuaW1nLmd6JwogQ29ubmVjdGluZyB0byAxNzYuOS40OC43Mzo4
MAogV3JpdGluZyB0byAnL3RtcC9zeXN1cGdyYWRlLmltZycKIC90bXAvc3lzdXBncmFkZS5pbWcg
IDEwMCUgfCoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKip8IDEyMDY3ayAgMDowMDowMCBF
VEEKIERvd25sb2FkIGNvbXBsZXRlZCAoMTIzNTcwNTAgYnl0ZXMpCiBEZXZpY2UgbGludXgsZHVt
bXktdmlydCBub3Qgc3VwcG9ydGVkIGJ5IHRoaXMgaW1hZ2UKIFN1cHBvcnRlZCBkZXZpY2VzOiBy
YXNwYmVycnlwaSw0LW1vZGVsLWIKIEltYWdlIGNoZWNrIGZhaWxlZC4KCnJvb3RAT3BlbldydDov
IyBlY2hvIHJhc3BiZXJyeXBpLDQtbW9kZWwtYiA+IC90bXAvc3lzaW5mby9ib2FyZF9uYW1lCgpy
b290QE9wZW5XcnQ6LyMgc3lzdXBncmFkZSAvdG1wL3N5c3VwZ3JhZGUuaW1nIAogU2F2aW5nIGNv
bmZpZyBmaWxlcy4uLgogQ29tbWVuY2luZyB1cGdyYWRlLiBDbG9zaW5nIGFsbCBzaGVsbCBzZXNz
aW9ucy4KIGtpbGxhbGw6IHRlbG5ldGQ6IG5vIHByb2Nlc3Mga2lsbGVkCiBTZW5kaW5nIFRFUk0g
dG8gcmVtYWluaW5nIHByb2Nlc3NlcyAuLi4gZG5zbWFzcSBuZXRpZmQgb2RoY3BkIG50cGQgdWJ1
c2QgdXJuZ2QgbG9nZCAKIFNlbmRpbmcgS0lMTCB0byByZW1haW5pbmcgcHJvY2Vzc2VzIC4uLiAK
IFN3aXRjaGluZyB0byByYW1kaXNrLi4uCiAuLi5zbmlwLi4uCgpTbyBJJ20gd29uZGVyaW5nIHdo
YXQgaXMgZ29pbmcgb24gdGhlcmUuCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
