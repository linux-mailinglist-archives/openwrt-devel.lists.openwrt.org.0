Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E9DED764
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 03:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaYavHJIYkkUgkueYoLmYp9D3Dv95ii3ljIn0IXdpJg=; b=JM5+xMxng9rDVq
	eGtKAqhlGDiZ8bxFOcz38iX+ontPtOGLWrQCGkq2Jvk1nrlXq1g116S+/e+UWT4yQm0BrbQUMkNO6
	sg8cQeYQf7m5fPXjWn/FzblXU8C2pCnJ/laLWbaHCt01w2m0o54WBHGMMw0Tair86Tr1lwwgsz9be
	26QKNH6T0veQmVt4uscn20oWGK7Xjf5ByczVLPqTQ+2YGNCMrRVl4+gr6rAmJNVH/1aGrtaDUyxBm
	uX1pHRhxy/Z3WKq+11+fvOMklkr1qlxVzqwVZTvRrv+FFsZMkjSqO2ytPkJ7D1Y7+bsKOo2IxSQw2
	9mu2Tnzbd5YgPQL9tTPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRjr-0004c0-IO; Mon, 04 Nov 2019 02:05:03 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRji-0004bh-QH
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 02:04:56 +0000
Received: by mail-ot1-x343.google.com with SMTP id 77so8656008oti.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 Nov 2019 18:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yTX3ZY+g1gaBVOaQ/zq7JFnGDJ1FvtuI5EBX6afw65M=;
 b=WYPIZewmMT7Rzsry0xy4ZqCGtD5doYCB1VA1mf9bd4pzTfd2nuPi2KP9gj2jeEO5vm
 uoXR3q2ezmqE4nrrWFpjVnbbE8BluNN3rVp3BTRO0pCNYbPwVyj8ogBySXcvPSw+PMTy
 k+MOKQx33UIix4/qu2sgvZ5XGaSeiGnBy9PtzRaYVE0NqM29ucWkzs8I/4/Cf8Fgu5OI
 XOtphJ3ZJ40DtdGvuyJ6UCHBuzKmgEgSRPcQwiPCBCXFBZwFb9LDi2hthbXeuWKlk4Yf
 Q1r8JJQYKhk6BeS8nwLcJC3njkTSCfau1uVosGmsi2QkHqXAlkIOfg4hWalDWuHTdoRW
 SUeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yTX3ZY+g1gaBVOaQ/zq7JFnGDJ1FvtuI5EBX6afw65M=;
 b=XoPTcUsZtXd6YAiJTrN+VaA8X3ORolLQWCx0CD/D6CdWc/4oM2D4EmVta9hJMsHZJD
 ElYGktSueScsv2vC0m53cg/uIxCHqLExvcWbaDI0FwSFppijHS4tncVojljtTMrWSElc
 0kCKqc/tX4fqP/mpo3EMsXnhjkH8VJLiW8k5zogSOJSAM6JY6Vtm5/k+dFgafs9SJC2z
 d6uzZZkyXwihYkRpNoMawO9eS8D7GT8jSlLcwNjkUi9Xv5OsdGOeZnlmkNxP2n2IXLgN
 TLTKOrg9bNE3bKczgHmdTuqQFt3iCRgPkd37QnofMo+xpDLEEVgpANl6phtJJtSAN4HQ
 Wd4A==
X-Gm-Message-State: APjAAAXx1+C1LzzK3i+/0Oi6ENYSyoRkJO03XJIE4pDluMqYZFKHkgBp
 AwasIGdCveyJa+xfHK7OBsTZwbioDfaKbKoXCAQ=
X-Google-Smtp-Source: APXvYqza4rRia5auu0/b93GZrX+GIgfouFKwCicWqmUAa7xYWJfP+o0p6+busDjr+h6ROM//Z5Eb+Nav8t3fjKM9FCA=
X-Received: by 2002:a9d:19a9:: with SMTP id k38mr17320836otk.93.1572833093009; 
 Sun, 03 Nov 2019 18:04:53 -0800 (PST)
MIME-Version: 1.0
References: <20191101205416.17599-1-hauke@hauke-m.de>
 <CAOiHx=mU-ihoEiXTp3ETujBmn-+GXJjvrTeMSGkV-1BV-Aqnjg@mail.gmail.com>
In-Reply-To: <CAOiHx=mU-ihoEiXTp3ETujBmn-+GXJjvrTeMSGkV-1BV-Aqnjg@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 3 Nov 2019 18:04:40 -0800
Message-ID: <CAKxU2N_eOZ_=cNb+CZxRyWhUG9admToLRBsak9KyJRb1BOjBvg@mail.gmail.com>
To: Jonas Gorski <jonas.gorski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_180454_878218_BDEAFF70 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] dnsmasq: Activate LTO
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Nov 3, 2019 at 11:23 AM Jonas Gorski <jonas.gorski@gmail.com> wrote:
>
> On Fri, 1 Nov 2019 at 21:55, Hauke Mehrtens <hauke@hauke-m.de> wrote:
> >
> > This decreases the binary size when PIE ASLR is activated by 8% on MIPS BE.
> >
> > old:
> > 202,020 /usr/sbin/dnsmasq
> >
> > new:
> > 185,676 /usr/sbin/dnsmasq
>
> Nice reduction.
>
> >
> > Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> > ---
> >  package/network/services/dnsmasq/Makefile | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/package/network/services/dnsmasq/Makefile b/package/network/services/dnsmasq/Makefile
> > index 5c114eb1c6..e86b031e3f 100644
> > --- a/package/network/services/dnsmasq/Makefile
> > +++ b/package/network/services/dnsmasq/Makefile
> > @@ -127,8 +127,8 @@ endef
> >  Package/dnsmasq-dhcpv6/conffiles = $(Package/dnsmasq/conffiles)
> >  Package/dnsmasq-full/conffiles = $(Package/dnsmasq/conffiles)
> >
> > -TARGET_CFLAGS += -ffunction-sections -fdata-sections
> > -TARGET_LDFLAGS += -Wl,--gc-sections
> > +TARGET_CFLAGS += -flto
> > +TARGET_LDFLAGS += -flto=jobserver
>
> Maybe add a PKG_LTO (or so) flag packages can set, and add these flags
> then automatically? Less code churn per package.
Second
>
>
> Regards
> Jonas
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
