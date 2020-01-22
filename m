Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD32145227
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 11:10:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44xPZPzfmZ/uc+TfxiTRUc0WW+4yUISIwmWRvQKO6x8=; b=B6wLYkDSsBFwtV
	Oh789crpigjufWg9pPwBtaCl1xgNFVEiMuVkk+UCLRUSNHCsG9+0V8ElhPbLKlRMsR3F3BxjCeL4M
	NpSL2c1ektci5/KyVE15yLrWrilGn488HgKnij7RxBxboEIGJDf/jVFplDKjgV359ZAVTzSmAHONl
	p8EFQXljdr6i8JWjf2DiM67bYEvIXjc0Lp1jvpp6AQnsPm/ILbxw1pmRmu3DegH1hEGKQmePoaxgC
	HYoXKjtAKBWYCpLyjvoGMbmoetvO+BmmXqNTGDMZC085mKU8tKQxw8OjYjqbwpgP3CRijOow5zo83
	+8hihVHgonhiY3sJf9AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCxQ-0006YQ-Nz; Wed, 22 Jan 2020 10:09:56 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCxG-0006XW-44
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 10:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aPuEZzI5ynLwlfdRMuCRmxtgdC4HThiiH2fQ//0b1GA=; b=o38fyqFpO6MsdUZedtBd1C4Lzk
 jItkrkOonFTDfd4LqRdYA0ryRFdB9Aw1k5dGyAoIoXjUVTd9prRRHd6UsvOY7lnLGTV8iCf47TTCx
 Ba/UpZnz40b1GKehrEqejrdrYHdvPb/XP3H77IYPOfzIZVaqiABoDWy+unGaqML8iudCAtOhdCrr+
 VS8hIBtMmlODGex4Sy0uGP1eO2Ye8NUrmXaoKaa1Nypsm1kfj4EgOP7RLCWEBLbhBY+13z4uyLzxx
 DUcSFisEGhytCpgEiigO547awuzyTHIvsPbFU6wnFr9KBJcmM2r3GkLsfCGMPCvefAshVXmbn6PU0
 7Ql5YmzQ==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:49956
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1iuCxE-000X26-Kb; Wed, 22 Jan 2020 11:09:44 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20200121083509.24067-2-ynezz@true.cz>
Date: Wed, 22 Jan 2020 11:09:22 +0100
Message-Id: <A627DEFC-1F41-43D2-B93F-8B0EB917303B@oranjevos.nl>
References: <20200121083509.24067-1-ynezz@true.cz>
 <20200121083509.24067-2-ynezz@true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_020946_455023_CE0568D8 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH procd 2/2] state: fix reboot causing
 shutdown inside LXC container
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QSBmZXcgc21hbGwgcmVtYXJrcywgc2VlIGluLWxpbmUsIHJlZ2FyZHMsClBhdWwKCj4gT3AgMjEg
amFuLiAyMDIwLCBvbSAwOTozNSBoZWVmdCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PiBo
ZXQgdm9sZ2VuZGUgZ2VzY2hyZXZlbjoKPiAKPiBFeGVjdXRpbmcgYHJlYm9vdGAgY29tbWFuZCBp
biBPcGVuV3J0IHN5c3RlbSBydW5pbmcgaW5zaWRlIExYQyBjb250YWluZXIKPiByZXN1bHRzIGlu
IGEgc2h1dGRvd24gb2YgdGhlIGNvbnRhaW5lciBpbnN0ZWFkIG9mIHJlYm9vdGluZyB0aGUKPiBj
b250YWluZXIuCj4gCj4gVGhpcyBhcHBlYXJzIHRvIGhhdmUgYmVlbiBjYXVzZWQgYnkgY29tbWl0
IDgzMjM2OTA3OGQ4MSAoInN0YXRlOiBmaXgKPiBzaHV0ZG93biB3aGVuIHJ1bm5pbmcgaW4gYSBj
b250YWluZXIgKEZTIzI0MjUpIiksIHdoaWNoIGV4aXRzIHRoZSBwaWQKPiBlaW56IGluc3RlYWQg
b2YgdGhlIHJlYm9vdCgpLgo+IAo+IFdoaWxlIGF0IGl0LCByZWZhY3RvciB0aGUgaGFsdGluZyBj
b2RlIGludG8gc2VwYXJhdGUgZnVuY3Rpb24gdG8gc2hvcnRlbgo+IHRoZSBzd2l0Y2gvY2FzZSBi
bG9jayBhbmQgbWFrZSBpdCBjbGVhcmVyLCBkZWNyZWFzZSB0aGUgaW5kZW50YXRpb24KPiBsZXZl
bCBieSByZXZlcnNpbmcgdGhlIGNvbnRhaW5lciBpZiBjb25kaXRpb24sIHJlcGxhY2UgbWFnaWMg
MCB3aXRoCj4gRVhJVF9TVUNDRVNTIGNvbnN0YW50IGluIGV4aXQoKSBhbmQgbWFrZSBpdCB3YWl0
IDFzIGZvciByZWJvb3QgbWVzc2FnZQo+IGRlbGl2ZXJ5IGluIGJvdGggY29udGFpbmVyL2hvc3Qg
Y2FzZXMgYXMgd2VsbC4KPiAKPiBSZWY6IEZTIzI2NjYKPiBDYzogUGF1bCBTcG9vcmVuIDxtYWls
QGFwYXJjYXIub3JnPgo+IEZpeGVzOiA4MzIzNjkwNzhkODEgKCJzdGF0ZTogZml4IHNodXRkb3du
IHdoZW4gcnVubmluZyBpbiBhIGNvbnRhaW5lciAoRlMjMjQyNSkiKQo+IFRlc3RlZC1ieTogQmFw
dGlzdGUgSm9uZ2xleiA8bGVkZUBiaXRzb2ZuZXR3b3Jrcy5vcmc+Cj4gU2lnbmVkLW9mZi1ieTog
UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPiAtLS0KPiBzdGF0ZS5jIHwgNTIgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IDEgZmlsZSBj
aGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvc3RhdGUuYyBiL3N0YXRlLmMKPiBpbmRleCA0NzM3ZDAxMjFhZDAuLmUxMTdlYTMwMmY5MyAx
MDA2NDQKPiAtLS0gYS9zdGF0ZS5jCj4gKysrIGIvc3RhdGUuYwo+IEBAIC05NCw2ICs5NCwzNCBA
QCBzdGF0aWMgdm9pZCBzZXRfY29uc29sZSh2b2lkKQo+IAkJc2V0X3N0ZGlvKHR0eSk7Cj4gfQo+
IAo+ICtzdGF0aWMgdm9pZCBwZXJmb3JtX2hhbHQoKQo+ICt7Cj4gKwlpZiAocmVib290X2V2ZW50
ID09IFJCX1BPV0VSX09GRikKPiArCQlMT0coIi0gcG93ZXIgZG93biAtXG4iKTsKPiArCWVsc2UK
PiArCQlMT0coIi0gcmVib290IC1cbiIpOwo+ICsKPiArCS8qIEFsbG93IHRpbWUgZm9yIGxhc3Qg
bWVzc2FnZSB0byByZWFjaCBzZXJpYWwgY29uc29sZSwgZXRjICovCj4gKwlzbGVlcCgxKTsKPiAr
Cj4gKwlpZiAoaXNfY29udGFpbmVyKCkpIHsKPiArCQlyZWJvb3QocmVib290X2V2ZW50KTsKV2hl
biByZWJvb3QgcmV0dXJucywgaGFzbid0IHNvbWV0aGluZyBnb25lIHdyb25nIHRoZW4gPwo+ICsJ
CWV4aXQoRVhJVF9TVUNDRVNTKTsKVGhlIHJldHVybiBiZWxvdyBhZnRlciBleGl0KCkgY2FuIG5l
dmVyIGJlIHJlYWNoZWQuCj4gKwkJcmV0dXJuOwo+ICsJfQo+ICsKPiArCS8qIFdlIGhhdmUgdG8g
Zm9yayBoZXJlLCBzaW5jZSB0aGUga2VybmVsIGNhbGxzIGRvX2V4aXQoRVhJVF9TVUNDRVNTKQo+
ICsJICogaW4gbGludXgva2VybmVsL3N5cy5jLCB3aGljaCBjYW4gY2F1c2UgdGhlIG1hY2hpbmUg
dG8gcGFuaWMgd2hlbgo+ICsJICogdGhlIGluaXQgcHJvY2VzcyBleGl0cy4uLiAqLwo+ICsJaWYg
KCF2Zm9yaygpKSB7IC8qIGNoaWxkICovCj4gKwkJcmVib290KHJlYm9vdF9ldmVudCk7CldoZW4g
cmVib290IHJldHVybnMsIGhhc24ndCBzb21ldGhpbmcgZ29uZSB3cm9uZyB0aGVuID8KPiArCQlf
ZXhpdChFWElUX1NVQ0NFU1MpOwo+ICsJfQo+ICsKPiArCXdoaWxlICgxKQo+ICsJCXNsZWVwKDEp
Owo+ICt9Cj4gKwo+IHN0YXRpYyB2b2lkIHN0YXRlX2VudGVyKHZvaWQpCj4gewo+IAljaGFyIHVi
dXNfY21kW10gPSAiL3NiaW4vdWJ1c2QiOwo+IEBAIC0xNTMsMjkgKzE4MSw5IEBAIHN0YXRpYyB2
b2lkIHN0YXRlX2VudGVyKHZvaWQpCj4gCQlzeW5jKCk7Cj4gCQlzbGVlcCgxKTsKPiAjaWZuZGVm
IERJU0FCTEVfSU5JVAo+IC0JCWlmIChyZWJvb3RfZXZlbnQgPT0gUkJfUE9XRVJfT0ZGKQo+IC0J
CQlMT0coIi0gcG93ZXIgZG93biAtXG4iKTsKPiAtCQllbHNlCj4gLQkJCUxPRygiLSByZWJvb3Qg
LVxuIik7Cj4gLQo+IC0JCWlmICghaXNfY29udGFpbmVyKCkpIHsKPiAtCQkJLyogQWxsb3cgdGlt
ZSBmb3IgbGFzdCBtZXNzYWdlIHRvIHJlYWNoIHNlcmlhbCBjb25zb2xlLCBldGMgKi8KPiAtCQkJ
c2xlZXAoMSk7Cj4gLQo+IC0JCQkvKiBXZSBoYXZlIHRvIGZvcmsgaGVyZSwgc2luY2UgdGhlIGtl
cm5lbCBjYWxscyBkb19leGl0KEVYSVRfU1VDQ0VTUykKPiAtCQkJICogaW4gbGludXgva2VybmVs
L3N5cy5jLCB3aGljaCBjYW4gY2F1c2UgdGhlIG1hY2hpbmUgdG8gcGFuaWMgd2hlbgo+IC0JCQkg
KiB0aGUgaW5pdCBwcm9jZXNzIGV4aXRzLi4uICovCj4gLQkJCWlmICghdmZvcmsoICkpIHsgLyog
Y2hpbGQgKi8KPiAtCQkJCXJlYm9vdChyZWJvb3RfZXZlbnQpOwo+IC0JCQkJX2V4aXQoRVhJVF9T
VUNDRVNTKTsKPiAtCQkJfQo+IC0KPiAtCQkJd2hpbGUgKDEpCj4gLQkJCQlzbGVlcCgxKTsKPiAt
CQl9IGVsc2UKPiAtCQkJZXhpdCgwKTsKPiArCQlwZXJmb3JtX2hhbHQoKTsKPiAjZWxzZQo+IC0J
CWV4aXQoMCk7Cj4gKwkJZXhpdChFWElUX1NVQ0NFU1MpOwo+ICNlbmRpZgo+IAkJYnJlYWs7Cj4g
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5v
cmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
