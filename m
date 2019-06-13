Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F02443345
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 09:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MVjBtPLP0DHjSG9uza9KNu1t7WZbcPzDlDSsCmm+bzQ=; b=aBQa94gxXUI9DPOa3b/c/opcv
	cUtW0IgNWwXhrI7VnYhwgh1rfupLryKi5lfF6fz7dsX/eEfVUJJbmePnvpjADNZGE8EAnYAAFVJVl
	kKn6YAARrhc8eZvRByFoihHsYjz2jWGvLjf8cesQoTYy//UMcqW5AE5oXjVygfZphjDn1bNI7NJi+
	TgpsEkXaSKDzzrB5ajMY3ZpJ6XjaypvHw3jWh25ras3f0aSe0mWycGN50s9pzhnv6w+DqS6KAd/ke
	TJl1k2KeuT7byUMkBD4/dquBdtN/6AXH8g4OC0YEEIuTRXiaJN1iN8B8An7PbNLeg8hv330UAd1F5
	9M+Uz/Eqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbK1H-000610-G5; Thu, 13 Jun 2019 07:19:35 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbK0H-0005UM-BJ
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 07:18:35 +0000
Received: from [192.168.180.1] (port=58690 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1hbK0C-0003Gt-1U; Thu, 13 Jun 2019 09:18:28 +0200
Received: from janus.kalnet.hooya.de (unknown [10.8.1.18])
 by admins.marcant.net (Postfix) with ESMTPA id 3DD1E2801CC;
 Thu, 13 Jun 2019 09:18:28 +0200 (CEST)
To: Hans Dedecker <dedeckeh@gmail.com>
References: <20190608114809.9480-1-avalentin@marcant.net>
 <20190608114809.9480-3-avalentin@marcant.net>
 <CAJLcKsEPFZWBcuTiVUL_mt1Qk6JXrg-q=jj7bvRDXESKrLVptw@mail.gmail.com>
 <5a1418f9-5b0c-ff52-2d60-01e382b62d08@marcant.net>
 <CAJLcKsH3XoYnAzUeJknk5QEr76sZvvkb=XM2nvUUjD-3BdTL0w@mail.gmail.com>
 <0427a156-11f1-429f-db41-1ca12b003a3e@marcant.net>
 <CAJLcKsFZxT7-Xq7v-GQqwMJ6jZ9KbHpxG4bHfrc6AEPrBQ11LA@mail.gmail.com>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <9899c316-5817-9e65-8a5c-eb893ecdd1ad@marcant.net>
Date: Thu, 13 Jun 2019 09:19:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJLcKsFZxT7-Xq7v-GQqwMJ6jZ9KbHpxG4bHfrc6AEPrBQ11LA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_001833_563283_6E4C9842 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkhCgpPbiAxMy4wNi4xOSAwODo0NCwgSGFucyBEZWRlY2tlciB3cm90ZToKPiBIaSwKPiAKPiBP
biBXZWQsIEp1biAxMiwgMjAxOSBhdCA4OjI4IFBNIEFuZHJlIFZhbGVudGluIDxhdmFsZW50aW5A
bWFyY2FudC5uZXQ+IHdyb3RlOgo+Pgo+PiBIaSBIYW5zISEKPj4gQW0gMTEuMDYuMTkgdW0gMjI6
MTYgc2NocmllYiBIYW5zIERlZGVja2VyOgo+Pj4gSGksCj4+Pgo+Pj4gT24gTW9uLCBKdW4gMTAs
IDIwMTkgYXQgODoxMCBQTSBBbmRyZSBWYWxlbnRpbiA8YXZhbGVudGluQG1hcmNhbnQubmV0PiB3
cm90ZToKPj4+Pgo+Pj4+IEhpIEhhbnMsCj4+Pj4KPj4+PiBhZnRlciB0ZXN0aW5nIHhmcm0gdHVu
bmVscyBhIGJpdCBJIGZvdW5kIHRvIGJpZyBkaWZmZXJlbmNlcyBjb21wYXJlZCB0byBvdGhlciBj
b252ZW50aWFsIHR1bm5lbHMuCj4+Pj4gMSkgeGZybSB0dW5uZWwgaW50ZXJmYWNlcyBjYW5ub3Qg
YmUgcmVwbGFjZWQgd2l0aCBuZXRsaW5rCj4+Pj4gMikgeGZybSB0dW5uZWwgaW50ZXJmYWNlcyBE
TyBOT1QgdmFuaXNoIGlmIHBhcmVudCBpcyBkZWxldGVkCj4+Pj4KPj4+PiBUaGlzIGxlYWRzIHRv
IHNvbWUgZXJyb3JzIGFuZCBhIGxvb3AgaW4gaW50ZXJmYWNlIGNyZWF0aW9uLiBXaXRoIHRoZSBj
aGFuZ2VzIGJlbG93LAo+Pj4+IGl0IHdvcmtzIHNtb290aGx5IHdoZW4gbm90IGJvdW5kIHRvIHBw
cCBpbnRlcmZhY2VzICh1c2luZyBsYW4gaW5zdGVhZCksIHNlZToKPj4+PiBNb24gSnVuIDEwIDEx
OjQyOjA2IDIwMTkgZGFlbW9uLm5vdGljZSBuZXRpZmQ6IHhmcm0wICgxNDI1NSk6IENvbW1hbmQg
ZmFpbGVkOiBVbmtub3duIGVycm9yCj4+Pj4gTW9uIEp1biAxMCAxMTo0MjowNiAyMDE5IGRhZW1v
bi5ub3RpY2UgbmV0aWZkOiBJbnRlcmZhY2UgJ3hmcm0wJyBpcyBub3cgZG93bgo+Pj4+IE1vbiBK
dW4gMTAgMTE6NDI6MDYgMjAxOSBkYWVtb24ubm90aWNlIG5ldGlmZDogSW50ZXJmYWNlICd4ZnJt
MCcgaXMgc2V0dGluZyB1cCBub3cKPj4+PiBNb24gSnVuIDEwIDExOjQyOjA2IDIwMTkgZGFlbW9u
Lm5vdGljZSBuZXRpZmQ6IHhmcm0wICgxNDI4MSk6IENvbW1hbmQgZmFpbGVkOiBVbmtub3duIGVy
cm9yCj4+Pj4gYW5kIHNvIG9uCj4+Pj4+PiBXaGF0IGRvIHlvdSB0aGluaz8KPj4+IFRoZSBkZXNj
cmlwdGlvbiBpcyBhIGJpdCBjcnlwdGljIHRvIG1lOyBjb3VsZCB5b3UgZXhwbGFpbiB3aGF0IHdv
cmtzCj4+PiBhbmQgd2hhdCBkb2VzIG5vdCB3b3JrIGFuZCB3aHkgPwo+PiBTb3JyeSBmb3IgYmVp
bmcgY3J5cHRpYywgSSB0ZW5kIHRvIHRoYXQ7LSkgT2theSwgSSBkbyB0aGUgZm9sbG93aW5nOgo+
PiAjIGlmdXAgeGZybTAKPj4gLi4uIHVzZSBpdAo+PiAjIGlmZG93biB4ZnJtMAo+PiBUaGUgaW50
ZXJmYWNlIHN0aWxsIGV4aXN0cyAoY2hlY2tlZCB3aXRoIGlwIGxpbmspCj4+Cj4+IE5vdyBJJ2xs
IGRvIGlmdXAgYWdhaW4gYW5kIHRoaXMgaGFwcGVucyBlbmRsZXNzbHk6Cj4+Pj4gTW9uIEp1biAx
MCAxMTo0MjowNiAyMDE5IGRhZW1vbi5ub3RpY2UgbmV0aWZkOiB4ZnJtMCAoMTQyNTUpOiBDb21t
YW5kIGZhaWxlZDogVW5rbm93biBlcnJvcgo+Pj4+IE1vbiBKdW4gMTAgMTE6NDI6MDYgMjAxOSBk
YWVtb24ubm90aWNlIG5ldGlmZDogSW50ZXJmYWNlICd4ZnJtMCcgaXMgbm93IGRvd24KPj4+PiBN
b24gSnVuIDEwIDExOjQyOjA2IDIwMTkgZGFlbW9uLm5vdGljZSBuZXRpZmQ6IEludGVyZmFjZSAn
eGZybTAnIGlzIHNldHRpbmcgdXAgbm93Cj4+Pj4gTW9uIEp1biAxMCAxMTo0MjowNiAyMDE5IGRh
ZW1vbi5ub3RpY2UgbmV0aWZkOiB4ZnJtMCAoMTQyODEpOiBDb21tYW5kIGZhaWxlZDogVW5rbm93
biBlcnJvcgo+Pgo+PiBJbiBuZXRpZmQgdGhlIHhmcm0wIGludGVyZmFjZSBpcyBjcmVhdGVkIHdp
dGggdGhlIFJFUExBQ0UgZmxhZywgYnV0IHRoYXQgZG9lcyBub3Qgc2VlbSB0byB3b3JrLCBpdCBj
YW5ub3QgYmUgcmVjcmVhdGVkIGFuZCBmYWlscy4KPj4gVGhlIHJlc3VsdCBpcyB0aGUgdXBwZXIg
ZXJyb3IgcmVwZWF0aW5nLgo+PiBUaGF0J3Mgd2h5IEkgdGhpbmsgYWJvdXQgdGhlIGNhbGwgdG8g
ImlwIGxpbmsgZGVsZXRlIHhmcm0wIiBiZWZvcmUgcHJvdG9faW5pdF91cGRhdGUgY2FsbCBhbmQg
aW4gdGhlIHRlYXJkb3duIGNhbGwuCj4gQWRkaW5nIHRoZSBpcCBsaW5rIGNhbGxzIGRvZXMgbm90
IG1ha2Ugc2Vuc2UgdG8gbWUgYXMgbmV0aWZkIHNob3VsZAo+IHRha2UgY2FyZSBvZiBkZWxldGlu
ZyB0aGUgeGZybSBpbnRlcmZhY2VzCj4gQXJlIHlvdSBzdXJlIHRoZSB4ZnJtIGludGVyZmFjZXMg
Y2FuIGJlIGRlbGV0ZWQgYnkgdGhlIGlvY3RsIGNhbGwKPiBTSU9DREVMVFVOTkVMIGFzIGlzIHRo
ZSBjYXNlIG5vdyA/Cj4gRm9yIHRoZSBvdGhlciB0dW5uZWwgaW50ZXJmYWNlcyBsaWtlIHZ0aS9n
cmUgZGVsZXRpb24gaXMgZG9uZSB2aWEgdGhlCj4gbmV0bGluayBpbnRlcmZhY2UuCgpHb29kIHBv
aW50LCBJIHdpbGwgY2hlY2sgdGhhdC4KPiAKPiBOZXh0IHRvIHRoYXQgSSBub3RpY2VkIGEgdHVu
bGluayBpcyBzcGVjaWZpZWQgaW4geGZybS5zaCBidXQgbm8KPiBwcm90b19hZGRfaG9zdF9kZXBl
bmRlbmN5IGlzIGFkZGVkOyBpcyB0aGlzIG9uIHB1cnBvc2UgPwpZZXMsIHRoYXQgaXMgb24gcHVy
cG9zZS4gVGhlIHR1bmxpbmsgc3BlY2lmaWVkIGlzIGEgbXVzdCwgYnV0IGlzIG5vdGVkIAp1c2Vk
IGZvciBkZWNyeXB0aW5nIGFuZCBlbmNyeXB0aW5nIHBhY2tldHMuIEl0IHdvcmtzIG9uIGV2ZXJ5
IGludGVyZmFjZS4KCkFsc28gdGhlIFhGUk0gaW50ZXJmYWNlIGhhcyBubyBJUCBlbmRwb2ludCwg
c28gdGhlcmUgbm8gcG9zc2liaWxpdHkgdG8gCmFkZCB0aGlzIHRvIHRoZSBpbnRlcmZhY2UsIGl0
IHdvdWxkIGJlIG9ubHkgY29zbWV0aWNhbC4KClRoYW5rcywKCkFuZHLDqQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
