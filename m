Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A561CAD02F
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 19:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fT0qljLLx6cKCaX6SJlOJT5Uhmyy4/zMJHimG+US3x4=; b=PFW0/J/q9j/BZP
	YQiwFMqluK/ARpwmhIt+9ESVya4BSUeCqcNif65paBzypyZmFKS3bOBmMy3DhraJZKwq253G6aIDB
	vnOeqvtUmm/JaQAmfi8YBOf9h5Omo0BSob4sCpKImbf4XE9aNA5t2jaWdFMt/8EcloT5SBlaEddWo
	im3YO6zRW6QDhbWjdXOT0Wvdb8BNDUV5PlT0FDSec58M+q9CrRBOHkftNFNh1xJn9p1/uHg5KrXHp
	7IQSjcnMipvF0iTKE+nJFGlZmfTNcIK1h3pVAvZ0IZsKL1AfUwNEa6mCjlwI3oUYp+tthCLhKX3Dg
	baaWm+wLbvzUDoHWWrjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i711D-0003ND-8e; Sun, 08 Sep 2019 17:30:31 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7116-0003ML-C1
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 17:30:26 +0000
Received: (qmail 29090 invoked from network); 8 Sep 2019 17:30:14 -0000
Received: from localhost (HELO ?192.168.1.133?) (127.0.0.1)
 by achernar.uberspace.de with SMTP; 8 Sep 2019 17:30:14 -0000
To: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 openwrt-adm@lists.openwrt.org
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <250c8e36-3f42-d9c0-25ce-607f0e62ddac@mein.io>
 <87tv9psnyv.fsf@miraculix.mork.no>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 mQINBFRRft4BEAC02uXbCKWgSHp2qoq5aqv8RWpWmHldJgcUE8qcmLpmQv8GkxCIFsZ78JjJ
 6uOVewDBMV1mQ8jONfiiUQYmw6IxHs9Hk+EPCKCynHrkmQUnq8Kjpa6mEenYlPe5Sx2u5CwY
 hRbFTlFXibKnY03tavt6ckZCZP9vi3aU+gw4jBma0Ev1z0fdf23V3jpPjNIJU6lzDe0EYhuT
 +b2HBEA9OYr/G8v7OolOWI53C98fc0LB29+A+FPGKxZzbiPWHUYpjwa8iHMQUecJhD1MvPaC
 KUPyjW9GQN9AAUcfOSceZAglwgr1JNmB7zzEqGr5vSXQL/Gxq0otT+LvH6l+nDPXhvtrJ387
 EEKZ71HUrb5v4LOfcF3y4JxLnIyCM/wN2DQNFbpYTGTX30WQm0YfGJRHrJ2H0jc8PGfo4egH
 xR+7LmLbhHm9Odjusg2dCOX+S7HaeogO70jYCdNXgrB7UkVybWGRcEVjkf8iiIXGvl5oqeRz
 fNgHH6UzpDWdPlnMMGv/iRhfrsReu5nSgKQA/LY5+8ItVpqN3TrtwmcmP8+BWuZIdTUJE24s
 gZqipqaKfRlXvl6Tr61VzkbWS7mp0ccW5Iin4q619Pulqm+vgvMQuUOxII8yeBjSdsJWyg7o
 gcizk9Ed70jKf0GVWUDJtVdFBSRVNIghIBso4mxBUS7cH/uncQARAQABtDhWaW5jZW50IFdp
 ZW1hbm4gKENvZGVGZXRjaCkgPHZpbmNlbnQud2llbWFubkBpcm9uYWkuY29tPokCOAQTAQIA
 IgUCVFF+3gIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4AACgkQyubkBBHeYFZOgxAAs6c1
 sL3BIBTOA62/eCiJeLtClXgxQZS+kkIyaUq3uLnp0ZpBuAy5SETcBP70p0gOjZ0f9YnkHs71
 16Aw2NUGfyvAFvDEb26Fie7uk4q6UNMJsxmcyPB2sFt5mneh28ame1nvQp8EQr2qekY4Kv14
 gR3yVj/yecX9s+PnMlfQoMMum/jm58choWSz9K9XUV4FZ8IIeJk4c6nVJ73ALXnAAsttNPy+
 Ml9I9wTFogJR/EUlrRW4VKYGyeh8vaORDv4ZDiUVdO0JM8EKecU5+GThX6g6Ngj53exwkNs5
 gPHfRn8nu/tJtuBmXBAjvIzjATmaJXOGW8UziqOH4kCoqn0oapXDsti5j2s/VtOp/VAGzGfs
 F46crCPIEBf5/BtHniLltCSjXVGPvn//ZjXkzehDT+qNO0Dfl+lxwSP2T4jv4GnBZGl+rIqW
 yZug1kLaX91logGKjL9ZueMpbZYwRALRcNf0P46jdWgCkoEzTnX/8rHJ//AOCCLPNQCO6R4p
 m8L+7zwUTmVoXTeQyE8mX4K5Z5uDA2DOfFrjAVKB+cYK1g0Zlq6Hc3z51KiMguKfu0Ruuhfc
 SDTZcQMk86cMuNF7eNsKQ8+oqHyilBv1Oaoejs/fGbLv7Iy7x2MViF9puJ4jRGZ9zWoHgI+o
 3R5WO6akEUkwvs9DpiD29KsVXj3fpzC5Ag0EVFF+3gEQAOrJCsDoMUBrhMF+bVLNhAEvdKWy
 xNsdh/OsRfV2irpSe5amQg1VaNVtvL/YsE1cyfI9+29bXjbljshjzFSJZHuct4jujVLTfViA
 +VLPRkahgjAA7/iQmi2O17XXueuaQ00BGq5fxr+gjTeOt4cy4Q2+kU/Dgget+ktWDzwuHkyJ
 nbqsMhCrE1OED7ZLZSgfHEgWPQmFoXgJ2mjAAZ0FgTjCv67Z4Cx8xAh1jHEPSoRJzK5m+xkL
 p9fzMnYbf+deg/Z8hL8aHXN9nTve/PPNP2KhAJVUeyGT7GfYlDfaXgl1Gh7vfyMNjx3SzRz1
 4Mb8YFLoUeuerudkEt/UGVL7EOlBB0hoiDlLk3uO4I7l0MYy7bBsDQIH8chVy4vIvHHbFxpI
 VJCknANBiaV7tqYPI3ebQhsCX4POn3xq1RF8x67G5uz/95dVN94SNXcPncm9Kq2Xihsi14si
 PTt6nFd+5STmqKGpinCa5lvVlKmbfqYCICHWjkAxhxMkiLd+H3By/vdrZSGGYQrD8W957WsD
 Ntv4+zb8lWRnjPFxiVG6URKkzA3/zBiuuuprOC0GnroOHJH309OiCpUwA235BqZMtTL5cTu9
 VCaxjYNqIfc3QGlQL1mOC8agYykZSykAeGlTFOYglD8KI8W5OEGY+Tu+waEOf7Xi1U4CZ1aM
 xovx1KTZABEBAAGJAh8EGAECAAkFAlRRft4CGwwACgkQyubkBBHeYFYvKA//TIjRA4nQEEw+
 iOMNDrLBZ12PgGOFx6WI7P4KwE8zZpbu+G7EF4jKrYLeQgCvua7DKNl4Xkkmb3SOzhfhjVRn
 3rXMwooSQg3uxt975UG/5nvuGMlNaWlKlRKas4BVrcgbCeBURUpH7NNzzC6Y71N6lDe/R0Z/
 MXL0cLRb0QnwqL7l/ei3vauS8f5yBRyix4DjVXAwuA6WK7eXhnc1hJH5m5Y/ktzu/x3UE21B
 XMIoTAocXzZF1jtr1aSCyCRnW0z1vcj0UcGCa1qRIY6Gg0rjiYvSL3tT/xyOrlCCF3BZdVZR
 Xb4E+tdSzURfShUvqKXzqRSScuI8p3PA2K1FHBVUpAMEEgBQLeUC64fE9VTs9EPXfhIQVRIp
 /xUdpgablxBRSRCXW0GFb/t9b/hVle1XK3+w+Emc7Rv0XDySRZMGnyWQUhJGLelnY1Kyn8nC
 olG+GaBcRlOWameU/sdXSbKGRCwPnstXEZo7sbFsoN6tpvLQLzofJKlLrJ3Qojr3djM8kgHj
 En/wIwj23Nir/Dwr3iWZYvwWPFKcYqcaVCy9fRhqRnq7DsXqYGgZNgxnzsjrtie8hL0CEwId
 uYrL/p7BTzxmlQ3/P3XUZP1xrzsLs6VGo+gUyfilKl48zYNJr3qY1kMMGF4qrjZzVQSFZgxn
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <d3b729a9-21a6-5e20-2150-7b138df0680b@ironai.com>
Date: Sun, 8 Sep 2019 19:30:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87tv9psnyv.fsf@miraculix.mork.no>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_103024_702769_CB8FF8AF 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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

T24gMDYuMDkuMTkgMTI6NDQsIEJqw7hybiBNb3JrIHdyb3RlOgo+IEpvLVBoaWxpcHAgV2ljaCA8
am9AbWVpbi5pbz4gd3JpdGVzOgo+IAo+Pj4gQnVpbGRib3QgaXMgYWxyZWFkeSBjcnVuY2hpbmcg
dGhlIGltYWdlcyBhbmQgcGFja2FnZXMsIGFuZCBwcmV0dHkgbXVjaAo+Pj4gYWxsIHRhcmdldHMg
YXJlIGdyZWVuLiBTbyB0aGVyZSBhcmUgbm8gb2J2aW91cyBidWlsZCByZWxhdGVkIGlzc3Vlcwo+
Pj4gcHJldmVudGluZyB0aGUgcmVsZWFzZS4gSSBoYXZlIGFsc28gbm90IG5vdGljZWQgYW55IGZy
YW5jdGljIGRpc2N1c3Npb24KPj4+IGFib3V0IHNwZWNpZmljIG1ham9yIGJ1Z3MgYmxvY2tpbmcg
dGhlIHJlbGVhc2UsIHNvIGl0IGxvb2tzIHByZXR0eSBnb29kCj4+PiBhdCB0aGUgbW9tZW50Lgo+
Pgo+PiB0aGVyZSBhcmUgdmFyaW91cyBMdUNJIGJ1Z3Mgd2hpY2ggbmVlZCB0byBiZSBhZGRyZXNz
ZWQgZmlyc3QuCj4gCj4gSXMgdGhlcmUgYSBsaXN0IG9mIHJlbGVhc2UgYmxvY2tpbmcgYnVncyBh
bnl3aGVyZT8gIEkgZ3Vlc3Mgd2UgYXJlIG1vcmUKPiB0aGFuIGEgZmV3IHdobyB3b3VsZCBiZSBp
bnRlcmVzdGVkIGluIGxvb2tpbmcgYXQgdW5rbm93biBjb2RlLCBpZiB3ZQo+IGtuZXcgZml4aW5n
IGl0IHdhcyBjcml0aWNhbCBmb3IgYSByZWxlYXNlLgoKSSBhc3N1bWUgT3BlbldydCdzIHBvbGlj
eSBpcyBzaW1pbGFyIHRvIHRoZSBMaW51eCBrZXJuZWwsIGJ1dCBhcyBmYXIKYXMgSSBrbm93IGl0
J3MgdW5kb2N1bWVudGVkLgpGcm9tIG15IHBlcnNwZWN0aXZlIG1vc3RseSBjcml0aWNhbCBidWdz
IGluIHRoZSBidWcgdHJhY2tlci4KCj4gSXQgd291bGQgYWxzbyBiZSBuaWNlIHRvIGtub3cgdGhl
IHJlbGVhc2UgcG9saWN5LiAgSS5lLiwgd2hhdCBtYWtlcyBhCj4gYnVnIGNyaXRpY2FsIGVub3Vn
aCB0byBibG9jayB0aGUgcmVsZWFzZT8gCgpXaGVuIGEgZGVmYXVsdCBmZWF0dXJlIG9yIGltcG9y
dGFudCBwbGF0Zm9ybSBicmVha3MuCgo+IFdoZW4gaXMgYSBidWdneQo+IGZlYXR1cmUvcGxhdGZv
cm0vd2hhdGV2ZXIgZHJvcHBlZCBmcm9tIHRoZSByZWxlYXNlIGluc3RlYWQgb2Ygd2FpdGluZwo+
IGZvciBhIGZpeD8KCldoZW4gbm9ib2R5IGlzIHdvcmtpbmcgb24gaXQgb3IgaXQgdGFrZXMgdG9v
IGxvbmcuCgo+IEkgYmVsaWV2ZSBEZWJpYW4gaGFzIGhhZCBncmVhdCBzdWNjZXNzIHdpdGggZXhw
bGljaXQgcmVsZWFzZQo+IGdvYWxzIGFuZCBhYnNvbHV0ZSB0aW1lIGxpbWl0cy4KCkVuY291cmFn
ZSBwZW9wbGUgdG8gZml4IGJsb2NraW5nIGlzc3VlcyBhbmQgbWFyayB0aGVtIGFzIGJsb2NraW5n
L2NyaXRpY2FsLgpTZXR0aW5nIGFuIGFic29sdXRlIHRpbWUgbGltaXQgaXMgbm90IGEgZ29vZCBp
ZGVhIGZvciBhIEZPU1MgcHJvamVjdCBhcwppdCBkb2VzIG5vdCBpbmNyZWFzZSBwcmVzc3VyZSBv
biBhbnlvbmUgbGlrZSBpbiBhIHdvcmtpbmcgc2l0dWF0aW9uIGFuZCBzaG91bGQKYmUgYSBsYXN0
IHJlc29ydCBvbmx5LgpJIHRoaW5rIERlYmlhbiBpcyBub3QgdGhlIGJlc3QgZXhhbXBsZS4uLiBB
dCBzb21lIHBvaW50IHRoZXkgbG9zdCBtYW55IG9mIHRoZWlyCmRldmVsb3BlcnMgdG8gVWJ1bnR1
IChtYXliZSBiZWNhdXNlIHRoZXkgd2VyZSB1c2VkIHRvIGJlIHRyZWF0ZWQgYXMgZW1wbG95ZWVz
IDstRCkKCj4gRG9jdW1lbnRpbmcgd29ya2Fyb3VuZHMgaXMgYWxzbyBhbiBvcHRpb24sIGVzcGVj
aWFsbHkgZm9yIG9wdGlvbmFsCj4gZmVhdHVyZXMgaW4gcmVsZWFzZSBjYW5kaWRhdGVzLgoKVGhp
cyB3aWxsIGxpa2VseSBmcnVzdHJhdGUgdXNlcnMgYW5kIGlzIGEgbGFzdCByZXNvcnQgb25seS4K
RG9jdW1lbnRpbmcgaXNzdWVzIGlzIGFsc28gd29yay4gQmV0dGVyIHRyeSB0byBmaXggaXQgZmly
c3QuCgo+IEkgY2FuIHVuZGVyc3RhbmQgdGhhdCBtYWpvciBMdUNJCj4gYnJlYWthZ2Ugc3RpbGwg
aXMgY29uc2lkZXJlZCB1bmFjY2VwdGFibGUsIGJ1dCBJIGNhbid0IHJlYWxseSBpbWFnaW5lCj4g
dGhhdCB0aGVyZSBhcmUgdGhhdCBsb3RzIG9mIHN1Y2ggYnVncz8KPiAKPiBBbmQgZG9jdW1lbnRp
bmcga25vd24gaXNzdWVzIGluIGEgcmVsZWFzZSBjYW5kaWRhdGUgd2lsbCBhdHRyYWN0IGV2ZW4K
PiBtb3JlIGF0dGVudGlvbiB0byBidWcgZml4aW5nIGZvciB0aGUgZmluYWwgcmVsZWFzZS4gIEl0
J3MgYSB3aW4td2luLgoKVGhhdCdzIGEgZ29vZCBpZGVhIGZvciBub24tY3JpdGljYWwgaXNzdWVz
LgoKPiAKPiAKPiBCasO4cm4KPiAKCkl0IHNlZW1zIHRoZXJlIHJlYWxseSBuZWVkcyB0byBiZSBh
IGNsZWFyLCBkb2N1bWVudGVkIHdheSBvZiBPcGVuV3J0IGhhbmRsaW5nCnJlbGVhc2VzLgoKT25l
IGJsb2NraW5nIGlzc3VlIEkga25vdyBvZiBpcyB0aGUgbWlncmF0aW9uIGZyb20gYXI3MXh4IHRv
IGF0aDc5LgpJdCdzIHVuY2xlYXIgd2hldGhlciB0byBvbmx5IHJlbGVhc2UgYXI3MXh4ICh3aGlj
aCBsYWNrcyBkZXZpY2VzCmFkZGVkIGluIHRoZSBsYXN0IHllYXIpIG9yIGJvdGguCkFub3RoZXIg
dGhpbmcgaXMgdGhlIGNoYW5nZSBvZiB0aGUgc3lzdXBncmFkZSBtZXRhZGF0YSBmb3JtYXQuClBl
cnNvbmFsbHkgSSB0aGluayBPcGVuV3J0IGlzIG5lYXIgYSByZWxlYXNhYmxlIHN0YXRlLgoKVmlu
Y2VudAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
