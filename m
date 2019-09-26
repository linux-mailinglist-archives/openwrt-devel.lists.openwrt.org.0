Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BC5BF226
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 13:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mwH46vyJE9UMhW40da5FN0k/Z8ia2Fl2tg/ZxxOa+ZA=; b=VZyCFLH9hMfCQTkUX9zyOT9DD
	NWUnoYH4+U8i0p6vtqNdAdqhAESGsSr7crboJQt5Egz6zoEhnbkDl5X35TkvJ5Qx1+oC5zRWDnaTc
	vm5qmpUr/cnIjacaHUH99sTU7NNQLJB+HySlQTePq0arm0Psob8I268vmP/qgO9NcSpyYOkRgiqoi
	TFwqYOjhd+71/FSLOZTrsGFMTG/kIKBA71JQnJtgB/4ebIwpZu5O+cZSNWb/z/01efz2M7qHK/7Bo
	SV3CZMMaA3TYrRq0I1cyy+qPjdjnSrU3ZhJ0Pm7UrC0uW5UQPs+6YmiZlg+ebMI3aYT5dqe11XeFC
	AgHWBANjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSK4-0001gH-Qh; Thu, 26 Sep 2019 11:52:36 +0000
Received: from 2.mo177.mail-out.ovh.net ([178.33.109.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSJy-0001df-4C
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 11:52:31 +0000
Received: from player688.ha.ovh.net (unknown [10.109.143.146])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id C564810C0F5
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Sep 2019 13:52:17 +0200 (CEST)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl
 [194.187.74.233]) (Authenticated sender: rafal@milecki.pl)
 by player688.ha.ovh.net (Postfix) with ESMTPSA id 1EFA2A2EC583;
 Thu, 26 Sep 2019 11:52:07 +0000 (UTC)
To: Jouni Malinen <j@w1.fi>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>
References: <20190920133708.15313-1-zajec5@gmail.com>
 <20190920140143.GA30514@w1.fi>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <4f6f37e5-802c-4504-3dcb-c4a640d138bd@milecki.pl>
Date: Thu, 26 Sep 2019 13:52:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190920140143.GA30514@w1.fi>
Content-Language: en-US
X-Ovh-Tracer-Id: 11993367286735539761
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrfeeggdeghecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_045230_316427_292B8F6B 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.109.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [178.33.109.80 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 Johannes Berg <johannes@sipsolutions.net>, openwrt-devel@lists.openwrt.org,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAuMDkuMjAxOSAxNjowMSwgSm91bmkgTWFsaW5lbiB3cm90ZToKPiBPbiBGcmksIFNlcCAy
MCwgMjAxOSBhdCAwMzozNzowOFBNICswMjAwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4+IEhh
cmR3YXJlIG9yIGZpcm13YXJlIGluc3RhYmlsaXR5IG1heSByZXN1bHQgaW4gdW51c2FibGUgd2lw
aHkuIEluIHN1Y2gKPj4gY2FzZXMgdXN1YWxseSBhIGhhcmR3YXJlIHJlc2V0IGlzIG5lZWRlZC4g
VG8gYWxsb3cgYSBmdWxsIHJlY292ZXJ5Cj4+IGtlcm5lbCBoYXMgdG8gaW5kaWNhdGUgcHJvYmxl
bSB0byB0aGUgdXNlciBzcGFjZS4KPiAKPiBXaHk/IFNob3VsZG4ndCB0aGUgZHJpdmVyIGJlIGFi
bGUgdG8gaGFuZGxlIHRoaXMgb24gaXRzIG93biBzaW5jZSBhbGwKPiB0aGUgcHJldmlvdXMgY29u
ZmlndXJhdGlvbiB3YXMgZG9uZSB0aHJvdWdoIHRoZSBkcml2ZXIgYW55d2F5LiBBcyBmYXIgYXMK
PiBJIGtub3csIHRoZXJlIGFyZSBkcml2ZXJzIHRoYXQgZG8gaW5kZWVkIHRyeSB0byBkbyB0aGlz
IGFuZCBoYW5kbGUgaXQKPiBzdWNjZXNzZnVsbHkgYXQgbGVhc3QgZm9yIHN0YXRpb24gbW9kZS4g
QVAgbW9kZSBtYXkgYmUgbW9yZSBjb21wbGV4LCBidXQKPiBmb3IgdGhhdCBvbmUsIEkgZ3Vlc3Mg
aXQgd291bGQgYmUgZmluZSB0byBkcm9wIGFsbCBhc3NvY2lhdGlvbnMgKGFuZAo+IHByb3ZpZGUg
aW5kaWNhdGlvbiBvZiB0aGF0IHRvIHVzZXIgc3BhY2UpIGFuZCBqdXN0IHJlc3RhcnQgdGhlIEJT
Uy4KCkluZGVlZCBteSBtYWluIGNvbmNlcnQgaXMgQVAgbW9kZS4gSSdtIGFmcmFpZCB0aGF0IGNm
ZzgwMjExIGRvZXNuJ3QKY2FjaGUgYWxsIHNldHRpbmdzLCBjb25zaWRlciBlLmcuIG5sODAyMTFf
c3RhcnRfYXAoKS4gSXQgYnVpbGRzCnN0cnVjdCBjZmc4MDIxMV9hcF9zZXR0aW5ncyB1c2luZyBp
bmZvIGZyb20gbmw4MDIxMSBtZXNzYWdlIGFuZApwYXNzZXMgaXQgdG8gdGhlIGRyaXZlciAocmRl
dl9zdGFydF9hcCgpKS4gT25jZSBpdCdzIGRvbmUgaXQKY2FjaGVzIG9ubHkgYSBzbWFsbCBzdWJz
ZXQgb2YgYWxsIHNldHVwIGRhdGEuCgpJbiBvdGhlciB3b3JkcyBkcml2ZXIgZG9lc24ndCBoYXZl
IGVub3VnaCBpbmZvIHRvIHJlY292ZXIgaW50ZXJmYWNlcwpzZXR1cC4KCgo+PiBUaGlzIG5ldyBu
bDgwMjExIGNvbW1hbmQgbGV0cyB1c2VyIHNwYWNlIGtub3duIHdpcGh5IGhhcyBjcmFzaGVkIGFu
ZCBoYXMKPj4gYmVlbiBqdXN0IHJlY292ZXJlZC4gV2hlbiBhcHBsaWNhYmxlIGl0IHNob3VsZCBy
ZXN1bHQgaW4gc3VwcGxpY2FudCBvcgo+PiBhdXRoZW50aWNhdG9yIHJlY29uZmlndXJpbmcgYWxs
IGludGVyZmFjZXMuCj4gCj4gRm9yIG1lLCB0aGF0IGlzIG5vdCByZWFsbHkgInJlY292ZXJlZCIg
aWYgc29tZSBhZGRpdGlvbmFsCj4gcmVjb25maWd1cmF0aW9uIHN0ZXBzIGFyZSBuZWVkZWQuLiBJ
J2QgbGlrZSB0byBnZXQgYSBtb3JlIGRldGFpbGVkIHZpZXcKPiBvbiB3aGF0IGV4YWN0bHkgbWln
aHQgbmVlZCB0byBiZSByZWNvbmZpZ3VyZWQgYW5kIGhvdyB3b3VsZCB1c2VyIHNwYWNlCj4ga25v
dyB3aGF0IGV4YWN0bHkgdG8gZG8uIE9yIHdvdWxkIHRoZSBwbGFuIGhlcmUgYmUgdGhhdCB0aGUg
ZHJpdmVyIHdvdWxkCj4gbm90IGV2ZW4gaW5kaWNhdGUgdGhpcyBjcmFzaCBpZiBpdCBpcyBhY3R1
YWxseSBhYmxlIHRvIGludGVybmFsbHkKPiByZWNvdmVyIGZ1bGx5IGZyb20gdGhlIGZpcm13YXJl
IHJlc3RhcnQ/CgpJIG1lYW50IHRoYXQgaGFyZHdhcmUgaGFzIGJlZW4gcmVjb3ZlcmVkICYgaXMg
b3BlcmF0aW9uYWwgYWdhaW4gKGRyaXZlcgpjYW4gdGFsayB0byBpdCkuIEkgZXhwZWN0ZWQgdXNl
ciBzcGFjZSB0byByZWNvbmZpZ3VyZSBhbGwgaW50ZXJmYWNlcwp1c2luZyB0aGUgc2FtZSBzZXR0
aW5ncyB0aGF0IHdlcmUgdXNlZCBvbiBwcmV2aW91cyBydW4uCgpJZiBkcml2ZXIgd2VyZSBhYmxl
IHRvIHJlY292ZXIgaW50ZXJmYWNlcyBzZXR1cCBvbiBpdHMgb3duICh3aXRoIGEgaGVscApvZiBj
Zmc4MDIxMSkgdGhlbiB1c2VyIHNwYWNlIHdvdWxkbid0IG5lZWQgdG8gYmUgaW52b2x2ZWQuCgoK
Pj4gSSdkIGxpa2UgdG8gdXNlIHRoaXMgbmV3IGNmZzgwMjExX2NyYXNoX3JlcG9ydCgpIGluIGJy
Y21mbWFjIGFmdGVyIGEKPj4gc3VjY2Vzc2Z1bCByZWNvdmVyeSBmcm9tIGEgRnVsbE1BQyBmaXJt
d2FyZSBjcmFzaC4KPj4KPj4gTGF0ZXIgb24gSSdkIGxpa2UgdG8gbW9kaWZ5IGhvc3RhcGQgdG8g
cmVjb25maWd1cmUgd2lwaHkgdXNpbmcgYQo+PiBwcmV2aW91c2x5IHVzZWQgc2V0dXAuCj4gCj4g
U28gdGhpcyBpbXBsaWVzIHRoYXQgYXQgbGVhc3Qgc29tZXRoaW5nIHdvdWxkIG5lZWQgdG8gaGFw
cGVuIGluIEFQIG1vZGUuCj4gRG8geW91IGhhdmUgYSBsaXN0IG9mIGl0ZW1zIHRoYXQgdGhlIGRy
aXZlciBjYW5ub3QgZG8gb24gaXRzIG93biBhbmQgd2h5Cj4gaXQgd291bGQgYmUgYmV0dGVyIHRv
IGRvIHRoZW0gZnJvbSB1c2VyIHNwYWNlPwoKRmlyc3Qgb2YgYWxsIEkgd2FzIHdvbmRlcmluZyBo
b3cgdG8gaGFuZGxlIGludGVyZmFjZXMgY3JlYXRpb24uIEFmdGVyIGEKZmlybXdhcmUgY3Jhc2gg
d2UgaGF2ZToKMSkgSW50ZXJmYWNlcyBjcmVhdGVkIGluIExpbnV4CjIpIE5vIGNvcnJlc3BvbnNp
bmcgaW50ZXJmYWNlcyBpbiBmaXJtd2FyZQoKU3luY2luZyB0aGF0IChyZS1jcmVhdGluZyBpbi1m
aXJtd2FyZSBmaXJtd2FyZXMpIG1heSBiZSBhIGJpdCB0cmlja3kKZGVwZW5kaW5nIG9uIGEgZHJp
dmVyIGFuZCBoYXJkd2FyZS4gRm9yIHNvbWUgY2FzZXMgaXQgY291bGQgYmUgZWFzaWVyIHRvCmRl
bGV0ZSBhbGwgaW50ZXJmYWNlcyBhbmQgYXNrIHVzZXIgc3BhY2UgdG8gc2V0dXAgd2lwaHkgKGNy
ZWF0ZSByZXF1aXJlZAppbnRlcmZhY2VzKSBhZ2Fpbi4gSSdtIG5vdCBzdXJlIGlmIHRoYXQncyBh
Y2NlcHRhYmxlIHRob3VnaD8KCklmIHdlIGFncmVlIGludGVyZmFjZXMgc2hvdWxkIHN0YXkgYW5k
IGRyaXZlciBzaW1wbHkgc2hvdWxkIGNvbmZpZ3VyZQpmaXJtd2FyZSBwcm9wZXJseSwgdGhlbiB3
ZSBuZWVkIGFsbCBkYXRhIGFzIGV4cGxhaW5lZCBlYXJsaWVyLiBzdHJ1Y3QKY2ZnODAyMTFfYXBf
c2V0dGluZ3MgaXMgbm90IGF2YWlsYWJsZSBkdXJpbmcgcnVudGltZS4gSG93IHNob3VsZCB3ZQpo
YW5kbGUgdGhhdCBwcm9ibGVtPwoKCj4+IEknbSBPcGVuV3J0IGRldmVsb3BlciAmIHVzZXIgYW5k
IEkgZ290IGFubm95ZWQgYnkgbXkgZGV2aWNlcyBub3QgYXV0bwo+PiByZWNvdmVyaW5nIGFmdGVy
IHZhcmlvdXMgZmFpbHVyZXMuIFRoZXJlIGFyZSB0aGluZ3MgSSBjYW5ub3QgZml4IChodwo+PiBm
YWlsdXJlcyBvciBjbG9zZWQgZncgY3Jhc2hlcykgYnV0IEkgc3RpbGwgZXhwZWN0IG15IGRldmlj
ZXMgdG8gZ2V0Cj4+IGJhY2sgdG8gb3BlcmF0aW9uYWwgc3RhdGUgYXMgc29vbiBhcyBwb3NzaWJs
ZSBvbiB0aGVpciBvd24uCj4gCj4gSSBmdWxseSBhZ3JlZSB3aXRoIHRoZSBhdXRvIHJlY292ZXJ5
IGJlaW5nIGltcG9ydGFudCB0aGluZyB0byBjb3ZlciBmb3IKPiB0aGlzLCBidXQgSSdtIG5vdCB5
ZXQgY29udmluY2VkIHRoYXQgdGhpcyBuZWVkcyB1c2VyIHNwYWNlIGFjdGlvbi4gT3IgaWYKPiBp
dCBkb2VzLCB0aGVyZSB3b3VsZCBuZWVkIHRvIGJlIG1vcmUgZGV0YWlsZWQgd2F5IG9mIGluZGlj
YXRpbmcgd2hhdAo+IGV4YWN0bHkgaXMgbmVlZGVkIGZvciB1c2VyIHNwYWNlIHRvIGRvLiBUaGUg
cHJvcG9zZWQgY2hhbmdlIGhlcmUgaXMganVzdAo+IHNheWluZyAiaGV5LCBJIGNyYXNoZWQgYW5k
IGRpZCBzb21ldGhpbmcgdG8gZ2V0IHRoZSBoYXJkd2FyZS9maXJtd2FyZQo+IHJlc3BvbmRpbmcg
YWdhaW4iIHdoaWNoIGRvZXMgbm90IHJlYWxseSB0ZWxsIG11Y2ggdG8gdXNlciBzcGFjZSBvdGhl
cgo+IHRoYW4gcG90ZW50aWFsbHkgcmVxdWlyaW5nIGZ1bGwgZGlzYWJsZSArIHJlLWVuYWJsZSBm
b3IgdGhlIHJlbGF0ZWQKPiBpbnRlcmZhY2VzLiBBbmQgdGhhdCBpcyBzb21ldGhpbmcgdGhhdCBz
aG91bGQgbm90IGFjdHVhbGx5IGJlIGRvbmUgaW4KPiBhbGwgY2FzZXMgb2YgZmlybXdhcmUgY3Jh
c2hlcyBzaW5jZSB0aGVyZSBhcmUgZHJpdmVycyB0aGF0IGhhbmRsZQo+IHJlY292ZXJ5IGluIGEg
bWFubmVyIHRoYXQgaXMgaW4gcHJhY3RpY2UgY29tcGxldGVseSB0cmFuc3BhcmVudCB0byB1c2Vy
Cj4gc3BhY2UuCgpJIHdhcyBhaW1pbmcgZm9yIGEgYnJ1dGFsIGZvcmNlIHNvbHV0aW9uOiBqdXN0
IG1ha2UgdXNlciBzcGFjZQppbnRlcmZhY2VzIG5lZWQgYSBmdWxsIHNldHVwIGp1c3QgYXQgdGhl
eSB3ZXJlIGp1c3QgY3JlYXRlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
