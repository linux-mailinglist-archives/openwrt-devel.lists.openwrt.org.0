Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C83A1F0D7A
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 19:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iFWvGZcpz99uJw6o5cBKUiCvHz0eCosWKoyq4WKrG7I=; b=D2Nb4Yp91HkvvIQcrQ+LVW3dz
	VSuHBqwgqCI9uFDcKlSGK3cXWv2MqJ05SedDuJiUSQityKUM7b70HJdwlAXQ4XQhRBef5rKO4OVvC
	NOTqPhIUtAYPxSnmWv945qXol1xPQk1MUwRBjiZoYFB8Dyrp8tVztl75zywidgWgtV/CT2tWaEJ7b
	kPADucEk741H1tRYsah/LsufVLumME7wRAYXmnYJ0CIlYwsM93Q+UIzf+KXT28J7xKpn2WbVzGqSZ
	XsNpvTxko6EOx8KIy3SY7dOjtEUFWqcGgCbuokwn1wdJLRAWFzsi9TmKleifUanMK6jbY5AukuJvC
	W+NAD2fNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhzSA-000548-3W; Sun, 07 Jun 2020 17:51:26 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhzS1-00053W-6L
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 17:51:19 +0000
Received: from [2a04:4540:1403:0:2d8:61ff:feed:60f5]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1jhzRx-0002Cx-64; Sun, 07 Jun 2020 19:51:13 +0200
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 openwrt-devel@lists.openwrt.org
References: <87pnafyo82.fsf@miraculix.mork.no>
 <87h7votjpz.fsf@miraculix.mork.no>
From: John Crispin <john@phrozen.org>
Message-ID: <1e9548d3-cf78-5456-1c8a-62deb9eb61b2@phrozen.org>
Date: Sun, 7 Jun 2020 19:51:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <87h7votjpz.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_105117_391489_677E75B1 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] DSA vlan configuration
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMDYuMDYuMjAgMTU6MTksIEJqw7hybiBNb3JrIHdyb3RlOgo+IEJqw7hybiBNb3JrIDxiam9y
bkBtb3JrLm5vPiB3cml0ZXM6Cj4gCj4+IEkgd29uZGVyIGlmIEkgaGF2ZSB1bmRlcnN0b29kIHRo
aXMgY29ycmVjdGx5Ogo+PiAxKSB2bGFuX2ZpbHRlcmluZyBpcyByZXF1aXJlZCB3aGVuIGJyaWRn
aW5nIHRhZ2dlZCBhbmQgdW50YWdnZWQgRFNBCj4+ICAgICBwb3J0cywgYW5kCj4+IDIpIGFsbCBi
cmlkZ2UgcG9ydHMsIGluY2x1ZGluZyB0aGUgd2lyZWxlc3MgVklGcywgbXVzdCBiZSBjb25maWd1
cmVkCj4+ICAgICB3aXRoIHRoZSBjb3JyZWN0IFZJRHMgd2hlbiB2bGFuX2ZpbHRlcmluZyBpcyBl
bmFibGVkCj4+Cj4+IEFuIGlmIHNvLCBob3cgYXJlIHdlIHN1cHBvc2VkIHRvIGNvbmZpZ3VyZSB0
aGF0Pwo+IAo+IHF1YXJreSBqdXN0IHBvc3RlZCBhIGdyZWF0IHRpcCBpbiB0aGUgZm9ydW06Cj4g
aHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L210NzYyMS1kc2Etc3dpdGNoLXZsYW4tY29uZmln
dXJhdGlvbi82NTQ1OC8yP3U9Ym1vcmsKPiAKPiBEZXNwaXRlIGhhdmluZyBsb29rZWQgZm9yIGV4
YWN0bHkgdGhpcywgSSBoYWQgbm90IHNlZW4gdGhlCj4gInZsYW5fZGVmYXVsdF9wdmlkIiBzZXR0
aW5nIGJlZm9yZS4gIFRoaXMgc2VlbXMgdG8gc29sdmUgdGhlIHByb2JsZW0gSQo+IGRlc2NyaWJl
ZC4KPiAKPiBJIGJlbGlldmUgdGhlIHRhZ2dlZCB3YW4gcG9ydCwgd2hlcmUgb25lIFZJRCBvbiB3
YW4gaXMgcGFydCBvZiBhIGJyaWRnZSwKPiBpcyBhIHNlbWktY29tbW9uIHVzZWNhc2UgZm9yIE9w
ZW5XcnQgKGFuZCBDUEVzIGluIGdlbmVyYWwpLiAgTWF5YmUgdGhpcwo+IGtpbmQgb2YgYnJpZGdl
IGF1dG9tYXRpY2FsbHkgc2hvdWxkIGVuYWJsZSBzZXR0aW5ncyBsaWtlOgo+IAo+ICAgaXAgbGlu
ayBzZXQgPGJyLW5hbWU+IHR5cGUgYnJpZGdlIHZsYW5fZGVmYXVsdF9wdmlkIDx3YW4tdmlkPgo+
ICAgaXAgbGluayBzZXQgPGJyLW5hbWU+IHR5cGUgYnJpZGdlIHZsYW5fZmlsdGVyaW5nIDEKPiAK
PiBhcyBkZXNjcmliZWQgYnkgcXVhcmt5Pwo+IAo+IEFGQUlDUywgYSBEU0EgYmFzZWQgYnJpZ2Rl
IHdvbid0IHdvcmsgd2l0aG91dCBzb21ldGhpbmcgbGlrZSB0aGF0LCBhbmQKPiBoYXZpbmcgZWFj
aCB1c2VyIGZpZ3VyZSB0aGF0IG91dCBieSB0aGVtc2VsdmVzIGlzIGdvaW5nIHRvIGNyZWF0ZSBh
IGxvdAo+IG9mIGZydXN0cmF0aW9uLi4uCj4gCj4gCj4gQmrDuHJuCj4gCgpIaSBCasO4cm4sCmlu
ZGVlZCwgd2UgbmVlZCB0byBwdXQgdGhpcyBpbnRvIG5ldGlmZC4gd291bGQgaXQgYmUgcG9zc2li
bGUgdG8gY29sbGVjdCAKYWxsIHRoZSByZWxldmFudCBpbmZvIGFuZCBwdXQgaXQgaW50byB0aGUg
d2lraSBmb3IgbWFudWFsIHNldHVwID8gaSAKd291bGQgdm9sdW50ZWVyIHRvIGFkZCBpdCBpbnRv
IG5ldGlmZCBpbiB0aGF0IGNhc2UuCglKb2huCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRl
dmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9vcGVud3J0LWRldmVsCg==
