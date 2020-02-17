Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDC6161B9E
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Feb 2020 20:30:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzJZ/KLuiY2p8hjb73NlX4wzLRqiw24xDJzz/2ht/p4=; b=dtDgAaO/bDcTEP
	YOPnqchV9XMF6+NhdDmr+G1avDZNwx++7Xh0Kfoxa8/BdkqoToXY6OGvv3bBO7o/G3e00kSqcm7bc
	fxQ4pbg3GOqwTNcQSOnCcpAHyO6YMX+L/k8EHCo8y/KVBgHJqj3jBbhjOY9zPY+pypAwtkj6G7T9r
	REPXxzB8Rwf0SGUfpFNwPG3VZcZVawjinDsOkradzNzZ0ZglB+qc4eCujwMXPEDEbp5/vEIeC+5h8
	0YJwVH24RNM2EfF8nUmCtsPnkFRL8e39H6px/HyKLm5kKlZVLHg9/H3fTRv+5Kp8hYI3O5rcAKRyU
	JRZRuAXCghYpqG7QAGrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3m6Q-0007Sn-Ta; Mon, 17 Feb 2020 19:30:46 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3m6F-0007Pe-Ev
 for openwrt-devel@lists.openwrt.org; Mon, 17 Feb 2020 19:30:37 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M5gAG-1j5R3V2T2w-007FhJ; Mon, 17
 Feb 2020 20:30:31 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Christopher Hill'" <ch6574@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
In-Reply-To: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
Date: Mon, 17 Feb 2020 20:30:31 +0100
Message-ID: <018201d5e5c8$b7b797a0$2726c6e0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIsUyE3aeGnoPHNjJ0LiTDev/6iV6dy6n8g
Content-Language: de
X-Provags-ID: V03:K1:eqZxRtdmpovy5AN/05NoTAX47t2GcgmcLb0uLe75G8jZZbD2Dk6
 HOR980Yvbr0tlhOEmHhcoExnPAacfemiLCPI0Nqo68ZHtN8Teo5seRCxbxtxrq+GRlAEtJA
 7SZ42W7h9Wjtcw1HJN/PoylFoWXl1Wd7PVPR7mVkjYaEPkEZsImrcDw+3LTQ1XUFIksFdSL
 K3JBr9LhKTULHImp8jv9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vmeLPyNtlrI=:2eHWSmuuCh9fu/LWvR0frx
 7z4aazWEgNE2PqJWgS5OLECDWo3Df79NzxdQiusuFh3dZcjlz47SrcLhadxIOdMGO0nxCggkk
 T7cezHhAxuhSUsgu9ib/qoAGHbceDrnMq/6Mt9n4ujAumLphnocOKtmEL6YNd72wrIH8qyFAn
 r8egZ4ScDrK5WnzyFtvISyCZM1Kkqr7y7REdEZ9WVQnL9l3fACqZ3XMbb8LCB9/MjNn/jK/1H
 YtW+PMgl4OpOU/S0j9TBjeqrvUPIiWtm10baJfK723EMU46HV0oHM6DrU8D+9zYuhu0u4fsne
 6+kAHLtfGJ2EvHE2t46MvoZQq9p9uBvIYHtKpC/HIFMRdedumSS7xqdrFRVh/7dC6zDYL1X1y
 oE7oGAdcfmktrDUu7/oUtE5+ZzXHYk8LYqL8BiRpW2Flnmbl6D+w9wpqFiC66eLvVLIyDhvFk
 Q82wvv8qBcU9X43ztOzVgRKEGzvY23nnMJ1dfPaISnpEd8lqcMk3cljzGBSxQEKIzlN8pPcyo
 CVsfUH3aFqEgf5/JXakApR2QWqqreDHzRC8vkZV+X3nBkw2SZHUMur5kadhhfbur1IxOwNKCk
 bN286Tv7Ie1cR4qK7vA6hbih9/Z0DDlgwaPos+XR51JQrRbvZvqxTwDgmRVbvojwCojH5SRqW
 YU/0n08cQqNsXTEku2wlPDJQ7WZixfn1kS93hxj0LCCfq+sAd0Bh4sqBEkFhKHh0MHHyy4bXX
 Fp89yLczIgzisyL6FMitPZ9JtUAQ//sxr/CfyvZWOmJS84XfE0kXVyKO+VHNZ6TCM+E2vVY7K
 kFbdtWAt4VBAfeLJxuM9zLreRwmI3RVs/klkA4XRlLMyg8GZntnF+YWYXzJGPETVO3/Dejd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_113035_804743_11313D50 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0
bzpvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddIE9uCj4gQmVoYWxmIE9m
IENocmlzdG9waGVyIEhpbGwKPiBTZW50OiBNb250YWcsIDE3LiBGZWJydWFyIDIwMjAgMTY6MDMK
PiBUbzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IFN1YmplY3Q6IFtPcGVuV3J0
LURldmVsXSBNaWtyb3RpayBhcjcxeHggLT4gYXRoNzkgcG9ydAo+IAo+IEhpLAo+IAo+IE5ldyBo
ZXJlLCBhbmQgYW0gbG9va2luZyBmb3Igc29tZSBhZHZpY2Ugb24gcG9ydGluZyBhbiBleGlzdGlu
ZyBkZXZpY2UKPiB0byBhdGg3OSAtIHNwZWNpZmljYWxseSBhIE1pa3JvdGlrIFJCNDkzRyAod2hp
Y2ggaXMgTkFORCkuCj4gCj4gVGhlIGFyZWEgSSdtIGxvb2tpbmcgZm9yIGd1aWRhbmNlIC8gdGlw
cyBvbiBpcyBnZXR0aW5nIHRoZSBsem1hLWxvYWRlcgo+IHRvIGJvb3QgdGhlIG5ldyBrZXJuZWwu
IEkgaGF2ZSBjb21waWxlZCBhIG5ldyBpbWFnZSogYW5kIEkgY2FuIHRmdHAgYm9vdAo+IHRoaXMg
YW5kIHNlZSBvbiB0aGUgc2VyaWFsIGNvbnNvbGUgdGhlIGx6bWEtbG9hZGVyIHJ1bm5pbmcgYW5k
Cj4gZGVjb21wcmVzc2luZyB0aGUga2VybmVsIGFuZCB0aGVuIHN0YXJ0aW5nIGl0Li4uIGJ1dCB0
aGVuIG5vdGhpbmcKPiBoYXBwZW5zIG5leHQuCgpIYXZlIGEgbG9vayBhdCB0aGUgYW5ub3RhdGlv
bnMgSSBwdXQgaW50byB5b3VyIHJlcG8uIEl0IGxvb2tzIGxpa2UgeW91IGhhdmUgbWlzdGFrZW4g
c2l6ZSBmb3IgcGFydGl0aW9uIGVuZGluZ3MgaW4gdGhlIERUUy4KSSByZW1lbWJlciBAcm9nZXJw
dWV5byBhbHNvIGhhZCBwcm9ibGVtcyBib290aW5nIGhpcyBkZXZpY2UgZHVlIHRvIGEgd3Jvbmcg
cGFydGl0aW9uIHNldHVwLiBNYXliZSBmaXhpbmcgdGhlIHBhcnRpdGlvbnMgd2lsbCBiZSBlbm91
Z2ggLi4uCgpCZXN0CgpBZHJpYW4KCj4gCj4gSSBoYXZlIHR3byBxdWVzdGlvbnMgYmVsb3cgdGhh
dCBJIHdvdWxkIGJlIGdyYXRlZnVsIGZvciBhbnkgb3BpbmlvbnMgb3Zlci4KPiAKPiBUaGFua3Ms
Cj4gQ2hyaXMKPiAKPiAKPiAqIFRoZSBuZXcgZHRzIGZpbGUgYW5kIG1ha2VmaWxlIGNoYW5nZXMg
YXJlIGhlcmU6Cj4gaHR0cHM6Ly9naXRodWIuY29tL2NoNjU3NC9vcGVud3J0L3RyZWUvcmI0OTNn
Cj4gCj4gCj4gCj4gVGhpcyBpcyB3aGF0IEkgc2VlIG9uIHRoZSBzZXJpYWwgY29uc29sZToKPiAK
PiAgIE9wZW5XcnQga2VybmVsIGxvYWRlciBmb3IgQVI3WFhYL0FSOVhYWAo+ICAgQ29weXJpZ2h0
IChDKSAyMDExIEdhYm9yIEp1aG9zIDxqdWhvc2dAb3BlbndydC5vcmc+Cj4gICBEZWNvbXByZXNz
aW5nIGtlcm5lbC4uLiBkb25lIQo+ICAgU3RhcnRpbmcga2VybmVsIGF0IDgwMDYwMDAwLi4uCj4g
Cj4gVGhhdCdzIGl0Lgo+IAo+IEkndmUgdHJpZWQgYWRkaW5nIGV4dHJhIGJvb3RhcmdzICJlYXJs
eWNvbiIgYW5kICJlYXJseXByaW50ayIgaW4gdGhlIGR0cwo+ICJjaG9zZW4iIHNlY3Rpb24gaG93
ZXZlciBJIHN0aWxsIGRvbid0IHNlZSBhbnl0aGluZy4gUnVubmluZyBiaW53YWxrIG9uCj4gbXkg
bmV3IGF0aDc5IGltYWdlIHZzIHRoZSAxOS4wNyBhcjcxeHggaW5pdHJhbWZzIGltYWdlIHJldmVh
bHMgc29tZQo+IGRpZmZlcmVuY2VzOgo+IAo+IDE5LjAxIGFyNzF4eDoKPiAKPiAgIERFQ0lNQUwg
SEVYQURFQ0lNQUwgREVTQ1JJUFRJT04KPiAKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAg
MCAgICAgICAweDAgICAgICAgICBFTEYsIDMyLWJpdCBNU0IgTUlQUy1JIGV4ZWN1dGFibGUsIE1J
UFMsIHZlcnNpb24gMQo+IChTWVNWKQo+ICAgOTU4MCAgICAweDI1NkMgICAgICBDb3B5cmlnaHQg
c3RyaW5nOiAiQ29weXJpZ2h0IChDKSAyMDExIEdhYm9yIEp1aG9zCj4gPGp1aG9zZ0BvcGVud3J0
Lm9yZz4iCj4gICA5Nzg4ICAgIDB4MjYzQyAgICAgIExaTUEgY29tcHJlc3NlZCBkYXRhLCBwcm9w
ZXJ0aWVzOiAweDZELCBkaWN0aW9uYXJ5Cj4gc2l6ZTogODM4ODYwOCBieXRlcywgdW5jb21wcmVz
c2VkIHNpemU6IDc1NDM1NTYgYnl0ZXMKPiAKPiBOZXcgYXRoNzk6Cj4gCj4gICBERUNJTUFMIEhF
WEFERUNJTUFMIERFU0NSSVBUSU9OCj4gCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDAg
ICAgICAgMHgwICAgICAgICAgRUxGLCAzMi1iaXQgTVNCIE1JUFMtSSBleGVjdXRhYmxlLCBNSVBT
LCB2ZXJzaW9uIDEKPiAoU1lTVikKPiAgIDk1MzIgICAgMHgyNTNDICAgICAgQ29weXJpZ2h0IHN0
cmluZzogIkNvcHlyaWdodCAoQykgMjAxMSBHYWJvciBKdWhvcwo+IDxqdWhvc2dAb3BlbndydC5v
cmc+Igo+ICAgOTc0MCAgICAweDI2MEMgICAgICBMWk1BIGNvbXByZXNzZWQgZGF0YSwgcHJvcGVy
dGllczogMHg2RCwgZGljdGlvbmFyeQo+IHNpemU6IDgzODg2MDggYnl0ZXMsIHVuY29tcHJlc3Nl
ZCBzaXplOiAxMjczOTU4MiBieXRlcwo+IAo+IFNvIG15IGF0aDc5IGltYWdlIGlzIHF1aXRlIGEg
bG90IGJpZ2dlciwgYWxtb3N0IGRvdWJsZS4KPiAKPiAKPiBRdWVzdGlvbiAxIC0gIEFtIEkgcnVu
bmluZyBpbnRvIHNpemUgaXNzdWVzIGFuZCBzaW1wbHkgY2xvYmJlcmluZyBvdGhlcgo+IGFyZWFz
IG9mIG1lbW9yeT8KPiAKPiAKPiAKPiAKPiAKPiBOZXh0IHVzaW5nIGJpbndhbGsgdG8gZXh0cmFj
dCBhbmQgdW5wYWNrIHRoZSBMWk1BIGRhdGEgcmV2ZWFscyB0aGVpcgo+IGNvbnRlbnQgaXMgdmVy
eSBkaWZmZXJlbnQ6Cj4gCj4gMTkuMDEgYXI3MXh4Ogo+IAo+ICAgJCB0cmVlCj4gX29wZW53cnQt
MTkuMDcuMC1hcjcxeHgtbWlrcm90aWstdm1saW51eC1pbml0cmFtZnMtbHptYS5lbGYuZXh0cmFj
dGVkLyB8Cj4gaGVhZCAtMjAKPiAgIF9vcGVud3J0LTE5LjA3LjAtYXI3MXh4LW1pa3JvdGlrLXZt
bGludXgtaW5pdHJhbWZzLWx6bWEuZWxmLmV4dHJhY3RlZC8KPiAgIOKUnOKUgOKUgCAyNjNDCj4g
ICDilJzilIDilIAgMjYzQy43ego+ICAg4pSU4pSA4pSAIF8yNjNDLmV4dHJhY3RlZAo+ICAgICAg
IOKUnOKUgOKUgCA0NURCODgueHoKPiAgICAgICDilJzilIDilIAgNEYyRDM0Cj4gICAgICAg4pSc
4pSA4pSAIDRGMkQzNC43ego+ICAgICAgIOKUlOKUgOKUgCBfNEYyRDM0LmV4dHJhY3RlZAo+ICAg
ICAgICAgICDilJzilIDilIAgMC5jcGlvCj4gICAgICAgICAgIOKUlOKUgOKUgCBjcGlvLXJvb3QK
PiAgICAgICAgICAgICAgIOKUnOKUgOKUgCBiaW4KPiAgICAgICAgICAgICAgIOKUgiAgIOKUnOKU
gOKUgCBhc2ggLT4gYnVzeWJveAo+ICAgICAgICAgICAgICAg4pSCICAg4pSc4pSA4pSAIGJvYXJk
X2RldGVjdAo+ICAgICAgICAgICAgICAg4pSCICAg4pSc4pSA4pSAIGJ1c3lib3gKPiAgICAgICAg
ICAgICAgIOKUgiAgIOKUnOKUgOKUgCBjYXQgLT4gYnVzeWJveAo+ICAgICAgICAgICAgICAg4pSC
ICAg4pSc4pSA4pSAIGNoZ3JwIC0+IGJ1c3lib3gKPiAKPiAKPiBOZXcgYXRoNzk6Cj4gCj4gICAk
IHRyZWUKPiBfb3BlbndydC1hdGg3OS1uYW5kLW1pa3JvdGlrX3JvdXRlcmJvYXJkLXJiNDkzZy1p
bml0cmFtZnMtCj4ga2VybmVsLmJpbi5leHRyYWN0ZWQvCj4gICDilJzilIDilIAgMjYwQwo+ICAg
4pSc4pSA4pSAIDI2MEMuN3oKPiAgIOKUlOKUgOKUgCBfMjYwQy5leHRyYWN0ZWQKPiAgICAgICDi
lJzilIDilIAgWwo+ICAgICAgIOKUnOKUgOKUgCBbWwo+ICAgICAgIOKUnOKUgOKUgCAwMC1uZXRz
dGF0ZQo+ICAgICAgIOKUnOKUgOKUgCAwMF9wcmVpbml0LmNvbmYKPiAgICAgICDilJzilIDilIAg
MDAtc3lzY3RsCj4gICAgICAg4pSc4pSA4pSAIDAwLXdpZmktbWlncmF0aW9uCj4gICAgICAg4pSc
4pSA4pSAIDAxX2xlZHMKPiAgICAgICDilJzilIDilIAgMDJfZGVmYXVsdF9zZXRfc3RhdGUKPiAg
ICAgICDilJzilIDilIAgMDJfbmV0d29yawo+ICAgICAgIOKUnOKUgOKUgCAwMl9zeXNpbmZvCj4g
ICAgICAg4pSc4pSA4pSAIDBiMjZmMzZhZTBmNDEwNmQKPiAgIDxzbmlwPgo+ICAgICAgIOKUnOKU
gOKUgCA1NDBCMjgueHoKPiAgICAgICDilJzilIDilIAgNUQzQjg0LmNwaW8KPiAgIDxzbmlwPgo+
ICAgICAgIOKUnOKUgOKUgCBjcGlvLXJvb3QKPiAgICAgICDilIIgICDilJzilIDilIAgYmluCj4g
ICAgICAg4pSCICAg4pSCICAg4pSc4pSA4pSAIGFzaCAtPiBidXN5Ym94Cj4gICAgICAg4pSCICAg
4pSCICAg4pSc4pSA4pSAIGJvYXJkX2RldGVjdAo+IAo+IAo+IFF1ZXN0aW9uIDIgLSBhcmUgdGhl
c2UgZGlmZmVyZW5jZXMgaW4gaG93IHRoZSBpbWFnZSBpcyBiZWluZyBwYWNrZWQKPiBjYXVzaW5n
IHByb2JsZW1zPwo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
