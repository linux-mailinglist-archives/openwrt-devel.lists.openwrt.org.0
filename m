Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B50D168231
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Feb 2020 16:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGS7GprMap86mMj2NhbiV8U/qm49XeAOaAULab/u2OQ=; b=U5BRmAUgyjEI9Z
	7hzceWuhg4ldNn5UwP/vzCWxrTqY7yWRL38YkyDHX+NBDS9cdBcDC2HW46GhEqOX/nVzV+xdyo7KC
	N+1aX1QrZfDugKIdjH5W1k0pDzvLvaCW9ye/Ep/2c8yZYp35MXeQRGbTAA91kgLRB7JF9p07/Lwx8
	ITsBtRmARZjK1t2nmW7bhXZixV8BIZveKIdeV7rNXnEO37AFTHiqiBau2DUKLjOG3cQdxQ3c4Zt5O
	CpI1yni9RGPCCIGneZtrdrydzBFwuDlUt9VJKuCij7IGUIN5C/U4u+g0HqevA+3hcuxztSSNJpHwg
	0s+NA/UNMzk8i5A4pEyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AX0-0001md-AL; Fri, 21 Feb 2020 15:47:58 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AWo-0001jJ-Ko; Fri, 21 Feb 2020 15:47:48 +0000
Received: by mail-wm1-x336.google.com with SMTP id p17so2409290wma.1;
 Fri, 21 Feb 2020 07:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :content-transfer-encoding:thread-index:content-language;
 bh=4jrFJZI/fZEoF+13OVF5qCzrncR5L7vycq++gvEju1A=;
 b=sEiSzp7OLFGHUY+ir1Cl0niUdjVk3pDTGV4O9mAGXBF4r+zSNie9XBtGit/YCnAVDp
 2SqidlAHLsdzKlW89BG4JFSA94cRVrswNETS3179Xp1yCUNEOdxT/z1S33BsVC9QJ5s2
 eMJZUX8tAPCuH0eXPP1jR6ZQWlx9pnWUrnXZSn2yeZSf/Vb4uKD+ko1DbglH4Fdgqo+f
 HpxibiIM7cYKTC92864BD77P9vlt0KK26WWLGAkK/Zb7Un5twKFokvD5ijg9MRnR4vW0
 CMt9NMkd1zJa294WDyfVmcrJHggf+TVe8ECuccX0NROMyG7NsqxDGHYkjA+Q8mCyohbw
 uz3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index
 :content-language;
 bh=4jrFJZI/fZEoF+13OVF5qCzrncR5L7vycq++gvEju1A=;
 b=FQ7hXRGrdxsXbjnWl5YTq+qgl+42vReHg2sOJJBGtP3UeTN2eaJv20aLti6Qw27znB
 BuHRucqCAbwqQ5z/1kYMcZtV4VUlgCufdI+vcfhSzlut+D+rcXl3qQUxZCwaDof2ZSB8
 SayQly5H2QDfklJfJkIIDRS+MZeH/gVelAQUMxJs89dfoy4XBgNVT2i3eADcNf/jDX4S
 FpG/3ZgsBQ0u0xdyo8RBQX3a/xhXTituTQ6YsvD3TfRYeYHA/KvQI6P45BIm6DEexzgZ
 2lmVYg8pKOWs8C1vSsaNat68Gu74aBseML81zBjAsMsJOr1zy351y95OST4H2EvCuT16
 j1/g==
X-Gm-Message-State: APjAAAUfs9uqjOl4AVjmutc0pJRFWtMmJJWgWe7n6lLBvibXJl8eWn28
 5y6QyIcT7o41L4pGpH4hcSOqLEwpe+o=
X-Google-Smtp-Source: APXvYqw/Q1HRS6MtWcT0AZhBA2uwB3pSnjLQc/G+ofiyW2XL9KOUUflFgyDEa094bKlv2M6AsJU1ig==
X-Received: by 2002:a7b:c753:: with SMTP id w19mr4687502wmk.34.1582300063688; 
 Fri, 21 Feb 2020 07:47:43 -0800 (PST)
Received: from AnsuelXPS (93-39-149-95.ip76.fastwebnet.it. [93.39.149.95])
 by smtp.gmail.com with ESMTPSA id c9sm4256701wme.41.2020.02.21.07.47.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Feb 2020 07:47:42 -0800 (PST)
From: <ansuelsmth@gmail.com>
To: "'Jo-Philipp Wich'" <jo@mein.io>,
 "'OpenWrt Project Administration'" <openwrt-adm@lists.openwrt.org>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
In-Reply-To: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
Date: Fri, 21 Feb 2020 16:47:38 +0100
Message-ID: <000201d5e8ce$3f5575d0$be006170$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNfK3hvy2IF8ek8/lLZH+3kaWmJsKUTRQoQ
Content-Language: it
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_074746_712728_3F8F6F23 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] R:  Next maintenance releases
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> Hi,
> 
> I'd like to release 19.07.2 and 18.06.8 sometime between Sun 23rd and
> Tue 25th. If you have pending important fixes you like to see backported
> to the respective branches please do so ASAP or mention the commits in a
> reply to this mail.
> 
> 
> Regards,
> Jo
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
Can this be merged? It has been tested for long time and fix
some performance problem on ipq806x soc

https://github.com/openwrt/openwrt/pull/2769



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
