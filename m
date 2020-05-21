Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DBC1DC877
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 10:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QWDheFSzQgtJJbqGkmk5yovryeB/p3TXNciryk7lrwA=; b=JsDJG0aUPJfTzrCVKIh4/xRC9b
	K5Z0NToFGwFldhBf5YgmmedSd3vAHC3UmHw2+lPNkxDABJOVj3SS0U4n7dTL7EkH/Crl4kmlwsOeY
	a1NZ1DeSgrG/K49msD36vFiwlfapGAQDT3ZgfXO3xgSfYcXlrL3bCfTooTQExFyG76shVxEjXAeAx
	lMMQLht57w9bliZiNfsLZLtSryWTT4XVxcRiSC42iFiZOUTbHIBtAdGKbezpsEgeZj5UdnNJmdVWZ
	rvDDfjmESH7DPOc+Cl2lFHxo1atMqCLHU72vgdjprmcCNuhn7FHpOPok2skiMJRYNzk+XeC1sDIjv
	nMMwzjrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgXM-00024d-Lx; Thu, 21 May 2020 08:26:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgXG-00024B-5E
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 08:26:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 524406593;
 Thu, 21 May 2020 10:26:31 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 82ef99c6;
 Thu, 21 May 2020 10:26:13 +0200 (CEST)
Date: Thu, 21 May 2020 10:26:13 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20200521082613.GA58206@meh.true.cz>
References: <20200521075636.43856-1-mail@david-bauer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521075636.43856-1-mail@david-bauer.net>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_012638_348112_6D087042 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] hostapd: add WEP as queryable build
 feature
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

RGF2aWQgQmF1ZXIgPG1haWxAZGF2aWQtYmF1ZXIubmV0PiBbMjAyMC0wNS0yMSAwOTo1NjozNl06
CgpIaSBEYXZpZCwKCj4gQ29tbWl0IDQ3MmZkOThjNWIxMiAoImhvc3RhcGQ6IGRpc2FibGUgc3Vw
cG9ydCBmb3IgV2lyZWQgRXF1aXZhbGVudAo+IFByaXZhY3kgYnkgZGVmYXVsdCIpIG1hZGUgc3Vw
cG9ydCBmb3IgV0VQIG9wdGlvbmFsLgo+IAo+IEV4cG9zZSB0aGUgV0VQIHN1cHBvcnQgdG8gTHVD
aSBvciBvdGhlciB1c2Vyc3BhY2UgdG9vbHMgdXNpbmcgdGhlCj4gZXhpc3RpbmcgaW50ZXJmYWNl
LiBUaGlzIHdheSB0aGV5IGFyZSBhYmxlIHRvIHJlbW92ZSBXRVAgZnJvbSB0aGUKPiBhdmFpbGFi
bGUgY2lwaGVycyBpZiBob3N0YXBkIGlzIGJ1aWx0IHdpdGhvdXQgV0VQIHN1cHBvcnQuCgpBY2tl
ZC1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KClRoaXMgbG9va3MgbGlrZSB1cHN0
cmVhbSBtYXRlcmlhbCwgY2FuIHlvdSBzZW5kIGl0IHRoZXJlIGFzIHdlbGw/IFRoYW5rcyEKCi0t
IHluZXp6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
