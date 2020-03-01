Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAA0174D33
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hzBtMdho9wDGwKjv/0W3sGgRNuPBoBgVDEWpPckBd30=; b=XyxAkd7jej8nv0gOxI3PCvOte5
	+hZ/sGULs7mkSICSS26kZEYMgwXGaptRakjRN4H8Hb/vOdg8SAkd91CY/OaxfBaSBpcFG2zq8F9q1
	j9iRyAuWK0OK9aMvXxHxOTPnDWo8kqkK5fyuxJ/kf4vTkDCTt8PtMF5aTpg9WzHHmss9c/Slo3xXy
	1kKlf9z1njwbwsPG7Wzk8NaAaFTyaCy3uju4QrTYt29Dr2IZ2PKZOrTsW1G32mGdaom+xI4yCAWB5
	JRcD+LmGMhEB/uZx84qPXSlwUk7bPvAq+Y/zQcMbXcrQtPRDDa3IoD/TFG8qDEJxeUq7LHm82FT7i
	WzVZlqOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NWb-0002ot-G1; Sun, 01 Mar 2020 12:16:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NVG-0000e1-U1
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:15:29 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 27A2E4F17;
 Sun,  1 Mar 2020 13:15:24 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 53518ab4;
 Sun, 1 Mar 2020 13:15:10 +0100 (CET)
Date: Sun, 1 Mar 2020 13:15:10 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20200301121510.GA61863@meh.true.cz>
References: <20200301121241.5545-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301121241.5545-1-hauke@hauke-m.de>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_041527_159395_8BD4B0FD 
X-CRM114-Status: UNSURE (   4.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 00/12] targets: Remove kernel 4.14
 support
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

SGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IFsyMDIwLTAzLTAxIDEzOjEyOjI5XToK
Cj4gVGhpcyByZW1vdmVkIHRoZSBrZXJuZWwgNC4xNCBzdXBwb3J0IGZvciBtdWx0aXBsZSB0YXJn
ZXRzIHdoaWNoIHdlcmUgCj4gZWFybHkgc3dpdGNoZWQgdG8ga2VybmVsIDQuMTkuIFRoaXMgc2hv
dWxkIHJlZHVjZSB0aGUgbWFpbnRlbmFuY2UgCj4gZWZmb3J0cyBlc3BlY2lhbGx5IGFmdGVyIG9y
IHdoZW4gd2UgYWRkIGtlcm5lbCA1LjQgc3VwcG9ydCBmb3IgdGhlc2UgCj4gdGFyZ2V0cy4gU29t
ZSBvZiB0aGVzZSB0YXJnZXRzIGRvIG5vdCBldmVuIGNvbXBpbGUgYWdhaW5zdCA0LjE0IGFueSAK
PiBtb3JlLgoKQWNrZWQtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
