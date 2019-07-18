Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBD56D245
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 18:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ljaDINit03/pHmR9G58A3KsrFnz21Tap6FbeP+Gb4g=; b=Qzm1bj7IBuTYkv
	V+4EVCHkoZzQODkAW96ZBWk8Pq5YLIDGkZpBWnU8YDKhs8bxK0E3yHVt8ty0VHozmGiskrS0cwmn1
	Y+9sv4ne9uXwf2pUAEbNR+CKC72l/ojOVsEpAkvRzEciVfFAoRWJz+6u6wONX3Y1drtgQ0NEdbcZe
	K3l+9V0+U+BVa3YL7fXgaJe+7ZgNJrLcxT/ViptgrQbtPQ/p6fz5CdVQ3ch/JwJLJVCKWpxILgg9U
	+D6ktEgnKHsjj1fBMaYCxZN5Qr1RK5L2lY2INewD1gMM/gLRF95jJ2xyvNAEuYCzwn6OIdONdzKb3
	tX7UMxD/vhWvzbGfoaWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9Yu-0000Ia-Op; Thu, 18 Jul 2019 16:47:20 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9Yl-0000I2-4o
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 16:47:12 +0000
Received: by mail-ot1-x342.google.com with SMTP id l15so29749666otn.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jul 2019 09:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=A9TOGgpgulZpHQGMeDRP4atsnrB/KB7RoJem42J/498=;
 b=barnb4Gv3C4ALZhxeEoxihrcyArQ5OuQB7r4Eb+SyhHdL4Cs58d+jcfZH1eYeR7qkU
 4TFCUwaA8UQbcR+AYfgPNhEvBpqB5bLdfE1EghDAQRrCDlR5THmpAKWtE9ONdOqmK+ih
 Lm3Pl4MJSRvG3LlD6LACgFZwZJB2H98vFtlxd5K3UIU5/VvI621MEonLqKZTYekWqbil
 QtH8lZfV+XWkP6ncrDgzMdXz9AseBL3Y/hPrJQbZYJmg2nwMCCGOACiUw6u2ZuXxuPrv
 T9QGem3pXyVXS4TOYAKa7CoMmcllJPrYC4qmGqc64ad5rIqPMaTHRHg1cdpAKMlIouke
 6yeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=A9TOGgpgulZpHQGMeDRP4atsnrB/KB7RoJem42J/498=;
 b=jIskjfwcB95y31LgpOj9SuNnlmBq1fxzgBAH5bSYdL+PKMM17rrR5ycsc28YFZpxlG
 7XPxlMT5LvEBeQ6sgR9CvQfa4yhchfNTHi55bTS8advC3ddVix/2Yrv+EJuEmM43A+fN
 K30ydjl+TXrfnohO1vEXjyOvLL6P040f1F/2mUse6upBHdi+GBlzMTrOdK0TITJs84ZO
 PEK6RFV6rV278jlqWL8hxMxAq8YrH6M45oNAmuVkZwfJ3r/u/F8uOHOBlhE4PEPQZmlb
 D9jFByhTeCxDYdohdF8QtS9X0Gd3vK0MxcmI+9mlf1jbSn4vJ8EegZaeyMSAJ86qHo6z
 Fw4Q==
X-Gm-Message-State: APjAAAUNe+Ia6QQQYikC1BUlDtQ6ngAuOt3M8coRw/zdDLZ11fh8dLEv
 qx1zNT80tQKJPmFpTwIWxfk2tqe7u8WXyVVVi3dubw==
X-Google-Smtp-Source: APXvYqzkEHXnIqOFzbJYpCzZwro+tqo3avvdf7Gf7NxeRIYv1V9fRDoVtNmWBi49w6hr53Q7OKqz5pmC6UN/ms1DLIM=
X-Received: by 2002:a05:6830:164e:: with SMTP id
 h14mr18331662otr.186.1563468429989; 
 Thu, 18 Jul 2019 09:47:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190718013000.18102-1-rosenp@gmail.com>
 <20190718075401.GD48772@meh.true.cz>
In-Reply-To: <20190718075401.GD48772@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 18 Jul 2019 09:46:58 -0700
Message-ID: <CAKxU2N_H2cGN0wh9Abs_G7iFj=okYBYFeAOu3KGjoUpS+kCdtQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_094711_214337_E4AB0A29 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] util-linux: Fix widechar check
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMTI6NTQgQU0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cj4KPiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4gWzIwMTktMDct
MTcgMTg6MzA6MDBdOgo+Cj4gPiBQYXRjaCBpcyBhbiB1cHN0cmVhbSBiYWNrcG9ydC4KPgo+IENh
bid0IHdlIHNpbXBseSB3YWl0IHRpbGxuZXh0IHV0aWwtbGludXggYnVtcD8KTWFrZXMgbm8gZGlm
ZmVyZW5jZSB0byBtZS4KPgo+ID4gRml4ZXMgY29tcGlsYXRpb24gd2hlbiAtV2Vycm9yPWltcGxp
Y2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uIGlzIHBhc3NlZC4KPgo+IENhbiB5b3UgcGxlYXNlIGV4
cGxhaW4gd2h5IGlzIHRoaXMgcGF0Y2ggbmVlZGVkLCB3aGF0IGlzIGZhaWxpbmcsIHdobyBwYXNz
ZXMKPiB0aGlzIGZsYWc/Cj4KPiAtLSB5bmV6egoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
