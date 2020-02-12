Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3435915ADB4
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 17:51:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQy3Jrj4YjUSrGgde60LySpO2txugCdIYl0ooQCytsE=; b=P2gnKUFQAuQjPS
	dgUliGqbnVMl0Pys3jnKml4r7pQEIRoLNgaNW+Kchg9fP7kSwiU8zI5qi4l27bpVi51lRJdFJf19t
	kL/QyOyzhNuvz7CfbkYb55UtOpKHKN4Ief/yDNqDclgg/zEFMBYGYbdiGQ96JNA7lN09jdILiHzXC
	XNtpW13Fb5GiBzfLOxWyJjfK9pVB57MhBsiBuju/hwZkj+01BBy+UWSF8Ny6CD6tQy2BxgZRqaPEU
	KpCiA7p6rDrXWiIfAYfe/RYNYac5FHiZu4AkvZ+5U8/7K+QmbHbbYdafionZMEytvTagH7BON6YA1
	u01ZG/p/+GH+CR2Jhdaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vEt-0000rT-Ei; Wed, 12 Feb 2020 16:51:51 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vEc-0000ml-5i
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 16:51:36 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1j1vEL-0002cs-Ds; Wed, 12 Feb 2020 17:51:19 +0100
Date: Wed, 12 Feb 2020 18:51:13 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200212165113.GB1388@makrotopia.org>
References: <20200212124335.GG38853@meh.true.cz>
 <20200212143736.GA519537@makrotopia.org>
 <20200212163359.GA19231@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212163359.GA19231@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_085134_238770_FD0E2746 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v5 1/2] serial: ar933x_uart: add rs485
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

SGkgUGV0ciwKCgpPbiBXZWQsIEZlYiAxMiwgMjAyMCBhdCAwNTozMzo1OVBNICswMTAwLCBQZXRy
IMWgdGV0aWFyIHdyb3RlOgo+IERhbmllbCBHb2xsZSA8ZGFuaWVsQG1ha3JvdG9waWEub3JnPiBb
MjAyMC0wMi0xMiAxNjozNzozNl06Cj4gCj4gLi4uCj4gCj4gPiArK3N0YXRpYyBpbmxpbmUgaW50
IGFyOTMzeF91YXJ0X2lzX2hhbGZfZHVwbGV4KHN0cnVjdCBhcjkzM3hfdWFydF9wb3J0ICp1cCkK
PiA+ICsrewo+IAo+IFRoYXQgZnVuY3Rpb24gbmFtZSBpcyBxdWl0ZSBjb25mdXNpbmcgYXMgaXQn
cyBjaGVja2luZyBmb3IgNDg1L0hELgoKSWYgc29tZW9uZSB3YW50cyB0byBpbXBsZW1lbnQgb3Ro
ZXIgaGFsZi1kdXBsZXggdXNlcywgb25lIGNvdWxkIGFkZAptb3JlIGRldGVjdGlvbiBmbGFncyBo
ZXJlIChzZWUgYXRtZWxfc2VyaWFsLmMgd2hlcmUgU0VSX0lTTzc4MTZfRU5BQkxFRApoYXMgYmVl
biBhZGRlZCByZWNlbnRseSkuCgo+IAo+ID4gKysJcmV0dXJuICh1cC0+cG9ydC5yczQ4NS5mbGFn
cyAmIFNFUl9SUzQ4NV9FTkFCTEVEKSAmJgo+ID4gKysJCSAgISh1cC0+cG9ydC5yczQ4NS5mbGFn
cyAmIFNFUl9SUzQ4NV9SWF9EVVJJTkdfVFgpOwo+ID4gKyt9Cj4gCj4gLi4uCgpDb21lcyBmcm9t
IGF0bWVsX3NlcmlhbC5jIGFuZCBsb29rcyBzYW5lIHRvIG1lOgpzdGF0aWMgaW5saW5lIGludCBh
dG1lbF91YXJ0X2lzX2hhbGZfZHVwbGV4KHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQpCnsKCXJldHVy
biAocG9ydC0+cnM0ODUuZmxhZ3MgJiBTRVJfUlM0ODVfRU5BQkxFRCkgJiYKCQkhKHBvcnQtPnJz
NDg1LmZsYWdzICYgU0VSX1JTNDg1X1JYX0RVUklOR19UWCk7Cn0KCkhvdyBlbHNlIHdvdWxkIHlv
dSBzb2x2ZSB0aGF0PwoKPiAKPiA+ICstCWlmICghdWFydF9jaXJjX2VtcHR5KHhtaXQpKQo+ID4g
KysJaWYgKCF1YXJ0X2NpcmNfZW1wdHkoeG1pdCkpIHsKPiA+ICsgCQlhcjkzM3hfdWFydF9zdGFy
dF90eF9pbnRlcnJ1cHQodXApOwo+ID4gKysJfSBlbHNlIGlmIChhcjkzM3hfdWFydF9pc19oYWxm
X2R1cGxleCh1cCkpIHsKPiA+ICsrCQlhcjkzM3hfdWFydF93YWl0X3R4X2NvbXBsZXRlKHVwKTsK
PiA+ICsrCQlhcjkzM3hfdWFydF9yeF9mbHVzaCh1cCk7Cj4gPiArKwkJYXI5MzN4X3VhcnRfc3Rh
cnRfcnhfaW50ZXJydXB0KHVwKTsKPiA+ICsrCX0KPiAKPiBUaGlzIGNoYW5nZSBsb29rcyBzdHJh
bmdlLCBob3cgYXJlIHRoZXNlIHR3byByZWxhdGVkPyBXaGVyZSBkbyB5b3UgcmUtZW5hYmxlCj4g
dGhlIFRYIGludGVycnVwdHMgaW4gdGhhdCA0ODUvSEQgY2FzZT8KClNvIGxldCdzIGZpcnN0IGxv
b2sgYXQgaXQgaG93IGl0IHdhcyBiZWZvcmUgbXkgY2hhbmdlOgpJZiB0aGUgY2lyY3VsYXIgYnVm
ZmVyIGlzIG5vbi1lbXB0eSwgZW5hYmxlIHRoZSBUWCBpbnRlcnJ1cHQgd2hpY2gKd2lsbCBzb29u
IGNhbGwgYXI5MzN4X3VhcnRfdHhfY2hhcnMoKSBhZ2FpbiB0byBzZW5kIG1vcmUgY2hhcmFjdGVy
cy4KSWYgdGhlIGNpcmN1bGFyIGJ1ZmZlciBpcyBlbXB0eSwgZG8gbm90aGluZyBhbmQgcmV0dXJu
LgoKU28gbm93IEkgY2hhbmdlIHRoZSBiZWhhdmlvdXIgb25seSBpbiBjYXNlIHRoZXJlIGFyZSBu
byBtb3JlIGNoYXJhY3RlcnMKbGVmdCB0byBzZW5kIChpZS4gdWFydF9jaXJjX2VtcHR5KHhtaXQp
KSBhbmQgaGFuZGxlIHRoZSBoYWxmLWR1cGxleAplbXVsYXRpb24gYnkgd2FpdGluZyBmb3IgdHJh
bnNtaXNzaW9uIHRvIGNvbXBsZXRlLCBmbHVzaGluZyBldmVyeXRoaW5nCnJlY2VpdmVkIGluIHRo
ZSBtZWFudGltZSBhbmQgcmUtZW5hYmxpbmcgdGhlIFJYIGludGVycnVwdCB3aGljaCB3YXMKZGlz
YWJsZWQgYmVmb3JlIHN0YXJ0aW5nIHRvIHRyYW5zbWl0IGluIHRoZSBoYWxmLWR1cGxleCBjYXNl
IGEgZmV3CmxpbmVzIGFib3ZlLgoKCgpDaGVlcnMKCgpEYW5pZWwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
