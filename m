Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A8721995
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 16:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LHgAVGjM7r2/Omz+WKExWm8/abdfyUTNO+j6J67Bcw=; b=nVPb3dDC9zbeh9
	Cr2uRTOEc0AWkUm1sAY2zhIJKM/LATxTvHPs4fzEMGCHW4xX8lSvcFOxYSzQypZd40Vo3cqg+k93W
	GXEMqoGvG0hwjZ4c9VIp3tPU2dztkEReU5QdB9WW+HP64fV5cueYLU5xkzfJOPaCqiTvXDZSVHRSv
	nAGeyyYqVDtjr+2eiIU2efiVriBqVT2mgIqV3RT922+G53FZ5plMfLc2GDtSeMehpsQdrAsCWVLgU
	X5j0r8I+nnQEbzn56oz56NejxZApBdm/HseBj7bQVq5P+2SUJnOAC8iQGjl60eynG7H7gD6Xy8g5A
	Rp9k7BTchlFiqSOcwxhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRdXa-0002j2-9W; Fri, 17 May 2019 14:08:54 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRdXR-0002iS-UM
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 14:08:48 +0000
Received: (wp-smtpd smtp.tlen.pl 2685 invoked from network);
 17 May 2019 16:08:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1558102120; bh=rrg7HYVfTIxaVCTB2PtmYUQTPVY3/Jj0H/hS5L9ZQl8=;
 h=Subject:To:Cc:From;
 b=w/gJ3uMsuYz0MP9oe0SdfpUfWFcgjygnIvGw/Z0p2LlxFmqUxOSjgCZC/OHcRQTVc
 TXEgH+JI8PmLYZzeJGtb2LfA5ZMnip/5t5YQX1hrIoJgxNnSaj/tHqhKcuCfWhdg2h
 BIIfakbSjJaCpC9+0k/qWuYlk6R4Fm8vKzI5nInU=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <sebastien.duponcheel@corp.ovh.com>; 17 May 2019 16:08:40 +0200
To: Marek Behun <marek.behun@nic.cz>
References: <20190516183828.15647-1-marek.behun@nic.cz>
 <47a9684d-50b0-90fe-55e4-4fd6061864d2@o2.pl> <20190516234703.2ddcf5cf@nic.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <b0e933f5-21dc-09bd-892e-71b6e185152b@o2.pl>
Date: Fri, 17 May 2019 16:08:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516234703.2ddcf5cf@nic.cz>
Content-Language: en-US
X-WP-MailID: 9f4378adb78e8793ba50aa182754077c
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [IeN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_070846_304322_3CF676FC 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Add support for kernel 4.19
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Jeremiah McConnell <miah@miah.com>,
 openwrt-devel@lists.openwrt.org, Marko Ratkaj <marko.ratkaj@sartura.hr>,
 Michael Gray <michael.gray@lantisproject.com>,
 =?UTF-8?Q?DUPONCHEEL_S=c3=a9bastien?= <sebastien.duponcheel@corp.ovh.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Ryan Mounce <ryan@mounce.com.au>, Russell King <rmk+kernel@armlinux.org.uk>,
 Rosen Penev <rosenp@gmail.com>, Stijn Segers <foss@volatilesystems.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, Imre Kaloz <kaloz@openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDE2LjA1LjIwMTkgb8KgMjM6NDcsIE1hcmVrIEJlaHVuIHBpc3plOgo+IE9uIFRodSwg
MTYgTWF5IDIwMTkgMjI6MzU6MzUgKzAyMDAKPiBUb21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19u
QG8yLnBsPiB3cm90ZToKPiAKPj4gSGkgTWFyZWssCj4+Cj4+IFcgZG5pdSAxNi4wNS4yMDE5IG/C
oDIwOjM4LCBNYXJlayBCZWjDum4gcGlzemU6Cj4+PiBBZGQgc3VwcG9ydCBmb3Iga2VybmVsIDQu
MTkgdG8gdGhlIG12ZWJ1IHRhcmdldC4KPj4+Cj4+PiBUaGlzIGlzIHRoZSBmaXJzdCB2ZXJzaW9u
LCB1bmZvcnR1bmF0ZWx5IEkgb25seSBoYXZlIFR1cnJpcyBPbW5pYSBhbmQKPj4+IFR1cnJpcyBN
b3ggdG8gdGVzdCB0aGlzIG9uLCBhbmQgVHVycmlzIE1veCBpcyBub3QgeWV0IHN1cHBvcnRlZCBp
biB0aGVzZQo+Pj4gcGF0Y2hlcy4gIAo+Pgo+PiBZb3UgYmVhdCBtZSB0byBpdCwgYnV0IG5vdCBv
bmx5IFlvdSBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMTY0Ni4KPj4g
T25seSByZWNlbnRseSBJIGhhZCB0aW1lIHRvIGxvb2sgYXQgaXQgYW5kIHRoaXM6Cj4+IGh0dHBz
Oi8vZ2l0aHViLmNvbS90bW41MDUvb3BlbndydC90cmVlL212ZWJ1LTQuMTkKPj4gaXMgbXkgc2hv
dCBhdCBpdCAoYmFzZWQgb24gaW5pdGlhbCBNYXJrbyBSYXRrYWogd29yaykuIEkgYXNrZWQgU8Op
YmFzdGllbiBpbgo+PiBtZW50aW9uZWQgUFIgb24gR2l0SHViIGlmIEkgY2FuIHNlbmQgaXQgaGVy
ZS4KPj4KPj4gSnVzdCB5ZXN0ZXJkYXkgYW5kIHRvZGF5IEkgZ290IHJlcG9ydCBmcm9tIG93bmVy
cyBvZiBXUlQxOTAwQUMgYW5kIFdSVDMyWCB0aGF0IHRoZWlyCj4+IE5BTkQgY2hpcHMgYXJlIHdv
cmtpbmc6Cj4+IGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9rZXJuZWwtNC0xOS11cGdyYWRl
LWlzc3VlLW9uLW12ZWJ1LXRhcmdldC1zLzMyOTY2LzMyCj4+IGh0dHBzOi8vZm9ydW0ub3Blbndy
dC5vcmcvdC9rZXJuZWwtNC0xOS11cGdyYWRlLWlzc3VlLW9uLW12ZWJ1LXRhcmdldC1zLzMyOTY2
LzM0Cj4+IFNvIGl0IHNlZW1zIHRoYXQgbW9zdCBkaWZmaWN1bHQgZGV2aWNlcyBhcmUgd29ya2lu
Zy4gVW5mb3J0dW5hdGVseSBJIGRvbid0IGhhdmUKPj4gYW55dGhpbmcgd2l0aCBTRlAsIHNvIHdv
dWxkIGJlIG5pY2UgdG8ga25vdyBpZiBhbnl0aGluZyBuZWVkcyB0byBiZSBhZGRlZC4KPj4KPj4+
Cj4+PiBTbyBpZiB5b3UgZ3V5cyBjb3VsZCB0cnkgdGhpcyBhbmQgZ2l2ZSBmZWVkYmFjay4gIAo+
Pgo+PiBNb3N0IG9mIHRoZSBrZXB0IHBhdGNoZXMgYXJlIHNpbWlsYXIgYW5kIG9uIEVTUFJFU1NP
YmluIGV2ZXJ5dGhpbmcgc2VlbXMgdG8gd29yayBPSy4KPiAKPiBUaGlzIGlzIG5vdCBvbmx5IEVT
UFJFU1NPYmluIGJ1dCBhbHNvIHRoZSAzMiBiaXQgbXZlYnUgZGV2aWNlcy4KClRoYXQncyB0aGUg
b25seSBkZXZpY2UgSSBoYXZlLCBidXQgcmVwb3J0cyBvZiBXUlQgc2VyaWVzIG93bmVycyBhcmUg
cHJvbWlzaW5nLgoKPiAKPiBPaywgSSB3aWxsIHByb2JhYmx5IHRyeSB0byBtZXJnZSBteSBjaGFu
Z2VzIHdpdGggdGhvc2UgaW4gdGhvc2UgcHVsbAo+IHJlcXVlc3RzLiBTaG91bGQgSSB0aGVuIG9w
ZW4gYSBnaXRodWIgcHVsbCByZXF1ZXN0PyBPciBzZW5kIGEgcGF0Y2gKPiBzZXJpZXMgdmlhIGVt
YWlsPwoKRmluZSB3aXRoIG1lLCBzZW5kIGl0IGhlcmUgc2luY2UgdGhhdCB3ZXJlIFlvdSBmaXJz
dCBzZW50IGl0LiBJJ2xsIHBvc3QgdXBkYXRlIGluCnJlbGV2YW50IGRpc2N1c3Npb24gdGhyZWFk
cyBvbiBHaXRIdWIgYW5kIGZvcnVtLgoKPiAKPiBNYXJlawo+IAoKUmVnYXJkcwoKLS0gClRNTgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
