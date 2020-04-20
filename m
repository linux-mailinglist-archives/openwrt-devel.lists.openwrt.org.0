Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9551B0DA1
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 16:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7rukgjkloS/VOHdLQ9w5YeDqXEaSzSV3akoyZI+ThY=; b=ITqwaypd80syRx
	FB2u9eq2pO9dBsZaY8Igm25ATMVoYGABH24a5oJzfV/+ru9j9w233rBqKcO9CXezxoTFfZzZxD8La
	xG8PyRLOn6b26uxNyT+KT7lwAnEen9JjW3fTRvmevsebY9h+Y/nX2WoJJViOZMvvt7Gznopav3hY7
	S2VfrlLnI1ReuDRXcUr8emuBBNrob4jCM1WjAPZ95XD9bY8u1i/aJhaQdYq4O0FzU2P9eqEJWB6GM
	zElPv9fLFojrS/kolTL2yrrSNU7dI73Jo4W160qL7VNwNPaJNEycXscV4HcBMh1cTtm+J3PPaOpmL
	ymj/MU1j8JyW31rIeyaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWzI-0006zt-3n; Mon, 20 Apr 2020 14:01:28 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWz9-0006y8-0c
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 14:01:20 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 646E9600C0;
 Mon, 20 Apr 2020 16:01:17 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 646E9600C0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587391277; bh=GQqUKasTg05rmbNEreak2FQ7VB49e2+QXHWSOjhkeF8=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=WxYMuBbqHn9RfTd+Y3gDiTO72El2RnkdaTmJk6uupzUbsi2MdqgC4p/o+LcYWAxxv
 9Hk72ZWtcl4+SyVhk4DfUP1B5gVcLagQMJ8gL0Gi41ij8XNYwe4YdLXsdeQR8hRoR+
 b2DTjZWQ4BcP2pMkGLnPbW/2nUyVdnl1FEkfWKHU=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <015601d6171b$c9392690$5bab73b0$@adrianschmutzler.de>
Date: Mon, 20 Apr 2020 16:01:16 +0200
Message-Id: <8EC94BAF-A386-47D9-BB3B-9885046DAC90@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-8-hacks@slashdirt.org>
 <015601d6171b$c9392690$5bab73b0$@adrianschmutzler.de>
To: mail@adrianschmutzler.de
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_070119_225275_08E3D649 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2 07/14] ath79/mikrotik: don't use
 mtd-mac-address in DTS
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgo+IExlIDIwIGF2ci4gMjAyMCDDoCAxNTo1OCwgPG1haWxAYWRyaWFuc2NobXV0emxlci5k
ZT4gPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gYSDDqWNyaXQgOgo+IAo+IEhpLAo+IAo+PiAK
Pj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVzL2V0
Yy9ib2FyZC5kLzAyX25ldHdvcmsKPj4gYi90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFz
ZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCj4+IGluZGV4IGVlNzk1Yzc0OTYuLjIwYzY3
MGY3MDIgMTAwNzU1Cj4+IC0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKPj4gKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21p
a3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yawo+PiBAQCAtMjEsOCArMjEs
MTUgQEAgYXRoNzlfc2V0dXBfaW50ZXJmYWNlcygpCj4+IGF0aDc5X3NldHVwX21hY3MoKQo+PiB7
Cj4+IAlsb2NhbCBib2FyZD0iJDEiCj4+ICsJbG9jYWwgbGFuX21hYz0iIgo+PiArCWxvY2FsIHdh
bl9tYWM9IiIKPj4gKwlsb2NhbCBtYWNfYmFzZT0iL3N5cy9maXJtd2FyZS9taWtyb3Rpay9oYXJk
X2NvbmZpZy9tYWNfYmFzZSIKPiAKPiBPbmUgb2YgdGhlIGNvbmNlcHRzIEkgdHJpZWQgdG8gbWFp
bnRhaW4gZm9yIHRoaXMgc2VjdGlvbiBoYXMgYmVlbiB0byBhbHdheXMgZGVhbCB3aXRoIE1BQyBh
ZGRyZXNzZXMgZGlyZWN0bHkgKGFuZCBub3Qgb3RoZXIgdHlwZXMgb2YgZGF0YSwgbGlrZSBhIHBh
dGggaW4gdGhpcyBjYXNlKS4KPiBUaHVzLCBJJ2QgcHJlZmVyIHRvIGhhdmUKPiAKPiBsb2NhbCBt
YWNfYmFzZT0iJChjYXQgL3N5cy9maXJtd2FyZS9taWtyb3Rpay9oYXJkX2NvbmZpZy9tYWNfYmFz
ZSkiCj4gCj4gYW5kCj4gCj4gbGFuX21hYz0iJG1hY19iYXNlIgo+IC4uLgo+IAo+IERlc3BpdGUs
IHdlIHNhdmUgb25lIGNhdCAuLi4KPiAKPiBEZXNwaXRlIHRoYXQsIHlvdSByZW1vdmVkIHRoZSBs
YWJlbC1tYWMtZGV2aWNlIGFib3ZlLCBzbyBvbmUgc2hvdWxkIGFkZCBpdCBhcyBsYWJlbF9tYWMg
aGVyZS4KCk9LLCB3aWxsIGZpeCByaWdodCBhd2F5LgoKVGhhbmtzLApUaGliYXV0Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
