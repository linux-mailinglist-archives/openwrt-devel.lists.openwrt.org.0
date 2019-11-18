Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4842DFFD98
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 05:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wlDXyONuCo8i3Agot5J6ICVr/iIhJ8g7+BcziVHf2UE=; b=JfRNmN1XgXocLBTB4Oimy1lXIt
	9pZzOcYqdDU7zNqwkmp7wyrrX03qpeGTqy2+AGFVCt8whO06bCvjcoPiF8dfBgP6vfmuOsi9OIvy9
	OOuU8M8qxpMmqy4/y6jwoMcaSCHUJPBzScW53BVUVryYiP0s9P050jcSDHpVBoZI0nwtbDPq0Wu4l
	3CZ8H1fI4q9i5pi5+OoGzalOM6veeHJnoM1wt7tcW71Sf0OawA24qBkJvH4f0vKmHLw3/ZDw5ZNC8
	QIM+pjHG41WoCFdfa0dHh5GDFKp/iaug3NR8CKDYocXUdnUaTOpCIVlD0692uEP98o0oIa7TJO/Qi
	ilR2t0Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWZ0a-0006Dz-Jg; Mon, 18 Nov 2019 04:51:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWZ0S-0006Dh-PX
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 04:51:22 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D34AF4E27;
 Mon, 18 Nov 2019 05:51:15 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f920ee9f;
 Mon, 18 Nov 2019 05:51:05 +0100 (CET)
Date: Mon, 18 Nov 2019 05:51:05 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20191118045105.GA19872@meh.true.cz>
References: <20191117225937.5599-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191117225937.5599-1-hauke@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_205120_979355_DF3AF084 
X-CRM114-Status: UNSURE (   8.13  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] wireless-regdb: Make it build with
 python2
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

SGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IFsyMDE5LTExLTE3IDIzOjU5OjM3XToK
Cj4gVGhpcyBiYWNrcG9ydHMgYSBwYXRjaCB0byBidWlsZCBpdCB3b3JrIHdpdGggcHl0aG9uMiBp
biBhZGRpdGlvbiB0bwo+IHB5dGhvbjMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSGF1a2UgTWVocnRl
bnMgPGhhdWtlQGhhdWtlLW0uZGU+CgpBY2tlZC1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4KCj4gQWZ0ZXIgdGhpcyBwYXRjaCB3ZW50IGludG8gbWFzdGVyIEkgd291bGQgbGlrZSB0
byBiYWNrcG9ydCBhbGwgdGhlIAo+IGNoYW5nZXMgZm9yIHdpcmVsZXNzLXJlZ2RiIGZyb20gbWFz
dGVyIHRvIE9wZW5XcnQgMTkuMDcuCj4gVGhlcmUgYXJlIGFscmVhZHkgc29tZSBjaGFuZ2VzIHRv
IHRoZSByZWd1bGF0b3J5IHJ1bGVzIGluIHRoaXMgZGF0YWJhc2UgCj4gYW5kIEkgd291bGQgbGlr
ZSB0byBzdGF5IGNsb3NlIHRvIHRoZSBjdXJyZW50IGxlZ2FsIGd1aWRlbGluZXMgZm9yCj4gT3Bl
bldydCAxOS4wNyBhcyB3ZWxsLgoKTWFrZXMgc2Vuc2UuCgotLSB5bmV6egoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
