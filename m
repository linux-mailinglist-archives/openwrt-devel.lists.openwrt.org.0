Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB85F10B1
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 08:58:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu6iTHJRGNFcjCKdc+08D457pbw+QIjY5241yowiw/M=; b=fJfZ+jWNgw47es
	kWNqIzOzBxdQwYl491h0NRyCP6ON6/vdzwOiENYHIRajde/5jW32YTMXa7BqQzDuIlL/NGQeLS64i
	kjXYVaTH8Df7Ct7LYjDq65KNkkCQGauFikEQaoKzqC6aiSTa/wCRb+KX5eSFvHpRxgJeEpDQjemip
	exGnGYVDe5TlSmRykZv/7yFLtepi0ECJfUghImuUPItWDw4Ukb/n0y1XlojNmlVG2kUyMgw0ow3jb
	CgquYJmdTIEN7729x3QLalPeKx7jDmDlu2ikuaCKeUhH91zbly77lFYoWa/xRm/PBUIuGjnFseId0
	uBKbjTD3NRLF+9CV9s9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSGD1-0002vs-7Z; Wed, 06 Nov 2019 07:58:31 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSGCu-0002vG-Dd
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 07:58:26 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id xA67wFub006058
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Wed, 6 Nov 2019 08:58:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1573027096; bh=9px28q0QY2eB64ZkpHfn9mErKyuJUbVWmEN2n6KQ3Z8=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=Q66/rrhDQ6IHoNz7CiID/i91fJJs4biS6jduYxIl5i77C1LwdWNshHuDcWhNt1u+4
 ygWmR/YtztgJjbdj1mbJbyTT/B504Lyc7eZXx54+LyzLnJB4+uq08xgvhMn6iTqglN
 fwbRK+E8WND8HBAP+100GQbGYXzNbd/5P4QnTLcY=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iSGCl-0005Am-AK; Wed, 06 Nov 2019 08:58:15 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: <mail@adrianschmutzler.de>
Organization: m
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
 <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
 <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de>
Date: Wed, 06 Nov 2019 08:58:15 +0100
In-Reply-To: <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de> (mail's
 message of "Wed, 6 Nov 2019 00:14:28 +0100")
Message-ID: <87zhh9zbag.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_235824_798416_2C6AD0CD 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: 'Mathias Kresin' <dev@kresin.me>, openwrt-devel@lists.openwrt.org,
 'Enrico Mioso' <mrkiko.rs@gmail.com>, 'Piotr Dymacz' <pepe2k@gmail.com>,
 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gd3JpdGVzOgoKPiBXZWxsLCBub3JtYWxseSBJJ2Qg
c2F5IHRvIGxvd2VyIHRoZSBUWCBwb3dlciB5b3Ugd291bGQgdXNlIHRoZQo+IHVzZXItc3BhY2Ug
dHhwb3dlciBzZXR0aW5nIGFuZCBub3QgY2hhbmdlIHZvbHRhZ2VzIG9mIGFuIGFtcGxpZmllci4K
ClRoaXMgY2hvaWNlIHdpbGwgYWZmZWN0IFMvTi4gIFlvdSdsbCBwcm9iYWJseSBsaW1pdCB0aGUg
dXNhYmxlIHR4cG93ZXIKcmFuZ2UgdGhpcyB3YXkuCgpQbGVhc2UgdXNlIHRoZSBmZWF0dXJlcyBv
ZiB0aGUgaGFyZHdhcmUuICBEb24ndCBoaWRlIHRoZW0uCgpTdXJlLCBhbGwgaGFyZHdhcmUgc3Vw
cG9ydGluZyBjb2RlIHdpbGwgdXNlIHNvbWUgZmxhc2guIFNvIHdoYXQ/IEFyZSB5b3UKZ29pbmcg
dG8gc3VwcG9ydCB0aGUgaGFyZHdhcmUgb3Igbm90PyAgSWYgeW91IGFyZW4ndCwgdGhlbiBJIGRv
bid0IHRoaW5rCnRoZXJlIGlzIGFueSB2YWx1ZSBpbiBPcGVuV3J0LgoKCkJqw7hybgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
