Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C82707CD
	for <lists+openwrt-devel@lfdr.de>; Mon, 22 Jul 2019 19:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0z9JX25/2MwU9cNT595+gokcYEU5IKklsC66d7J2Cg=; b=CHjzBTth+PvL8D
	vqWLFrEN/KmQq2JijHkbhmHXM4TkvGUlsvwyUxKf6qjyQSE1QofqsU8vMG2Q/POKHctPq8SMHf1ip
	q/tntd8egoTLp7EYx3O12X5o0dfoAZ68GFMjrBJc3jvqXMvcUVoffclbQzTf+h8zjRzuC1/0AUqIA
	R7U2X+aKrpsXz5hGIXic0GihqiQE/Wunsihui+JVb7NU44aMk0E6x5TVZwNpJzWFpWCjTZ1riGXXC
	svAWNS+CNkMHDv/abVBlGoGm6ETJ5VlgV5CDH0xklK/EV9mz2w0zFqPaKDseug/j8Gyz1zw0OEcPr
	/s2lIbSUQwC5sMPtiFjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcMS-0001mL-77; Mon, 22 Jul 2019 17:44:32 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcM3-0001lg-FZ
 for openwrt-devel@lists.openwrt.org; Mon, 22 Jul 2019 17:44:09 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id B9B814EBD7;
 Mon, 22 Jul 2019 19:44:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id xB8cZClbtTQ0; Mon, 22 Jul 2019 19:43:55 +0200 (CEST)
To: Jeff Kletsky <lede@allycomm.com>, openwrt-devel@lists.openwrt.org
References: <a84dbac4-32fd-5519-6d9e-c6196b5c7a51@allycomm.com>
 <8a21f8f9-310c-d146-02a4-85f390bbe28d@allycomm.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <1d1caf72-27c8-7d2a-4700-8033d4d0465f@hauke-m.de>
Date: Mon, 22 Jul 2019 19:43:58 +0200
MIME-Version: 1.0
In-Reply-To: <8a21f8f9-310c-d146-02a4-85f390bbe28d@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_104407_826765_5FAD8A52 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] "mac80211: Update to version 5.2-rc7" breaks
 batman-adv
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gNy8yMi8xOSA2OjQ0IEFNLCBKZWZmIEtsZXRza3kgd3JvdGU6Cj4gCj4gT24gNy8yMS8xOSA0
OjE2IFBNLCBKZWZmIEtsZXRza3kgd3JvdGU6Cj4+Cj4+IGdpdCBiaXNlY3Qgc3VnZ2VzdHPCoAo+
Pgo+PiBjb21taXQgMGIyYzQyY2VkMiAoSEVBRCwgcmVmcy9iaXNlY3QvYmFkKQo+Pgo+PiDCoMKg
wqAgbWFjODAyMTE6IFVwZGF0ZSB0byB2ZXJzaW9uIDUuMi1yYzcKPj4KPj4gYXMgdGhlIHByb2Js
ZW0gYmVoaW5kIHRoZSBmYWlsdXJlIHRvIGNvbXBpbGUgYmF0bWFuLWFkdiBvbiBKdWx5IDIxLAo+
PiAyMDE5IGFuZCBwZXJoYXBzIHByaW9yCj4+Cj4+IFNlZSwgZm9yIGV4YW1wbGUKPj4gaHR0cDov
L2Rvd25sb2Fkcy5vcGVud3J0Lm9yZy9zbmFwc2hvdHMvZmFpbGxvZ3MvbWlwc18yNGtjL3JvdXRp
bmcvYmF0bWFuLWFkdi9jb21waWxlLnR4dAo+Pgo+PiAvYnVpbGRlci9zaGFyZWQtd29ya2Rpci9i
dWlsZC9zZGsvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0a2NfbXVzbC9saW51eC1hdGg3OV9nZW5l
cmljL2JhdG1hbi1hZHYtMjAxOS4yL25ldC9iYXRtYW4tYWR2L25ldGxpbmsuYzoxMzQ3OjQ6IGVy
cm9yOiAnY29uc3Qgc3RydWN0IGJhY2twb3J0X2dlbmxfb3BzJyBoYXMgbm8gbWVtYmVyIG5hbWVk
ICdwb2xpY3knCj4+ICAgIC5wb2xpY3kgPSBiYXRhZHZfbmV0bGlua19wb2xpY3ksCj4+ICAgICBe
fn5+fn4KPj4KPj4KPj4gU2FtZSBwcm9ibGVtIG9ic2VydmVkIGxvY2FsbHkgb24gYXRoNzkgYW5k
IG9uIGlwcTQweHgKPj4KPj4gTm90aGluZyBvYnZpb3VzIGluIHRoZSBwYXRjaCBpdHNlbGYsIGJ1
dCBidWlsZGluZyBhdCBkNjE2YjJjOTA2Cj4+IHJlc29sdmVzIHRoZSBpc3N1ZSBmb3IgYm90aCBp
cHE0MHh4IGFuZCBhdGg3OSBidWlsZHMKPj4KPj4KPiAKPiBMb29rcyBsaWtlIHRoZSBsaWtlbHkg
KHVwc3RyZWFtKSBldmVudCB0aGF0IHRyaWdnZXJlZCB0aGlzIHdhcwo+IAo+IChMaW51eCkgY29t
bWl0IDNiMGYzMWYyYjhjOQo+IEF1dGhvcjogSm9oYW5uZXMgQmVyZyA8am9oYW5uZXMuYmVyZ0Bp
bnRlbC5jb20+Cj4gRGF0ZTrCoMKgIFRodSBNYXIgMjEgMjI6NTE6MDIgMjAxOSArMDEwMAo+IAo+
IMKgwqDCoCBnZW5ldGxpbms6IG1ha2UgcG9saWN5IGNvbW1vbiB0byBmYW1pbHkKPiAKPiAKPiB3
aGljaCBtb3ZlcyAucG9saWN5IG9mZiB3aGVyZSAiY3VycmVudCIgYmF0bWFuLWFkdiBpcyBleHBl
Y3RpbmcgaXQuCj4gCj4gVGhlIGJhY2twb3J0IHRhciBiYWxsIGRvZXMgY29udGFpbiBiYWNrcG9y
dC1pbmNsdWRlL25ldC9nZW5ldGxpbmsuaAo+IHdoaWNoIHNlZW1zIHRvIGJlIHBpY2tlZCB1cCBp
bmFwcHJvcHJpYXRlbHkgZm9yIGJhdG1hbi1hZHYsIG9yIHRoZXJlIGlzCj4gYSBwYXRjaCBtaXNz
aW5nIGZvciBiYXRtYW4tYWR2IChjb21taXQgM2IwZjMxZjJiOGM5IGRvZXMgbW9kaWZ5IGl0KSwg
b3IgLi4uCj4gCj4gSSBoYXZlbid0IHF1aXRlIGZpZ3VyZWQgb3V0IGhvdyB0aGUgYmFja3BvcnRz
IHdvcmssIHNvIGRvbid0IHlldCBrbm93Cj4gdGhlIHJvb3QgY2F1c2UgYW5kICJiZXN0IiBzb2x1
dGlvbi4KPiAKPiAKPiBKZWZmCj4gCj4gCj4gU2VlIGFsc28KPiBodHRwczovL2ZvcnVtLm9wZW53
cnQub3JnL3QvYmF0bWFuLWFkdi1idWlsZC1mYWlsdXJlLW1hc3Rlci0yMDE5LTA3LTIxLzQxMjA1
CgpIaSwKCllvdSBoYXZlIHRvIGJhY2twb3J0IHRoZSB1cHN0cmVhbSBjaGFuZ2VzIHRvIHRoZSBu
ZXRsaW5rIGhhbmRsaW5nIGluCmJhdG1hbi1hZHYgaW50byBvdXIgYmF0bWFuLWFkdiB2ZXJzaW9u
OgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxk
cy9saW51eC5naXQvZGlmZi9uZXQvYmF0bWFuLWFkdi9uZXRsaW5rLmM/aWQ9M2IwZjMxZjJiOGM5
ZmIzNDhlNDUzMGI4OGY2YjY0Zjk2MjFmODNkNgoKVGhlIGJhY2twb3J0cyBzeXN0ZW0gd2lsbCB0
YWtlIGNhcmUgb2YgbWFraW5nIHRoaXMgYWxzbyB3b3JrIHdpdGggb2xkZXIKa2VybmVsIHZlcnNp
b25zIGRvd24gdG8ga2VybmVsIHZlcnNpb24gMy4xMC4KCkhhdWtlCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
