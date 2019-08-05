Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64532821BD
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 18:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdSW4nBHsV/84X4Eh7u4rvk5nLqqugUwO8mgDhahY/E=; b=CuMoF7XEg9suBS
	/JgosIj3CFLYEDLppMC6abuYg8oLponFTgt67KVrTpqEWq0yp2tRsTX04/3M0wds+NaqAQKnCP2/K
	BnBrZBDzQ3PzF8dpRwJjWRQOIvIpG32zJ9iceRYvm7RAoV/lEy434JK6uuhxX/ERM20bPdK24Bwzc
	SwnyC5RT6Oq7t22s72/eqqDcvuOXJxUAFoUNTo8RFJHNxivxu6DpS+lerK16g0Axbv5IUUyTNq7Op
	LRvvh5LJLSGCDgzeCr8U272n03wylPPJv7MCE9mId2HNow1ZcpMgrIo3jZtXly/A9jpffD3gT0kz8
	6/IuCfmNZwSqq1+qivTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufqD-0007uJ-Cd; Mon, 05 Aug 2019 16:28:09 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufpV-0007QL-SW
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 16:27:27 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so168622235iot.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 09:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2jCl/7xOaeuq6xTD9VChcn3fFzOHoHCO1q4ASI+63Fg=;
 b=V1pyDAxKS1SPqKrhNQthEBiLEYYKIhl8u2hMtSCFgQc80V1Ygx+4O9NWzcDuLKwpID
 0b3o1HYV/sTkrmNKpLy1Ct5Fvg1v1zAcOWre/I8MD073CTmQtOue3yTd/k7/sVWuCpmZ
 /dZ0mlrx1KyKGl/si7WnU42kJzZJVJ7iXQVEz6BuZq1NoAIUF74K9HoGosO6FDqVh6Ma
 MnHktosrF2WZdMSoOlJklEfLcfhhSqtDXNG+UGOSpmz6zVapgqqFS4q9AZpaMYxntU17
 wIWOOBrcQDAxCM4tt6fIxh7lFP5V25y98AmaFRz7ylGbP7iT2mX3IgWNUlwON6ylBl7W
 Bdrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2jCl/7xOaeuq6xTD9VChcn3fFzOHoHCO1q4ASI+63Fg=;
 b=IpnftAtpYMi+5SeIFpv6K4q0Tq65KgH9SASzSslbqQxg9HjyKFOB7zURlZpw6Si9F/
 yrVooIevlyn8n03hyltJ27hLI1P30Fnd9AABYT3uetayrSXznWF2i4oS74cdgWbiyQ1u
 hSYkyHEsWYuoKjhpYRWviDCsDASR9vuE4e1MeQ+rIsGBGj/SzwoD6x/iY3w/a7yWxDHx
 uKpcp083VWShlTMcZEHggiR+DG0Z48JdohkFqUECnkcekjwuD2zKK+CeV74+2lVzwnVg
 0t5xST/TrCb491fEbjs1M6u73BaelEnnj6UuYOWkx8Y3l0vryMRjpCPyHXyTqJY7xRnn
 yRvQ==
X-Gm-Message-State: APjAAAVUlRnI7f2uMGo/jx1YOH9Nl2VgIge8k57N8CKbcX/cIewob7rB
 qA7lJt/mQR5uO9I3HOVC8hcvxrz68UZrgz71kXFzKRxO
X-Google-Smtp-Source: APXvYqyrzP+qTVhqC/ZI9k9HES1i5KOPzgd1WeOl384CrAknQ1OW5UfX98xT1eTfDGT3SzSxTfPpVJPn/nN4fd/HMEU=
X-Received: by 2002:a5d:9dc7:: with SMTP id 7mr2096171ioo.237.1565022443616;
 Mon, 05 Aug 2019 09:27:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
 <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
 <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
In-Reply-To: <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 5 Aug 2019 19:27:12 +0300
Message-ID: <CANoib0H=v=H8wywMgEtoEZaVLOMQ9JKNfs3FWtWt996kiCxiiA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_092725_966179_877B3E1E 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
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

> This recent Pull Request used gpio-keys on ar7100: https://github.com/openwrt/openwrt/pull/1359
>
> However, I cannot extract how well this was tested.

I will have a device for testing around the next weekend. I'll report back.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
