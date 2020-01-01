Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF77812DF6A
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 17:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bV3LA4kFtd6Pl5a2XYSXm78dRxmlddIFgVzyhQoUICI=; b=ibkI5E1fdfeaMufpoYXv9NDBMV
	Tw4QybdOqo9PVaWXHVyv0oieFPshVIcl66VPyz8/029Fmd161H4/myQ8b7qaDH++6eOeIe4SWvLiA
	El3HtkQeZ2ScmjR1cpfDXQhnxMY4jBBEMTz9+K7Dxy75qSKdNAwQccxlgg+kvpMGT4VA5Asprf23l
	MXF0lvT6eDLam0xRmS35ZxoBJck20ZHgXc0nC7zh/7sU0tcfyxr3Kc4V5ir6lxXyEkuU1/DZ3nD7z
	1Wy9bWzrFsnulGs7oZfRhxws43LE+Q31KgakeWydpWqk71H22OUujBwMvEFyrPlPPO78I2lzQMRkm
	uPB56arw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imgeO-0004Qo-Ro; Wed, 01 Jan 2020 16:15:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imgeD-0003tC-Mj
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 16:15:03 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C72AE4C3D;
 Wed,  1 Jan 2020 17:14:58 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id e45e9822;
 Wed, 1 Jan 2020 17:14:47 +0100 (CET)
Date: Wed, 1 Jan 2020 17:14:47 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Petr =?utf-8?B?Tm92w6Fr?= <petrn@me.com>
Message-ID: <20200101161447.GQ70184@meh.true.cz>
References: <20191230190746.GI70184@meh.true.cz>
 <357266D6-1E26-4066-AFE5-746C2407B0DF@me.com>
 <20191230225631.GJ70184@meh.true.cz>
 <D18390C9-BACD-441C-BC1F-41CD9B01634E@me.com>
 <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_081501_915569_2150CB7D 
X-CRM114-Status: UNSURE (   3.30  )
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

UGV0ciBOb3bDoWsgPHBldHJuQG1lLmNvbT4gWzIwMjAtMDEtMDEgMTU6MTQ6NDddOgoKPiBUaGUg
dXBkYXRlZCBwcm9jZCBkaWQgYWN0dWFsbHkgYWxsb3cgdGhlIHVwZ3JhZGUgdG8gcHJvY2VlZDoK
Ck9rLCB0aGF0cyBpbnRlcmVzdGluZy4KCkNhbiB5b3UgZmluZCBvdXQgd2hpY2ggY29tbWl0IGlu
IHByb2NkIGFjdHVhbGx5IGZpeGVzIGl0PyBJdCBzaG91bGQgYmUgZW5vdWdoCnRvIGNoYW5nZSBQ
S0dfU09VUkNFX1ZFUlNJT04gaW4gcGFja2FnZS9zeXN0ZW0vcHJvY2QvTWFrZWZpbGUgdG8gdGhl
CnJlc3BlY3RpdmUgaGFzaDoKCjEuIGJ1aWxkIHdpdGggUEtHX1NPVVJDRV9WRVJTSU9OOj01ZWQx
OTBhYWUxYjM5ODU3MTkwNDZmNGM3NDRlMzExZmM5ZWYxOGUzLCB0ZXN0CjIuIGJ1aWxkIHdpdGgg
UEtHX1NPVVJDRV9WRVJTSU9OOj02NTQ0ZTRmMWZiZGJiOTJkZjhhMzc3NmU0NDlmZGI1NjAyYjhk
ZGNkLCB0ZXN0CjMuIGJ1aWxkIHdpdGggUEtHX1NPVVJDRV9WRVJTSU9OOj1mZjAzZjNlZDliNmFm
OGIyMDlkYWU2M2YyNDc5MDY2NGM5NGJkOTE2LCB0ZXN0CgpUaGFua3MhCgotLSB5bmV6egoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
