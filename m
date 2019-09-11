Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0111AFA37
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 12:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vm6w11XMeipXpnP7+4ZyXuqH+SVLBnKr7tK2k0qPYes=; b=g/tbyRcYA3kLB6
	vgAZn3ouO7gNnNO7xmzW65attClz41JjxbuLOWWxOIzfw1YFXTuzYd30ZK0QtOeQHC7ZoPehHcu83
	mGRGVBUL7dT5rh7SPIM49iGA3AlZaYY4V4yzM3lRo8/84O/X0NaO3csDdJUJc81lOOW+mJkefr5Aa
	kyNeLjewZTr7PREyaLq2BRdFdyu9zGEAsG7OuGKLl0aMZENbajL6jtVolrEKtZlzRbFocbCbSDuY5
	k9mqVOr7rA+UWhWr3jn+F37sAZZyRz4gNqNIFdROfd9c0XHPq1e57n2u6t3l6SoGcNynKHmxWfGuG
	afEQMi3zzNmuYpdxgZtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zjB-0001f4-JB; Wed, 11 Sep 2019 10:19:57 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zj2-0001eF-CU
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 10:19:50 +0000
Received: (qmail 30537 invoked from network); 11 Sep 2019 10:19:42 -0000
Received: from localhost (HELO ?192.168.1.133?) (127.0.0.1)
 by achernar.uberspace.de with SMTP; 11 Sep 2019 10:19:42 -0000
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CACna6ryNB2PN2qwyctK7aTVnvhB+F6zTjGUMs=6vZ4XDeAyF6A@mail.gmail.com>
 <CACna6rzL6guvd-MGOUqXRP_nCeFxmOwjqxtcNoGhV0vNC701Wg@mail.gmail.com>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <f72f164d-ef33-41be-2c17-c1d9e84b51a3@ironai.com>
Date: Wed, 11 Sep 2019 12:19:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACna6rzL6guvd-MGOUqXRP_nCeFxmOwjqxtcNoGhV0vNC701Wg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_031948_707270_4286E9F5 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] sysupgrade: extending firmware validation
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

SGkgUmFmYWwsCgpiZXR0ZXIgZXJyb3IgbWVzc2FnZXMgZm9yIHN5c3VwZ3JhZGUgaXMgYSBnb29k
IGlkZWEuCgpPbiAxMS4wOS4xOSAxMToyNiwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IE9uIFdl
ZCwgMTkgSnVuIDIwMTkgYXQgMTY6MDcsIFJhZmHFgiBNacWCZWNraSA8emFqZWM1QGdtYWlsLmNv
bT4gd3JvdGU6Cj4+IEN1cnJlbnRseSB0YXJnZXRzIGNhbiBpbXBsZW1lbnQgcGxhdGZvcm1fY2hl
Y2tfaW1hZ2UoKSB0aGF0IHZlcmlmaWVzCj4+IHN1Ym1pdHRlZCBmaXJtd2FyZSBmaWxlLiBJdCBt
YXkgcmV0dXJuIGEgc3VjY2VzcyBvciBmYWlsdXJlLgo+Pgo+PiBJJ20gbG9va2luZyBmb3IgbW9y
ZSBjb21wbGV4IGltcGxlbWVudGF0aW9uL3NvbHV0aW9uLiBJJ2QgbGlrZQo+PiBmaXJtd2FyZSB2
YWxpZGF0aW9uIHRvIHByb3ZpZGUgbW9yZSBpbmZvIGxpa2U6Cj4+IDEpIElzIGZpcm13YXJlIHZh
bGlkCj4+IDIpIFdoYXQgbWFrZXMgZmlybXdhcmUgaW52YWxpZCBpZiBhbnl0aGluZwo+PiAzKSBJ
cyB0aGF0IHBvc3NpYmxlIHRvIGZvcmNlIGZpcm13YXJlIGluc3RhbGxhdGlvbgo+Pgo+PiBIYXZp
bmcgc3VjaCBpbmZvIGF2YWlsYWJsZSB3b3VsZCBtYWtlIHVzZXIgZmVlZGJhY2sgbXVjaCBtb3Jl
Cj4+IGZyaWVuZGx5LiBJJ2QgbGlrZSBsdWNpIHRvIHVzZSB0aGF0IG5ldyBpbmZvICYgZGlzcGxh
eSBhIHByb3Blcgo+PiBlcnJvci93YXJuaW5nIHRvIGEgdXNlciBpZiBuZWVkZWQuCj4+Cj4+IFNv
bWUgcG9zc2libGUgdmFsaWRhdGlvbiBmYWlsdXJlczoKPj4gMSkgRmlybXdhcmUgbm90IG1hdGNo
aW5nIGRldmljZSBtb2RlbAo+PiAyKSBGaWxlIHRvbyBiaWcgdG8gZ2V0IGZsYXNoZWQKPj4gMykg
Q2hlY2tzdW0gaW52YWxpZCAoY29ycnVwdGVkIGZpbGUpCj4+IDQpIFNpZ25hdHVyZSBtaXNzaW5n
IChjYW4gYmUgZGFuZ2Vyb3VzIHRvIGZsYXNoIGl0KQoKVGhpcyBuZWVkcyB0byBiZSBpbXBsZW1l
bnRlZCBpbiBzeXN1cGdyYWRlIHNvIHRoYXQgaXQncyBhdmFpbGFibGUKdG8gZXZlcnkgc2NyaXB0
IHRoYXQgdXNlcyBpdCBhbmQgdGhpcmQtcGFydHkgZmlybXdhcmUgd2l0aG91dCBMdUNJLgouCgo+
PiBsdWNpIGNvdWxkIGRpc3BsYXkgd2FybmluZ3MgYW5kIHRoZW4gb2ZmZXIgYW4gb3B0aW9uIHRv
IGZsYXNoIGEKPj4gZmlybXdhcmUgYW55d2F5LiAKClBsZWFzZSBkb24ndCBvZmZlciBhIGZ1bmN0
aW9uYWxpdHkgZm9yIGZsYXNoaW5nIGZpcm13YXJlIHZpYSB0aGUgd2ViLWludGVyZmFjZQp3aGVu
IHRoZSBmaXJtd2FyZSB2YWxpZGF0aW9uIGZhaWxzLgpTb21lb25lIHdobyB1bmRlcnN0YW5kcyB3
aGV0aGVyIGl0IGlzIGEgZ29vZCBpZGVhIHRvIGZvcmNlIHRoZSBmbGFzaGluZwppcyBhbHdheXMg
YWJsZSB0byB1c2UgU1NIIGFuZCBmb3JjZSB0aGUgc3lzdXBncmFkZSBtYW51YWxseS4KUGVvcGxl
IHdvdWxkIHRyeSB0byByZXZlcnQgdG8gc3RvY2sgZmlybXdhcmUgYW5kIHN1Y2ggdGhpbmdzIHdp
dGggdGhlCndlYi1pbnRlcmZhY2UncyBmbGFzaGluZyBmb3JjaW5nIG9wdGlvbi4gVGhpcyB3aWxs
IGdldCB1cyBhIGxvdCBvZiB0ZWFycy4KCj4+IE9yIGRpc3BsYXkgYSBjcml0aWNhbCBlcnJvciBh
bmQgZG9uJ3Qgb2ZmZXIgc3VjaAo+PiBvcHRpb24gYXQgYWxsLiBJbiBhbnkgY2FzZSB0aGF0IHNo
b3VsZCBiZSBtdWNoIG1vcmUgbWVhbmluZ2Z1bCB0aGFuIGEKPj4gc2luZ2xlIGVycm9yIG1lc3Nh
Z2UuCgpGcm9tIG15IHBlcnNwZWN0aXZlIEx1Y2kgc2hvdWxkIHByaW50IHRoZSBlcnJvcnRoYXQg
c3lzdXBncmFkZSBzaG93cyBpbiBTVERFUlIgYW5kIG1heWJlIHRyYW5zbGF0ZSBpdC4KCj4+IEkg
YWxzbyB0aG91Z2h0IHdlIG1heSB3YW50IHRvIHN0YXJ0IHNpZ25pbmcgT3BlbldydCBmaXJtd2Fy
ZXMgb25lIGRheS4KClRoZXJlIHdhcyBhIHByb3Bvc2FsIGZvciB0aGF0IHVzaW5nIHVzaWduIHNv
bWUgd2Vla3MgYWdvIGFuZCBhIFJGQyBvbiBHaXRodWIuCgo+PiBNeSBxdWVzdGlvbiBpczogd2hh
dCBkbyB5b3UgZmluZCB0aGUgYmVzdCB3YXkgb2YgaW1wbGVtZW50aW5nIGl0Pwo+Pgo+PiBBIHNp
bXBsZSByZXR1cm4gY29kZSBvZiBiYXNoIHNjcmlwdCB3b24ndCBiZSBzdWZmaWNpZW50ICh0b28g
bWFueSBkYXRhCj4+IHRvIHBhc3MsIGV2ZW4gaWYgd2UgZGVjaWRlIHRvIHVzZSBzb21lIGJpdCBm
bGFncykuIEkgd2FzIHRoaW5raW5nCj4+IGFib3V0IHByb3ZpZGluZyB2YWxpZGF0aW9uIHJlc3Vs
dCB1c2luZyBKU09OLiBTaG91bGQgdGhhdCBiZSBzb21lCj4+IHN0YW5kYWxvbmUgYXBwIG9yIGEg
dWJ1cyBkZWFtb24/IEhvdyBjb3VsZCB3ZSBoYW5kbGUgdGFyZ2V0LXNwZWNpZmljCj4+IHZhbGlk
YXRpb24gc3RlcHM/CgpKdXN0IHByaW50IGFuIGVycm9yIG1lc3NhZ2UgaW4gc3lzdXBncmFkZSB0
byBTVERFUlIuCkRvbid0IGRvIG92ZXJjb21wbGljYXRlZCBzb2x1dGlvbnMuIFlvdSdyZSBvbiBs
aW51eC4KSWYgeW91IHdhbnQgdG8gd3JpdGUgYSB1YnVzLXdyYXBwZXIgSSdtIGZpbmUgd2l0aCB0
aGF0LCB0b28sCmJ1dCBkb24ndCBwdXQgdG8gbXVjaCBlZmZvcnQgaW4gaXQuIFNpbXBsZSBzb2x1
dGlvbnMgYXJlIGJlc3QgaGVyZS4KCj4gT3ZlciB0aGUgbGFzdCBmZXcgd2Vla3MgSSd2ZSBpbXBs
ZW1lbnRlZCBtYW55IHN5c3VwZ3JhZGUgaW1wcm92ZW1lbnRzLgo+IFRoZXJlIGFyZSAyIHBhdGNo
ZXMgdW5kZXIgcmV2aWV3IHJpZ2h0IG5vdy4KPiAKPiBXaGF0IEkgc3RpbGwgd2FudCB0byBpbXBs
ZW1lbnQ6Cj4gMSkgVXNhYmxlICJ1YnVzIGNhbGwgc3lzdGVtIHN5c3VwZ3JhZGUiIHdpdGhvdXQg
L3NiaW4vc3lzdXBncmFkZQoKRG8geW91IG1lYW4gcHV0dGluZyB0aGUgZnVuY3Rpb25hbGl0eSBp
bnRvIGEgbGlicmFyeSB3aGljaApjYW4gYmUgY2FsbGVkIGJ5IHVidXMgYW5kIC9zYmluL3N5c3Vw
Z3JhZGUgb3IganVzdCB3cml0aW5nIGEgdWJ1cy13cmFwcGVyPwpJZiB5b3UgaW50ZW5kIHRvIHdy
aXRlIGEgbGlicmFyeSwgdGhpcyBzaG91bGQgYmUgZG9uZSBpbiBDLgoKPiAyKSBMdUNJIHVzaW5n
IG5ldyB2YWxpZGF0aW9uIGluZm8KPiAKPiBUaGUgbGF0ZXIgbWF5IHRha2UgbWUgcXVpdGUgc29t
ZSB0aW1lIGFzIEkgaGF2ZSBjbG9zZSB0byB6ZXJvIEx1Q0kgZXhwZXJpZW5jZS4KCkx1Q0kgd2ls
bCBiZSB0aGUgc2ltcGxlc3QgdGhpbmcgaGVyZS4KCj4gCj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkg
b3RoZXIgc3VnZ2VzdGlvbnMgZm9yIGV4dHJhIGltcHJvdmVtZW50cz8KPiAKPiAtLQo+IFJhZmHF
ggoKCgpWaW5jZW50CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
