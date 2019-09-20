Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7671B914C
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 16:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A21ysmn++5VZO8dSe2AT506K89ThlsYLtif8aRD/ouI=; b=axzZJQOuZrgJnn
	6Gr/5e8F1dDvsiwUob6fGZGA59xwgPv3U4WFHooHrXU+gWO/IOke45l0Uys7pNBXHm7D5KmjnS4fv
	NoDYfR0SCQAYLN94vdvUATvFSOQf+VKIPO2sndRg5lzjAKpCOLslGBJvUAhZzhIxi8evDhstWEQMc
	DpTuASu1PIrQ1DUQ1S/HSqZz4mRRoPsjba1Krjc29igij/3Hj7+WUZfUd6dhZQiJoUXieZQKHCDNU
	tPAreflDwgG/gGGxH6rLFals4XiYiyd0yCJstloZvfgRfROdlZfhXOLGezxSwKmpx2GCoI3BTd0fm
	WEScC3DgdnzBPyKqJdog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJTy-0003iL-NW; Fri, 20 Sep 2019 14:01:58 +0000
Received: from mail.w1.fi ([212.71.239.96] helo=li674-96.members.linode.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJTs-0003ha-HS
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 14:01:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by li674-96.members.linode.com (Postfix) with ESMTP id 6738411952;
 Fri, 20 Sep 2019 14:01:47 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at w1.fi
Received: from li674-96.members.linode.com ([127.0.0.1])
 by localhost (mail.w1.fi [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hAKQx5DjrZrw; Fri, 20 Sep 2019 14:01:45 +0000 (UTC)
Received: by jm (sSMTP sendmail emulation); Fri, 20 Sep 2019 17:01:43 +0300
Date: Fri, 20 Sep 2019 17:01:43 +0300
From: Jouni Malinen <j@w1.fi>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <20190920140143.GA30514@w1.fi>
References: <20190920133708.15313-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920133708.15313-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_070152_713774_FEDA4BAB 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Johannes Berg <johannes@sipsolutions.net>, openwrt-devel@lists.openwrt.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMDM6Mzc6MDhQTSArMDIwMCwgUmFmYcWCIE1pxYJlY2tp
IHdyb3RlOgo+IEhhcmR3YXJlIG9yIGZpcm13YXJlIGluc3RhYmlsaXR5IG1heSByZXN1bHQgaW4g
dW51c2FibGUgd2lwaHkuIEluIHN1Y2gKPiBjYXNlcyB1c3VhbGx5IGEgaGFyZHdhcmUgcmVzZXQg
aXMgbmVlZGVkLiBUbyBhbGxvdyBhIGZ1bGwgcmVjb3ZlcnkKPiBrZXJuZWwgaGFzIHRvIGluZGlj
YXRlIHByb2JsZW0gdG8gdGhlIHVzZXIgc3BhY2UuCgpXaHk/IFNob3VsZG4ndCB0aGUgZHJpdmVy
IGJlIGFibGUgdG8gaGFuZGxlIHRoaXMgb24gaXRzIG93biBzaW5jZSBhbGwKdGhlIHByZXZpb3Vz
IGNvbmZpZ3VyYXRpb24gd2FzIGRvbmUgdGhyb3VnaCB0aGUgZHJpdmVyIGFueXdheS4gQXMgZmFy
IGFzCkkga25vdywgdGhlcmUgYXJlIGRyaXZlcnMgdGhhdCBkbyBpbmRlZWQgdHJ5IHRvIGRvIHRo
aXMgYW5kIGhhbmRsZSBpdApzdWNjZXNzZnVsbHkgYXQgbGVhc3QgZm9yIHN0YXRpb24gbW9kZS4g
QVAgbW9kZSBtYXkgYmUgbW9yZSBjb21wbGV4LCBidXQKZm9yIHRoYXQgb25lLCBJIGd1ZXNzIGl0
IHdvdWxkIGJlIGZpbmUgdG8gZHJvcCBhbGwgYXNzb2NpYXRpb25zIChhbmQKcHJvdmlkZSBpbmRp
Y2F0aW9uIG9mIHRoYXQgdG8gdXNlciBzcGFjZSkgYW5kIGp1c3QgcmVzdGFydCB0aGUgQlNTLgoK
PiBUaGlzIG5ldyBubDgwMjExIGNvbW1hbmQgbGV0cyB1c2VyIHNwYWNlIGtub3duIHdpcGh5IGhh
cyBjcmFzaGVkIGFuZCBoYXMKPiBiZWVuIGp1c3QgcmVjb3ZlcmVkLiBXaGVuIGFwcGxpY2FibGUg
aXQgc2hvdWxkIHJlc3VsdCBpbiBzdXBwbGljYW50IG9yCj4gYXV0aGVudGljYXRvciByZWNvbmZp
Z3VyaW5nIGFsbCBpbnRlcmZhY2VzLgoKRm9yIG1lLCB0aGF0IGlzIG5vdCByZWFsbHkgInJlY292
ZXJlZCIgaWYgc29tZSBhZGRpdGlvbmFsCnJlY29uZmlndXJhdGlvbiBzdGVwcyBhcmUgbmVlZGVk
Li4gSSdkIGxpa2UgdG8gZ2V0IGEgbW9yZSBkZXRhaWxlZCB2aWV3Cm9uIHdoYXQgZXhhY3RseSBt
aWdodCBuZWVkIHRvIGJlIHJlY29uZmlndXJlZCBhbmQgaG93IHdvdWxkIHVzZXIgc3BhY2UKa25v
dyB3aGF0IGV4YWN0bHkgdG8gZG8uIE9yIHdvdWxkIHRoZSBwbGFuIGhlcmUgYmUgdGhhdCB0aGUg
ZHJpdmVyIHdvdWxkCm5vdCBldmVuIGluZGljYXRlIHRoaXMgY3Jhc2ggaWYgaXQgaXMgYWN0dWFs
bHkgYWJsZSB0byBpbnRlcm5hbGx5CnJlY292ZXIgZnVsbHkgZnJvbSB0aGUgZmlybXdhcmUgcmVz
dGFydD8KCj4gSSdkIGxpa2UgdG8gdXNlIHRoaXMgbmV3IGNmZzgwMjExX2NyYXNoX3JlcG9ydCgp
IGluIGJyY21mbWFjIGFmdGVyIGEKPiBzdWNjZXNzZnVsIHJlY292ZXJ5IGZyb20gYSBGdWxsTUFD
IGZpcm13YXJlIGNyYXNoLgo+IAo+IExhdGVyIG9uIEknZCBsaWtlIHRvIG1vZGlmeSBob3N0YXBk
IHRvIHJlY29uZmlndXJlIHdpcGh5IHVzaW5nIGEKPiBwcmV2aW91c2x5IHVzZWQgc2V0dXAuCgpT
byB0aGlzIGltcGxpZXMgdGhhdCBhdCBsZWFzdCBzb21ldGhpbmcgd291bGQgbmVlZCB0byBoYXBw
ZW4gaW4gQVAgbW9kZS4KRG8geW91IGhhdmUgYSBsaXN0IG9mIGl0ZW1zIHRoYXQgdGhlIGRyaXZl
ciBjYW5ub3QgZG8gb24gaXRzIG93biBhbmQgd2h5Cml0IHdvdWxkIGJlIGJldHRlciB0byBkbyB0
aGVtIGZyb20gdXNlciBzcGFjZT8KCj4gSSdtIE9wZW5XcnQgZGV2ZWxvcGVyICYgdXNlciBhbmQg
SSBnb3QgYW5ub3llZCBieSBteSBkZXZpY2VzIG5vdCBhdXRvCj4gcmVjb3ZlcmluZyBhZnRlciB2
YXJpb3VzIGZhaWx1cmVzLiBUaGVyZSBhcmUgdGhpbmdzIEkgY2Fubm90IGZpeCAoaHcKPiBmYWls
dXJlcyBvciBjbG9zZWQgZncgY3Jhc2hlcykgYnV0IEkgc3RpbGwgZXhwZWN0IG15IGRldmljZXMg
dG8gZ2V0Cj4gYmFjayB0byBvcGVyYXRpb25hbCBzdGF0ZSBhcyBzb29uIGFzIHBvc3NpYmxlIG9u
IHRoZWlyIG93bi4KCkkgZnVsbHkgYWdyZWUgd2l0aCB0aGUgYXV0byByZWNvdmVyeSBiZWluZyBp
bXBvcnRhbnQgdGhpbmcgdG8gY292ZXIgZm9yCnRoaXMsIGJ1dCBJJ20gbm90IHlldCBjb252aW5j
ZWQgdGhhdCB0aGlzIG5lZWRzIHVzZXIgc3BhY2UgYWN0aW9uLiBPciBpZgppdCBkb2VzLCB0aGVy
ZSB3b3VsZCBuZWVkIHRvIGJlIG1vcmUgZGV0YWlsZWQgd2F5IG9mIGluZGljYXRpbmcgd2hhdApl
eGFjdGx5IGlzIG5lZWRlZCBmb3IgdXNlciBzcGFjZSB0byBkby4gVGhlIHByb3Bvc2VkIGNoYW5n
ZSBoZXJlIGlzIGp1c3QKc2F5aW5nICJoZXksIEkgY3Jhc2hlZCBhbmQgZGlkIHNvbWV0aGluZyB0
byBnZXQgdGhlIGhhcmR3YXJlL2Zpcm13YXJlCnJlc3BvbmRpbmcgYWdhaW4iIHdoaWNoIGRvZXMg
bm90IHJlYWxseSB0ZWxsIG11Y2ggdG8gdXNlciBzcGFjZSBvdGhlcgp0aGFuIHBvdGVudGlhbGx5
IHJlcXVpcmluZyBmdWxsIGRpc2FibGUgKyByZS1lbmFibGUgZm9yIHRoZSByZWxhdGVkCmludGVy
ZmFjZXMuIEFuZCB0aGF0IGlzIHNvbWV0aGluZyB0aGF0IHNob3VsZCBub3QgYWN0dWFsbHkgYmUg
ZG9uZSBpbgphbGwgY2FzZXMgb2YgZmlybXdhcmUgY3Jhc2hlcyBzaW5jZSB0aGVyZSBhcmUgZHJp
dmVycyB0aGF0IGhhbmRsZQpyZWNvdmVyeSBpbiBhIG1hbm5lciB0aGF0IGlzIGluIHByYWN0aWNl
IGNvbXBsZXRlbHkgdHJhbnNwYXJlbnQgdG8gdXNlcgpzcGFjZS4KCi0tIApKb3VuaSBNYWxpbmVu
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQR1AgaWQgRUZDODk1
RkEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
