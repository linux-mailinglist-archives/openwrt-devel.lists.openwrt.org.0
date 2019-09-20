Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B79B9826
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 21:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyAweKUCPYY0553rFI9EP4vlIyKytzul6VXmPUPKepk=; b=piuZL2nCxy9yaJ
	ln6Bly7vhInmQJQGDp1WEdMt63XZOeSRndRcLOchcOdCKMyZLclRatEQnykJd4koIXbbvLw4klyoZ
	uwsS8qeeLVcQ+fqlRyfW7vwHirtPrq5q0bLtmeKkFxXojcLn8NIEppLnV6t+x0Itre6dTmOy8y8uu
	nwqVVJy4EI2bJpIpzBzKBqnda5+C3HyGw0TlLtU9aIF3e1YgvNPMvqYdHhChEVQbfGZhWiz77G34U
	WemyQfSC2efrgkmVddzhto6NqcRW1mMCytv9dvaRU6S21SHFv5lrTbeyiL7mlZZzQHdCImo/hVCG1
	DYJ3Zu5ezTtWtzr1A83g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBP0Z-0004z5-AK; Fri, 20 Sep 2019 19:55:59 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBP0S-0004yg-J4
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 19:55:54 +0000
Received: (qmail 10373 invoked from network); 20 Sep 2019 19:55:43 -0000
Received: from localhost (HELO ?IPv6:2a02:790:ff:1021:602:8f59:5bf5:7488?)
 (127.0.0.1)
 by achernar.uberspace.de with SMTP; 20 Sep 2019 19:55:43 -0000
To: support@maxnet.al, openwrt-devel@lists.openwrt.org
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
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
Message-ID: <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
Date: Fri, 20 Sep 2019 21:55:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_125552_922018_E6F6EB1A 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] QCA9994 outdoor 13km link
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

SGkgS2xldmlzLAoKaGF2ZSB5b3UgdHJpZWQgaXQgd2l0aCBhIHNob3J0IGRpc3RhbmNlPwpJZiB5
b3UgZGlkIHlvdSBzaG91bGQgYmV0dGVyIGFzayBCZW4gR3JlZWFyIGRpcmVjdGx5LgoKQnkgdGhl
IHdheSBhdGgxMGsgZ2VuIDIgY2hpcHNldHMgZG9uJ3Qgd29yayB2ZXJ5IHdlbGwgd2l0aCBsb25n
IGRpc3RhbmNlIGxpbmtzIHdpdGhvdXQgYQpzcGVjaWFsIGZlYXR1cmUgd2hpY2ggaW1wbGVtZW50
YXRpb24gaXMgb25seSBhdmFpbGFibGUgdG8gY29tcGFuaWVzIGxpa2UgVWJpcXVpdGkgYW5kIHZl
cnkgZmV3CnBlb3BsZSB3aG8gaGF2ZSBhbiBvd24gcmV2ZXJzZS1lbmdpbmVlcmVkIGltcGxlbWVu
dGF0aW9uLgpJdCB3b3JrcyBvbiBJUFE0MDFYLCBRQ0E5ODg2IGFuZCBRQ0E5ODg4IGJhc2VkIGNo
aXBzIG9ubHkuCgpBbmQgaXQgaXMgbm90IHBvc3NpYmxlIHRvIHNldCBhIGNvdmVyYWdlIGNsYXNz
IGZvciBnZW4gMiBkZXZpY2VzLCB5ZXQgYXMgZmFyIGFzIEkga25vdyBkdWUgdG8gbWlzc2luZwpk
b2N1bWVudGF0aW9uIGFuZCBpbXBsZW1lbnRhdGlvbiAoY29ycmVjdCBtZSBpZiB0aGF0IGluZm9y
bWF0aW9uIGlzIG91dGRhdGVkKS4KRnVydGhlcm1vcmUgYSBoaWdoIGNoYW5uZWwgd2lkdGggb2Z0
ZW4gcmVzdWx0cyBpbiBwcm9ibGVtcwpkdWUgdG8gbG93ZXIgcmVjZWl2ZXIgc2Vuc2liaWxpdHku
CldlIGhhdmUgYmV0dGVyIGV4cGVyaWVuY2VzIHdpdGggbG93ZXIgY2hhbm5lbCB3aWR0aHMgYW5k
IHNvbWV0aW1lcyBnZXQgbW9yZSB0aHJvdWdocHV0IHdpdGggdGhhdC4KCkFjdHVhbGx5IEkgdGhp
bmsgdGhpcyBkb2VzIG5vdCBleHBsYWluIHlvdXIgY29ubmVjdGlvbiBpc3N1ZXMgYXMgMTMga20g
aXMgbm90IHRoYXQgbXVjaC4KClJlZ2FyZHMsCgpWaW5jZW50IFdpZW1hbm4KCk9uIDIwLjA5LjE5
IDE4OjMwLCBzdXBwb3J0QG1heG5ldC5hbCB3cm90ZToKPiBIZWxsbyBldmVyeW9uZSwKPiAKPiBJ
IGFtIHRyeWluZyB0byBzZXR1cCBhIGN1c3RvbSBtYWRlIG91dGRvb3IgbGluayB3aXRoIEFwdTJk
MiBib2FyZCBkZXZpY2VzIGFuZCBRQ0E5OTk0IGNhcmRzIGZyb20gY29tcGV4LiBBZnRlciBpIGlu
c3RhbGxlZCBvcGVud3J0IGFuZCBhdGgxMGsgY3QgZHJpdmVyLCBrbW9kIGF0aDEwayBhbmQgYm9h
cmQtMi5iaW4gdGhlIGRldmljZSBjYW4gcnVuIGEgODBNSHogY2hhbm5lbCBpbiBXRFMgQVAuIFRo
ZSBwcm9ibGVtIGlzIHRoYXQgaXQgd29uJ3QgcnVuIGFzIHN0YXRpb24gb3Igc3RhdGlvbiB3ZHMu
IEl0IGNhbiBzY2FuCj4gdGhlIFNTSURzIGJ1dCB3b24ndCBjb25uZWN0IHRoZW0uwqAKPiAKPiBB
bnkgc3VnZ2VzdGlvbj8KPiAKPiBUaGFuayB5b3UhCj4gS2xldmlzCj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
