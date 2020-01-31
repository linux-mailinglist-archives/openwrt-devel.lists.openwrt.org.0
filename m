Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BB914E9EC
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 10:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBso74TnI1qt3Ku3FT4j1YP53jE83kUV3F+qmkWL398=; b=HGskD4EsqO2TJ9
	ieo3FtaWfUNa66TP/u/dZ8wVudVKF96aaSelwmAql1fnntZOJ9Woibdz/2t0iaDB9qD7bwb4meHzd
	7/GdEJR1JtLOuMx3qMezbVdkos0/40HIV3KUy4D2E1xSJW6liDVADF3LB2k2rHMuskjSp+Zihhm+J
	2TsZymMOD/b4lxNMHN5AKkUGg3hCgDSA0HlfgjOxhn+a2YdLJrtCsHhzeZnyiqFilRDmpXYndsMmH
	qKPYsoTOoNVUfbJYJ7CKxLoMZow6aCqq224kk6loDGCu1HI/z7udeL7Kr5MzIFncBA6umLmpB8Cpq
	WBKIEANKIKgpQtrH74/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixSGj-0000LC-76; Fri, 31 Jan 2020 09:07:17 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixSGU-0000He-TZ
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 09:07:04 +0000
Received: by mail-vk1-xa44.google.com with SMTP id g7so1862701vkl.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 Jan 2020 01:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BFaHhzim45urDCNLFlywA4EW9DTr1CfC1H6SwPAGucE=;
 b=pKqRmKBQunVGISmsIYW2XdG6I2zUMjw9+xdMbr8+ATibs7sP4SGPCoJKMAF7moxNzg
 rSTWzm1cGxOxvArHZ3EWg8Kvbzu1eRym1wVzWTDyR+/bbzOO385VGPwvS7nt5Goj/QIF
 pr+MzEuh+K9vDHqYjLlPhg9rg/f4YnU22hGjG9+6GTNr2v8OAa5dzhpe9+HM0Dq6hYlW
 skyLLLN/WjD3cvvmG50fbjOgpRm6PTfDAmnN9aVG+uUMHAXFi1ShXGhLI4yPDiH2HAwx
 uNKwjxL5wUTOKaskTde3ODwiXokzJibwJMOUAUnSk+Iu7fxcNo6OTnGdidAMDEYfPYGn
 D2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BFaHhzim45urDCNLFlywA4EW9DTr1CfC1H6SwPAGucE=;
 b=WU4rOKhinUXSi7V+FMbk+RkvqejD4U4UHJjn5FiMab1Mc+OySob8jC8kxacyNM9lFJ
 T2Q+gEm3Lx9KDkr370ux363H5a/Q2DgVEQc8ygv7wjhv0kvDloHx/zwd6GGLlfHMe3Ai
 DjNMpPxFaTEYyYdAHPlKReq2M+aPQ/Y+0+wjkWJRfaeW2TQhGncB9gUi3lxl4kQBeNOM
 LN937wzfIKNCS3EotjJcARXTOvvISNva9Jhzu4tf0sL6qMD9L0wYH4XHzpd0aRqhhOVR
 GJoPu0vcnk8yfSwGfwxeuFxdiPyQbeVsWdsikTtenOtdzeJGGY0+e4XnsA8CEjyQoP5z
 nfNQ==
X-Gm-Message-State: APjAAAUNWMGlprTNFr2gmkPYwDjDszhPqiWlFk1vvwc+a3EA7LzUjtE/
 7aN68g/7fcXmrpn68UpNNLpvqkOzascsft8e12wpaLI=
X-Google-Smtp-Source: APXvYqzIjeU9zTVzQteA4fOUYrzbZIS/jrhXJ79ckpcHEU4/ujjtzDG3rf7swUpfEOGfyLTPsUyxMykfof4IieW70Pw=
X-Received: by 2002:ac5:c1c7:: with SMTP id g7mr5685618vkk.97.1580461621528;
 Fri, 31 Jan 2020 01:07:01 -0800 (PST)
MIME-Version: 1.0
References: <20200130200345.31741-1-rsalvaterra@gmail.com>
 <c9cd9283-7a06-72a5-692a-6a88da7110c9@nbd.name>
In-Reply-To: <c9cd9283-7a06-72a5-692a-6a88da7110c9@nbd.name>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Fri, 31 Jan 2020 09:06:50 +0000
Message-ID: <CALjTZvbtnOM3muXCEyEQqy-yvBVqgccG1qu7kRSvuzwiLYaf5w@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_010702_982912_34DFF1DB 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [RFC/RFT PATCH] ath9k: implement kthread
 entropy collection for AR5008 and AR9002 PHYs.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi, Felix,

On Fri, 31 Jan 2020 at 08:12, Felix Fietkau <nbd@nbd.name> wrote:
> For at least AR5008 and AR9002, but probably also for AR9003 I would
> like to keep the behavior of collecting entropy only once at driver
> initialization.

Well, you could have told me this before I started working on it, but
I guess you
don't read the developer section of the forum, even when you're mentioned. ;)
(What's the best communication channel for OpenWrt development? There are
far too many options, I think.)

FWIW, my Archer C6 v2 has been running OpenWrt 19.07 with my entropy
patch for days without any problems (1 x AR9003, though). I'll be testing soon
on a TL-WDR3600 (2 x AR9003) and a WNDR3700 v1 (2 x AR9002). Like
I wrote in the forum, I don't have (yet) AR5008 hardware to test.

> Last time I worked on this I noticed that on several chips, sampling
> entropy during normal operation caused stability issues that were hard
> to pin down but quite noticeable.

Maybe it's not a good idea to sample from a low power state? :) The old code
didn't call ath9k_ps_wakeup before collecting (and ath9k_ps_restore afterwards),
it's possible that the stability problems are related to the power
state at collection
time.

The current mainline code is from 2015, and it's nothing like the one in the
OpenWrt patch (from 2013). The entropy collection is not continuous at all,
it's done on a kthread which only wakes up when the available entropy drops
below a certain threshold. I only extended the mainline code to support the
previous PHYs.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
