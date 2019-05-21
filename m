Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6260F24DA6
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 13:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Wmtp9vOf73TGa8ylXLeoeyheyUoyk4jtMsnavLUDvCg=; b=iv3rsSOLQyeNuH/MW8wP8cOQv7
	z7eYhj9NVbGjuUBZy9fMUkCrCKrTpPHCw9SFNUUQtwjKrnWp0sRrWUDKxoUWJPkkux2N6ya1iLK7k
	FQTBocG5/laiWQrT+eR6/Sh9DichCWIgS+3SU1uGWRo2NCLJiVlMvFdQt9s5KXwpY/aFYr7rh3c0e
	F/wdT0PcccLB5vZgqh/0RmJ204t0hVG6xBmZsQirdVPgfyL1tVMfXezn+SdnKZxs1dtS0Rg9YEZyd
	Y/KShCoEC5X/zl2AaoVCeaqpdIPJ5f1zNcdvc57aFsLy55KogJDoH0waUQp6KnEp7h2e2uXr5aReW
	Nh5taxLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2fa-0001bj-3m; Tue, 21 May 2019 11:10:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2fS-0001bB-8Z
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 11:10:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6698E3C2A;
 Tue, 21 May 2019 13:10:47 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c4369174;
 Tue, 21 May 2019 13:10:45 +0200 (CEST)
Date: Tue, 21 May 2019 13:10:45 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <20190521111045.GM63920@meh.true.cz>
References: <20190520202521.8587-1-linus.walleij@linaro.org>
 <20190520205644.GA536@meh.true.cz>
 <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
 <83f8c392-2304-f14d-2b42-571827ae8761@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83f8c392-2304-f14d-2b42-571827ae8761@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_041050_451687_0BD6950B 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v3] gemini: Support sysupgrade on DIR-685
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QWxiZXJ0byBCdXJzaSA8Ym9iYWZldHRob3RtYWlsQGdtYWlsLmNvbT4gWzIwMTktMDUtMjEgMTE6
NDQ6MzddOgoKPiBPbiAyMC8wNS8xOSAyMzo0OCwgTGludXMgV2FsbGVpaiB3cm90ZToKPiA+IE9u
IE1vbiwgTWF5IDIwLCAyMDE5IGF0IDEwOjU2IFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+IHdyb3RlOgo+ID4gCj4gPiBJIGNhbiBzdGFydCB3aGlsZSBJIHN0aWxsIGhhdmUgaXQgaW4g
ZnJlc2ggbWVtb3J5IGFuZCB5b3UgY2FuIGNoaW1lCj4gPiBpbiBvbiBob3cgeW91IHdhbnQgcGVv
cGxlIHRvIGRvIGdlbmVyaWMgY2hlY2tzdW0gZXRjLgo+Cj4gWW91IGRvbid0IG5lZWQgdG8gd29y
cnkgdG9vIG11Y2ggYWJvdXQgZm9ybWF0dGluZyBhbmQgbWFraW5nIGl0IGxvb2sgY29vbCwKCkl0
J3Mgbm90IGFib3V0IHRoZSBmb3JtYXR0aW5nLCBpdCdzIGFib3V0IHRoZSBjb250ZW50LiBIb3cg
Y291bGQgSSAob3IgcG9zc2libHkKc29tZW9uZSBlbHNlKSBjaGltZSBpbiBhbmQgaW1wcm92ZSB0
aGUgZG9jcyAoZWFzaWx5KT8KCllvdSBtZWFuLCB0aGF0IExpbnVzIHN0YXJ0cyBhZGRpbmcgYSBu
ZXcgd2lraSBjb250ZW50LCB0aGVuIGhlIHNlbmRzIG1lIHRoZQpsaW5rIHRvIHRoZSB3aWtpIHZp
YSBlbWFpbCwgSSdtIGdvaW5nIHRvIGxvZyBpbnRvIHRoYXQgd2lraSAobGVhcm4ganVzdAphbm90
aGVyIHdpa2kgbWFya3VwIHN5bnRheCBtZWFud2hpbGUgdGhlIHBhZ2UgbG9hZHMgaW4gb3JkZXIg
dG8gZm9yZ2V0IGFsbCBvZgp0aGlzIG9uY2UgSSBjbG9zZSB0aGF0IHRhYiksIHRoZW4gSSdsbCBz
ZW5kIGEgcmVwbHkgdG8gTGludXMgKGFuZCBhbGwgb3RoZXIKaW50ZXJlc3RlZCkgb3ZlciB0aGUg
ZW1haWwsIHRoYXQgSSd2ZSBhZGRlZCBzb21lIGNoYW5nZXMgYW5kIHNvIG9uPyAKCkZyb20gYSBk
ZXZlbG9wZXIncyBwb2ludCBvZiB2aWV3IGl0IHNlZW1zIGxpa2UgYSB3YXN0ZSBvZiB0aW1lIGFu
ZCBpdCB3aWxsCmluZXZpdGFibHkgbGVhZCB0byBqdXN0IGFub3RoZXIgd2lraSBwYWdlIHdpdGgg
dGhlIG91dGRhdGVkIGNvbnRlbnQgYW55d2F5LgoKQlRXIGFyZSB3ZSBnb2luZyB0byBhZGQgbGlu
a3MgdG8gdGhlIHdpa2kgaW50byB0aGUgY29kZT8gU28gaW4gY2FzZSBpZiBzb21lb25lCnRvdWNo
ZXMgdGhlIGNvZGUgb25lIGRheSwgdGhlbiAocyloZSBkb24ndCBmb3JnZXQgdG8gdXBkYXRlIHRo
ZSB3aWtpIHBhZ2UKKHNvbWV0aW1lcyBtb3JlIHRoZW4gb25lKSB3aXRoIHRoZSBkb2N1bWVudGF0
aW9uIGFzIHdlbGw/IE9yIGFyZSB3ZSBnb2luZyB0bwpkbyB0aGUgb3Bwb3NpdGUsIGFkZGluZyBs
aW5rcyB0byB0aGUgY29kZSBvbiB0aGUgV2lraSBzbyBpbiBjYXNlIEknbSBnb2luZyB0bwpjaGFu
Z2Ugc29tZXRoaW5nLCBJJ2xsIGZpcnN0IGNoZWNrIHdpa2kgaWYgdGhlcmUncyBhbnkgcmVmZXJl
bmNlIHRvIHRoYXQgY29kZT8KCk1heWJlIEknbSBleGFnZ2VyYXRpbmcsIGJ1dCB3aGF0IGlzIGZh
c3RlciB0aGVuIGBnaXQgZ3JlcGAgPyBIb3cgY291bGQgeW91CnBvdGVudGlvbmFseSBhdXRvbWF0
ZSBjb2RlL2RvY3VtZW50YXRpb24gY2hlY2tzIGlmIHlvdSd2ZSBkb2N1bWVudGF0aW9uCnNvbWV3
aGVyZSBlbHNlPwoKPiBJJ20gYWZyYWlkIHRoYXQgd2FpdGluZyBmb3IgcGVvcGxlIHRvIGRlY2lk
ZSB3aGVyZSB0aGV5IHdhbnQgdG8gYmlrZXNoZWQgdGhlCj4gZGV2ZWxvcGVyIGRvY3Mgd2lsbCBl
bmQgbm93aGVyZSwganVzdCBsaWtlIGl0IGRpZCBpbiB0aGUgcGFzdC4KCldlbGwsIHRoZSBkaWZm
ZXJlbmNlIGlzLCB0aGF0IEknbSB3aWxsaW5nIHRvIGhlbHAgbWFrZSBpdCBoYXBwZW4gdGhpcyB0
aW1lLCBpZgp0aGVyZSdzIHN0aWxsIHNvbWUgaW50ZXJlc3QgYXJvdW5kIHRoaXMgdG9waWMuIEl0
IHNpbXBseSBtYWtlcyBzZW5zZSB0byBtZS4KCkFjdHVhbGx5IEknbSBub3Qgc2F5aW5nLCB0aGF0
IEknbSBnb2luZyB0byBwcmVwYXJlIHBhdGNoZXMgd2hpY2ggd291bGQgYWRkCnRoaXMgZmVhdHVy
ZSB0byB0aGUgdHJlZSwgYnV0IEknbSB3aWxsaW5nIGhlbHAgd2l0aCB0ZXN0aW5nIGFuZCBnaXZp
bmcgaXQgbXkKKzEgaW4gYSBwb3RlbnRpYWwgdm90ZS4KCkkndmUgYWJ1c2VkIHRoaXMgdGhyZWFk
IGluIG9yZGVyIHRvIHNwYXJrIGV4YWN0bHkgdGhpcyBkaXNjdXNzaW9uIGFuZCB0byBzZWUKaWYg
dGhlcmUncyBzb21lIGludGVyZXN0IGluIHBvdGVudGlhbHkgbW92aW5nIGZvcndhcmQgd2l0aCB0
aGlzLiBJdCB3aWxsIHNlcnZlCmFsc28gYXMgYSBzbWFsbCByZW1pbmRlciB0byBtZSwgdGhhdCB0
aGlzIG1pZ2h0IGJlIG5leHQgdG9waWMgSSBzaG91bGQgYnJpbmcKdG8gdG8gdGhlIGRpc2N1c3Np
b24gb24gb3VyIG1lZXRpbmcgaW4gSnVuZS4KCkRvbid0IHRha2UgbWUgd3JvbmcsIHlvdSdyZSBh
bGwgZG9pbmcgYW1hemluZyB3b3JrIG9uIHRoZSB3aWtpLCBJJ20gc29ycnkgdGhhdApJJ20gbm90
IGNvbnRyaWJ1dGluZyB0aGVyZSBhcyB3ZWxsLCBidXQgV2lraSBzaW1wbHkgZG9lc24ndCBmaXRz
IHdlbGwgaW50byBteQptdXR0L3ZpbS9naXQgZGFpbHkgd29ya2Zsb3cuCgpJbiB0aGUgZW5kLCB3
ZSBjb3VsZCBzaW1wbHkganVzdCBkZWxldGUgdGhhdCBkb2NzIGZvbGRlciBhZ2FpbiBpbiAyMDIy
IGlmIHdlCmZpbmQgb3V0LCB0aGF0IGl0IGRpZG4ndCB3b3JrZWQgYXMgZXhwZWN0ZWQgOi0pCgot
LSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
