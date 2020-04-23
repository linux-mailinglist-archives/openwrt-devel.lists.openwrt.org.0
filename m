Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BA21B57C5
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Apr 2020 11:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqxaXbcmbQ2bKv/qI7dxzsHVtBvP33Y0vBwWdyMLm/A=; b=E8v16jTxMW7CpB
	loPsJsCMf767T/4cZ+AQRkTxoocgnQCgwnLMrv5YbUJlf+XIbh0ZynCEjfgYWSiPmcqgHiGPxi8fv
	mXFeKpVWi+w4WssLXMqqGuxK48a8l0IuQXY8Y2Kr7IQAuIQ48C0yqqMog2nJ3qqh0HXkApMbDkn4q
	ePE/PedsG7YDofzGpzfN5TkOIH/Y43cPCspo65PQssXageztdqRWh2mFbt0zdvClE6s8RJimUPpiV
	Ui40PiAZhmcaImQCBFA6uYF+9WwukJHrrm7+5KFur2Z9w14MoZIFa0wrNZNquJCoCXYA5mRJUre2S
	X81qPW7rU668qlTV/aBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRXpr-0004Br-EM; Thu, 23 Apr 2020 09:07:55 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRXpk-00040e-TF
 for openwrt-devel@lists.openwrt.org; Thu, 23 Apr 2020 09:07:50 +0000
Received: by mail-yb1-xb41.google.com with SMTP id b17so2745323ybq.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 Apr 2020 02:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+b4sTIGK8po77KqZZ1ztfYamaz4L7cmeOdUmiX1HpnU=;
 b=lnnduNjL0I/+dLOqGSFaOn0SWuKWEJf/eh8Yq1ieFaaqrHdtSZ1tYeLFztllv9lacM
 0jp0bfBNIGVWMnyhZ9kGyLwXgEPXNp1yfBgzthszDzbKkTcFu4sbsJUuqz0Wz12Nfo2O
 Ld2to5E6vbiXaGy55iIahjnFrSNoFYi8lkAJWNTDpnCoRlP7BZegtpFFk56vaSPO5eHD
 DoOVnheYvYm7PJChQrOTuGHXcuRugSPC3FS8k9Phc7Tc3EeNJ948cNb8xGugss82fiRy
 gAVHdc4Yj0rtN8uCyrn7hCrsylGabSX2J0kCFPfRKsRf3R9mv5S/BhwRvA7LdemgSzx3
 3fBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+b4sTIGK8po77KqZZ1ztfYamaz4L7cmeOdUmiX1HpnU=;
 b=nZNNl+Gj49M/R4CNOdWBjqtwqN0QcPefj3yWuczt4Lox6q0z3CKjWPk3JykCkHOMg5
 7gvOcry98+vrliQRv8vDUlc4agSE+J+Kl44wzZqj+dNDvaLNWHPY5z0CbcQnTVD5n4AL
 NMKxn5s1MDsibJQb/s4pi8md0T9vOAao6T3j7PnYtmjbigwfQfxVDo6VAShU6wJLn1PE
 GbLdSr199E1zawnfNE3grW6UwgwTa7sFrg2B3DJycK+Og4R4uCuP4OZ1qfzkUpM5OMHc
 Jp/Hw2X8FGkx462mKl+9RiP2Y7vY4OY87mFD16b6OtB5jqdsHW3mDVXWikJlSeB6kCQf
 OQNg==
X-Gm-Message-State: AGi0PuaDLxEqUBktoA6Lt2vvA59pw4rSiOp6804CyyDPHeqhh1Jx4w08
 VQuaC3LthYF3kaEmrDEZOirI/W13vEiVYnHZaMPWhsd2
X-Google-Smtp-Source: APiQypIz1MeKqXr8RyAKdMMDmf9Z3h1/TSIM7F22U0ORDgc5sCv89K4Wde/h2alqJVYo8hjRYucrPU1RbsZGzLi5AYE=
X-Received: by 2002:a25:d7c5:: with SMTP id o188mr5131162ybg.241.1587632867493; 
 Thu, 23 Apr 2020 02:07:47 -0700 (PDT)
MIME-Version: 1.0
References: <2247807.iZASKD2KPV@tool> <20200423084100.GA76955@meh.true.cz>
In-Reply-To: <20200423084100.GA76955@meh.true.cz>
From: =?UTF-8?Q?Daniel_Gonz=C3=A1lez_Cabanelas?= <dgcbueu@gmail.com>
Date: Thu, 23 Apr 2020 11:07:36 +0200
Message-ID: <CABwr4_uhWJck651=0T7B_Jn5s6oo5EiFLsff3dXW00qv7W0__A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_020748_972574_4DAB999D 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] kernel: add package
 linkstation-poweroff driver
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

RWwganVlLiwgMjMgYWJyLiAyMDIwIGEgbGFzIDEwOjQxLCBQZXRyIMWgdGV0aWFyICg8eW5lenpA
dHJ1ZS5jej4pIGVzY3JpYmnDszoKPgo+IERhbmllbCBHb256w6FsZXogQ2FiYW5lbGFzIDxkZ2Ni
dWV1QGdtYWlsLmNvbT4gWzIwMjAtMDQtMjIgMjM6NDE6NTZdOgo+Cj4gSGksCj4KPiA+IFRoaXMg
cGFja2FnZSBhZGRzIHRoZSBkcml2ZXIgZm9yIGltcGxlbWVudGluZyB0aGlzIGZ1bmN0aW9uLgo+
Cj4gSSBmYWlsIHRvIHNlZSBob3cgaXMgdGhpcyBkcml2ZXIgT3BlbldydCBzcGVjaWZpYywgd2h5
IHRoZSBkcml2ZXIgc2hvdWxkIGJlCj4gbWFpbnRhaW5lZCBieSBPcGVuV3J0LiBJbiBvdGhlciB3
b3JkcywgcGxlYXNlIGZpeCB0aGlzIHVwc3RyZWFtIGFuZCB0aGVuIGp1c3QKPiBiYWNrcG9ydCB0
aGUgZml4ZXMgaGVyZSwgdGhhbmtzLgo+Cj4gLS0geW5lenoKCkhpIFBldHIsIHNvIEkgc2hvdWxk
IHNlbmQgdGhlIHBhdGNoIHRvIExpbnV4IEFSTSBLZXJuZWwgdXBzdHJlYW0gYW5kCnRoZW4gYmFj
a3BvcnQgdGhpcyBwYWNrYWdlIGFzIGEgcGF0Y2ggaW50byB0aGUga2VybmVsIHNwZWNpZmljIHRh
cmdldApwYXRjaGVzLCByaWdodD8KClJlZ2FyZHMKRGFuaWVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
