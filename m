Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBAE115EB8
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 22:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOADhrJ/xjE8sPyFdiCTYSXtPCFXn+khkBpLlb81+no=; b=gs46Cr44+/nb/W
	QnXOMzC9yb+HZYaZ0ifkUX44vADSqGNWhDWbJkz0BuWdQ1hfmgQ7g+rCpS0hfYmXi7fPBwaGOWB1r
	fqr4awTMOyDPuVgGscSWNcV8/7/UT5dlXEiknuNZ+WfbGswdxA6rOgyy+bZM+04SJwReuZj0SZYnL
	wl9xDYSzyqU0AIGiNpZmoqDg5CtahG7PaEpN08ZII8B3RNVtp8bVk9WifcD1D1g53h82GJkuXUVAQ
	xrnc6SUqyqmN9+bTidRzMh5iS/fjA7wSLxosBs4p7x/r2c4itgw5EsDvZ7s4cnHq29P2LjSgHgr3N
	d4cnPvaJ7ItwF0mNLHJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idhMR-0002hC-0H; Sat, 07 Dec 2019 21:11:31 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idhMH-0002gb-0l
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 21:11:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id s22so11367631ljs.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec 2019 13:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=cZbA9dcB7hLp8rLSOsxh6oZr1Pj6YZ8tjQ1lSwI9c+E=;
 b=dfB2A5I6V3BqlPh8m2daM93n4Bax5S+ocajGdNOmikEkYdSuDGLXIDdDfJ9Ofcib+k
 Be0ZnQCaCltsXJS8BbhL0vTNITvMONjqcG1jR6W50Q2L3PVp4GPn9cToVX2F6fm8Dgzn
 ka93tcArGMak5mYuk7Boznr6oy5pZrr0ZXFdv9IL0feTBu/uqEaCsjv3BkkuEehQRMyc
 i/PGuaX88/kIvzrp9nuMMwpCJFVBYY5zjx90ZcR1XpQmYCKaecP6r7yxKmBxDp4LhZOj
 6pqBD89vORkhtqOSfqNuCTg/biktiLJfeZeq5hIGbzuSoiJHz59+Qve3I5YfKwxSZ1LF
 OxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=cZbA9dcB7hLp8rLSOsxh6oZr1Pj6YZ8tjQ1lSwI9c+E=;
 b=iGYq2qJI+85gbPZvH6PTTYaGRTl7spVP61RuAJxfGzAOUkj4+rrQJNo9Yx0AqyEZQd
 d47YvEwP4xgr5zxrdml78jhFotFL7T+8s/rnbEWgCBbeZRCFmQZAktr5jEJD4LnyulMp
 vyJ3WNjyuWlnw0sPlw2xn9M75RFUsGOmzluYvWSB2hVCZHdTpFQedcwKL+EOmfekqz+U
 QyFxt5SXGxERSzQre0la1yZIyfPpKn+39leWNZ+MppKffo6zTgj9kDtscaQBVr1v8nJ2
 vm719gvl101dxgIm1+yF6nhe6hTQ4a+IRh1vVuuh/AqcCuZBc1cTpXMa/iNPkoR9A4Xj
 H0mA==
X-Gm-Message-State: APjAAAWnzlW6dig0f1UKKoEjJTNhgZjWWeeV/oIgloWm1JlhHTstmu9j
 PvWBBFL6R7usv/VZ2Qh4Pq8=
X-Google-Smtp-Source: APXvYqzzXKNnYcaUiOCR1Uz2CFMXrIN5+1EWtkecdWPP/mWMrLCV+DJulfrLEuDKZ+CHSn5AUkeRHA==
X-Received: by 2002:a2e:6e10:: with SMTP id j16mr12460174ljc.202.1575753078130; 
 Sat, 07 Dec 2019 13:11:18 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id t6sm8508887lji.17.2019.12.07.13.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 13:11:17 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xB7LBFul026747; Sun, 8 Dec 2019 00:11:15 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xB7LBFin026746;
 Sun, 8 Dec 2019 00:11:15 +0300
Date: Sun, 8 Dec 2019 00:11:14 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20191207211114.GG11070@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
 <20191207140405.GE11070@home.paul.comp>
 <20191207150413.GF71465@meh.true.cz>
 <20191207201011.GF11070@home.paul.comp>
 <20191207205826.GG71465@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207205826.GG71465@meh.true.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_131121_085776_50B551B0 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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

T24gU2F0LCBEZWMgMDcsIDIwMTkgYXQgMDk6NTg6MjZQTSArMDEwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiA+IEknbGwgYmUgaGFwcHkgdG8gY2hhbmdlIHRoZSBwYXRjaCBpbiBhbnkgd2F5IHRo
YXQgd2lsbCBnZXQgaXQgYWNjZXB0ZWQuCj4gCj4gVGhlbiBqdXN0IGRvIHRoZSByZXF1ZXN0ZWQg
Y2hhbmdlcyBpbiB2Mywgc29sdmVkLgoKSSBnb3QgYW4gaW1wcmVzc2lvbiBBZHJpYW4gaXMgbm90
IHN1cmUgYW55bW9yZSBoZSdzIHJlcXVlc3RpbmcgYWxsIHRoZQpjaGFuZ2VzIHdlIHRhbGtlZCBh
Ym91dCwgYXMgSSBwcm92aWRlZCBzb21lIHJlYXNvbmFibGUKY291bnRlci1hcmd1bWVudHMgYW5k
IHRoYXQgaGUgaXMgd2FpdGluZyBmb3Igc29tZW9uZSBlbHNlIHRvIGNoaW1lCmluLiBJZiB5b3Ug
dGVsbCBtZSBJIHNob3VsZCBqdXN0IGRvIHdoYXRldmVyIEFkcmlhbiBzYXlzLCBvaywgbnAuIERv
IEkKZ2V0IGl0IHJpZ2h0PwoKLS0gCkJlIGZyZWUsIHVzZSBmcmVlIChodHRwOi8vd3d3LmdudS5v
cmcvcGhpbG9zb3BoeS9mcmVlLXN3Lmh0bWwpIHNvZnR3YXJlIQptYWlsdG86ZmVyY2VycGF2QGdt
YWlsLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
