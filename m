Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989B212E06B
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 21:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/pSIe5kzaOA7O6nElriGZeyCSCbFiPLTaPA6q/zvCIY=; b=IJwl3hfeXfOqLIVDY7NKKLjXHk
	6mM6gKn6JuY0Bjt2ezZz487ehed6PuRtMLr8M5dxVljnpPD2FyQrJc3gst8Ztbt1FieGHFzs7LzWs
	kLkGG4MsigguiPIQiTcM0gRu4k/lBShd5j5U2NydoWKywdP7Ws/teymhumzL8jwEdwXIVmmH3OCWg
	7y9tp+kobWDIIW+Ft6YY42xyX+DYusHRoYKXzrLBqnbvqDN+op5bTlryg57nic2O3414MaVdYUngd
	OHDSn0z1xnV8Xp9qNXmEUWumtoAgIRjcqNLHYB0shi9LwEuTm8ZbXLY9DuQR6S1rN/AFSySR4RoMW
	DZx7JiXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imktI-0006Ls-9K; Wed, 01 Jan 2020 20:46:52 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imktB-0006LM-2g
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 20:46:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 52E193007;
 Wed,  1 Jan 2020 21:46:41 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d4c99bb5;
 Wed, 1 Jan 2020 21:46:30 +0100 (CET)
Date: Wed, 1 Jan 2020 21:46:30 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20200101204630.GS70184@meh.true.cz>
References: <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_124645_269690_2C55B549 
X-CRM114-Status: GOOD (  11.72  )
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
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Cc: Hannu Nyman <hannu.nyman@welho.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMjAtMDEtMDEgMjE6MTE6MzBdOgoKPiBCdXQg
aG93IGNvbWUgdGhlIHdvcmthcm91bmQgd2FzIHRvIHVzZSBhbiBvbGRlciBsaWJ1Ym94IGFuZCB1
YnVzIC0gd2FzIHRoZXJlCj4gYW55IG5ldyBjaGVjayB3aGljaCB3YXMgbm90IHRoZXJlIGJlZm9y
ZT8KCkkgZG9uJ3QgaGF2ZSBkZWZpbml0aXZlIGFuc3dlciwgYXMgSSB3b3VsZCBuZWVkIFJQaS00
IChvciBhbnkgb3RoZXIgcmVhbApoYXJkd2FyZSB3aXRoIENvcnRleC1BNzIgY29yZSkgdG8gZmlu
ZCB0aGUgYWN0dWFsIGJpdCBpbiB0aGUgbGlidWJveCB3aGljaApjYXVzZWQgdGhpcyBjaGFuZ2Ug
aW4gdGhlIGJlaGF2aW9yLCBidXQgaGVyZSBpcyBhIHBhcnQgb2YgdGhlIGNvbW1pdApkZXNjcmlw
dGlvblsxXSB3aGljaCBtaWdodCBoZWxwIGFuc3dlcmluZyB0aGF0OgoKIEl0IHNlZW1zIGxpa2Ug
dGhlIHJlY2VudCBmaXhlcyBpbiB0aGUgbGlidWJveCBsaWJyYXJ5LCBwYXJ0aWN1bGFyeSBpbgog
dGhlIGpzaG4gc3ViLWNvbXBvbmVudCAod2hpY2ggZW1wb3dlcnMganNvbl9kdW1wIHVzZWQgaW4g
dGhlIHNoZWxsCiBzY3JpcHQgZXhlY3V0ZWQgYnkgdGhlIGNoaWxkIHByb2Nlc3MpIG1hZGUgdGhl
IGV4ZWN1dGlvbiBzb21laG93IGZhc3RlciwKIHRodXMgZXhwb3NpbmcgdGhpcyByYWN5IGJlaGF2
aW91ciBpbiB0aGUgdmFsaWRhdGVfZmlybXdhcmVfaW1hZ2VfY2FsbCBhdAogbGVhc3Qgb24gUlBp
LTQgKENvcnRleC1BNzIpIHRhcmdldC4KCkFzIEkgd2FzIHVuYWJsZSB0byB0cmlnZ2VyIHRoaXMg
aXNzdWUgZXZlbiBpbiB0aGUgUUVNVS9Db3J0ZXgtQTcyIEkgYXNzdW1lLAp0aGF0IGl0IHdhcyBz
aW1wbHkgc29tZSBraW5kIG9mIHJhY2UsIG5lZWRlZCBzcGVjaWZpYyB0aW1pbmcsIHByb3ZpZGVk
CnByZWNpb3VzbHkgb25seSBieSB0aGF0IFJQaS00IGhhcmR3YXJlLgoKPiBhY3R1YWxseSwgaXQg
bWF5IGJlIHZpc2libGUgb24gdGhlIEhETUkgb3V0cHV0IC0gbm90IGFzIGZsZXhpYmxlIGFzIGEg
c2VyaWFsCj4gY29uc29sZSAobm90IHNvIGVhc3kgdG8gY29weSBwYXN0ZSkgYnV0IHRoYXQgd291
bGQgYWxsb3cgdG8gc2VlIHdoYXQgaXMKPiBnb2luZyBvbiBiZXR0ZXIgdGhhbiB0aGUgc3NoIEkg
d2FzIHVzaW5nIHVwIHRvIG5vdy4KCkkndmUgcHJlcGFyZWQgYSBjb21taXRbMl0gd2hpY2ggaXMg
Z29pbmcgdG8gb3V0cHV0IHRoYXQgZXJyb3IgaW50byB0aGUgc3lzbG9nCmluc3RlYWQsIHRvZ2V0
aGVyIHdpdGggbW9yZSB2ZXJib3NlIGVycm9yIG1lc3NhZ2VbM10gc28gaXQncyBlYXNpZXIgdG8g
dHJhY2sKaXQgZG93biBuZXh0IHRpbWUuCiAKMS4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29w
ZW53cnQtcHJvY2QvY29tbWl0Lzg5MDRiMzQyMDMwNTViZGM2MTljZDk1NTgxYTE5YjMwN2I5MWUz
NjIKMi4gaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtcHJvY2QvY29tbWl0L2U4N2Nj
ZjJiN2FlMTdmYWEyZGZkYTQ3MDQ4NDI3OWMxYmZiNTEzMjgKMy4gaHR0cHM6Ly9naXRsYWIuY29t
L3luZXp6L29wZW53cnQtcHJvY2QvY29tbWl0LzllNDVhNDQ4NTllODFjYzg0ZGJjMzljNDJjOWRh
Y2VmMzBiOTY0MjkKCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
