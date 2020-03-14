Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3E0185657
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Mar 2020 22:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=12TxZxNDmKDX3S3Zp2NmJuGAEb/SWDAHnSL9O+mouKQ=; b=SvpFwA6G8h5atdC8sWb0loCHyt
	+OAToWZGT2kS0Zr9TMKFU2STqeXE67OyIUIXJSxS0NqyHZoRSVmPqC2NAoaeshFTo6oNsrCFSKUO7
	og018VUqEkwpLESTom15hFrWToOZlkSUERMu2Oh9lZtCdtpfoI2fKo7/ZcYmJ+z+DiCsb1ZQPGtAe
	lRYIsn0yjbhuE48KpifgUByw/Ij27eMCdwE057fciaI9B2IZR0HPMB0mMsnIG4u/xGOXB6ePLC1P6
	q+PcgG70nRcwJWqs9Fzlvnp1CPfTopdzCZ3NygRlgpoZIVEhs7UJBKvtQkpZ9BVEuVZVkCpxR33jR
	LpXGeB9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDECa-0003pI-IW; Sat, 14 Mar 2020 21:20:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDECR-0002yE-HD
 for openwrt-devel@lists.openwrt.org; Sat, 14 Mar 2020 21:20:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 11AE54766;
 Sat, 14 Mar 2020 22:19:56 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4278bd4c;
 Sat, 14 Mar 2020 22:19:42 +0100 (CET)
Date: Sat, 14 Mar 2020 22:19:42 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jo-Philipp Wich <jo@mein.io>
Message-ID: <20200314211942.GA59676@meh.true.cz>
References: <20200313143339.GA20674@meh.true.cz>
 <20200313145450.1962201-1-jo@mein.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313145450.1962201-1-jo@mein.io>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_142003_730317_54A64FE1 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] pkgconf: always retain -I and -L flags
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

Sm8tUGhpbGlwcCBXaWNoIDxqb0BtZWluLmlvPiBbMjAyMC0wMy0xMyAxNTo1NDo1MF06Cgo+IFRo
ZSBwa2djb25mIGZvcmsgZmlsdGVycyAtSSBhbmQgLUwgZmxhZyB2YWx1ZXMgZnJvbSAucGMgZmls
ZXMgd2hpY2ggbWF0Y2gKPiBwa2djb25mJ3MgYnVpbHRpbiBzeXN0ZW0gZGlyZWN0b3J5IHZhbHVl
Lgo+IAo+IER1cmluZyBjb25maWd1cmUsIHBrZ2NvbmYgZGVyaXZlcyB0aGUgZGVmYXVsdCBzeXN0
ZW0gaW5jbHVkZSBhbmQgbGlicmFyeQo+IHNlYXJjaCBwYXRoIHZhbHVlcyBmcm9tIGV4ZWNfcHJl
Zml4LCB3aGljaCBpcyBzZXQgdG8gc3RhZ2luZ19kaXIvaG9zdCBpbgo+IHRoZSBob3N0IHRvb2wg
YnVpbGQgcGhhc2UuCj4gCj4gRHVlIHRvIHRoYXQsIHBrZ2NvbmYgd2lsbCBkcm9wIGFsbCAtSSBh
bmQgLUwgZmxhZ3MgcG9pbnRpbmcgdG8KPiBzdGFnaW5nX2Rpci9ob3N0L2luY2x1ZGUgb3Igc3Rh
Z2luZ19kaXIvaG9zdC9saWIsIHVubGVzcyBpbnZva2VkIHdpdGgKPiAtLWtlZXAtc3lzdGVtLWNm
bGFncyBhbmQgLS1rZWVwLXN5c3RlbS1saWJzIHJlc3BlY3RpdmVseSwgYnJlYWtpbmcgb3VyCj4g
a2VybmVsIGxpYmVsZiBkaXNjb3ZlcnkgLyBzdGFjayB2YWxpZGF0aW9uIHdvcmthcm91bmRzLgo+
IAo+IEluIG9yZGVyIHRvIGluaGliaXQgdGhlIGZpbHRlcmluZywgYWRkIC0ta2VlcC1zeXN0ZW0t
Y2ZsYWdzIGFuZAo+IC0ta2VlcC1zeXN0ZW0tbGlicyB0byBvdXIgcGtnLWNvbmZpZyBzaGVsbCB3
cmFwcGVyLgo+IAo+IEZpeGVzOiBHSCMyODMyCj4gRml4ZXM6IDg2NzI5OGNmNDcgKCJ0b29scy9w
a2ctY29uZmlnOiBSZXBsYWNlIHdpdGggcGtnY29uZiIpCj4gUmVmOiBodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvcGlwZXJtYWlsL29wZW53cnQtZGV2ZWwvMjAyMC1NYXJjaC8wMjIxODIuaHRt
bAo+IFJlZjogaHR0cHM6Ly9naXQub3BlbndydC5vcmcvZmU0Mzk2OTMzNjIwMWYyY2M3ZDEwM2I2
OGZkNmU2NTk4OWJlZTE4NAo+IFNpZ25lZC1vZmYtYnk6IEpvLVBoaWxpcHAgV2ljaCA8am9AbWVp
bi5pbz4KClRoYW5rcyBmb3IgdHJhY2tpbmcgaXQgZG93biEKCkFja2VkLWJ5OiBQZXRyIMWgdGV0
aWFyIDx5bmV6ekB0cnVlLmN6PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
