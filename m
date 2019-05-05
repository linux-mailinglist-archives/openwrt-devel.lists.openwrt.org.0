Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3223114205
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 21:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p08JVjXisE1Kagmyywn9HjPdn7uRSfqjqEwiAwhrtTo=; b=KVwRDnc/8igDXh8FyFyibe9oFU
	9QPyHG4k993IiIrheHAZyBb17vkSD1GbGx410bKQAovnJlkKyQMi0CNm0fPvFsU/kRtjVXp/+2Sdw
	sQtmNA7tpzo9eoiALCRBuA8QtEC36kqObohpPu/JKTgvUGMeYa2iFFY4dSrw9L9ILMubjhn7f1y9h
	NoxJ3taMzGZr+NGQu2mjrX8RGaPLzunLjxOGo2CUZXhHn0GKuuZwf0qKcMOTyKUKIGRl8RondVq2y
	pEw0VsA0d9gttpBT2ZWCdlrgtC7fK3cKIlIyue4Z5wVtFdlTeEcQC4yclKwLyVOQvJlvsaWzG2oyL
	4zzfn6Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNMUj-0001Nk-UD; Sun, 05 May 2019 19:08:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNMUc-0001NR-6Z
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 19:08:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 519563DDF;
 Sun,  5 May 2019 21:08:06 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c656795f;
 Sun, 5 May 2019 21:08:04 +0200 (CEST)
Date: Sun, 5 May 2019 21:08:04 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190505190804.GA81826@meh.true.cz>
References: <20190501170520.4733-1-rosenp@gmail.com>
 <20190503171216.GA29467@meh.true.cz>
 <CAKxU2N-yN3BqJD3asR7V7rO7Bpxq9aO+4ciKtj03z+KBTx5E8A@mail.gmail.com>
 <CAKxU2N_tgA=nWGaEM4UR0xDVtATQ18NetoG3en7TR1YraENs9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N_tgA=nWGaEM4UR0xDVtATQ18NetoG3en7TR1YraENs9Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_120810_399968_37D57D8E 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] elfutils: Fix compile with uClibc-ng
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDE5LTA1LTA1IDExOjI3OjQ5XToKCj4g
T24gRnJpLCBNYXkgMywgMjAxOSBhdCAxMTowMCBBTSBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gRnJpLCBNYXkgMywgMjAxOSBhdCAxMDoxMiBBTSBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiB3cm90ZToKPiA+ID4KPiA+ID4gUm9zZW4gUGVuZXYg
PHJvc2VucEBnbWFpbC5jb20+IFsyMDE5LTA1LTAxIDEwOjA1OjIwXToKPiA+ID4KPiA+ID4gSGks
Cj4gPiA+Cj4gPiA+ID4gUHJvYmFibHkgZ2xpYmMgdG9vLiBhcmdwX2hlbHAgdGFrZXMgYSBjaGFy
ICouIG5vdCBjb25zdCBjaGFyICouCj4gPiA+Cj4gPiA+IEknbSB3b25kZXJpbmcgaWYgd2UgbmVl
ZCB0byBjYXJ5IGFub3RoZXIgcGF0Y2ggZm9yZXZlciwgdGh1cyBpZiBpdCB3b3VsZG4ndCBiZQo+
ID4gPiBiZXR0ZXIgdG8gYmFja3BvcnQgdXBzdHJlYW1lZCBwYXRjaCBhbmQvb3IgYnVtcCB0byBm
aXhlZCB1cHN0cmVhbSB2ZXJzaW9uLgo+Cj4gPiBKdXN0IHNlbnQgdXBzdHJlYW0uCj4KPiBUaGlz
IHdhcyBhY2NlcHRlZCB1cHN0cmVhbS4KCk5pY2UsIHRoYW5rcy4gSSd2ZSB1cGRhdGVkIHRoZSBj
b250ZW50IG9mIHRoZSBwYXRjaCB0byBtYXRjaCB0aGF0IGluIHVwc3RyZWFtCmFuZCBtZXJnZWQg
dGhhdCBpbnRvIG15IHN0YWdpbmcgdHJlZS4KCjEuIGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLzky
ZWUxMmM3YzEwCgotLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
