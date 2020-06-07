Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E631F0FD2
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 22:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcEoecYccyS/DV7POdYjaPqZvqS1B1mhsMJI8InaU4Q=; b=PeSppkoY6i9G2x
	2idwSlugcfoTtKUEUcSD5+zCi2BUFsRENnN/ea9xafkQh416Y3Zj6jFbFznGl2J9SevG92TrtFWt8
	eWLYCfFxvlMOrUn+/vxSgz/xDTIJApfSDdsiOmlrNDtt79QfJI3P+KYnYHyT553LEgrVYl4Zr2xUR
	IOoZydrfjc/uPlChLJKB3tUmUz2eqRUsPM0o3sgHX5RIGWkTFoeIN8+QD5yhFq1QJ4t3gEDon1NqJ
	5YqsJxVDFmV/v1uZdjCXfhrKCFu9pdl23C9Q1NN8TmSr0ujNaBPvJwSuXNhe+xynd1/1mb9FAxtxO
	4fDXjaY1zpY5JymFPWQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji23j-0001Oq-VO; Sun, 07 Jun 2020 20:38:23 +0000
Received: from mail1.systemli.org ([2c0f:f930:0:5::214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji23d-0001Nu-Hc
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 20:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1591562294;
 bh=+A7fvPOUEwuW+Pz7lYQm8+crCu+wYcD3IH8T5uEFY38=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=a3nLpF2RzoQI5olkYInwOXb+Vqv+5Rb+QIbRKo2lki9SEAkEXEgCTAcSvIHCmNddg
 ykDo7D7UmyfhVG1GuhYh+hlG1LGrCw6msLdCbqGWSc8QJ8hZuAqsFyrekX6YYFJgrL
 6m+SQQ06dVdjJI3ZJA6VdzuztsbfJ+VD9jjt7LXqzD4HsA7+YQACq+GCmBtjxeoQvu
 lTPMK4PNYmqo6uG9y/jRpEx9nqyLkomXMFp6Ab0GABKuiDzug0M2FSoJiQieosFKqR
 EGhhC/f17nzYUm8nim+og0iEeli1ABd15pAE4t2LnCUcm50XOfFphORppOP9v06KCm
 PCCRLd1TRWQ6w==
To: openwrt-devel@lists.openwrt.org
References: <c784f5cc-6fca-8c15-1094-0eb70eb352d9@systemli.org>
 <9C5049CD-C89B-441C-9AEB-6E7D0F94EC85@gmail.com>
 <c94715e8-9b10-da07-8435-1cb622db99a5@systemli.org>
From: Nick <vincent@systemli.org>
Autocrypt: addr=vincent@systemli.org; prefer-encrypt=mutual; keydata=
 mQINBFtFAUgBEADDaCEZA9bEzp1K8PGBAEgsQUZ46wNMg4T2ST2nhbtiyPJ/CNLNBxgbcI8y
 i9+sey53BV7517ySY5x3ZBC2K+ffHsTrCQTo0mxRBaTW9lTDzmJl/gciT4wD2b8deOZFr30A
 ZAY5TbzZNnna63xHLvyW8FoUauY8Ohptuhye+QjPgJbPJHgIE1p+kYP2+mvJQQYgj0binoRi
 ha2gN8NA2ZUfs6XucoRrd4BENAv0JcL+39KFaJTFcGLGjy4k/B/J6mFiKtEugA6gKDj9Z+Wa
 USZYxyKU0VxON2jALERmKizVn7GACF6Ldm4y5OCMksyMzX19zEBh/V3lPpIO4UZraSpRaET/
 WdT2ENEm2OHGnIACyv5bynBUVQ2K385jz2g7Y5Dc10ZgV09hi4bszPyRPEPnSgRJf4+JxiSB
 QQMLD00QSe9WQHL2nbcVXaJjn5RubEy3zsqRQ/rqva3LK7aFJYNLyRwh1V/Or2IK/2qwJ2+8
 dFq2FSVrAnydM4EfY39kFXlp8VWm693W6uXxgfh15OD750ygWtCj/+nCA5jtZfxqOvUsha86
 VVK9Y7gLrZ5VNu4NxS3h0oHYXTCITZnjngOpbhyiB+Y0MpLuCL4y6fK04bAt6BkLb2aGxaTP
 Q72qYQub+ZHhgk9JAk9fqQgXUq7Cjf80mLIyzv6nYLhyuknuNQARAQABtBhOaWNrIDxuaWNr
 QHN5c3RlbWxpLm9yZz6JAlQEEwEKAD4WIQRX4OJSvdKh3ub4B0byOyDCWguzugUCW0UBSAIb
 IwUJAeEzgAULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRDyOyDCWguzuvhmD/48hfTXlxVD
 5IJ9gpiYPG7LnhSARxqDK+YTvLct4HnRCg4I0S4ZaBgiCqyoyZyJ3xqqvfWURvL6I8NiqdYL
 u8juoxGqrhXzvGTIEV621EcTGdGlvzAAqNu37FdEZwI28rCKX09YX52xMe5dk2+8wRnp1JKH
 agq79Gw1OaG7NIBoWQxfqSXBjlK1A68fSkGER+mWMtNQhWIjeGomwXEKV36w7zvNgfIWqACS
 8K0gKG6aWNHT//jcftDGEv+emsLy97sh4C4jvucxPXQ6AZABw1dSRiMr5zONTL0CGOsElcQK
 M9QTT8tmEiiYt/Eg9XmT3AXJp+Paewpu7IZqn2NrS4CFr3Q9pglGc9o9FWaorIZVE8TxA7/y
 ZM4QQA/QzlK/i9PzaHF6JTnJAHRuAv+gpXVwvlPigiAEPr/bKL8gvsSA2FjDy0qJXAsKTnw6
 TwETtWYuzEtTMwUmsDwpELvfL9MmWpM15b2vK5GxkTt3fHCWDEj511NPMTVnEy0DrwMPO3Vh
 61+a74nX0TbM17PgOzhTgbXFTKwz3urYEelkOc4WQKO50lmbQ7KknNpL8egNk1T0HHSwYNs9
 voWkHjMmOlpQeoUCk80TtoMLudG2Jy5o/a2OROfPuq7YcHCMK66eH7RyRwvC7F/eJYk4WZQJ
 lzX5Db6FXC8DptuX1f2ymUCFPQ==
Message-ID: <ea8fbeab-bdd6-6d57-5053-35f7c488d907@systemli.org>
Date: Sun, 7 Jun 2020 22:38:12 +0200
MIME-Version: 1.0
In-Reply-To: <c94715e8-9b10-da07-8435-1cb622db99a5@systemli.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_133817_738474_E7973334 
X-CRM114-Status: UNSURE (   5.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] olsrd: not compiling with gcc 9
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

SSB3b3VsZCBzdWdnZXN0IGRvaW5nIHRoaXMgUFIgYXMgcGF0Y2ggbGlrZSBmcmVpZnVuayBiZXJs
aW4gaXMgZG9pbmcgaXQ6Cmh0dHBzOi8vZ2l0aHViLmNvbS9mcmVpZnVuay1iZXJsaW4vZmlybXdh
cmUvY29tbWl0LzkzZjlhMDI2ZTAyNWM3YjY2MzM2OWY1Mjg0Y2VjMGJiOTEzNDUyMjAKCk90aGVy
d2lzZSwgb2xzcmQgd29uJ3QgY29tcGlsZSBhbnltb3JlLiA6LyBPciBtYWtpbmcgYSBmb3JrLCBi
ZWNhdXNlCm9sc3JkIHNlZW1zIG5vdCB0byBiZSBtYWludGFpbmVkIGFueW1vcmUuCgpPbiAwNy4w
Ni4yMCAyMjoyNywgTmljayB3cm90ZToKPiBIZXJlIGlzIGEgUFIgdGhhdCBpcyBmaXhpbmcgdGhl
IGlzc3VlLiBXaHkgaXMgdGhhdCBub3QgbWVyZ2VkPyA6Lwo+Cj4gaHR0cHM6Ly9naXRodWIuY29t
L09MU1Ivb2xzcmQvcHVsbC83OS9maWxlcwo+Cj4gT24gMDcuMDYuMjAgMjI6MDMsIFJvc2VuIFBl
bmV2IHdyb3RlOgo+Pj4gTGUgNyBqdWluIDIwMjAgw6AgMTowMCBQTSwgTmljayA8dmluY2VudEBz
eXN0ZW1saS5vcmc+IGEgw6ljcml0IDoKPj4+Cj4+PiDvu79JIGNhbiBub3QgY29tcGlsZSBvbHNy
ZCBkYWVtb24gd2l0aCBnY2M5Lgo+Pj4+ICNkZWZpbmUgaXNOYU4oeCkgKHggIT0geCkKPj4+PiAu
Li4KPj4+PiBpZiAoIWlzTmFOKGdwc2RhdGEtPmZpeC50aW1lKSkgewo+Pj4gSGVyZSBmaXgudGlt
ZSBpcyBhIHN0cnVjdCB0aW1lc3BlYy4KPj4+IFRoZSBjYWxsIGlzIGp1c3Qgd3JvbmcsIG9yPyBX
aHkgc2hvdWxkIEkgY2hlY2sgYSBzdHJ1Y3QgZm9yIGEgdmFsaWQgZmxvYXQ/Cj4+IFRoaXMgYnJv
a2Ugd2hlbiBncHN1dGlscyBnb3QgdXBkYXRlZC4gQVBJIGNoYW5nZSB3aXRoIGxpYmdwcy4KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdAo+Pj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
Zwo+Pj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwo+PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
