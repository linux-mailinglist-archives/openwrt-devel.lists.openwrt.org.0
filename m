Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC91E1D1FA4
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 21:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqbdM5Qg1oie5goAmHUjhWpBfhwuNIj6qtaYCCypigQ=; b=e248DezGsh6T6m
	kVyB1/HqtG8mSdnHOimtBcMdwp5vM66+wPqIIxEgLBFy8BXs8RvldT9G4Ez02w/YuDWcKgMvPkwTR
	ENb4MQeqItdjBKI1kEYDMfbmAk4bBCK/BRkTTZ+3vbNA5WeaqAaiqCPiKLRQqDYh6YLpXWR8Y7CR/
	mPdjKLoWu+rW/SeGienp6HHZTwtVy7tvJ4DMx0NT1t2T8DfemO49tctDkpVWjga+8/fCf/jEsDzf7
	GoGa5ZSthsWqLWnjlxmIfsXhDn/CBUGv6jicTAT2LnNqy0JcWPWccCD1vLsE7rCc1V/+kDJ+0Gw6R
	zxdGxJF7xBnkeh6SbiFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxOS-0001iQ-S0; Wed, 13 May 2020 19:50:16 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYxO9-0001hR-TQ
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 19:49:59 +0000
Received: (wp-smtpd smtp.tlen.pl 10762 invoked from network);
 13 May 2020 21:49:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1589399393; bh=rqu+w6hf1uq7kSqDugXJk0EGWj1GlX+qS/MJbk8Vj44=;
 h=From:Subject:To:Cc;
 b=xTUq70Ig6CRtp1MsFnE4cJmBDKw2T0Zxyqy10Grzj3AblzPVXhFPxA8JZuz2EkrMI
 CS+YfrROM5o5K7QLEv60Nc8JyGz6JWtLulONDznPtqlLngMC40hmdT2u3aDHaa6yhE
 ZxU/cB6pC3PmLF8Crk42LB5Tvgow1hs7DinOHoNg=
Received: from mail-lf1-f49.google.com (xizix@o2.pl@[209.85.167.49])
 (envelope-sender <xizix@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 13 May 2020 21:49:53 +0200
Received: by mail-lf1-f49.google.com with SMTP id v5so522240lfp.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 12:49:53 -0700 (PDT)
X-Gm-Message-State: AOAM531pQNwqGyToQBa08OYPFSkza5cBp5G5zx30rdFg/VBDOzUEX3U0
 znNOrxfRgPgoCz0YAtSlesmaya1UdB5c4I5Kzac=
X-Google-Smtp-Source: ABdhPJzgh36dcFuar+06EPeGZE2k4+GyYfC1AyiQz70RqBZsyTsR/TTqy1oKXzu9YXRlHuvwMWZtVGFv3RIRrc5B0OM=
X-Received: by 2002:a19:ee19:: with SMTP id g25mr734475lfb.124.1589399392999; 
 Wed, 13 May 2020 12:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1589396871.git.mschiffer@universe-factory.net>
 <d9a8cdcbfe046467dcb5e19e2bedcc773092333d.1589396871.git.mschiffer@universe-factory.net>
In-Reply-To: <d9a8cdcbfe046467dcb5e19e2bedcc773092333d.1589396871.git.mschiffer@universe-factory.net>
From: Tomasz Izydorczyk <xizix@o2.pl>
Date: Wed, 13 May 2020 21:49:40 +0200
X-Gmail-Original-Message-ID: <CACASJV5iYVkFcmetj6LV4vbN5rMM9gzoOHfCATtycN48X4VTPQ@mail.gmail.com>
Message-ID: <CACASJV5iYVkFcmetj6LV4vbN5rMM9gzoOHfCATtycN48X4VTPQ@mail.gmail.com>
To: Matthias Schiffer <mschiffer@universe-factory.net>
X-WP-MailID: 3e7b6dd4c0d7575b3d467e6bee876e51
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0W0000A [oWOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_124958_271704_852A76E4 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [193.222.135.140 listed in psbl.surriel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.140 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xizix[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?193.222.135.140>]
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] build: compress kernel debuginfo
 using zstd
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

xZtyLiwgMTMgbWFqIDIwMjAgbyAyMToxOSBNYXR0aGlhcyBTY2hpZmZlcgo8bXNjaGlmZmVyQHVu
aXZlcnNlLWZhY3RvcnkubmV0PiBuYXBpc2HFgihhKToKPgo+IHpzdGQgd2l0aCBpdHMgZGVmYXVs
dCBzZXR0aW5ncyAoY29tcHJlc3Npb24gbGV2ZWwgLTMpIGNvbXByZXNzZXMgYmV0dGVyCj4gdGhh
biBiemlwMiAtOSAod2hpY2ggaXMgdGhlIGRlZmF1bHQgc2V0dGluZyksIGFuZCBpcyBhbiBvcmRl
ciBvZiBtYWduaXR1ZGUKPiBmYXN0ZXIuCj4KPiBJIG1hZGUgdGhlIGZvbGxvd2luZyBtZWFzdXJl
bWVudHMgZm9yIHRoZSBtb3N0IGNvbW1vbiBjb21wcmVzc2lvbiB0b29scwo+IChhbGwgc3RhbmRh
cmQgRGViaWFuIEJ1c3RlciB2ZXJzaW9ucywgZGVmYXVsdCBmbGFncyB1bmxlc3Mgbm90ZWQKPiBv
dGhlcndpc2UpLCB1c2luZyB0aGUgZGVidWcgaW5mb3JtYXRpb24gb2YgYSBsYXJnZSB4ODYtNjQg
a2VybmVsIHdpdGgKPiBBTExfS01PRFM6Cj4KPiAqIGtlcm5lbC1kZWJ1Zy50YXI6IDM3Nk0KPiAq
IGtlcm5lbC1kZWJ1Zy50YXIuZ3o6IDEwMU0sIGNvbXByZXNzZWQgaW4gfjEycwo+ICoga2VybmVs
LWRlYnVnLnRhci5iejI6IDkxTSwgY29tcHJlc3NlZCBpbiB+MTVzCj4gKiBrZXJuZWwtZGVidWcu
dGFyLnh6OiA1N00sIGNvbXByZXNzZWQgaW4gfjEwMXMKPiAqIGtlcm5lbC1kZWJ1Zy50YXIuenN0
OiA4Nk0sIGNvbXByZXNzZWQgaW4gfjFzCj4uLi4KCkltcHJlc3NpdmUgcmVzdWx0cy4gUGVyaGFw
cyBpdCBzaG91bGQgYWxzbyBiZSB1c2VkIGZvciBTcXVhc2hGUwppbnN0ZWFkIG9mIExaTUEgLy9U
aG9tYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
