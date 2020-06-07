Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6931F0F9A
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 22:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3NaoDKIzwnL4KUXK9Yhtuz/JnQgtHFemCHefX6WTK8=; b=LUU2GXvphkIvCR
	lEaYX8d1zL+Z0CrJzZkOd0Ez17W+3sA5+GY5lYPre3dRlTDxLJapryW4aEy170k3YRA26M1ZiJppz
	zNV1BBaTEKV+0g6ZlgZNHTOK728yoJWulJW7wtrRDXdUral8IbGi/OwevPwzqBBrJLF3iGEeqGOg/
	IN9YEhWxq4iOQ30Ig/4WG6gHgTDW1bPNDc5GCjS5SNqFOqKS1a35mf2e2Vp8YAO6IpUc66YOmRC3u
	Ik20Ym0dRqeK/p3iBtjd+Q0GDytE83wWcP2gIo/VZGvMaHQK/mxpzw9U+2buk7LIQtSptWPX50Ok+
	OSMEj2YUIr4lZ/C+bC4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji1t2-0003ku-33; Sun, 07 Jun 2020 20:27:20 +0000
Received: from mail1.systemli.org ([2c0f:f930:0:5::214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji1sw-0003ka-8K
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 20:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1591561629;
 bh=XbFttCyDBaAtkSgEW4l0r3wj8OsA+w7xmsg4oKte6YM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=8yzGgU0ieY7Q9mD3Qo1bWsPZo73oKp0SX8ACBB4P6rWbwDPIi5JcO6klY+yKrH9Lg
 y/GX04kSl1if5INKxmHNcKKeVUB9tfSG7CuGhxL2+rifY9NjIuJqfS33hK8fLxS0QJ
 agY37Hr1tDJHLmN+krMbTP1OoywzEiKJc7U5ck03mm4dwxBrxsoYO+cscpzWixvRkp
 0pmcdLTBjkcaEhp1I3mdF2IxEnbOSknt4w/b8PgRnmUv7iAhCeoHAc3PAXKbstk1dE
 P2M+TAAQOo53J08ph5HA0vcgAGXQnkwfkZG/500Z5tqIO66iqrQmcGZfPaWIOMNxPh
 p9M05Watm0cvQ==
To: openwrt-devel@lists.openwrt.org
References: <c784f5cc-6fca-8c15-1094-0eb70eb352d9@systemli.org>
 <9C5049CD-C89B-441C-9AEB-6E7D0F94EC85@gmail.com>
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
Message-ID: <c94715e8-9b10-da07-8435-1cb622db99a5@systemli.org>
Date: Sun, 7 Jun 2020 22:27:06 +0200
MIME-Version: 1.0
In-Reply-To: <9C5049CD-C89B-441C-9AEB-6E7D0F94EC85@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_132714_441395_EC8C20C7 
X-CRM114-Status: UNSURE (   5.43  )
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

SGVyZSBpcyBhIFBSIHRoYXQgaXMgZml4aW5nIHRoZSBpc3N1ZS4gV2h5IGlzIHRoYXQgbm90IG1l
cmdlZD8gOi8KCmh0dHBzOi8vZ2l0aHViLmNvbS9PTFNSL29sc3JkL3B1bGwvNzkvZmlsZXMKCk9u
IDA3LjA2LjIwIDIyOjAzLCBSb3NlbiBQZW5ldiB3cm90ZToKPgo+PiBMZSA3IGp1aW4gMjAyMCDD
oCAxOjAwIFBNLCBOaWNrIDx2aW5jZW50QHN5c3RlbWxpLm9yZz4gYSDDqWNyaXQgOgo+Pgo+PiDv
u79JIGNhbiBub3QgY29tcGlsZSBvbHNyZCBkYWVtb24gd2l0aCBnY2M5Lgo+Pj4gI2RlZmluZSBp
c05hTih4KSAoeCAhPSB4KQo+Pj4gLi4uCj4+PiBpZiAoIWlzTmFOKGdwc2RhdGEtPmZpeC50aW1l
KSkgewo+PiBIZXJlIGZpeC50aW1lIGlzIGEgc3RydWN0IHRpbWVzcGVjLgo+PiBUaGUgY2FsbCBp
cyBqdXN0IHdyb25nLCBvcj8gV2h5IHNob3VsZCBJIGNoZWNrIGEgc3RydWN0IGZvciBhIHZhbGlk
IGZsb2F0Pwo+IFRoaXMgYnJva2Ugd2hlbiBncHN1dGlscyBnb3QgdXBkYXRlZC4gQVBJIGNoYW5n
ZSB3aXRoIGxpYmdwcy4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPj4gb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwo+PiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
