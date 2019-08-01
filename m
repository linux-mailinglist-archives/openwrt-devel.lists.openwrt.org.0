Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3331C7D814
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 10:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jgsioUFf2iblQkU4/HbbN/lg+A/lBhkhA5vYoxACxms=; b=MVRjF4MqYhJ0AK4XEmsiOoG7Q1
	1WINkdbIgzqHCxYsQj3aMajFEAxzd5gx2pGuK4Rzex+aYGUnB0Yl4rQZyQN6+Uj3+HHos1oIcIMGe
	V1EgtQe5Kz1KQfywJ+MdPGzibwYgE+ZeOpA1rDR3sQeenQkcP2y409CgPyQcE5/534znCXrbqSa0c
	K7DheyyZQbCeYLuNkQg9oldplciBlUIjIwbbxncQfbLTyMnxZLUCkSK7lyXP+1uSlqjjH6AUuu6Tq
	Dqa8guGxXw98C7I19dPICFdEjcBpAcT+x742cN3V3BB8e3RwlHrGoeYEldO97kjE4H25TSoacFNLZ
	s8LVXmLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6qm-0001we-KW; Thu, 01 Aug 2019 08:54:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6qg-0001wM-N6
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 08:54:11 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 56BB446AA;
 Thu,  1 Aug 2019 10:54:09 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 0917c515;
 Thu, 1 Aug 2019 10:54:02 +0200 (CEST)
Date: Thu, 1 Aug 2019 10:54:02 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tom Psyborg <pozega.tomislav@gmail.com>
Message-ID: <20190801085402.GL74752@meh.true.cz>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
 <CAKR_QV++ebOfgX-OUPY+OWz1_kUNiEP85csYFwswJL+vVXtfZw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKR_QV++ebOfgX-OUPY+OWz1_kUNiEP85csYFwswJL+vVXtfZw@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_015410_909012_57A78E08 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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
Cc: Dmitry Tunin <hanipouspilot@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VG9tIFBzeWJvcmcgPHBvemVnYS50b21pc2xhdkBnbWFpbC5jb20+IFsyMDE5LTA4LTAxIDA5OjU0
OjQzXToKCkhpLAoKPiBPbiAzMC8wNy8yMDE5LCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PiB3cm90ZToKPiAKPiA+IGIpIGl0IHdhcyBkZWNpZGVkIHNvbWUgdGltZSBhZ28sIHRoYXQgMTku
MDcgaXMgbGFzdCByZWxlYXNlIHdpdGggYXI3MXh4LAo+ID4gICAgbm90aGluZyBhYm91dCBhdGg3
OSBpbiAxOS4wNwo+IAo+IGJlY2F1c2UgeW91IGN1cnJlbnRseSBoYXZlIGJvdGggdGFyZ2V0cyBh
cyBzb3VyY2Utb25seQoKVGhpcyBkaXNjdXNzaW9uIGlzIGFib3V0IG9wZW53cnQtMTkuMDcgYnJh
bmNoLCBzbyB0aGVyZSdzIGN1cnJlbnRseSBhdGg3OQpzb3VyY2Utb25seSAod2hpY2ggbWlnaHQg
c3RpbGwgY2hhbmdlIGJlZm9yZSAtcmMxIGFzIHRoZXJlIHdhcyBzb21lIGRpc2N1c3Npb24Kb24g
SVJDIHJlZ2FyZGluZyB0aGlzKSBhbmQgYXI3MXh4IGlzIHNvdXJjZS1vbmx5IGluIG1hc3Rlci4K
Ci0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
