Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E091092A5
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 18:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9czDAUSTTrYCQf2YSEQKoeLdGIGKiote0qrRbryMIA=; b=jmSVoXEocIA/E/
	+5MKQvjkASRl6FEuWCuHP39PROMeFGwkt18n20kFDdIDOl70st9FY5jSlwsg+FUH1rTk81Wcmne/s
	QjvV6tXgK584faL8CSF5nylvblZlZ+K+0qDUnqUSCau/AL2TCM+cB91R3WPUdIogqZqejuy/BCbUL
	CtGSdgCu8j3Z34hLT1ARV/wCUIMq211JSuEt/nG7CX4rlKzPECHefu3camAxBtyrRQgLFjpsBVVF4
	OQzgEqmss7DJWenlDF4H4ISGE/wU7NHx7v0RMeuMEax+WgOzkdfSZHZpFVMLwhXc37MLTUcwMLtDr
	ZgaPGG4jCfEUZDxfU6wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHsy-0006fw-5j; Mon, 25 Nov 2019 17:10:52 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHsi-0006Zy-8B
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 17:10:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id g206so110585wme.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 09:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kX0uSeoS1FdXqb1jppZU0r6Lbh5JgOvy5F5BYoUBEQw=;
 b=AyWGylvgsLgpQ1eQCpwSDUWxNjO72qsMWBpkH5KG38t0Uo8TzNDm5kAHGgOMOPmQdG
 9ZSiRS4woOBz7xPXgCf237UwTycGA1BlgbxDyDy/WGdFs3qcF5EY8M9dh5ss4ss0c5AL
 vgNr7PHAj9QLjAJQepfbYzmEFAHR/5ZhG+w2+MiHiSm+eee84338vzHM3V91MD6ZdwDT
 ODvQK2K++du0GVwJH/q2cQqYLRU4aLZDwarpTYhZHS9I+wISns9GWjfdRhNuMl84+0/D
 B171AstyK7XwvirgoZl2tkiSuQvJ/Dmm39y4rR8WaqOWHOBQyh8kp1bZE1tudHazvmNo
 ys/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kX0uSeoS1FdXqb1jppZU0r6Lbh5JgOvy5F5BYoUBEQw=;
 b=W/WHSqctZE2yH2vH7H0TveynwsuYe5YqTCdeM4b7x5gfoqMVD/6fHwom9yCv7SRcxb
 rMx3r2FiyRgUVkD2hbXEmy9Z+38pQgDDHn898p8wyQH1mhC7e1nxtUWS0sLHAnKSzWpA
 hQzCuXWI+7yTY0UKOY799o3pWDfSiEcsAsCyeqkMyHmNczYMDSfuoBqy80G1IpLcTUMH
 TvMUhQ3ZiJnL07xKSVSQ97gACBYavrRZSZVezaN1zgCuT4+aPG//wJRW+tZpINXIdaaK
 JwXxckqsGOEyoi4VZH79PAOc6XMx1eVFArfjYcTxB1pRU0h+n/UXM2a/ksmiY2gQWP0u
 O1dg==
X-Gm-Message-State: APjAAAWsepF03esTtmxQDPiZ3UuAx3xbSa2Y43/0nQXOnoQ1Y28qXMAn
 uo8f3fK4mm+SzRJFtxq6QmpPclLQp9mfaz1HY3UHnw==
X-Google-Smtp-Source: APXvYqzh5/sY6W+7c8ysWSQ8lLuAvdY9t9ClMiu6SMrWggnjwlj64l540PptuRf7UbIpMYA9LTsDnDRwetHJtXc5hhs=
X-Received: by 2002:a1c:1904:: with SMTP id 4mr12982190wmz.151.1574701834188; 
 Mon, 25 Nov 2019 09:10:34 -0800 (PST)
MIME-Version: 1.0
References: <E1iZHVW-0001Ji-VK@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1iZHVW-0001Ji-VK@rmk-PC.armlinux.org.uk>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Mon, 25 Nov 2019 18:10:18 +0100
Message-ID: <CAOiHx=kE_sLtz3O5-RsmGNFb4zmUd2aKfcQxkDomrfnVtjTiyA@mail.gmail.com>
To: Russell King <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_091037_408830_31BAA91B 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] kernel: remove obsolete phylink/SFP
 patches
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 25 Nov 2019 at 17:49, Russell King <linux@armlinux.org.uk> wrote:
>
> Remove the old phylink/SFP patches from the OpenWRT build; these will
> be updated with a new set in subsequent.
>
> 450-reprobe_sfp_phy is also removed for several reasons:
> 1) it is not in mainline.
> 2) it breaks copper modules that do not have a PHY.
> 3) it makes backporting the current patch set harder.
>
> Discussion is ongoing with the patch author for a mainline Linux kernel
> patch for this.

You can also just put me in Cc ;P

Is using this patchset enough for the tests you asked, or are there
some additional changes in your branch?


Regards

Jonas
 --       * this time, that's fine too.
> --       */
> --      sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
> --      sfp->sm_retries = 5;
> -+      sfp_module_tx_enable(sfp);
> -
> -       /* Setting the serdes link mode is guesswork: there's no
> -        * field in the EEPROM which indicates what mode should
> -@@ -1485,7 +1482,22 @@ static void sfp_sm_mod_init(struct sfp *
> -       if (sfp->id.base.e1000_base_t ||
> -           sfp->id.base.e100_base_lx ||
> -           sfp->id.base.e100_base_fx)
> --              sfp_sm_probe_phy(sfp);
> -+              ret = sfp_sm_probe_phy(sfp);
> -+
> -+      if (!ret) {
> -+              /* Wait t_init before indicating that the link is up, provided
> -+               * the current state indicates no TX_FAULT.  If TX_FAULT clears
> -+               * this time, that's fine too.
> -+               */
> -+              sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
> -+              sfp->sm_retries = 5;
> -+              return;
> -+      }
> -+
> -+      if (ret == -EAGAIN)
> -+              sfp_sm_set_timer(sfp, T_PROBE_RETRY);
> -+      else
> -+              sfp_sm_next(sfp, SFP_S_TX_DISABLE, 0);
> - }
> -
> - static int sfp_sm_mod_hpower(struct sfp *sfp)
> --
> 2.20.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
