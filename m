Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8595DBF273
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 14:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmxykcQwK3+lECt9kESv2ooLhcBy3Gh1xn0Ui6XKqfs=; b=nLS6Jxpi2KTLzZ
	I2u8gHcvNPIwa87k+pHNvg4oS59LqPGdySylfjUJLHAk08vDoQXJzMaRBGnrx5IPeWadayY+Go9Bj
	+WXwGVUqHvYYTv+OQuhUAj56sQp/ROjkUxlSeiAroRwRFCZZoeMREzL1CnRluPU4V4kSn8JqRucdv
	zYLsAJeBqwf3oQ1hnFRizE6Y4IZPUfj8D7lcFcduCltx275bPslLN2amVN1B9ohtLIbLoB67kDeiN
	3HtcFRYu+GjIX3Bn1LAjlyGuFIAQyzUGCZCkIJ7w7G9qY2ptmOP4IToUXW2Gc+EqLj0/cg2wpe+Ny
	vrVFqQLFnR6QotD38mYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSWM-0007np-4U; Thu, 26 Sep 2019 12:05:18 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSW5-0006SP-4n; Thu, 26 Sep 2019 12:05:02 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iDSVx-0000lJ-AK; Thu, 26 Sep 2019 14:04:53 +0200
Message-ID: <8b36a751a3498415a6474940ed904dbd40e1f26b.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Jouni Malinen
 <j@w1.fi>
Date: Thu, 26 Sep 2019 14:04:52 +0200
In-Reply-To: <09503390-91f0-3789-496a-6e9891156c5e@gmail.com>
 (sfid-20190926_140042_451511_E87E7FE4)
References: <20190920133708.15313-1-zajec5@gmail.com>
 <20190920140143.GA30514@w1.fi>
 <4f6f37e5-802c-4504-3dcb-c4a640d138bd@milecki.pl>
 <9ece533700be8237699881312a99cc91c6a71d36.camel@sipsolutions.net>
 <09503390-91f0-3789-496a-6e9891156c5e@gmail.com>
 (sfid-20190926_140042_451511_E87E7FE4)
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_050501_204372_60EDDAC6 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH RFC] cfg80211: add new command for
 reporting wiphy crashes
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
Cc: hostap@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 openwrt-devel@lists.openwrt.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCAyMDE5LTA5LTI2IGF0IDE0OjAwICswMjAwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6
Cgo+ID4gWW91IGNhbid0IHNlcmlvdXNseSBiZSBzdWdnZXN0aW5nIHRoYXQgdGhlIGRyaXZlciBk
b2Vzbid0ICpoYXZlKiBlbm91Z2gKPiA+IGluZm9ybWF0aW9uIC0gZXZlcnl0aGluZyBwYXNzZWQg
dGhyb3VnaCBpdCA6KQo+IAo+IFByZWNpc2VseTogaXQgZG9lc24ndCBzdG9yZSAoY2FjaGUpIGVu
b3VnaCBpbmZvLgoKQnV0IG5vdGhpbmcgc3RvcHMgaXQgKHRoZSBkcml2ZXIpIGZyb20gZG9pbmcg
c28hCgo+IEluIGJyY21mbWFjIG9uIC5hZGRfdmlydHVhbF9pbnRmKCkgd2U6Cj4gMSkgU2VuZCBy
ZXF1ZXN0IHRvIHRoZSBGdWxsTUFDIGZpcm13YXJlCj4gMikgV2FpdCBmb3IgYSByZXBseQo+IDMp
IE9uIHN1Y2Nlc3Mgd2UgY3JlYXRlIGludGVyZmFjZQo+IDQpIFdlIHdha2UgdXAgLmFkZF92aXJ0
dWFsX2ludGYoKSBoYW5kbGVyCj4gCj4gSSdsbCBuZWVkIHRvIGZpbmQgYSB3YXkgdG8gc2tpcCBz
dGVwIDMgaW4gcmVjb3ZlcnkgcGF0aCBzaW5jZSBpbnRlcmZhY2UKPiBvbiBob3N0IHNpZGUgYWxy
ZWFkeSBleGlzdHMuCgpTdXJlLCB3ZSBza2lwIGxvdHMgb2YgdGhpbmdzIGluIGFsbCBkcml2ZXJz
LCBsb29rIGF0IGl3bHdpZmkgZm9yIGV4YW1wbGUKd2l0aCBJV0xfTVZNX1NUQVRVU19JTl9IV19S
RVNUQVJULgoKPiBPSywgc28gYmFzaWNhbGx5IEkgbmVlZCB0byB3b3JrIG9uIGNhY2hpbmcgc2V0
dXAgZGF0YS4gU2hvdWxkIEkgdHJ5Cj4gZG9pbmcgdGhhdCBhdCBteSBzZWxlY3RlZCBkcml2ZXIg
bGV2ZWwgKGJyY21mbWFjKT8gT3Igc2hvdWxkIEkgZm9jdXMgb24KPiBnZW5lcmljIHNvbHV0aW9u
IChjZmc4MDIxMSkgYW5kIGNvbnNpZGVyIG9mZmxvYWRpbmcgbWFjODAyMTEgaWYKPiBwb3NzaWJs
ZT8KCkkgdGhpbmsgZG9pbmcgaXQgZ2VuZXJpY2FsbHkgd2lsbCBub3Qgd29yayB3ZWxsLCB5b3Ug
aGF2ZSBkaWZmZXJlbnQgY29kZQpwYXRocyBhbmQgZGlmZmVyZW50IGZvcm1hdHMsIGRpZmZlcmVu
dCBkYXRhIHRoYXQgeW91IG5lZWQgZXRjLgoKU29tZXRpbWVzIHRoZXJlJ3MgaW5mb3JtYXRpb24g
Y2ZnODAyMTEgZG9lc24ndCBldmVuICpoYXZlKiwgYmVjYXVzZSB0aGUKZHJpdmVyIGlzIHJlc3Bv
bnNpYmxlIGZvciB0aGluZ3MgKGUuZy4gZWxlbWVudHMpLiBJIGd1ZXNzIHlvdSBjYW4gdHJ5LApi
dXQgbXkgZ3V0IGZlZWxpbmcgaXMgdGhhdCBpdCdkIHNpbXBsZXIgaW4gdGhlIGRyaXZlci4KCk5v
dyB5b3UgY2FuIGFyZ3VlIHRoYXQgZXZlcnl0aGluZyBwYXNzZXMgdGhyb3VnaCBjZmc4MDIxMSBz
byBpdCBtdXN0CmhhdmUgZW5vdWdoIGRhdGEgdG9vIChqdXN0IGxpa2UgSSdtIGFyZ3VpbmcgdGhl
IGRyaXZlciBjZXJ0YWlubHkgaGFzCmVub3VnaCBkYXRhKSwgYnV0IC4uLiBpdCBzZWVtcyB0byBt
ZSB0aGUgY2ZnODAyMTEgaXMgdXN1YWxseSBtb3JlCmFjdGlvbi1iYXNlZCwgd2hlcmUgdGhlIHJl
c3RvcmUgZmxvdyBuZWVkcyB0byBrZWVwIHRoZSAqc3RhdGUqLCBub3QKcmVwbGF5IHRoZSBzZXJp
ZXMgb2YgYWN0aW9ucyB0aGF0IGhhcHBlbmVkLgoKam9oYW5uZXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
