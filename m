Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D737ED459
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 20:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=949QYoUZ4zgurCcp3fw58E8mCidefpp3Nhzf5a5FhvI=; b=SPZaXja8aUrLCb
	8dwDT7sI2kGH1QRIIZUYTTGDY5rBkbSUyp9J73C/ESUEch+AdHWreuR3+DuvI0jbQZScLaHhZKY3P
	yoJtZbqVWtOeKYqzork6gdb7rrwdlLvUtDfAnMM9uCKeT0hZ/eN2rPQQqSMwcSTwFzVYafkb/+7CZ
	Ut8XxYbcQ2fGt66IekUNvusBlkghBnNEfHKdoGpCglYkOvfEnSKBZ48Q0gB4aBFQ8oVszKn7r4NoR
	hzYXrx+asxupiw0xSrvzV74rlzOtbRY7Yx+Jgd1mg/WKvo6geP/UanR2tHNDnH3/eC5mxu99ZLQHB
	cpVL21edWpAcBu2HMQwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRLTY-0005FQ-QP; Sun, 03 Nov 2019 19:23:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRLTR-0005Ey-KX
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 19:23:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id c22so13882601wmd.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 Nov 2019 11:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/m/o5UMKNFqqCyS4KYi3l0PnmqlCD4IcyjY2OfRiaK0=;
 b=SqKu1t/isLvgfXgxu/RQRhKSONIxTPi++HJTxxizktjcZ6feaSWGbMjNSVvVWfupJ4
 bi5QT1ctGc8Yzi4/GrgzPuesqg5KHt6dTE8KuFcAq9FtK47PgbLvQ5yZqP/tmdg1h4+J
 dxIDGz5d7zabpmbadXrN3umvlWabt9ICrt+GRxGm6oWXPSg9n+m8v1pc0zAPYx7RVYST
 lzJwMYj+WIzUJCnBuJMlfotS/wGfMu+KX9n2bhd3UGfor1LBZtGuBVh8TKI1Uz7B0Opw
 TTbdHQDJHSSLRlJkIo1OBOyAJzI42hUoVYHZJuK/v1g14oTrYzhManXbkP6VaR4dWC7V
 FE3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/m/o5UMKNFqqCyS4KYi3l0PnmqlCD4IcyjY2OfRiaK0=;
 b=fdwg8fvttC+51IZFdjpbNf5WwHFeYAi2G4aNWs1AAojWAGW75onx7hGCJhhgVvxI1R
 2JAqa26k2USXGqFZUHkfuQidYx3p5z6FyFFSxy9TSprvNLrdDX63XwdYZ+Om2oKFjO7q
 0DVwS/hXdoE7ShAv9/7WN/8Ul3+qavdFCks1iRhJe9Gez0PPH6mz65ieSqIyaeAAAG2P
 VQO9YMJW/94T+EFesC2tDUhAEKTCb5iYBTeA8BSvOkV6Z26T2eo0gTSbV2/04v0BG1Jm
 uOKkiwG1p1CCTe3EHkkzLvhB1l2Fx25Kq7CYUT3IRjh7BUgiEDWuNXExWXOrTp6ws/By
 g1LQ==
X-Gm-Message-State: APjAAAX8EsjfIW+xdUqtleBZRos/KO6X5SviX9tId0OZ78+9vMUJlmmx
 Z7jGKggDm9iWGZDkZTtTvuONl6h0MCgm8ubK6F6FsA==
X-Google-Smtp-Source: APXvYqyLQi1kXcwAZi+8SceO1UqfG3waZr/1b/BmSUbFOQl51VYbJcitN1wylZB0NOjuLejkvQotnIlrgqeHG5nptgk=
X-Received: by 2002:a1c:7911:: with SMTP id l17mr14056477wme.107.1572809018628; 
 Sun, 03 Nov 2019 11:23:38 -0800 (PST)
MIME-Version: 1.0
References: <20191101205416.17599-1-hauke@hauke-m.de>
In-Reply-To: <20191101205416.17599-1-hauke@hauke-m.de>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sun, 3 Nov 2019 20:23:29 +0100
Message-ID: <CAOiHx=mU-ihoEiXTp3ETujBmn-+GXJjvrTeMSGkV-1BV-Aqnjg@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_112341_699217_BD1F7BE6 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 1 Nov 2019 at 21:55, Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> This decreases the binary size when PIE ASLR is activated by 8% on MIPS BE.
>
> old:
> 202,020 /usr/sbin/dnsmasq
>
> new:
> 185,676 /usr/sbin/dnsmasq

Nice reduction.

>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> ---
>  package/network/services/dnsmasq/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/package/network/services/dnsmasq/Makefile b/package/network/services/dnsmasq/Makefile
> index 5c114eb1c6..e86b031e3f 100644
> --- a/package/network/services/dnsmasq/Makefile
> +++ b/package/network/services/dnsmasq/Makefile
> @@ -127,8 +127,8 @@ endef
>  Package/dnsmasq-dhcpv6/conffiles = $(Package/dnsmasq/conffiles)
>  Package/dnsmasq-full/conffiles = $(Package/dnsmasq/conffiles)
>
> -TARGET_CFLAGS += -ffunction-sections -fdata-sections
> -TARGET_LDFLAGS += -Wl,--gc-sections
> +TARGET_CFLAGS += -flto
> +TARGET_LDFLAGS += -flto=jobserver

Maybe add a PKG_LTO (or so) flag packages can set, and add these flags
then automatically? Less code churn per package.


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
