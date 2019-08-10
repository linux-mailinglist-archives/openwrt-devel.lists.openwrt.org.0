Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FF788C87
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 19:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mHeg8JsID90NPjiYhFLyiHTEa8JiteM658ppVY5pFE=; b=NRLQLWPk35K5IJ
	U0mw1fSKOyDHyf52TbCwOLiAZimeCKckAd9Y5/9JHUGas5HkQUcHOiyeM5xdLWywaAawblMbtV5KV
	TPO3TuIrxwpchsLtk6aMFyUHF3QasNQBL2xnqFmBN8GNZ2iwrMOkjmxMlMR3AIU0EX6BBplbAvu3j
	o/yFXbgKyVhTAl5G3YLZZtSL9jbtZoLNA2+raZ0zjVIcqknoFvqqtofBWJBRFAjgHPJlEM59rOhnG
	a/Z+OC9SmuWH7w2AHQY2NIk/JMgXXd9pvRNn6rwVvgs9FoiGqK40zucs9Y6BgSnuevjSmGwhQfUV+
	Dzl6hvJ4DK2jSgRfLRFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwVT4-000584-DU; Sat, 10 Aug 2019 17:47:50 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwVSt-00057m-A7
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 17:47:40 +0000
Received: by mail-ot1-x343.google.com with SMTP id e12so642403otp.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 10:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j0al0F+SKpwaI2bn6BuaBkvZKwynRwlTDp9AgiaDIYE=;
 b=dj7knvhEPUaytJLmqRNninJZIjtpt/S5TqjV6vIYvBBxgFzw0zaIwSHkhoZTqgkJ0I
 km3+UJ3Mu9PF1Ty3fEli1eEdESQMHzM5tvv/YgWeO91E3bbZHnKpnvbydSAZiHEf/mqb
 p/rWM7uWA8yvVAC9IBRIe0hi2KojPQAM2zu8211LYGwkEUhmfXdL2vut2YHdHju1mqcI
 kBbz/n0/aHlTav8W5VL7ZeYvaOux0/9KXUizWUaR2NGF+xWU1963nUxmDAW2H82T+Qax
 FaXmva9e2qdgH68Q8XjXzH1Gcp6kNXPG3Ijv4m69aML790e9XUev3O3hxKTwIB+KDLdk
 gOxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j0al0F+SKpwaI2bn6BuaBkvZKwynRwlTDp9AgiaDIYE=;
 b=mtR0ujcO1kFmGLBTv0LUgz8QzCp28KV19s/IBzxxEImzwf3wTCJI0BWDmZ4ceVLPF2
 D/ziveafh7uUmMbIEtyY5lhnCGf1zd0VuQQkbus8hl7jtawNzuA8nUisOuZpoLfxXCLY
 YSm5M1PUT+g7RY2OXakqiovcEtoN5YcUysqMU1cCkO3f1vVFuBabjx3DWCPKv7N0SD6q
 1h2VTn1skzbME6Y2S4TdCXOx6wAb40LDbr1bsZNvjkzsjcqVJrAaIPqhwMYKvD4eJerc
 eQDg7do7am/yThi5kovcbD9HSAgYIuL1bVnDFqnMTdaj5MpDsX3bJBHJ22M8bAp1cmu7
 63LA==
X-Gm-Message-State: APjAAAUV8q5Itt2A8ICGV9KMhmrljHhpkz+AW9xdUTdqLkbW64ZA3Cum
 ahPdv7E8pWU3qI04g9fsolOPxYwW5cw/RymwseL/y4SB
X-Google-Smtp-Source: APXvYqwpX1L8sPToJLGtW/pyRdM7VvXqxRPNQTDcvgtDUT8Knqgg3DXGZI+sNJSNzdihfDzOI2WDQfMC+HV0HY8UXKI=
X-Received: by 2002:a5d:8451:: with SMTP id w17mr28218128ior.226.1565459256912; 
 Sat, 10 Aug 2019 10:47:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190810172240.2903-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190810172240.2903-1-freifunk@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 10 Aug 2019 20:47:25 +0300
Message-ID: <CANoib0H_+Li=KdWdj8jK+e8Pg1o=TYseb_111GUTKEDP26LVfA@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_104739_354471_40E5F809 
X-CRM114-Status: UNSURE (   4.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: convert devices to
 interrupt-driven gpio-keys
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

As I mentioned before with 'gpio-keys' debounce-interval is not
needed. Default is OK and looks better on ar7161.
Maybe testing on other targets is needed.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
