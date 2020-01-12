Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29EB1386A3
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 14:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cm1N+AIzON/QWfTEIFAwEWgLeXbmO5MZuTird5yoA3Q=; b=tHdFRxZ9AVVCzf8LyzSdlO4w/2
	FJqeYv+FH7zrVf2HiUlppKRmY6fzToO/ceL7HqU7gLxjFMGeTbSkP3hWfAS6CrwB5k+oS4m7sz/KP
	vMGyTV5IkMh9iFuLj478f+dfQHK7FlQVg2mRiXdO19V7KWxM0nC1reh7WK3VULhDW8BkO+2feECbQ
	b6fu4jnOlQlsPs0eOVyr932zV/iUFI6DY0iR9Cho2k7tRvCkzll1+NSJjUn9P93zaA8RgDg14sXuK
	3PAB+fyLlh0zJWA0EtEeydny9oili+HVX/c1OMdxFZipjlRnZcASv+O79ZRkVe0VqOUbsxOixvSGy
	DEeln2sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqdCy-0004hh-MK; Sun, 12 Jan 2020 13:23:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqdCs-0004gI-QM
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 13:23:08 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7C4E04D97;
 Sun, 12 Jan 2020 14:23:04 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id da403006;
 Sun, 12 Jan 2020 14:22:53 +0100 (CET)
Date: Sun, 12 Jan 2020 14:22:53 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: juraj.vijtiuk@sartura.hr
Message-ID: <20200112132253.GG86978@meh.true.cz>
References: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
 <20200112114307.GE86978@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200112114307.GE86978@meh.true.cz>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_052307_005800_81CB1D17 
X-CRM114-Status: UNSURE (   3.13  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH][libubox] blobmsg: blobmsg_parse and
 blobmsg_parse_array oob read fixes
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
Cc: openwrt-devel@lists.openwrt.org, Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMjAtMDEtMTIgMTI6NDM6MDddOgoKPiBU
aG9zZSBjaGVja3MgYXJlIHJ1biBub3cgYXV0b21hdGljYWxseSBieSBDSSBhZnRlciBlYWNoIEdp
dCBwdXNoLgoKSSBkb24ndCBrbm93IGlmIGl0J3Mgb2J2aW91cyBob3cgdG8gdXNlIHRoZSB0ZXN0
cy9mdXp6aW5nIGluc2lkZSBsaWJ1Ym94IChhbmQKb3RoZXIgQyBwcm9qZWN0cyksIHNvIEkndmUg
d3JpdHRlbiBzb21ldGhpbmcgc21hbGxbMV0gYWJvdXQgdGhlIENJIGNoZWNrcyBhbmQKdXNlZCBs
aWJ1Ym94IGFzIGV4YW1wbGUuCgoxLiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1h
aWwvb3BlbndydC1kZXZlbC8yMDE5LURlY2VtYmVyLzAyMDgzMS5odG1sCgotLSB5bmV6egoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
