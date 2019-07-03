Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4499F5DE29
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 08:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:References:
	In-Reply-To:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xgh5GBITIa8tKW7WStPT4psyTEaOhRwrPs5YU7rbYOk=; b=FLaI/bNVi2cEoy
	58i6pDTH2cm4/uSUMC8ivRZVQI/d0JQFji4zm6xueJA1cQXTwTRooDxGCGOAP6XdI0jdUV7XsTy9F
	31kDnGXBRMyzUIBq6jYJGr5GN7t3hct84NR/L4YNG8grnZ+b2QQBcL4yrIoF6tNM9rp+e1DurXSwX
	KdxneLPXP9bYjkmDrSFV67tNSHkoweyywf1/UDSK57Lww93NDwWijPnOesPGhdSzjzDLcvZuwq4eC
	hM7FZlMBWb6gQYOuPPTneqLOYHgufl/dn19sH4hvtvwhnGA8ap4D7svjrlCSgi1If6+EHMudDJRcy
	bpHpPfYrsun3OaGo1OBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiYx1-0006Vs-3e; Wed, 03 Jul 2019 06:41:07 +0000
Received: from welho-filter3.welho.com ([83.102.41.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiYwp-0006VN-JR
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 06:40:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter3.welho.com (Postfix) with ESMTP id BCCF414F8;
 Wed,  3 Jul 2019 09:40:52 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter3.welho.com [::ffff:83.102.41.25]) (amavisd-new,
 port 10024)
 with ESMTP id IkLK_UOhl1R0; Wed,  3 Jul 2019 09:40:52 +0300 (EEST)
Received: from webmail.welho.com (unknown [83.102.41.100])
 by welho-smtp3.welho.com (Postfix) with ESMTP id EF7602309;
 Wed,  3 Jul 2019 09:40:49 +0300 (EEST)
MIME-Version: 1.0
Date: Wed, 03 Jul 2019 09:40:49 +0300
From: Hannu Nyman <hannu.nyman@iki.fi>
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Mail-Reply-To: hannu.nyman@iki.fi
In-Reply-To: <3fa1b7442d34cc603c073cae7a2f88e3@milecki.pl>
References: <4d8977dc-67df-f5cf-4a5f-ae1350a09aa0@iki.fi>
 <3fa1b7442d34cc603c073cae7a2f88e3@milecki.pl>
Message-ID: <82a7fdaa815a88fb079a0f41a7f5a1c4@iki.fi>
X-Sender: hannu.nyman@iki.fi
User-Agent: Roundcube Webmail/1.2.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_234055_803910_836C4CD3 
X-CRM114-Status: UNSURE (   6.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.25 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Lots of core packages fail in phase2(?)
 buildbot - maybe due to lua changes?
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
Reply-To: hannu.nyman@iki.fi
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAxOS0wNy0wMyAwOToxNywgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IE9uIDIwMTktMDct
MDMgMDY6NTksIEhhbm51IE55bWFuIHdyb3RlOgo+PiBJIGxvb2tlZCBhdCB0aGUgcGFja2FnZXMg
YnVpbGRib3QgZmFpbGxvZ3MgZm9yIE9wZW5XcnQgbWFzdGVyIGFuZCB0aGUgCj4+IHBhY2thZ2Ug
ZG93bmxvYWQgZGlyZWN0b3JpZXMsIGFuZCBub3RpY2VkIHRoYXQgcXVpdGUgYSBsb3Qgb2YgdGhl
IGNvcmUgCj4+IE9wZW5XcnQgcGFja2FnZXMgZmFpbCB0byBidWlsZCBpbiB0aGUgYnVpbGRib3Qg
YXQgdGhlIG1vbWVudCwgbGlrZSAKPj4gdWJveCwgdWJ1cywgZmlyZXdhbGwsIHVjaSwgbmV0aWZk
Li4uIGFuZCB0aGV5IGFyZSBhbHNvIG1pc3NpbmcgZnJvbSAKPj4gdGhlIHNuYXBzaG90IGRvd25s
b2FkIGRpcmVjdG9yaWVzLgo+PiAKPj4gRXhhbXBsZSBmYWlsbGxvZ3M6Cj4gCj4gVGhhdCBlcnJv
ciBsb2dzIGxvb2sgcXVpdGUgY29uZnVzaW5nLCBidXQgdGhlIGZhY3QgaXMgbGlidWJveCB3YXNu
J3QKPiBjb21waWxpbmcgYmVjYXVzZSBvZiBMdWEgNS4zIGhlYWRlciBpbnN0YWxsZWQgaW4gd3Jv
bmcgc3RhZ2luZwo+IGRpcmVjdG9yeS4KPiAKPiBQbGVhc2UgdHJ5Ogo+IGh0dHBzOi8vZ2l0Lm9w
ZW53cnQub3JnLz9wPW9wZW53cnQvb3BlbndydC5naXQ7YT1jb21taXRkaWZmO2g9NDdhOTg0NDc3
YjFkMzAwMDQ3YjMwMDE5NzFmMGFmMGUzNzFlYTllZQoKSG9wZWZ1bGx5IHRoYXQgY29tbWl0IGZy
b20gam93IGhhcyBmaXhlZCB0aGluZ3MuCgpJIGhhdmUgbmV2ZXIgaGFkIGFueSB0cm91YmxlIHdp
dGggbXkgb3duIGJ1aWxkcywgYXMgSSBkbyBub3QgYnVpbGQgbHVhIAo1LjMsIGJ1dCBhcyBidWls
ZG90IGJ1aWxkcyBhbGwgcGFja2FnZXMsIGl0IGhhcyB0cm91YmxlLiBMZXQncyBzZWUgd2hhdCAK
aGFwcGVucyBhdCB0aGUgYnVpbGRib3QuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
