Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037CF4334A
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 09:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1WJJmX5Hatno4xHLCEphvmzXmsG6yDZEOLj9ga5O0I=; b=SO013U3FRDxusz
	HFO6jRs+ID7Jwt/HblIj0YbbW9S9tXjD7yCRcmLkM0YEgEbhVaJ/Oy3Wzg3KyUJL1ARXokQqaG6AT
	CxAheWCKZazn0fkiIvaw72PY3gJF3R9GvwxkQf7u32czHOvOYRHryOJLFLLxJQCK1MzYNIycAx7Bx
	VK/VOCsIsBIBEw4RPiz68vPU0XpT9nqdlxjCBUCclC90InQS0prvU1DEmL4qoRS/H3OPUXd4iDZLk
	BO8pz27W4IxVmCSi1Bloz93R3NKdA0wt5R2m8CiZfdaa0lCkuL4Zdonx+dXVyDF7AEh0+ytEv/W7Q
	CSW0CPBKghPHPoiTw0Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbK6g-0000O5-Uo; Thu, 13 Jun 2019 07:25:10 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbK6S-0000NL-5U
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 07:24:57 +0000
Received: by mail-qt1-x82c.google.com with SMTP id z24so8194848qtj.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Jun 2019 00:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=COw4gfA9hrSeJDu2AY29NTDch1vhIBZauESkAOQJ/+w=;
 b=kfdgTYhTJ032kr8P1W1jWXCkJGtDha4yYT4R/BkSSjqifYhr63vkKXqu7vt8m/ptlE
 WyJF16RRchYtX2EL+9eYEG7rLZd+NLuEFTlj4l1dHX4ldoGhkyVw/tL5XowPk3jyiegO
 3hzLL0gwm+6I/D2YOxPUiLQhSW8uSvfUn7OPa51Q3OMuxDNtAOHNZzCHroXgbzQGauvt
 qr9THSlN4Fnv7dereZVwdCO7I3zmdQQ88LBZT8Rz1JbhPym3dcLtjh9IKhpPRRjiiQkK
 vxYue3K5FC9+YDo978x/9I1ehfuocGBTPrhyNJE0kaDQEIEE6cXva7W97MK/mTLfd9XW
 K17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=COw4gfA9hrSeJDu2AY29NTDch1vhIBZauESkAOQJ/+w=;
 b=pKpJ9U3kwJe9tbdCLZ0bVQBFnJru/ybNAlDZERTXliIhxpYwef17021HtL7/e+DuKU
 KCFlaeXXW6UauSUvnOAzwNkdQsXkXdaiEEKnUANrSLkATo5dZMhWqJmulk17Dp2NVs3J
 q2+2ge/2WJhrDKIUoee2qamBthc/PfW9fRQgDBIxTN1ef398Tcax4H+jT41A3kFkSA17
 N7jNULyQ0OQuXMWfb3LE71GREk9I8AGf9feIqS/ed81K06gxUbRK3uzy1JVY9KVuAAPa
 5Mf/zKMibLb1zz4ndI2MB2kaxNggfGpY+8IQZvrqAMcFU4c5SnRvgN70jfVEGUt8bSAI
 cOyg==
X-Gm-Message-State: APjAAAW2eQLzdSR5OBbrqkAIVvs2Qa1Q9McSY1CYSOsLNJfkKr016Am5
 OMp245UkucxnV+v72xuMdIEDYTqrR/bNXZWvmQkPR460u+I=
X-Google-Smtp-Source: APXvYqxHmbLK5PWHQct33A7RL2PLlszef7vrmc+VHxw4cLvRFvjN3hPKUsa6fULGLpvOEevkA7PYvSt5ecKGc2l7Wh8=
X-Received: by 2002:ac8:3918:: with SMTP id s24mr75547323qtb.226.1560410694095; 
 Thu, 13 Jun 2019 00:24:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190608114809.9480-1-avalentin@marcant.net>
 <20190608114809.9480-3-avalentin@marcant.net>
 <CAJLcKsEPFZWBcuTiVUL_mt1Qk6JXrg-q=jj7bvRDXESKrLVptw@mail.gmail.com>
 <5a1418f9-5b0c-ff52-2d60-01e382b62d08@marcant.net>
 <CAJLcKsH3XoYnAzUeJknk5QEr76sZvvkb=XM2nvUUjD-3BdTL0w@mail.gmail.com>
 <0427a156-11f1-429f-db41-1ca12b003a3e@marcant.net>
 <CAJLcKsFZxT7-Xq7v-GQqwMJ6jZ9KbHpxG4bHfrc6AEPrBQ11LA@mail.gmail.com>
 <9899c316-5817-9e65-8a5c-eb893ecdd1ad@marcant.net>
In-Reply-To: <9899c316-5817-9e65-8a5c-eb893ecdd1ad@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 13 Jun 2019 09:24:43 +0200
Message-ID: <CAJLcKsE+VAfU+TjNs-XVP22cMEsyxCV2+cUgo0dBYZj4exJo8w@mail.gmail.com>
To: Andre Valentin <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_002456_255350_F671B64A 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/3] network/config: add xfrm
 interface support scripts
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgOToxOCBBTSBBbmRyZSBWYWxlbnRpbiA8YXZhbGVudGlu
QG1hcmNhbnQubmV0PiB3cm90ZToKPgo+IEhpIQo+Cj4gT24gMTMuMDYuMTkgMDg6NDQsIEhhbnMg
RGVkZWNrZXIgd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBPbiBXZWQsIEp1biAxMiwgMjAxOSBhdCA4
OjI4IFBNIEFuZHJlIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+IHdyb3RlOgo+ID4+
Cj4gPj4gSGkgSGFucyEhCj4gPj4gQW0gMTEuMDYuMTkgdW0gMjI6MTYgc2NocmllYiBIYW5zIERl
ZGVja2VyOgo+ID4+PiBIaSwKPiA+Pj4KPiA+Pj4gT24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgODox
MCBQTSBBbmRyZSBWYWxlbnRpbiA8YXZhbGVudGluQG1hcmNhbnQubmV0PiB3cm90ZToKPiA+Pj4+
Cj4gPj4+PiBIaSBIYW5zLAo+ID4+Pj4KPiA+Pj4+IGFmdGVyIHRlc3RpbmcgeGZybSB0dW5uZWxz
IGEgYml0IEkgZm91bmQgdG8gYmlnIGRpZmZlcmVuY2VzIGNvbXBhcmVkIHRvIG90aGVyIGNvbnZl
bnRpYWwgdHVubmVscy4KPiA+Pj4+IDEpIHhmcm0gdHVubmVsIGludGVyZmFjZXMgY2Fubm90IGJl
IHJlcGxhY2VkIHdpdGggbmV0bGluawo+ID4+Pj4gMikgeGZybSB0dW5uZWwgaW50ZXJmYWNlcyBE
TyBOT1QgdmFuaXNoIGlmIHBhcmVudCBpcyBkZWxldGVkCj4gPj4+Pgo+ID4+Pj4gVGhpcyBsZWFk
cyB0byBzb21lIGVycm9ycyBhbmQgYSBsb29wIGluIGludGVyZmFjZSBjcmVhdGlvbi4gV2l0aCB0
aGUgY2hhbmdlcyBiZWxvdywKPiA+Pj4+IGl0IHdvcmtzIHNtb290aGx5IHdoZW4gbm90IGJvdW5k
IHRvIHBwcCBpbnRlcmZhY2VzICh1c2luZyBsYW4gaW5zdGVhZCksIHNlZToKPiA+Pj4+IE1vbiBK
dW4gMTAgMTE6NDI6MDYgMjAxOSBkYWVtb24ubm90aWNlIG5ldGlmZDogeGZybTAgKDE0MjU1KTog
Q29tbWFuZCBmYWlsZWQ6IFVua25vd24gZXJyb3IKPiA+Pj4+IE1vbiBKdW4gMTAgMTE6NDI6MDYg
MjAxOSBkYWVtb24ubm90aWNlIG5ldGlmZDogSW50ZXJmYWNlICd4ZnJtMCcgaXMgbm93IGRvd24K
PiA+Pj4+IE1vbiBKdW4gMTAgMTE6NDI6MDYgMjAxOSBkYWVtb24ubm90aWNlIG5ldGlmZDogSW50
ZXJmYWNlICd4ZnJtMCcgaXMgc2V0dGluZyB1cCBub3cKPiA+Pj4+IE1vbiBKdW4gMTAgMTE6NDI6
MDYgMjAxOSBkYWVtb24ubm90aWNlIG5ldGlmZDogeGZybTAgKDE0MjgxKTogQ29tbWFuZCBmYWls
ZWQ6IFVua25vd24gZXJyb3IKPiA+Pj4+IGFuZCBzbyBvbgo+ID4+Pj4+PiBXaGF0IGRvIHlvdSB0
aGluaz8KPiA+Pj4gVGhlIGRlc2NyaXB0aW9uIGlzIGEgYml0IGNyeXB0aWMgdG8gbWU7IGNvdWxk
IHlvdSBleHBsYWluIHdoYXQgd29ya3MKPiA+Pj4gYW5kIHdoYXQgZG9lcyBub3Qgd29yayBhbmQg
d2h5ID8KPiA+PiBTb3JyeSBmb3IgYmVpbmcgY3J5cHRpYywgSSB0ZW5kIHRvIHRoYXQ7LSkgT2th
eSwgSSBkbyB0aGUgZm9sbG93aW5nOgo+ID4+ICMgaWZ1cCB4ZnJtMAo+ID4+IC4uLiB1c2UgaXQK
PiA+PiAjIGlmZG93biB4ZnJtMAo+ID4+IFRoZSBpbnRlcmZhY2Ugc3RpbGwgZXhpc3RzIChjaGVj
a2VkIHdpdGggaXAgbGluaykKPiA+Pgo+ID4+IE5vdyBJJ2xsIGRvIGlmdXAgYWdhaW4gYW5kIHRo
aXMgaGFwcGVucyBlbmRsZXNzbHk6Cj4gPj4+PiBNb24gSnVuIDEwIDExOjQyOjA2IDIwMTkgZGFl
bW9uLm5vdGljZSBuZXRpZmQ6IHhmcm0wICgxNDI1NSk6IENvbW1hbmQgZmFpbGVkOiBVbmtub3du
IGVycm9yCj4gPj4+PiBNb24gSnVuIDEwIDExOjQyOjA2IDIwMTkgZGFlbW9uLm5vdGljZSBuZXRp
ZmQ6IEludGVyZmFjZSAneGZybTAnIGlzIG5vdyBkb3duCj4gPj4+PiBNb24gSnVuIDEwIDExOjQy
OjA2IDIwMTkgZGFlbW9uLm5vdGljZSBuZXRpZmQ6IEludGVyZmFjZSAneGZybTAnIGlzIHNldHRp
bmcgdXAgbm93Cj4gPj4+PiBNb24gSnVuIDEwIDExOjQyOjA2IDIwMTkgZGFlbW9uLm5vdGljZSBu
ZXRpZmQ6IHhmcm0wICgxNDI4MSk6IENvbW1hbmQgZmFpbGVkOiBVbmtub3duIGVycm9yCj4gPj4K
PiA+PiBJbiBuZXRpZmQgdGhlIHhmcm0wIGludGVyZmFjZSBpcyBjcmVhdGVkIHdpdGggdGhlIFJF
UExBQ0UgZmxhZywgYnV0IHRoYXQgZG9lcyBub3Qgc2VlbSB0byB3b3JrLCBpdCBjYW5ub3QgYmUg
cmVjcmVhdGVkIGFuZCBmYWlscy4KPiA+PiBUaGUgcmVzdWx0IGlzIHRoZSB1cHBlciBlcnJvciBy
ZXBlYXRpbmcuCj4gPj4gVGhhdCdzIHdoeSBJIHRoaW5rIGFib3V0IHRoZSBjYWxsIHRvICJpcCBs
aW5rIGRlbGV0ZSB4ZnJtMCIgYmVmb3JlIHByb3RvX2luaXRfdXBkYXRlIGNhbGwgYW5kIGluIHRo
ZSB0ZWFyZG93biBjYWxsLgo+ID4gQWRkaW5nIHRoZSBpcCBsaW5rIGNhbGxzIGRvZXMgbm90IG1h
a2Ugc2Vuc2UgdG8gbWUgYXMgbmV0aWZkIHNob3VsZAo+ID4gdGFrZSBjYXJlIG9mIGRlbGV0aW5n
IHRoZSB4ZnJtIGludGVyZmFjZXMKPiA+IEFyZSB5b3Ugc3VyZSB0aGUgeGZybSBpbnRlcmZhY2Vz
IGNhbiBiZSBkZWxldGVkIGJ5IHRoZSBpb2N0bCBjYWxsCj4gPiBTSU9DREVMVFVOTkVMIGFzIGlz
IHRoZSBjYXNlIG5vdyA/Cj4gPiBGb3IgdGhlIG90aGVyIHR1bm5lbCBpbnRlcmZhY2VzIGxpa2Ug
dnRpL2dyZSBkZWxldGlvbiBpcyBkb25lIHZpYSB0aGUKPiA+IG5ldGxpbmsgaW50ZXJmYWNlLgo+
Cj4gR29vZCBwb2ludCwgSSB3aWxsIGNoZWNrIHRoYXQuCj4gPgo+ID4gTmV4dCB0byB0aGF0IEkg
bm90aWNlZCBhIHR1bmxpbmsgaXMgc3BlY2lmaWVkIGluIHhmcm0uc2ggYnV0IG5vCj4gPiBwcm90
b19hZGRfaG9zdF9kZXBlbmRlbmN5IGlzIGFkZGVkOyBpcyB0aGlzIG9uIHB1cnBvc2UgPwo+IFll
cywgdGhhdCBpcyBvbiBwdXJwb3NlLiBUaGUgdHVubGluayBzcGVjaWZpZWQgaXMgYSBtdXN0LCBi
dXQgaXMgbm90ZWQKPiB1c2VkIGZvciBkZWNyeXB0aW5nIGFuZCBlbmNyeXB0aW5nIHBhY2tldHMu
IEl0IHdvcmtzIG9uIGV2ZXJ5IGludGVyZmFjZS4KPgo+IEFsc28gdGhlIFhGUk0gaW50ZXJmYWNl
IGhhcyBubyBJUCBlbmRwb2ludCwgc28gdGhlcmUgbm8gcG9zc2liaWxpdHkgdG8KPiBhZGQgdGhp
cyB0byB0aGUgaW50ZXJmYWNlLCBpdCB3b3VsZCBiZSBvbmx5IGNvc21ldGljYWwuCllvdSBjYW4g
aW5zdGFsbCBhIHByb3RvX2FkZF9ob3N0X2RlcGVuZGVuY3kgb24gYW4gaW50ZXJmYWNlICh0dW5s
aW5rCmluIHRoaXMgY2FzZSk7IHNvIGl0J3Mgbm90IHJlcXVpcmVkIHRvIGhhdmUgYW4gSVAgZW5k
cG9pbnQuCgpIYW5zCj4KPiBUaGFua3MsCj4KPiBBbmRyw6kKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
