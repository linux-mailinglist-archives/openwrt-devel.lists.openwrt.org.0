Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE231B02BC
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 09:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NyEb4Lu86A4jhOXnzavsjkNvJ0YxjsoD2e9DesCvsUI=; b=PI/ZciR6hbnYra8ISaazqbqzDp
	DSMayi4AeSFP5/WizFe1OdLG+itA9witAkEKaVJsHLi7PSyYEOJ6rMzUjrZEydODnW8qVfPtgrD0S
	adii+NiqZFGPZADH+fitjyXSWqR0QL9/eJabDbNGjQr+GI7PhgiGbHZPL+f7z6NH8SG5Tvnl6OPg/
	3Ba8hbCyJTya8S22zfDbX1v0Oiuir5gyj1oHxUL0Ey8blAY1lc+SxFurbAPmM5vyR0jSVSv7GgFO0
	gzjgzpKQKDLofECXnI1wVT7ub1sHih8q0QLu9JIMYjYBf2x7CsORv9ttgyYom+PSixXFkB70vX2WM
	3QBR9a1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQhs-0001C8-FH; Mon, 20 Apr 2020 07:19:04 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQhk-0001BR-7v
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 07:18:58 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BBE7646C3;
 Mon, 20 Apr 2020 09:18:46 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 149415c8;
 Mon, 20 Apr 2020 09:18:33 +0200 (CEST)
Date: Mon, 20 Apr 2020 09:18:33 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
Message-ID: <20200420071833.GA50609@meh.true.cz>
References: <C9819030-4300-40CD-8FCE-A93314F1BD4B@redfish-solutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C9819030-4300-40CD-8FCE-A93314F1BD4B@redfish-solutions.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_001856_432676_E6F5F11F 
X-CRM114-Status: UNSURE (   4.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Can build x86_64 because of ntf_reject_ipv4.ko
 missing
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

UGhpbGlwIFByaW5kZXZpbGxlIDxwaGlsaXBwX3N1YnhAcmVkZmlzaC1zb2x1dGlvbnMuY29tPiBb
MjAyMC0wNC0xOSAyMTo0NzoxOV06CgpIaSwKCj4gSSBqdXN0IHJlYmFzZWQgdG8gb3BlbndydCBt
YXN0ZXIgdG9kYXksIGFuZCB0cmllZCB0byByZWJ1aWxkIGZyb20gc2NyYXRjaCBidXQgSeKAmW0g
Z2V0dGluZzoKClNvIHBlcmhhcHMgc29tZXRoaW5nIHJlbGF0ZWQgdG8geW91ciBsb2NhbCBjaGFu
Z2VzL3NldHVwL3RyZWU/IEJ1aWxkYm90cyBhcmUKZ3JlZW4sIEkgZG9udCByZW1lbWJlciBzZWVp
bmcgYnJva2VuIHg4Ni82NCBidWlsZCBhbmQgSSBidWlsZCBhbmQgcnVuIHRlc3QgaXQKd2l0aCBl
dmVyeSBrZXJuZWwgYnVtcC4gSXQncyBpbmNyZW1lbnRhbCBsb2NhbCBidWlsZCBhbmQgYnVpbGQg
ZnJvbSBzY3JhdGNoIG9uCkNJLgoKLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
