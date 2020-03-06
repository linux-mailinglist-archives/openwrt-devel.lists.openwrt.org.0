Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1318917B82C
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 09:15:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8/pXjD1qykPismp5aN/UyMAL62S8NwT6Wg/jVSHKL2Y=; b=IAtUIxo7WRpJNjbXdubnW+P6I
	AoV14ZwgiG2h+5p56Xyo+XqHPk7TXjMcFglWLpuvAZIOkzyKLFEuN4RWy/NxS5s64sUdlRNfy5gni
	+6iGfF+Q6ud/nkH+cCrq/mCpfsFS13L2J6RuzSBz5dmAj8Uigc3enX9md0EqwXifLrkA2NWQrxKkG
	DDeutqcf1mPhbIh5BhWn3aCCNXxFxYPqHCfx9ZeMsbozTdCSupcQuFh44sJwoh12Qc/A1+AU0NtG6
	fKnXDYREhoRyiE+jHJkw6gQ+jyZU2bIqXedGrS+EsVP4aHkfVIL7eN4AaQWLG7Fdn5OYfwJZThBGs
	JtvM26s5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA88J-0003WR-Go; Fri, 06 Mar 2020 08:14:59 +0000
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA889-0003VA-I0
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 08:14:51 +0000
Received: from player796.ha.ovh.net (unknown [10.110.171.96])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 9289A1CDA6B
 for <openwrt-devel@lists.openwrt.org>; Fri,  6 Mar 2020 09:14:35 +0100 (CET)
Received: from RCM-web10.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player796.ha.ovh.net (Postfix) with ESMTPSA id 274A3100FF505;
 Fri,  6 Mar 2020 08:14:31 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 06 Mar 2020 09:14:31 +0100
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Piotr Dymacz <pepe2k@gmail.com>
In-Reply-To: <6fed6fd3-271f-5d78-978c-63e76bef7156@gmail.com>
References: <20200302125820.12353-1-ynezz@true.cz>
 <6fed6fd3-271f-5d78-978c-63e76bef7156@gmail.com>
User-Agent: Roundcube Webmail/1.4.2
Message-ID: <907b8f5e0e49bf0e5179f008ec31e7cf@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 461900439980445278
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudduuddguddukecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepgggtgfffhffvufgjfhgfkfigihesthekjhdttderjeenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuffhomhgrihhnpehophgvnhifrhhtrdhorhhgnecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejleeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepohhpvghnfihrthdquggvvhgvlheslhhishhtshdrohhpvghnfihrthdrohhrgh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_001449_743762_BC132D08 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.53.149 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [188.165.53.149 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] Revert "kernel: rewrite
 run_parsers_by_type() to use add_mtd_partitions()"
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAyMC0wMy0wNiAwOTowOSwgUGlvdHIgRHltYWN6IHdyb3RlOgo+IEhpIFBldHIsIFJhZmHF
giwKPiAKPiBPbiAwMi4wMy4yMDIwIDEzOjU4LCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+PiBUaGlz
IHJldmVydHMgY29tbWl0IDE1YTA3MDFjZGRlOGVlYWUyYTU0ODgwYjgxM2NkYjhjZGMwOWEzODQu
Cj4+IAo+PiBTZWVtcyBsaWtlIHRoaXMgcGF0Y2ggaGFzIGludHJvZHVjZWQgc29tZSByZWdyZXNz
aW9ucyBvbiB0aGUgcmFtaXBzCj4+IHRhcmdldCB3aGljaCBpcyBzdGlsbCBvbiA0LjE0IGtlcm5l
bCBhcyB0aGlzIGNvbW1pdCB0b3VjaGVzIG9ubHkgNC4xNAo+PiBrZXJuZWwgcGF0Y2hlcy4KPj4g
Cj4+ICAgamZmczI6IEVyYXNlIGF0IDB4MDAzNzgwMDAgZmFpbGVkIGltbWVkaWF0ZWx5OiBlcnJu
byAtMjIKPj4gICBqZmZzMjogTm9kZSBDUkMgZmZmZmZmZmYgIT0gY2FsY3VsYXRlZCBDUkMgZjA5
ZTc4NDUgZm9yIG5vZGUgYXQgCj4+IDAwYzA4NTEwCj4+IAo+PiBSZWY6IEZTIzI4MzcsIEZTIzI4
NjIKPiAKPiBGaXhlcyBhbHNvIHZlcnkgc2VyaW91cyAoZXJhc2Ugb2YgQVJUKSBGUyMyODY0Lgo+
IFJlZjogaHR0cHM6Ly9idWdzLm9wZW53cnQub3JnL2luZGV4LnBocD9kbz1kZXRhaWxzJnRhc2tf
aWQ9Mjg2NAoKSSdsbCBiZSBiYWNrIGxvb2tpbmcgYXQgdGhpcyBpbiBmZXcgaG91cnMuIEknbSBm
aW5pc2hpbmcgbXkgYmlnCmRlYnVnZ2luZy9yZXNlYXJjaCBvbiBrZXJuZWwgcnVubmluZyBPT00g
cmlnaHQgbm93LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=
