Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25C0E1444
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 10:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sft+7d+hoi7fKydlEy9x5i1fIfKiy6qHgWu5gjNbnO4=; b=LStGf+94aa2rJg
	LGRWxRVZP0Lv/ealKKSGM4G14mQ7Ofx483x6KvMnB1QORiRg0FGDoqyMYg1i+1f/u/SzFfDnXTMFL
	vzo83xESI7J8To5385bXJklA3eQG8aRVZmG5l+SXvMpZ77ap79TXEGNWK4UJzH6RzoxqDpfGBqBCX
	DvOnlOLPmcBQ3SO+NQp6MVahryiTmOxRQ9Mev3HP8da9Ji/d44kBIUXTlBHQG2wMDVscij7Ku+f37
	RoC/9qgi+Xe/Q/9mzPRsAyjBjpmdfmtereayFFKugKhabBFCQGU2hvyV0byWEzxr2I9orU2P6oLCp
	TuYeiN8IVqxtKc2kEutA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNC4H-0007UO-LK; Wed, 23 Oct 2019 08:32:33 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNC4A-0007Sg-55
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 08:32:27 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 8258EFB407; Wed, 23 Oct 2019 10:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1571819531;
 bh=/PBKnCg2XDDZVu026ZlkxsD+iuPCA6V+LRitlIYRUxY=;
 h=Date:In-Reply-To:References:Subject:To:From:From;
 b=BXIXtV7bv0seQBX3DDkZexeCITNgQ6eO0BMZzWhCExNj2xzm/MtGOCtcgLB30U9mV
 4NkNLnh8/BTqWnxWICVZrT/RmU/foEoak2CcXvbqmTy8gkc3MnKam0c2tgG1L5fZPY
 sD4ajKhL6QVKWHPPNxuqcsH5qGY9k/e2T4gnpxJc=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.226.123.210] (cust-210-123-109-94.dyn.as47377.net
 [94.109.123.210])
 by volatilesystems.org (Postfix) with ESMTPSA id 625F8FB405;
 Wed, 23 Oct 2019 10:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1571819530;
 bh=/PBKnCg2XDDZVu026ZlkxsD+iuPCA6V+LRitlIYRUxY=;
 h=Date:In-Reply-To:References:Subject:To:From:From;
 b=Izpia9J2Dt5OU2XPGyRJxwfTa1IKTicfELTgjNgOZjgMOs/jR3oDR41yXysOWCqrX
 2Ubv8oqu4PBK6JkltMHLQkdYW/2OK2lvh2cm48mGSqhp/q/cc3NgscpI1XPROaPgw/
 6qTDj8ShO1EhbxxQvKlDe2gRgzYpflRswvyHkyAw=
Date: Wed, 23 Oct 2019 10:32:08 +0200
In-Reply-To: <6b2c76de-3a81-aae2-2175-e9a1aa238302@hauke-m.de>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <6b2c76de-3a81-aae2-2175-e9a1aa238302@hauke-m.de>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org, Hauke Mehrtens <hauke@hauke-m.de>,
 Jo-Philipp Wich <jo@mein.io>
From: Stijn Segers <foss@volatilesystems.org>
Message-ID: <A4D9507E-A73C-43AB-B60B-9591A51FED3B@volatilesystems.org>
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_013226_362016_0D415C9B 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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

SGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IHNjaHJlZWYgb3AgMjIgb2t0b2JlciAy
MDE5IDE1OjU5OjA0IENFU1Q6Cj5PbiAxMC8xMS8xOSAxMjo1OSBQTSwgSm8tUGhpbGlwcCBXaWNo
IHdyb3RlOgo+PiBIaSBCasO4cm4sCj4+IAo+Pj4gT3I6IFN0YXJ0IGRpc2N1c3NpbmcgdGhlIHJl
bGVhc2UgYmxvY2tlcnMgaGVyZSBhbmQgbm93LiAgVGhhbmtzLgo+PiAKPj4gMSkgQmxvY2tlcjog
THVDSSBtYXN0ZXIgbmVlZHMgdG8gYmUgYmFja3BvcnRlZCB0byAxOS4wNwo+PiAgICBUaW1lIGVz
dGltYXRlOiAyLTMgd2Vla3MKPj4gCj4+IDIpIEJsb2NrZXI6IEFsbCByZWxldmFudCBzdWItY29t
cG9uZW50cyBmb3IgV1BBLTMgKyBHVUkgc3VwcG9ydCwgc3VjaAo+YXMKPj4gICAgaG9zdGFwZCwg
aXdpbmZvIGV0Yy4gbmVlZCB0byBiZSBiYWNrcG9ydGVkIHRvIDE5LjA3Cj4+ICAgIFRpbWUgZXN0
aW1hdGU6IDIgd2Vla3MKPgo+eW5lenogaGFzIGEgYnJhbmNoIGhlcmUgYW5kIEkgYW0gZmluZSB3
aXRoIGFsc28gYmFja3BvcnRpbmcgaG9zdGFwZAo+ZnJvbQo+bWFzdGVyIHRvIDE5LjA3LCB0aGUg
c2VjdXJpdHkgZml4ZXMgYXJlIGFscmVhZHkgaW4uCj5odHRwczovL2dpdC5vcGVud3J0Lm9yZy8/
cD1vcGVud3J0L3N0YWdpbmcveW5lenouZ2l0O2E9c2hvcnRsb2c7aD1yZWZzL2hlYWRzL3Vwc3Ry
ZWFtLzE5LjA3L2hvc3RhcGQtYmFja3BvcnRzCgpUaGFua3MgZm9yIHBvaW50aW5nIHRvIGl0LCB0
ZXN0LWRyaXZpbmcgaXQgYXMgd2Ugc3BlYWsuIE9ubHkgY29tbWl0IDAyZmQyNmI3N2EwYzU5ZTJm
NDQzODBhYWVlOGM5MGM2NmIwZjRmNTkgbmVlZGVkIGEgbWlub3IgYWRqdXN0bWVudCBpbiBvcmRl
ciB0byBhcHBseSB0byBwcmVzZW50IDE5LjA3IEhFQUQsIGFsbCBvdGhlciBwYXRjaGVzIGFwcGxp
ZWQgYXMtaXMuCgpJIGFzc3VtZSBvbmUgZG9lcyBub3QgbmVlZCBhICdtYXRjaGluZycgTHVDSSBm
b3IgdGhpcyB0byB3b3JrLCByaWdodD8gVW5sZXNzIG9uZSBzdGFydHMgY2hhbmdpbmcgd2lyZWxl
c3Mgc2V0dGluZ3MgdGhyb3VnaCBMdUNJPwoKU3Rpam4KCgoKPgo+PiAzKSBCbG9ja2VyOiBTb21l
IHdlYWtuZXNzZXMgaW4gbGlidXN0cmVhbS1zc2wgY2xpZW50IGNlcnRpZmljYXRlCj4+ICAgIGhh
bmRsaW5nIG5lZWQgdG8gIGJlIGFkZHJlc3NlZCwgd2hpY2ggY2FuIG9ubHkgYmUgc29sdmVkIGJ5
IGFuIEFQSQo+PiAgICByZWRlc2lnbi4gQmFuZC1haWQgZml4ZXMgYXZhaWxhYmxlIGJ1dCBub3Qg
bWVyZ2VkLCBub2JvZHkgd29ya2VkCj4+ICAgIG9uIEFQSSByZWRlc2lnbiB5ZXQKPj4gICAgVGlt
ZSBlc3RpbWF0ZTogMSB3ZWVrCj4+IAo+PiA0KSBCbG9ja2VyOiBOZWVkIHRvIGFzc2VydCB0aGUg
c3RhdGUgb2YgdGhlIERyYWdvbmJsb29kIFdQQTMKPj4gICAgdnVsbmVyYWJpbGl0aWVzIGluIDE5
LjA3J3MgaG9zdGFwZAo+PiAgICBUaW1lIGVzdGltYXRlOiBhIGZldyBkYXlzIEkgZ3Vlc3MKPgo+
QWxsIHRoZSBwYXRjaGVzIGxpc3RlZCBoZXJlIGFyZSBhbHJlYWR5IGJhY2twb3J0ZWQgdG8gaG9z
dGFwZCAyLjcgZnJvbQo+b3BlbndydCAxOS4wNzoKPmh0dHBzOi8vdzEuZmkvc2VjdXJpdHkvCj5B
cyBob3N0YXBkIG9uIG1hc3RlciBzZWFtcyB0byB3b3JrLCBJIGhhdmUgbm8gcHJvYmxlbSB3aXRo
IGJhY2twb3J0aW5nCj5ob3N0YXBkIDIuOSB0byBvcGVud3J0IDE5LjA3LCB0aGlzIHNob3VsZCBt
YWtlIGl0IGVhc2llciBmb3IgdXMgdG8KPmhhbmRsZSBsYXRlciBzZWN1cml0eSBwcm9ibGVtcy4K
Pgo+SGF1a2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
