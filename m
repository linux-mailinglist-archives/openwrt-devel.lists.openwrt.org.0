Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6C415AB0E
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 15:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cFi/VRlx/SfloDuDf+FYs7MZDDHnVXpqyXWFMCTPgA=; b=fVCn/j4uI+ClyN
	n0jgQEDIzeBFvZjdoRPG7xO3L0Cl8haBbmLcrd/9HFq9rfEklZZ7YbalJTYjqfNK40UOEddhZeLPf
	qeCTDxt3Ve9nXJjvwXgJpzGNs2/OBeaRWg1zTSxyZCavi7fYioa103gUfxG0JZT1uPQwYK5jEXWBi
	ZAJ0MuBLsRVtva6vi/dRFQAm0NLGzeN6F5OSWTzMkAJnpBKLUkHKXLFclfOGwQPNNoGAHcv8AqJpI
	GuzIgtnHwJ4YOeZex77AaSDrrptyAHS2v3fHsxUP+UoxJ3gY8HY3n49t5eqwIk2ep3pc4jI75XVl+
	p7nqUM1VzSNy2Rq4MWAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1t6t-0003T6-KG; Wed, 12 Feb 2020 14:35:27 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1t6l-0003SU-NO
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 14:35:23 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1j1t6d-00022p-64; Wed, 12 Feb 2020 15:35:12 +0100
Date: Wed, 12 Feb 2020 16:34:57 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200212143457.GA1388@makrotopia.org>
References: <Ughs5HFJrT9qPytxpgkaERQ43hT3fgwxTw6chXDd23bf@mailpile>
 <20200211183357.GA551352@makrotopia.org>
 <20200212124335.GG38853@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212124335.GG38853@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_063522_163074_DD858ED6 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4 1/2] serial: ar933x_uart: add rs485
 support
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org, Chuanhong Guo <gch981213@gmail.com>,
 Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKCnRoYW5rcyBmb3IgbG9va2luZyBhdCBhbGwgdGhhdCBtZXNzIEknbSBleHRyYWN0
aW5nIGZyb20gR1BMIHNvdXJjZXMuLi4KSSd2ZSBsb29raW5nIGF0IGhvdyB0aGluZ3MgYXJlIHN1
cHBvc2VkIHRvIGJlIGRvbmUgYW5kIHJlLXdyb3RlIHRoZQpSUy00ODUgYW5kIGhhbGYtZHVwbGV4
IHBhcnRzIGZyb20gc2NyYXRjaC4KCk9uIFdlZCwgRmViIDEyLCAyMDIwIGF0IDAxOjQzOjM1UE0g
KzAxMDAsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gRGFuaWVsIEdvbGxlIDxkYW5pZWxAbWFrcm90
b3BpYS5vcmc+IFsyMDIwLTAyLTExIDIwOjMzOjU3XToKPiAKPiBIaSwKPiAKPiBpdCByZWFsbHkg
c3RpbGwgZmVlbHMgc29tZWhvdyB3ZWlyZCwgdGhhdCdzIG1haW5seSB3aHkgSSd2ZSBzdWdnZXN0
ZWQgdG8KPiB0YWtlIHRoaXMgdGhyb3VnaCB1cHN0cmVhbSBmaXJzdCBpbiBteSBwcmV2aW91cyBl
bWFpbC4KPiAKPiA+ICtAQCAtMTAzLDEwICsxMDYsNDIgQEAgc3RhdGljIGlubGluZSB2b2lkIGFy
OTMzeF91YXJ0X3N0b3BfdHhfaQo+ID4gKyBzdGF0aWMgaW5saW5lIHZvaWQgYXI5MzN4X3VhcnRf
cHV0YyhzdHJ1Y3QgYXI5MzN4X3VhcnRfcG9ydCAqdXAsIGludCBjaCkKPiA+ICsgewo+ID4gKyAJ
dW5zaWduZWQgaW50IHJkYXRhOwo+ID4gKysJc3RydWN0IHNlcmlhbF9yczQ4NSByczQ4NWNvbmYg
PSB1cC0+cG9ydC5yczQ4NTsKPiA+ICsgCj4gPiArIAlyZGF0YSA9IGNoICYgQVI5MzNYX1VBUlRf
REFUQV9UWF9SWF9NQVNLOwo+ID4gKyAJcmRhdGEgfD0gQVI5MzNYX1VBUlRfREFUQV9UWF9DU1I7
Cj4gPiArLQlhcjkzM3hfdWFydF93cml0ZSh1cCwgQVI5MzNYX1VBUlRfREFUQV9SRUcsIHJkYXRh
KTsKPiA+ICsrCj4gPiArKwlpZiAocnM0ODVjb25mLmZsYWdzICYgU0VSX1JTNDg1X0VOQUJMRUQp
IHsKPiA+ICsrCQl1bnNpZ25lZCBpbnQgdGltZW91dCA9IDYwMDAwOwo+ID4gKysJCXVuc2lnbmVk
IGxvbmcgZmxhZ3M7Cj4gPiArKwkJdW5zaWduZWQgaW50IHN0YXR1czsKPiA+ICsrCj4gPiArKwkJ
LyogRGlzYWJsZSBSWCBpbnRlcnJ1cHQgKi8KPiA+ICsrCQlzcGluX2xvY2tfaXJxc2F2ZSgmdXAt
PnBvcnQubG9jaywgZmxhZ3MpOwo+IAo+IEZZSSB0aGlzIGNvZGUgcGF0aDoKPiAKPiAgYXI5MzN4
X3VhcnRfaW50ZXJydXB0Cj4gICBhcjkzM3hfdWFydF90eF9jaGFycwo+ICAgIGFyOTMzeF91YXJ0
X3B1dGMKPiAKPiBoYXMgYWNxdWlyZWQgc3Bpbl9sb2NrLCBkaXNhYmxlZCBUWCBpbnRlcnJ1cHQs
IGFuZCB0aGlzIGNvZGVwYXRoOgo+IAo+ICBhcjkzM3hfdWFydF9jb25zb2xlX3dyaXRlCj4gICBh
cjkzM3hfdWFydF9jb25zb2xlX3B1dGNoYXIKPiAgICBhcjkzM3hfdWFydF9wdXRjCj4gCj4gaGFz
IGFjcXVpcmVkIHNwaW5fbG9jayBhbmQgZGlzYWJsZWQgYWxsIGludGVycnVwdHMgYWxyZWFkeS4K
CkkgYWdyZWUsIEkgbG9va2VkIGF0IG90aGVyIGRyaXZlcnMgYW5kIGl0IGRvZXNuJ3QgbWFrZSBz
ZW5zZSB0byBwdXQKdGhhdCBpbnRvIHRoZSBwdXRjKCkgZnVuY3Rpb24gbGlrZSBUZWx0b25pa2Eg
Zm9sa3MgZGlkIGluIHRoZWlyIFNESy4KU2VlIG15IGZyb20tc2NyYXRjaCByZS13cml0ZSBmb2xs
b3dpbmcgc2hvcnRseS4KCj4gCj4gPiArKwkJdXAtPmllciAmPSB+QVI5MzNYX1VBUlRfSU5UX1JY
X1ZBTElEOwo+ID4gKysJCWFyOTMzeF91YXJ0X3dyaXRlKHVwLCBBUjkzM1hfVUFSVF9JTlRfRU5f
UkVHLCB1cC0+aWVyKTsKPiAKPiB0aGF0IGxvb2tzIGxpa2UgYXI5MzN4X3VhcnRfc3RvcF9yeCgp
IGNvcHkmcGFzdGUKCkkndmUgYWJzdHJhY3RlZCBlbmFibGluZy9kaXNhYmxpbmcgdGhlIFJYIGlu
dGVycnVwdCBpbiBteSByZS13cml0ZS4KCj4gCj4gPiArKwkJLyogd2FpdCBmb3IgdHJhbnNtaXNz
aW9uIHRvIGVuZCAqLwo+ID4gKysJCWRvIHsKPiA+ICsrCQkJc3RhdHVzID0gYXI5MzN4X3VhcnRf
cmVhZCh1cCwgQVI5MzNYX1VBUlRfQ1NfUkVHKTsKPiA+ICsrCQkJaWYgKC0tdGltZW91dCA9PSAw
KQo+ID4gKysJCQkJYnJlYWs7Cj4gPiArKwkJCXVkZWxheSgxKTsKPiA+ICsrCQl9IHdoaWxlICgo
c3RhdHVzICYgQVI5MzNYX1VBUlRfQ1NfVFhfQlVTWSkgIT0gMCk7Cj4gCj4gVGhpcyBhYm92ZSBs
b29rcyBsaWtlIGFyOTMzeF91YXJ0X3dhaXRfeG1pdHIoKSBjb3B5JnBhc3RlIGJ1dCBqdXN0IGRv
bmUKPiBkaWZmZXJlbnRseSwgYW5kIEkgbWlzcyB0aGUgcG9pbnQgd2h5IGFyOTMzeF91YXJ0X3dh
aXRfeG1pdHIoKSBjYW50IGJlIHJldXNlZAo+IGhlcmUgYXMgd2VsbC4KClRoZXJlIGlzIGEgc2xp
Z2h0IGRpZmZlcmVuY2UgdGhlcmU6CmFyOTMzeF91YXJ0X3dhaXRfeG1pdHIoKSB3YWl0cyBmb3Ig
dGhlIG91dHB1dCBGSUZPIHRvIGFsbG93IGZvciBuZXcKY2hhcmFjdGVycyB0byBiZSBwdXQgb24g
dGhlIEZJRk8gYnkgY2hlY2tpbmcgQVI5MzNYX1VBUlRfREFUQV9UWF9DU1IuClRoaXMgaXMgZGlm
ZmVyZW50IGZyb20gY2hlY2tpbmcgd2hldGhlciB0aGUgc2VuZCBidWZmZXIgaGFzIHJ1bgplbnRp
cmVseSBlbXB0eSBhbmQgYWxsIGNoYXJhY3RlcnMgaGF2ZSBiZWVuIHNlbnQgb24gdGhlIGxpbmUg
d2hpY2ggaXMKd2hhdCBBUjkzM1hfVUFSVF9DU19UWF9CVVNZIGNoZWNrcyBmb3IgYW5kIHdoYXQg
d2Ugd2FudCBoZXJlLgoKPiAKPiA+ICsrCQlhcjkzM3hfdWFydF93cml0ZSh1cCwgQVI5MzNYX1VB
UlRfSU5UX1JFRywgQVI5MzNYX1VBUlRfSU5UX1JYX1ZBTElEKTsKPiA+ICsrCQkvKiByZW1vdmUg
dGhlIGNoYXJhY3RlciBmcm9tIHRoZSBGSUZPICovCj4gPiArKwkJYXI5MzN4X3VhcnRfd3JpdGUo
dXAsIEFSOTMzWF9VQVJUX0RBVEFfUkVHLCBBUjkzM1hfVUFSVF9EQVRBX1JYX0NTUik7Cj4gCj4g
SSByZWFsbHkgZG9udCBnZXQgdGhpcyBwYXJ0IGFuZCBCVFcgaXQgcG9zc2libHkgYnJlYWtzIGBy
czQ4NS1yeC1kdXJpbmctdHhgCj4gRFRTIGJpbmRpbmcuCgpJJ3ZlIGFic3RyYWN0ZWQgdGhlIGhh
bGYtZHVwbGV4IHBhcnRzIHNpbWlsYXIgdG8gaG93IG90aGVyIGRyaXZlcnMKZGlkIGluIG15IHJl
d3JpdGUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
