Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52328103D07
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 15:14:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XGibTb1a8YU4WtqaFFCsc+pojjOYTLbdLRyyHBiaAQA=; b=LP6bslBJzGuWTsQtEJ+2X5GBB5
	537KyEqbCeaLhAjKecid98jvTFmcHXlSIzSNuRqQaeKJlVaQcSH7aUFkybuMDXJU0oDrFW6AhPBn0
	NqPfC5WI/s096LicDoeRN8u2laPCH/9+9NZNekHi5yMVsrIe1GYVSUVdM+bZgZ2yje3d4Gct45+gW
	5dJDZn0x3wlKQltQN83pOsAcbkSG/OhrP8VBsvGg1tommt0fruK6kPfkyICs+3oRWeJMwM20AdCzA
	fiMfc7pioSsnMoPqdYAMfAxusB0sfMFkHyVjqVizoAdZo+O4jnoSn5sGVEe7Gd49bAlrMJmgsgOYz
	wIYzB/HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQkJ-0002BY-2z; Wed, 20 Nov 2019 14:14:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQkC-00020r-9o
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 14:14:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8ACB34DAB;
 Wed, 20 Nov 2019 15:14:05 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id df086147;
 Wed, 20 Nov 2019 15:13:55 +0100 (CET)
Date: Wed, 20 Nov 2019 15:13:55 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20191120141355.GF52387@meh.true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-9-ynezz@true.cz>
 <CAECwjAi+GuDQ7+8dCaFWD+whAWqrEFPHby=E1ZnHoD7kQWWSOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAi+GuDQ7+8dCaFWD+whAWqrEFPHby=E1ZnHoD7kQWWSOw@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_061408_494655_6B6784CC 
X-CRM114-Status: UNSURE (   6.54  )
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
Subject: Re: [OpenWrt-Devel] [PATCH libubox 8/9] blobmsg_json: fix possible
 uninitialized struct member
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

WW91c29uZyBaaG91IDx5c3pob3U0dGVjaEBnbWFpbC5jb20+IFsyMDE5LTExLTIwIDIyOjAzOjA2
XToKCj4gT24gV2VkLCAyMCBOb3YgMjAxOSBhdCAyMDowMSwgUGV0ciDFoHRldGlhciA8eW5lenpA
dHJ1ZS5jej4gd3JvdGU6Cj4gPgo+ID4gY2xhbmctMTAgYW5hbHl6ZXIgcmVwb3J0cyBmb2xsb3dp
bmc6Cj4gPgo+ID4gIGJsb2Jtc2dfanNvbi5jOjI4NToyOiB3YXJuaW5nOiBUaGUgZXhwcmVzc2lv
biBpcyBhbiB1bmluaXRpYWxpemVkIHZhbHVlLiBUaGUgY29tcHV0ZWQgdmFsdWUgd2lsbCBhbHNv
IGJlIGdhcmJhZ2UKPiA+ICAgICAgICAgIHMtPmluZGVudF9sZXZlbCsrOwo+ID4gICAgICAgICAg
Xn5+fn5+fn5+fn5+fn5+fn4KPiAKPiBBZGQgZWxzZSBicmFuY2ggdG8gaW5pdGlhbGl6ZSBpdCBp
biBzZXR1cF9zdHJidWYoKSBzaG91bGQgc3VmZmljZS4KCk9mIGNvdXJzZSwgYW5kIEkgZXZlbiBp
bml0aWFseSBwbGFubmVkIHRvIGZpeCBpdCB0aGF0IHdheSwgYnV0IHRoZW4gZGVjaWRlZCB0bwpq
dXN0IGluaXQgdGhlIGNvbXBsZXRlIHN0cnVjdCBhcyBpdCBkb2Vzbid0IGFkZCBhbm90aGVyIGNv
ZGVwYXRoLiAgU28gcHJvYmFibHkKanVzdCBhIG1hdHRlciBvZiB0YXN0ZT8KCi0tIHluZXp6Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
