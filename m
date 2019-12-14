Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E320011F180
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 12:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+sZ9gBfsyBgFArA9BOay7HoPWnyc3ygZQtpj3/25rYQ=; b=HOvyb1RGiF2XvH
	GGJ5Irk2+nMgwQtYpFcRsCKnHC8Kk36bRYQ0w1+g3Y65C9bzZ0x8KqfWRuUKPW3yF6RTQpba+DfLf
	zfvG0GnFy7zhiUddlWOVTh77iwCEUE4Hk8vuibvmwX8Rzd1MBAg95n+1hWl9dUKCnAOvuz9OaJaxB
	+Fxr1PQ2+885ESWs+nLTtiA8JV9qOIJGBJYRoj9Ep5R3yy+Lwanr74bg5z2nW4QjVzzGXQfSuhnTx
	bgowcESyU0V1U3no3Q687yRzoDI2leQ/clrIjg/sFIGVoM41frGj0IP9xAN+X1RzcnWOxtWocqImK
	kDcHm8z5aDlaJXyHd3bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig5ME-0007Yp-Uq; Sat, 14 Dec 2019 11:13:11 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig5M7-0007YS-4C
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 11:13:05 +0000
Received: by mail-lf1-x12a.google.com with SMTP id m30so1078518lfp.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Dec 2019 03:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gGq+vjS+XuPz1Ww1sVfPdD+u9T5faDHudquHpgGoVmY=;
 b=ohxbMQDZ4hMboTgQNSLla3hxkoM5GQ6YfCaR/j0IcUyF3HR+P7iPgcMOp07RM3RJBz
 iXH9WvARZkeRYSHDe/BeJxc3U3/nfavP/m26nJppQHoqScc2V8USErec9NoHFlboU8mT
 hbxnfUnx/gh0nro917e0s6ZwPaW4C2PBBQE60lN/fPRiaQ8cvVBMZnTPv2Tir/aOWkqp
 tK4R1G7EMEW2cVTzDAW1HQievuJxrAlKslp50j8YFHQoiAS3SXE4v9hrGhL4MJe+3Wga
 S/D19S8gGdhDj2J8L940eqYxKnU+LNzwfPJoTRwy+XfBlALFj9fQYChAfK7VtDDQnP/D
 llAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gGq+vjS+XuPz1Ww1sVfPdD+u9T5faDHudquHpgGoVmY=;
 b=YO5ozMbsBZEIy7IHC3GZKPnMSgDuSnGjvGo3Nl1RuyQmJPq5b8Iic9n1Wcr6eZIOLQ
 J+LmMaSAmnd2ds7tzDoMNmUKxGhSdXQFw7Jyw7nsLckqsonCr3hRqHxRLlOjAfBVFiQC
 oTVFcM3dQJ0dts6Q62iKWmjCBnsaSiXshERjWZ+1tO9SBT2Zdgfw5R5Pc3/8OfxBkbvj
 reYEyp8m+O+Au14oPsIq59w6ZeTLIa7eZ0yOi47PBv68qhbyy5nRDVJ6h+52pF9B2tUO
 BHgNCw3XWCeJlG0LHDykSrFKvhviwL7m1OCL1vT7Y06DXJY2cEHXmPuojpSj2Gzt19Nj
 TyMQ==
X-Gm-Message-State: APjAAAWhyQDeaSKDEIum+f1tJMgi9BGx38/28GwSFDRe/sNyTDy8eP/R
 KHXOF6O0EgYYxw5cOO35mxc=
X-Google-Smtp-Source: APXvYqztaAy/eO/gKzU6s9sfBg1WAnd0pvUv+9TAb7A4/tXpdnqL/BFK+JPRQ8C21yQto9TV7yDmCg==
X-Received: by 2002:ac2:4add:: with SMTP id m29mr11130621lfp.190.1576321979413; 
 Sat, 14 Dec 2019 03:12:59 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id u20sm6440283lju.34.2019.12.14.03.12.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 03:12:58 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBEBCuSD021608; Sat, 14 Dec 2019 14:12:56 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBEBCtx6021607;
 Sat, 14 Dec 2019 14:12:55 +0300
Date: Sat, 14 Dec 2019 14:12:55 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Sven Roederer <devel-sven@geroedel.de>
Message-ID: <20191214111254.GZ11070@home.paul.comp>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
 <20191213200723.GX11070@home.paul.comp> <2070834.sci2Q4oWNF@strike>
 <20191213231028.GY11070@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213231028.GY11070@home.paul.comp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_031303_409029_CACBC75E 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] LEDs in system UCI config (was: Re: [PATCH 19.07]
 ath79: add support for gl-ar750)
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
Cc: Luochongjun <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

Some follow-up thoughts, could someone clarify please?

On Sat, Dec 14, 2019 at 02:10:28AM +0300, Paul Fertser wrote:
> On Fri, Dec 13, 2019 at 11:51:14PM +0100, Sven Roederer wrote:
> > good point. But also on master seems to be no entry for this board in 
> > "01_leds". So I assume the default case fits  for it.
> 
> I looked several times through the config and was unable to see the
> default case. Apparently, you count on trigger being set in DTS, and
> that's ok for wlan and power, I see. It's just that I checked ar71xx
> and it had those entries in uci-defaults but since triggers can be set
> from DTS now that's not needed, got it.

So if default trigger can be set in DTS, then it should be set there,
I can see the rationale. But in this case it's not added to the system
config and so repurpusing it for other tasks (or just disabling the
LED) is not straight-forward anymore, as one would need to add it
manually.

Should a uci-defaults script be added to base-files that would
populate the system config with all the LEDs present in the DT but not
added by board config?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
