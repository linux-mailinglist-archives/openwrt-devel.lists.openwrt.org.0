Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959A5178C67
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 09:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tdySsvmrjfm8dKQF9TyS7g0OeIhDmne1w6ZpuvmC11g=; b=GUOY+w15TioiraONJSw23Fd0H/
	hI06+oit8KT7B5U4V1kLzDFQ1TPBa8uf99PjKhAZgka2BNcoNg7PEtU32oJD6FIxK9yaQt1+mSBdp
	KMJh0EOBBJE3mxNRf54GNvtI7KLg73WpVoYR13R69826qZzdVfe9wMCFBQVRN+0ZeqiG/mj74VqGk
	H2HuPxm2Ll+GoMMXDZ7pAHhg99/2Dbt0galkvxFTJ5jtPekEvpW/jidmfQpSevHwAe0J2cYtqRpWK
	7rAvIlzdTYQ4wh4kIxhnMTDTIuiaSOahTXeEN1wpgTz550WeyDlBbrWvwjPDmWv22j5V2tB/fC0nW
	zvg8gRcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9PAL-0008L0-Rj; Wed, 04 Mar 2020 08:14:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9PA9-0008KU-4F
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 08:13:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F3D254347;
 Wed,  4 Mar 2020 09:13:48 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 633c1c7b;
 Wed, 4 Mar 2020 09:13:35 +0100 (CET)
Date: Wed, 4 Mar 2020 09:13:35 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <20200304081335.GB79862@meh.true.cz>
References: <20200303152136.13801-1-ynezz@true.cz>
 <20200303152136.13801-2-ynezz@true.cz>
 <d1def9f7-cd85-a865-601f-b55073e90736@linux-ipv6.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1def9f7-cd85-a865-601f-b55073e90736@linux-ipv6.be>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_001353_324441_B46D7D56 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] kernel: add kernel module for
 Sensirion SPS30 PMS
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

U3Rpam4gVGludGVsIDxzdGlqbkBsaW51eC1pcHY2LmJlPiBbMjAyMC0wMy0wNCAwMTo0ODozN106
Cgo+IE9uIDMvMDMvMjAyMCAxNzoyMSwgUGV0ciDFoHRldGlhciB3cm90ZToKPiA+Cj4gPiBBZGRz
IGludG8gNC4xOSBiYWNrcG9ydGVkIGtlcm5lbCBtb2R1bGUgZnJvbSA1LjEgZm9yIFNlbnNpcmlv
biBTUFMzMAo+ID4gcGFydGljdWxhdGUgbWF0dGVyIHNlbnNvciwgZm9yIGtlcm5lbCA1LjQgYmFj
a3BvcnRlZCBkZXBlbmRlbmN5IGZpeC4KPiA+Cj4gSSBoYXZlIG15IGRvdWJ0cyBhYm91dCB0aGUg
YmFja3BvcnQgZm9yIDQuMTkuCgpJJ3ZlIGFza2VkIHRoZSBzYW1lIHF1ZXN0aW9uIG15c2VsZiBh
bmQgZGVjaWRlZCB0byBwdXNoIGl0LiBJdCBkb2Vzbid0IGludm9sdmUKYW55IGFkZGl0aW9uYWwg
d29yayBkdXJpbmcga2VybmVsIGJ1bXBzIGFzIHRob3NlIGFyZSBzZXBhcmF0ZSBwYXRjaGVzLCBz
byBpdHMKanVzdCBnb2luZyB0byB0YWtlIHNvbWUgc21hbGwgYWRkaXRpb25hbCBkaXNrIHNwYWNl
IGFuZCBidWlsZCB0aW1lLgoKPiBJIHdvdWxkIHByZWZlciB0byBza2lwIGl0LCBhcyB3ZSdyZSBt
b3ZpbmcgbWFzdGVyIHRvIDUuNC4KCklmIHRoYXRzIHRoZSBvbmx5IHJlYXNvbiwgSSB3b3VsZCBs
aWtlIHRvIG1lcmdlIGl0IDotKQoKSSBzaW1wbHkgYXNzdW1lLCB0aGF0IHdlJ3JlIGdvaW5nIHRv
IGtlZXAgNC4xOSBpbiB0aGUgdHJlZSBmb3Igc29tZSB0aW1lLAphYm91dCBuZXh0IDYtMTIgbW9u
dGhzLiBJJ3ZlIGJhc2VkIHRoYXQgYXNzdW1wdGlvbiBvbiB0aGUgcmVjZW50IHNjaGVkdWxlZApy
ZW1vdmFsIG9mIDQuMTQgdHJlZXMuCgpTbyBmYXIgaXQncyBvbmx5IGtpcmt3b29kIGFuZCBtcGM4
NXh4IHN3aXRjaGVkIG92ZXIgdG8gNS40LCAyMSB0YXJnZXRzIG9uCjQuMTksIDE1IHN0aWxsIG9u
IDQuMTQuCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
