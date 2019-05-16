Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F992103F
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 23:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VsYGoNkV40hQmxOQa1hHbqf37vlJ2d1yJ9o9ULywJ8=; b=BdqWhniIgzBxZX
	Ktl5zuxDxiLN7imJsH0lvm7IbcY3xCxPOlywhc6LkDdR0JFX+jB7uzBbSoq+d6Pw99us+lVV4R7sJ
	nEkB+C72f1Bs9pWL0QEuNQEaN527Jb7VFtzh2R9zy0wmZ63oAdO+77VTy4PBpZCl/VM03RqRsIxvD
	jSfUIYy9YVC2ToBzbKgOUlP/HEzdBLEZRvDXC7f/Y8LNDzfYibhUEq4QXjDVGa8EqnYGFldGSgYA2
	qoSDfHBvWUiEgWFAryMqQooV271x0Cof5Aqu3CFE+CX6OU4wAMY8lPLd0XPxJe4uNXO3ezRroVpiA
	Dj6k0x7CFK8pbM1AY8+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRODZ-0003VV-9J; Thu, 16 May 2019 21:47:13 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRODR-0003V5-Td
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 21:47:07 +0000
Received: from localhost (unknown [172.20.6.135])
 by mail.nic.cz (Postfix) with ESMTPS id 0ACE463F0D;
 Thu, 16 May 2019 23:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1558043224; bh=FYv3LLbxZ/kNDV4ROKqhiRtQbeA3oio8Z+tiIWuhf0Q=;
 h=Date:From:To;
 b=hXhOfnuA5h5w3Gx5lXrsCncP9siWGg+nMLs7KwtadLqrbX6RhBmEc7PXLOOk1Dv+t
 VCNg06f/96rprcRIUUUeXxYLOd+5ZWA8rOqy3Wdo5vz8KNqKj7dfcjlPqJBN2va/m6
 ClHstzbfA0SB9jglUfOEEl3/Lx6vWKVwqFViwkVw=
Date: Thu, 16 May 2019 23:47:03 +0200
From: Marek Behun <marek.behun@nic.cz>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20190516234703.2ddcf5cf@nic.cz>
In-Reply-To: <47a9684d-50b0-90fe-55e4-4fd6061864d2@o2.pl>
References: <20190516183828.15647-1-marek.behun@nic.cz>
 <47a9684d-50b0-90fe-55e4-4fd6061864d2@o2.pl>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_144706_118507_9D80BEB5 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 DUPONCHEEL =?UTF-8?B?U8OpYmFzdGllbg==?= <sebastien.duponcheel@corp.ovh.com>,
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

T24gVGh1LCAxNiBNYXkgMjAxOSAyMjozNTozNSArMDIwMApUb21hc3ogTWFjaWVqIE5vd2FrIDx0
b21la19uQG8yLnBsPiB3cm90ZToKCj4gSGkgTWFyZWssCj4gCj4gVyBkbml1IDE2LjA1LjIwMTkg
b8KgMjA6MzgsIE1hcmVrIEJlaMO6biBwaXN6ZToKPiA+IEFkZCBzdXBwb3J0IGZvciBrZXJuZWwg
NC4xOSB0byB0aGUgbXZlYnUgdGFyZ2V0Lgo+ID4gCj4gPiBUaGlzIGlzIHRoZSBmaXJzdCB2ZXJz
aW9uLCB1bmZvcnR1bmF0ZWx5IEkgb25seSBoYXZlIFR1cnJpcyBPbW5pYSBhbmQKPiA+IFR1cnJp
cyBNb3ggdG8gdGVzdCB0aGlzIG9uLCBhbmQgVHVycmlzIE1veCBpcyBub3QgeWV0IHN1cHBvcnRl
ZCBpbiB0aGVzZQo+ID4gcGF0Y2hlcy4gIAo+IAo+IFlvdSBiZWF0IG1lIHRvIGl0LCBidXQgbm90
IG9ubHkgWW91IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVsbC8xNjQ2Lgo+
IE9ubHkgcmVjZW50bHkgSSBoYWQgdGltZSB0byBsb29rIGF0IGl0IGFuZCB0aGlzOgo+IGh0dHBz
Oi8vZ2l0aHViLmNvbS90bW41MDUvb3BlbndydC90cmVlL212ZWJ1LTQuMTkKPiBpcyBteSBzaG90
IGF0IGl0IChiYXNlZCBvbiBpbml0aWFsIE1hcmtvIFJhdGthaiB3b3JrKS4gSSBhc2tlZCBTw6li
YXN0aWVuIGluCj4gbWVudGlvbmVkIFBSIG9uIEdpdEh1YiBpZiBJIGNhbiBzZW5kIGl0IGhlcmUu
Cj4gCj4gSnVzdCB5ZXN0ZXJkYXkgYW5kIHRvZGF5IEkgZ290IHJlcG9ydCBmcm9tIG93bmVycyBv
ZiBXUlQxOTAwQUMgYW5kIFdSVDMyWCB0aGF0IHRoZWlyCj4gTkFORCBjaGlwcyBhcmUgd29ya2lu
ZzoKPiBodHRwczovL2ZvcnVtLm9wZW53cnQub3JnL3Qva2VybmVsLTQtMTktdXBncmFkZS1pc3N1
ZS1vbi1tdmVidS10YXJnZXQtcy8zMjk2Ni8zMgo+IGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcv
dC9rZXJuZWwtNC0xOS11cGdyYWRlLWlzc3VlLW9uLW12ZWJ1LXRhcmdldC1zLzMyOTY2LzM0Cj4g
U28gaXQgc2VlbXMgdGhhdCBtb3N0IGRpZmZpY3VsdCBkZXZpY2VzIGFyZSB3b3JraW5nLiBVbmZv
cnR1bmF0ZWx5IEkgZG9uJ3QgaGF2ZQo+IGFueXRoaW5nIHdpdGggU0ZQLCBzbyB3b3VsZCBiZSBu
aWNlIHRvIGtub3cgaWYgYW55dGhpbmcgbmVlZHMgdG8gYmUgYWRkZWQuCj4gCj4gPiAKPiA+IFNv
IGlmIHlvdSBndXlzIGNvdWxkIHRyeSB0aGlzIGFuZCBnaXZlIGZlZWRiYWNrLiAgCj4gCj4gTW9z
dCBvZiB0aGUga2VwdCBwYXRjaGVzIGFyZSBzaW1pbGFyIGFuZCBvbiBFU1BSRVNTT2JpbiBldmVy
eXRoaW5nIHNlZW1zIHRvIHdvcmsgT0suCgpUaGlzIGlzIG5vdCBvbmx5IEVTUFJFU1NPYmluIGJ1
dCBhbHNvIHRoZSAzMiBiaXQgbXZlYnUgZGV2aWNlcy4KCk9rLCBJIHdpbGwgcHJvYmFibHkgdHJ5
IHRvIG1lcmdlIG15IGNoYW5nZXMgd2l0aCB0aG9zZSBpbiB0aG9zZSBwdWxsCnJlcXVlc3RzLiBT
aG91bGQgSSB0aGVuIG9wZW4gYSBnaXRodWIgcHVsbCByZXF1ZXN0PyBPciBzZW5kIGEgcGF0Y2gK
c2VyaWVzIHZpYSBlbWFpbD8KCk1hcmVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
