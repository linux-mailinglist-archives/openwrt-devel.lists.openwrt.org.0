Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E942180D97
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 02:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnPr8JiUA1dMgp/Pw4S1umYG27zr6oKRsbHFj39xl1I=; b=TwAJyfihXhakCR
	zfivyvx3SPcRgpMYdtRWGDdA1AQP4Nr6ojIn6KJsX6fzUwwymz7xzL5QWfyyYXGeOQxWQ3ul89Xtx
	e61s4/+D9+1oLVyzM1DXmdbNAIEWXW2HIgRvtfuuMIYuKtKuOU06iJthnmYc2JDpaeXP+iagzqQ01
	TatH+HKLbmEmzi4c+OiNDNqDodsv9xTv+HYq6L1eMGx+cztFAp+6N1fhmZhkGThQh6XrSVsxKO7mX
	oILkZzpq9iqfHKtkmOAfacUPnRCx/ipsdqwZiohqtrDQAPuBJf7IUe5Q3I5XKPpFsetZrI+YikvaF
	J0+YRn3OUvxRscWlfbiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBqHi-0002ze-Nw; Wed, 11 Mar 2020 01:35:46 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBqHW-0002z4-7h
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 01:35:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id g4so285626lfh.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 18:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nd5GtWGn5ItIzE2hbMnrihwrNuOQS/7xr2Qa1Ei+pdw=;
 b=Bqlggw0H9ZXjx7D3zDaC2GvfSWvLXflsuNVIv4TZjNbFJaQqdSQaxjp+jsC3G+BDB2
 o0STI5ffUxjU5e1ar7ry+kXowlb0D/Z2xP0YI27LrTGT5vX7y8NNWipBxHBuPwnZRGUP
 zg9slQHfKeU6d+FG8MOiKfWe6TQWfgMwy4XhlM7i/jnboS3u94IBOqD1kW7Sm5VaUR7A
 NbRyd1U4b3evtAtJg7JddA4W6jfX5QSXa28Mn0kFM+w/IjdTxgl0O4sAM42Owxzsr2TY
 RfWrJ/gpbDHz2OA2iUCJWsnY0MfsXGwej6bWx7HJq/+eW5UekI3ojw9adP52pN+pqARH
 0xlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nd5GtWGn5ItIzE2hbMnrihwrNuOQS/7xr2Qa1Ei+pdw=;
 b=catFvf4vXeH0r96Ry8od12BeJkj4GtXdjl1FoL8vg/4+ym4bD0NKbYqNTM7FJ5PrAW
 P90iqut6aMHTY7sikHWg52vWKQzmsJ5RNoULL5C8K751UT+V+R1cBSypIL/v1EPH9Ls2
 yVIY7lTPA3sqfrBMlSz34tnqBLhWfiUjSo2Szg7d4IPjii+BdA1sxEKSSRvxKmrGcKHS
 J3AH3cBgPwui81rsP/xNJBdUBB12S+C4yM4HDYNtEO+2PTddTuYBfPzOUUk60PQbY7DO
 FEog96EpIGCYoZUlnYHtEqqU7lr2GT1/qQfRmW5ggKfxJIISqlpGWtmiS/CMmB4RsVFK
 cZHA==
X-Gm-Message-State: ANhLgQ3QIa8Cj3XF6nTzYU7jKPvRIphB+g7ymuQrzTC/DcmZ7AoMZqAW
 wteww88FnDse7NiLusmwiJSI5BKpmxG7lVQ4goEWTORLQPU=
X-Google-Smtp-Source: ADFU+vvI8xujVS+5FrFg9fLveQ5YC+G71q5Th+KP7pfGEgPtN2AaEbdvrKihFejhmOh75+FZ9RLo5VRkJY2jbdg43ms=
X-Received: by 2002:a19:ad47:: with SMTP id s7mr478710lfd.165.1583890532125;
 Tue, 10 Mar 2020 18:35:32 -0700 (PDT)
MIME-Version: 1.0
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <20200311010605.2818827-1-russell@personaltelco.net>
 <20200311010605.2818827-5-russell@personaltelco.net>
In-Reply-To: <20200311010605.2818827-5-russell@personaltelco.net>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 11 Mar 2020 09:35:20 +0800
Message-ID: <CAECwjAgjxZpC_fwdxgmV31fTmVAmM9ckzoPEXx=2wpgkhrJaHQ@mail.gmail.com>
To: Russell Senior <russell@personaltelco.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_183535_683700_EA393CCB 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v4 4/4] ath79: add DEVICE_VARIANT for
 ubnt_bullet-m-xw
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

On Wed, 11 Mar 2020 at 09:07, Russell Senior <russell@personaltelco.net> wrote:
>
> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>  target/linux/ath79/image/generic-ubnt.mk | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
> index 5808d8f424..e8c8ebf30b 100644
> --- a/target/linux/ath79/image/generic-ubnt.mk
> +++ b/target/linux/ath79/image/generic-ubnt.mk
> @@ -136,6 +136,7 @@ TARGET_DEVICES += ubnt_bullet-m-ar7241
>  define Device/ubnt_bullet-m-xw
>    $(Device/ubnt-xw)
>    DEVICE_MODEL := Bullet-M
> +  DEVICE_MODEL := XW

Typo, should be DEVICE_VARIANT

                yousong

>    DEVICE_PACKAGES += rssileds
>    SUPPORTED_DEVICES += bullet-m-xw
>  endef
> --
> 2.25.1
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
