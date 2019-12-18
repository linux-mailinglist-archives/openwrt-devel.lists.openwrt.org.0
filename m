Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F219125702
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Dec 2019 23:37:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpbkI49lZpegQ7XU+/aVaBObFBir35wBZbwLZfjaDVw=; b=riFddMyJ8fceGV
	OqD5BARGjPyaQlX7bwv1NkFl5JzK3nT2tJobpLGOh7FyxU3z0GN4Kz+QdHavl8oiUijgoPEHQbJgD
	XXJyLxJLgbktFs+XNzaDpJly93nIXobtAWuQdKdxpcT7+W1/sg0KtZX6tT3KsVtb85N1oOddJW5eX
	XT+Tf4OWvhklt4aCXmyfp14UrLz+Ub+Umphb4cwZJFtGnB/4Nm2QEj2SzrqzbjYT/k6g1m0ZjyiFZ
	Eq2BloF1jy7xKlTUvlQrDWSgR5L3BUc4jBAjvMDtzVFEGIBtn8lZdE6Wh6TfVqhEYFX5WLocEILJV
	gbDO/s0+uV5wimpyxbfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhwE-0007yS-NE; Wed, 18 Dec 2019 22:37:02 +0000
Received: from mout-p-101.mailbox.org ([2001:67c:2050::465:101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhw6-0007xw-Ce
 for openwrt-devel@lists.openwrt.org; Wed, 18 Dec 2019 22:36:56 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47dVHK4pxTzKmX6;
 Wed, 18 Dec 2019 23:36:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id f8C8hzBgVZTE; Wed, 18 Dec 2019 23:36:42 +0100 (CET)
To: "Xianjun Jiao (UGent-imec)" <Xianjun.Jiao@UGent.be>
References: <58B9F79D-3B9A-4CAE-BD8A-D1EBF0E9BCD8@UGent.be>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <12b45477-cc74-f344-3b5f-5552b62d03cf@hauke-m.de>
Date: Wed, 18 Dec 2019 23:36:41 +0100
MIME-Version: 1.0
In-Reply-To: <58B9F79D-3B9A-4CAE-BD8A-D1EBF0E9BCD8@UGent.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_143654_726943_53ADE3C1 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] =?utf-8?q?openwifi=3A_Open_source_Wi-Fi_?=
 =?utf-8?q?=E2=80=9Cchip=E2=80=9D_on_zynq_FPGA_with_Linux_mac80211_on_ARM?=
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTIvMTgvMTkgMTE6MDkgUE0sIFhpYW5qdW4gSmlhbyAoVUdlbnQtaW1lYykgd3JvdGU6Cj4g
RGVhciBvcGVud3J0IGZyaWVuZHMsCj4gCj4gCj4gQSBtZXNzYWdlIG1heSBpbnRlcmVzdCB5b3Uu
IE91ciBvcGVud2lmaSBwcm9qZWN0IGlzIG9ubGluZToKPiAKPiBodHRwczovL2dpdGh1Yi5jb20v
b3Blbi1zZHIvb3BlbndpZmkKPiAKPiAKPiBGdWxsIHN0YWNrIHJlYWwgdGltZSBTRFIgKFNvZnR3
YXJlIERlZmluZWQgUmFkaW8pIFdpLUZpIGltcGxlbWVudGF0aW9uCj4gb24genlucSBGUEdBIHdp
dGggZW1iZWRkZWQgQVJNIExpbnV4LiBDb21wYXRpYmxlIHdpdGggTGludXggbWFjODAyMTEKPiBT
b2Z0TUFDIGZyYW1ld29yay4KPiAKPiAKPiBob3N0YXBkLCB3cGFfc3VwcGxpY2FudCBhbmQgb3Ro
ZXIgbmF0aXZlIExpbnV4IFdpLUZpIHRvb2xzIGFscmVhZHkgd29yawo+IG91dCBvZiB0aGUgYm94
IQo+IAo+IAo+IEJ1dCBmb3Igb3BlbndydCwgSSBoYXZlIHRvbyBsaXR0bGUgZXhwZXJpZW5jZSwg
b25seSBrbm93IHRoYXQgaXQgaXMgYWxzbwo+IGEga2luZCBvZiBlbWJlZGRlZCBMaW51eC7CoAo+
IAo+IAo+IElzIG9wZW53cnQgYWJvdmUgdGhlIG1hYzgwMjExIHN1YnN5c3RlbT8KPiAKPiAKPiBI
b3cgbXVjaCBlZmZvcnQgZG8geW91IHRoaW5rIHdlIG5lZWQgdG8gcnVuIG9wZW53cnQgb24gdGhl
IG9wZW53aWZpIGRlc2lnbj8KPiAKPiAKPiBJZiBzb21lb25lIHdvdWxkIGxpa2UgdG8gd29yayBv
biB0aGlzIHBvcnRpbmcsIHdlIHdpbGwgZGVmaW5pdGVseSBoZWxwIQoKCkhpLAoKSW50ZXJlc3Rp
bmcgcHJvamVjdCwgSSB3b3VsZCBsaWtlIHRvIHNlZSBzdXBwb3J0IGZvciB0aGlzIGluIE9wZW5X
cnQuCgpPcGVuV3J0IGlzIGEgTGludXggZGlzdHJpYnV0aW9uIHdoaWNoIGFsc28gc2hpcHMgbWFj
ODAyMTEgYW5kIG90aGVyCmRyaXZlcnMgYW5kIHVzZXIgc3BhY2UgY29tcG9uZW50cy4KClRoZSB6
eW5xIHRhcmdldCBpcyBhbHJlYWR5IHN1cHBvcnQgaW4gT3BlbldydCBtYXN0ZXIsIHNlZSBoZXJl
OgpodHRwczovL2dpdC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0L29wZW53cnQuZ2l0O2E9dHJlZTtm
PXRhcmdldC9saW51eC96eW5xO2g9ZDIwZjg0OGZjYTVkNmRlMmUzYWZkODhmYzIwOGFhOTc0N2I4
YjEwMTtoYj1IRUFECgpZb3UgaGF2ZSB0byBhZGQgc3VwcG9ydCBmb3IgeW91IGJyb2FkIHRvIHRo
ZSB6eW5xIHRhcmdldCwgc2VlIGhlcmUgZm9yCmFuIGV4YW1wbGUgb2YgYW4gb3RoZXIgYm9hcmQ6
Cmh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvb3BlbndydC5naXQ7YT1jb21taXRk
aWZmO2g9NjRmNGMzZWYzNTc4MTVlNWQ4Yzc4MGEwZDAyOTI0YjkxNzZkYjc5NAoKVGhlbiB5b3Ug
d291bGQgYWxyZWFkeSBnZXQgaW1hZ2VzIGZvciB5b3UgYm9hcmQgdXNpbmcga2VybmVsIDQuMTku
CgpUaGVuIHlvdSBoYXZlIHRvIGFkZCB5b3VyIHdpZmkgZHJpdmVyLCB5b3UgY2FuIHVzZSB0aGUg
aW50ZWdyYXRpb24gb2YKdGhlIG13bHdpZmkgZHJpdmVyIGFzIGFuIGV4YW1wbGU6Cmh0dHBzOi8v
Z2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvb3BlbndydC5naXQ7YT1ibG9iO2Y9cGFja2FnZS9r
ZXJuZWwvbXdsd2lmaS9NYWtlZmlsZTtoPWFhOGVlYTA0NTBhMmUxNmE0NjBjMmYxOGFmMWZhNmEz
ZGNjMDdhMGM7aGI9SEVBRApUaGlzIGJ1aWxkcyBhZ2FpbnN0IG1hYzgwMjExIGZyb20ga2VybmVs
IDUuNCBwcm92aWRlZCBieSBiYWNrcG9ydHMuCgpUaGVuIHlvdSBzaG91bGQgYWRkIHlvdXIgb3Ro
ZXIgdXNlciBzcGFjZSB0b29scyBhcyBub3JtYWwgT3BlbldydCBwYWNrYWdlcy4KWW91IHNob3Vs
ZCBsaXN0IHRoZSBiYXNpYyBwYWNrYWdlcyB5b3UgbmVlZCBpbiB0aGUgREVWSUNFX1BBQ0tBR0VT
CnZhcmlhYmxlIGluIHRoZSBib2FyZCBkZWZpbml0aW9uIGluIHRhcmdldC9saW51eC96eW5xL2lt
YWdlL01ha2VmaWxlIHRvCmNyZWF0ZSBpbWFnZXMgd2l0aCB5b3VyIHdpZmkgZHJpdmVyIGJ5IGRl
ZmF1bHQuCgpIYXVrZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
