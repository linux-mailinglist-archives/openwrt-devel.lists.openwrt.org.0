Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257B41696AB
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Feb 2020 08:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dVsR7LFhhZkdANJaaFzTTIMsUcJ/U34Y5YU65OBSmx4=; b=InR4sjoGfaNhiLYxsM9ijlyIcX
	uSGvkvaAhdDn1EsDvGLo+FNBd5NMVJAnHmDU7vHOtqXCgBSL/Qiqjtjh6+ofmLg53FjnLsY3cAUmf
	EQ+szGO9MPS8y3um9u1eBqfuIPdKiBrSw3G9RM+p6CaryI/EBE0OXArRgp2odkyc/ybGURjNQnsL6
	jAuJj6q2do7T0GziViBu9z9TlLNKJ+IBszj5pToK70UDAPbK/AL6SP8wTNIwrOomdJ928HOzgwV3b
	4btDlkT/jo3H+LkJeUG3t7uKf0eQRCBWjATAAP1IHYGQzT4zmgu5h0TSm4dpKkRBavgGnr4Sz9WJ1
	Pb+xEuDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5lxH-0007dB-26; Sun, 23 Feb 2020 07:45:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5lx7-0007bY-5n; Sun, 23 Feb 2020 07:45:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7309349AB;
 Sun, 23 Feb 2020 08:45:21 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 768a9da9;
 Sun, 23 Feb 2020 08:45:08 +0100 (CET)
Date: Sun, 23 Feb 2020 08:45:08 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200223074508.GF99033@meh.true.cz>
References: <20200222133113.GE99033@meh.true.cz>
 <EF50BAB8-683F-4BA7-9EB3-3ACA82711014@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <EF50BAB8-683F-4BA7-9EB3-3ACA82711014@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_234525_365563_70F99104 
X-CRM114-Status: UNSURE (   4.87  )
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
Subject: Re: [OpenWrt-Devel] Next maintenance releases
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Um9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IFsyMDIwLTAyLTIyIDE0OjMxOjE0XToKCj4g
VGhhdOKAmXMgdG90YWxseSBib2d1cy4gCgpUaGF0J3MgbXkgaW50ZXJwcmV0YXRpb24gb2YgeW91
ciBjb21taXQgZGVzY3JpcHRpb24sIHdoZXJlIHlvdSdyZSB0YWxraW5nCmFib3V0IGVycm9ycywg
Y2hhbmdlcywgYnV0IGRpZG4ndCBwcm92aWRlIGFjdHVhbCBvdXRwdXQsIGNvbW1pdCBoYXNoZXMg
ZXRjLgpZb3Ugc2ltcGx5IGFzc3VtZSwgdGhhdCBldmVyeSByZXZpZXdlciBpcyBOQVNNIGFuZCBm
Zm1wZWcgZXhwZXJ0LgoKPiBmZm1wZWcgaXMgdGhlIG9ubHkgdXNlciBvZiBOQVNNLiAKClRoaXMg
d2FzbnQgY2xlYXIgZnJvbSB5b3VyIGNvbW1pdCBkZXNjcmlwdGlvbi4KCj4gTm90ZSB0aGF0IEni
gJl2ZSBhbHJlYWR5IHdvcmtlZCBhcm91bmQgdGhpcyBpbiB0aGUgcGFja2FnZXMgZmVlZCBieSBw
YXNzaW5nCj4g4oCUZGlzYWJsZS14ODZhc20gdG8gZmZtcGVnIGZvciB0aGVzZSBwbGF0Zm9ybXMu
CgpPaywgaG93IGNvdWxkIEkgZGVkdWNlIHRoaXMgaW1wb3J0YW50IGRldGFpbCBmcm9tIHRoYXQg
Y29tbWl0IGRlc2NyaXB0aW9uPwoKPiBBbHNvIG5vdGUgdGhhdCBBU00gb3B0aW1pemF0aW9ucyBo
ZWxwIHdpdGggdGhlIFBDRW5naW5lcyBBUFVzLCB3aGljaCBhcmUKPiBxdWl0ZSBwb3B1bGFyIGhl
cmUuCgpHb29kLCB0aGVuIG1ha2UgaXQgY2xlYXIgaW4gdjIgZGVzY3JpcHRpb24gb2YgeW91ciBw
YXRjaC4KCi0tIHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
