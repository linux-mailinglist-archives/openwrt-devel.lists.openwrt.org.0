Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF876E795
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 16:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g8hm31lWWLHR1cjbdWTFp4LckLucvNmGMYozQ+lplV0=; b=Rnd4AGMQHYtJPs5y3/lDo6rhWz
	mrrPVc6GmlYOAE1lqheiQUijXpsi/VkNsaFzSfc/E1jq0/nymmJ0PIJ4gKHuien9fsGj710E5ZWeg
	nvJFrpAvgImBcn6ZwwNW4MtuRVPc0HvPmhGI/BXqMeE1PvmQ83Z9EMUQjno69ooLUdUHFYQG5/4/R
	jM18gkRf+VMi0fqVYWACOSvxAv4AwpxhI+PCFb2XRh0Iz6b49NM+9fXyj2NUULXPLc/ns6MO+gAP4
	vWS/Mij5b9TtTGumdkgQIzBDPK6VPvsHpcE7PHrvddYujbNRxK8Act6sN09/r+C7Hd8fjauU3r6hb
	QwM3v9GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUGs-0005vm-K5; Fri, 19 Jul 2019 14:54:07 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUGZ-0005vN-J8
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jul 2019 14:53:49 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 78C913572;
 Fri, 19 Jul 2019 16:53:42 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id dd4153fd;
 Fri, 19 Jul 2019 16:53:35 +0200 (CEST)
Date: Fri, 19 Jul 2019 16:53:35 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20190719145334.GK48772@meh.true.cz>
References: <20190707170411.3393-1-hauke@hauke-m.de>
 <20190710074133.GF55350@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710074133.GF55350@meh.true.cz>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_075347_782013_BD00556D 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] mac80211: Update to version 5.2-rc7
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gWzIwMTktMDctMTAgMDk6NDE6MzNdOgoKSGkg
YWdhaW4sCgo+IEkndmUgbWVyZ2VkIHRoaXMgY29tcGxldGUgYnJhbmNoIGluIG15IHN0YWdpbmcg
dHJlZSBhbmQgdGVzdGVkIGl0IG92ZXJuaWdodCBvbgo+IG15IG10NzYyMCttdDc2MTBlICg0LjE0
KSBhbmQgYXRoNzkrUUNBOTg4MCAoNC4xOSkgYW5kIEkgZGlkbid0IGV4cGVyaWVuY2VkIGFueQo+
IGlzc3VlLgo+IAo+IEFja2VkLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgoKSSd2
ZSBqdXN0IGFjY2lkZW50YWx5IGNvbW1pdGVkIG15IGNvbXBsZXRlIHN0YWdpbmcgdHJlZSAoaW50
ZW5kZWQgdG8gcHVzaCBqdXN0CnRoZSBta2Z3aW1hZ2UgaW1wcm92ZW1lbnRzKSwgd2hpY2ggaW5j
bHVkZWQgeW91ciBtYWM4MDIxMSBidW1wcyBhcyBJIHdhcwp0ZXN0aW5nIHRoZW0gZm9yIHNvbWUg
dGltZSBhbHJlYWR5LgoKSSd2ZSBnb29kIGZlZWxpbmcgYWJvdXQgdGhvc2UgY2hhbmdlcywgYXMg
dGhleSBoYXZlIGJlZW4gdGVzdGVkIGJ5IGEgZmV3CnBlb3BsZSBmb3Igc29tZSB0aW1lIGFscmVh
ZHksIHNvIEknbSBxdWl0ZSBoZXNpdGFudCB0byByZXZlcnQgaXQgYXMgeW91IHdhbnRlZAp0byB1
cGRhdGUgdGhlIG1hYzgwMjExIEFTQVAgYW55d2F5LCBidXQgSSB3aWxsIHJldmVydCB0aG9zZSBj
b21taXRzIGlmIHlvdQp0aGluaywgdGhhdCBpdHMgbm90IHJlYWR5IGZvciB0aGUgcHJpbWUgdGlt
ZSB5ZXQuIFBsZWFzZSBsZXQgbWUga25vdy4KClNvcnJ5IGZvciB0aGF0IGhpY2N1cCwgSSdsbCBp
bXByb3ZlIG15IGdpdCB0b29saW5nIDotKQoKQ2hlZXJzLAoKUGV0cgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
