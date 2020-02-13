Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC2A15C372
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 16:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LUTByUAc1z3ahbTnttJe5vrMjicXlxAUKPwH9hHf0ko=; b=tNG91/j37RRShENfAo/WolD4XE
	AoYshabIfRyZ4xLrRqcEyMNOTSG2xHrKElpXVauOxhHJWwx4z5GhioBHOJ2RKYIP/YLFHmzTJ9sq1
	xPd0Gbn64oohSC8qx4EVfKCtrfSCrmhOn9MFM0wxnUTYcd6LLdolyu/dD8JvvQMHZwRzUAbP7XOdG
	nhPP/36Yin6LhkwpOLOl8G6r8vCGmsBDqCebTZIsvKVSnrwDGfFsj9prDUCc9IAU8woINisruxpWN
	NsoTdIJYMqeaVTjT5XzlOfduchfxoW/oQ0o7qFS0ulSKO2TNhuh4xO8ynwmET12g7Cz3fhxkE9Nqp
	TKuiae6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Gf3-0004bw-4a; Thu, 13 Feb 2020 15:44:17 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Gev-0004aP-Fn
 for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 15:44:11 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 67F814B63;
 Thu, 13 Feb 2020 16:44:06 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a6812304;
 Thu, 13 Feb 2020 16:43:54 +0100 (CET)
Date: Thu, 13 Feb 2020 16:43:54 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: =?utf-8?B?UmVuw6k=?= van Dorst <opensource@vdorst.com>
Message-ID: <20200213154354.GD4966@meh.true.cz>
References: <47e09723-651a-abc6-2c2f-9552c3944e3c@nbd.name>
 <20200211101741.17350-1-ynezz@true.cz>
 <mailman.29925.1581436801.2486.openwrt-devel@lists.openwrt.org>
 <20200211195022.GF38853@meh.true.cz>
 <20200211212335.Horde.PPY4r-vXyYaWZToNCxd9jYH@www.vdorst.com>
 <20200212000444.Horde.lKaETCidKpI1mec-f8m0O4d@www.vdorst.com>
 <mailman.30468.1581606859.2486.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.30468.1581606859.2486.openwrt-devel@lists.openwrt.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_074409_670007_E3DE09E7 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: gsw_mt7621: disable PORT 5 MAC
 RX/TX flow control by default
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
Cc: openwrt-devel@lists.openwrt.org,
 Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmVuw6kgdmFuIERvcnN0IHZpYSBvcGVud3J0LWRldmVsIDxvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnPiBbMjAyMC0wMi0xMyAxNToxNDowOV06CgpIaSwKCj4gTWF5YmUgd2UgY291bGQg
YWRkIHNvbWUgZXh0cmEgZGVidWcgY29kZSBpbiB0aGUgdGltZW91dCgpLiAgRkUgY2FuIHNldCB0
aGUKPiBmbGFnICJETUEgRE9ORSIgZm9yIGV2ZXJ5IHBhY2tldCB0aGF0IHdhcyBzZW5kLiAgRGVi
dWcgY29kZSBzaG91bGQgc2hvdyB0aGF0Cj4gYml0IGZvciBldmVyeSBlbnRyeS4gIE1heWJlIHRo
aXMgZ2l2ZXMgYSBiaXQgbW9yZSBpbmZvLgoKSSdtIGFsbCBpbiB0byBmaXggdGhpcyBwcm9wZXJs
eSBhcyB0aGF0IHByb3Bvc2VkIHBhdGNoIHN0aWxsIGZlZWxzIGxpa2UKd29ya2Fyb3VuZCB0byBt
ZS4KClRoZXJlIHNlZW1zIHRvIGJlIGEgbG90IG9mIHVzZXJzIGludGVyZXN0ZWQvYWZmZWN0ZWQv
YWJsZSB0byB0ZXN0IGl0IG9uIHRoZQpmb3J1bVsxXSwgc28gaXQgd291bGQgYmUgcmVhbGx5IG5p
Y2UgZnJvbSB5b3UgaWYgeW91IGNvdWxkIGZpbmQgc29tZSBzcGFyZQp0aW1lIHRvIGZpeCBpdC4K
CkkgbWVhbiBwcmVwYXJlIHNvbWUgZGVidWcvZml4IHBhdGNoLCBwb3N0IGl0IG9uIHRoYXQgZm9y
dW0gdG9waWMsIHdhaXQgZm9yIHRoZQpyZXNwb25zZSwgaXRlcmF0ZS4uLgoKVGhhbmtzIGZvciB0
YWtpbmcgY2FyZSEKCjEuIGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9tdGstc29jLWV0aC13
YXRjaGRvZy10aW1lb3V0LWFmdGVyLXIxMTU3MwoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
