Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FD21D6C75
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 21:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QcuecUr+/NSkHO9nRsfAXGkEt6IgKHRtzSudFsgf7to=; b=YfL1l1zyg94kA3o44jFArnKL7x
	BUxPTSAP0+ISMzu7XS8TTh1h1pdhTiKbWgR3iHafabyYL2Eef1qQJB62MTXHXRzVYgJd0cBjWhjaw
	wFNIieEZukyh2MZecMCWyNk/txESFxsttJxuPQbJB1ePHfQW1O2uh6qyieQLSb9vNa+s2bkwHhNyo
	XtGEmmr9Z2heVHKRfxNhtojplYs2MQEA85mx1Snik+7pqkQ6oAzjeg6YqVz/Kc7No6TFep77rU/Zl
	a8+tPwS5hbk7cV2X7P9WCjAcVygz4d2FIpiG3pwK3KlnePd52Il+ighjDTCIXj5JRK4nMBK4TwglI
	7nsUzMPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaP93-0006iI-Ln; Sun, 17 May 2020 19:40:21 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaP8x-0006hu-1g
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 19:40:17 +0000
Received: by mail-wm1-x32b.google.com with SMTP id f13so7193912wmc.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 May 2020 12:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=pO2RWOIrjfPquyy8Uk6Q66hsenBW94WGpgWINWTjCho=;
 b=YQGi3XkJ/9Nr6rinU0ONbBTZoZ3s36R4RB80FlKK1oQFKjZ5TvCHwO0Lv7QyuHDoqv
 afFknXrd2FPcRABoVF0/UsxdhO1ERSgik4eysDU2cvyIlUObEVhC5HcKFOPg0cBENAZQ
 +qweNqSnJvbhciphKGeFhjWCKipfsEdXOcT2roA/xWBwbvaOZ7kHBH4aWfqY3LNzA/Ll
 tjugwwE54X8hzk0Yz57mhvcmQ7wIO/gtY61AFxRHWjSA2pAV5n46FyGVp9aqNZCh3EI+
 1LAAWbI6d8YKAK7LiZyh1WvFAgG3RDMUnhAxJ16CW6vRukV1zYtOT1eWGc12nAHrfiAW
 Qk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=pO2RWOIrjfPquyy8Uk6Q66hsenBW94WGpgWINWTjCho=;
 b=eKO/wDStdb5GkkoP+4LRgiOmHVqry2YLRWF6auQ/5X/F5xEBRu2ZJ1FZqj9hB8VRS3
 9ktKPlil4XMzD5aN7d5Bq7kdNbtL9bZeOrJ9tf3vNaDtp4/vAGEhkkhcUBXTSjZou9qP
 NaEXAM6fpdJwPwj5H1p37xk5daODQ8WnsuSKWHasa3I5EsY9BIcBZqMA1lYQiVVioU4y
 8CZO/ZZbUmve3uZ3dKWLlKK58Z6Leq37RQPTnbmw856ydBW0H8NuVQWmSmxvBonpEDPy
 JL6J+r4t3xinH59ti/+iGQPHuLOFdzTiEqUZqixPqWIiMtk8NgJiaJEGuHTuow2IpRPs
 mNgw==
X-Gm-Message-State: AOAM533YCWn/lOke+O3qP4h1a99tUOGa2b3MATm/venjF9huDsawotL0
 FD8fcdBpbh0VFS+EOMcGUSbIrH5zwV3gUMUuRiGhDt4t
X-Google-Smtp-Source: ABdhPJz6BuWpw1S31/7qY2Xa+npx23CTuyNuH1oYr7hbVve2KlH9+xvM2nzoMO9SUIVK/1Gh2ZDJ3pTOkdQ1orfrdHs=
X-Received: by 2002:a1c:305:: with SMTP id 5mr15071067wmd.60.1589744413037;
 Sun, 17 May 2020 12:40:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAJN1KkxavQr9d1WC=1aSPcyT2r4pMak0W9YcmD73oymSpzYCCQ@mail.gmail.com>
In-Reply-To: <CAJN1KkxavQr9d1WC=1aSPcyT2r4pMak0W9YcmD73oymSpzYCCQ@mail.gmail.com>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Sun, 17 May 2020 21:40:01 +0200
Message-ID: <CAJN1KkwJAhYXmFTzADT2gSp0OLwJc72J5EnXCveu7G+1s=1nXA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_124015_095035_84A7F6EA 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] kirkwood: Looking for github PR device support
 reviewer
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

On 21.04.2020 at 07:20 Pawel Dembicki <paweldembicki@gmail.com> wrote:
>
> Hi everybody,
>
> sometime ago I sent github PR[1] with support for Check Point L-50.
>
> Could someone take a look at this and review it?
>
> [1] https://github.com/openwrt/openwrt/pull/2719
>

Anyone?
Adrian helped me with a lot, but He need someone for review.

DTS was accepted by upstream. U-boot switch driver patches was sent,
but they are still without review from upstream.

Best regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
