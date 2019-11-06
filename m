Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C840F14C6
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTzQ+vH/nNQBl1YQmmbUM3HGGL1rOgKOK/jlG2G1eMs=; b=Itf6hBS5mhEtGf
	tjegu7BONREiEl2XyW64d5X/8cP34OqpJEwQpGSyCC6VSOd25vU4SpKVjMfYu3296uIRaonKKU6En
	bY40QzmgF1XLJmIIncv/KU6vw3wEwNtoxteK/q6eSRFpM4Ru65LTqxZwbcT6D8KARALSfY+Nznp43
	COfLGvYgCv281v/S9nDHyRufajTHZ29GMsbv4sAR2UPzdi3RELfnhpdm4RrNB9uVii8sPVHIARqCh
	3NL19D6QiwnRe9RLXJ1a6mM08C9t0qJAyQwvnkSBryS3Tz09nwDXgbszVIihlZZeZuK6tHC19lu1K
	huaeG7Dj8eDcqA5HlTWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJIK-0007Nl-5t; Wed, 06 Nov 2019 11:16:12 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJID-0007Mz-8Q
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:16:06 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iSJI5-000527-3Y; Wed, 06 Nov 2019 12:15:59 +0100
Date: Wed, 6 Nov 2019 12:15:47 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20191106111547.GA1410@makrotopia.org>
References: <20191106110514.20413-1-ynezz@true.cz>
 <20191106110514.20413-3-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106110514.20413-3-ynezz@true.cz>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_031605_296741_C517EF7D 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07 02/14] hostapd: Allow
 CONFIG_IEEE80211W for all but mini variant
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCk9uIFdlZCwgTm92IDA2LCAyMDE5IGF0IDEyOjA1OjA3UE0gKzAxMDAsIFBldHIg
xaB0ZXRpYXIgd3JvdGU6Cj4gRnJvbTogSGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+
Cj4gCj4gVGhpcyBjb21taXQgd2lsbCBhY3RpdmF0ZSBDT05GSUdfSUVFRTgwMjExVyBmb3IgYWxs
LCBidXQgdGhlIG1pbmkKPiB2YXJpYW50IHdoZW4gYXQgbGVhc3Qgb25lIGRyaXZlciBzdXBwb3J0
cyBpdC4gVGhpcyB3aWxsIGFkZCBpZWVlODAyMTF3Cj4gc3VwcG9ydCBmb3IgdGhlIG1lc2ggdmFy
aWFudCBmb3IgZXhhbXBsZS4KPiAKPiBGaXhlczogRlMjMjM5Nwo+IFNpZ25lZC1vZmYtYnk6IEhh
dWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRlPgo+IChjaGVycnkgcGlja2VkIGZyb20gY29t
bWl0IDFkNGRmNTJjMjE1ODc0YTUyMzhkZGVmN2JjY2YwMTM5Zjc3NThjMjQpCj4gLS0tCj4gIHBh
Y2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL01ha2VmaWxlIHwgMiArLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
cGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvTWFrZWZpbGUgYi9wYWNrYWdlL25ldHdv
cmsvc2VydmljZXMvaG9zdGFwZC9NYWtlZmlsZQo+IGluZGV4IDIzM2VmMzg5YWU1MC4uZDA4NjZm
NjcwYzBiIDEwMDY0NAo+IC0tLSBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL01h
a2VmaWxlCj4gKysrIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQvTWFrZWZpbGUK
PiBAQCAtNyw3ICs3LDcgQEAKPiAgaW5jbHVkZSAkKFRPUERJUikvcnVsZXMubWsKPiAgCj4gIFBL
R19OQU1FOj1ob3N0YXBkCj4gLVBLR19SRUxFQVNFOj05Cj4gK1BLR19SRUxFQVNFOj03Cj4gIAo+
ICBQS0dfU09VUkNFX1VSTDo9aHR0cDovL3cxLmZpL2hvc3RhcC5naXQKPiAgUEtHX1NPVVJDRV9Q
Uk9UTzo9Z2l0Cj4gCgpMb29rcyBsaWtlIHlvdSBmb3Jnb3QgdG8gYGdpdCBhZGRgLCBhbHNvIGlu
IHBhdGNoIDMgYW5kIDQuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
