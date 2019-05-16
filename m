Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65BA2099E
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 16:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGGMhxKMIhrq5h/7ioZE/R+m8A8csBRy7Ue5IFhsV5c=; b=aYueqW4DI1DUPV
	iQuABztBtN0ueh3LZRPsIash7tkTS9Hgr+rXkCVKScuxtw4Qnf76/BmHHQ+AcPR9bfeKNczMwtBIO
	vfjBS6XTGvmHuhBmEk/jg5kuVhwgzoXYSfwY/EZoRdmo5xC0G8M+KBaX1dbc4GmpuI338XWioEqmw
	sg9QZl9f+8hekrQOl38EwLSg0+CnrNfYTCxbUr/TCmP5yPDH+1WWOpP1hCEHkxfFnfHnZVfS4XWaQ
	XeFdgqcchSdBiKfs/1mmPCxwmhuVwtaZ4px/eYe8gNXPMPhLI24EPwb2priNBoxrcfBwv9KTEoiCo
	35B+nZcIimWmwJ83wiMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHMi-0000ko-Hc; Thu, 16 May 2019 14:28:12 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHMa-0000j6-Nw
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 14:28:06 +0000
Received: by mail-qk1-x744.google.com with SMTP id z128so2366357qkb.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 May 2019 07:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QfK8Hh+z9YROSlp/4Ihm1hVpGFAcHEagdsD7hlDh56w=;
 b=b3qZdyPJsBMyRFaPP60dhmewTvFiwAj+i3Mkmzij+laW4CRnA3fFeoRsOwsBb8sZzf
 1/cC5vnCE9q8EV8lHcO/LwuAZh05goVUBh/TaKSXAIl3ltcZ4sp6B5+CQe5H8UN5LG2A
 R1wQBwXO92ptc85532mQJDtNtBZrN76QBE8EeF3NiJoZHKJSUJMoTE7ff9xry0+7E7m0
 ymVU5l+RvgPcJGFRNiGKlaEzdJbUWC49fB6O0iPEWK+EIl1/8ObvEBdJmXDiu16wqI5D
 lBC+QoVB0rLR9Ts1pDbGt2IQyZzcSLyr+7gUCzynin0odXr43IHYIWIsa+uvhw6SLRG7
 Irkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QfK8Hh+z9YROSlp/4Ihm1hVpGFAcHEagdsD7hlDh56w=;
 b=AkH6WABTm6Eest3YOWXuwF0iVF9cDLbHJrDhnTTEzP4EcvbO/kULdlTFRSGUvp6nCs
 iN/HL/cRyIo0/Qmy9SUoWu1MCe8cS5uftUuWqdiBTQmXblSDpxU6F6z6UD4z/5XUtLuO
 V4Y8ov7zx3M3Ux29DoN9q2Ug6IPLks4xOrZkB1OqDGTCnoZm+G7Z26Y9zSLcNhUTj5sd
 ZMtgpZ92gJrzHavZ1/XnxxgwYYpYp7akhOHUHLEO33MiaR3gFbB9Wxxn5HqzFYwF1Xgr
 OKfnMu7JNxh9/LfyB1TU0FO8DrvR7KgluP1dW+HaNYhu6aMT+YqA1wTuhq3sVO5hlyoB
 8zvA==
X-Gm-Message-State: APjAAAXoc3Kn5FMxGpk1pjEQ0Jhz/OzmopPNGs06nnf0gbiWG0yGsuCp
 cJQl5z4CbYYvWGVjqvxCb6ttoB/dcTE93b+4css=
X-Google-Smtp-Source: APXvYqwpdP1mTaemqfUnaXLp97TX1w0mVVneFWB6zAO80HL5zF38afergYV219HrU79WfPR+ffXZJr3BH1Bgmv7oSqw=
X-Received: by 2002:ae9:e642:: with SMTP id x2mr8220492qkl.181.1558016882736; 
 Thu, 16 May 2019 07:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
In-Reply-To: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 16 May 2019 16:27:50 +0200
Message-ID: <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
To: Tan Xiaofan <xfan1024@live.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_072804_779827_4217F3F2 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally
 addressable target for p2p
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Thu, May 16, 2019 at 4:01 PM Tan Xiaofan <xfan1024@live.com> wrote:
>
> From d0e1cb81b45ec825199d499cda9c8daef94e13a5 Mon Sep 17 00:00:00 2001
> From: xiaofan <xfan1024@live.com>
> Date: Thu, 16 May 2019 21:12:47 +0800
> Subject: [PATCH] interface-ip: fix find locally addressable target for p2p
The patch fails to explain why this change is required and what
usecase/problem it fixes.

Hans
>
> Signed-off-by: xiaofan <xfan1024@live.com>
> ---
>  interface-ip.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/interface-ip.c b/interface-ip.c
> index 6900cd7..7ab8643 100644
> --- a/interface-ip.c
> +++ b/interface-ip.c
> @@ -196,6 +196,10 @@ __find_ip_addr_target(struct interface_ip_settings *ip, union if_addr *a, bool v
>    if (v6 != ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6))
>     continue;
>
> +  if (!v6 && addr->point_to_point && a->in.s_addr == addr->point_to_point) {
> +   return true;
> +  }
> +
>    /* Handle offlink addresses correctly */
>    unsigned int mask = addr->mask;
>    if ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6 &&
> --
> 2.17.1
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
