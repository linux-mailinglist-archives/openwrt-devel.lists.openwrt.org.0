Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8A011D1E
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 17:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMMGgXB6ZkIv8MBVG6n3lEl9ZmGw0PgcNmP9Ezx5lx8=; b=mFQraK6uzUcMBN
	BPiuTL/7zEjToKTPkx1SthJ2fl0742kpCXX58UhcW0L8PEjOYVV9a9b5t6aq+mBQGmjNdkWqjbY9Q
	zmp0mOillPkyfbxDHrVTAYBoeEaY1dIZS2s68ImBCxbJ0lkHc+phLIJHQH1GkdYsHgECSOQBGnAv6
	RK3TbyvfUwGCaavsEt9jSnw/Epr0HFOXm8Ztqt/P6tXNmUDXnp1NiRg9PBJOd8idkYquZT+boitcv
	iXyNymWk0F4V28XDKuN5V12aZBRmemAtvgMQiHSUOCOOtkCV3g0n8tBUIg4yFqNyHBTD61WVHn/vK
	rSR7b/UHSwhY/mHoJPgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDda-0001iC-6A; Thu, 02 May 2019 15:28:42 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDdU-0001hV-R0
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 15:28:38 +0000
Received: by mail-lj1-x243.google.com with SMTP id z26so2588250ljj.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 08:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ahMfhUWBygrWQkkQpYsd+T4fN+DB5fjp3H5hd9T4S7o=;
 b=GgxeZ3Fw5ZA/cl5g+OgBcmZrYrXUgP/2iaYC8zNGIylWYVW3lkwNw1y+wo+5g/b6/m
 Q6UA/itdczAkFYA2qs5liS/V5PupJEwPUpBcrG12itojEnJkbcDQ9PWX9e5fm17Km5Lx
 R4yRpoWeK5D5Qte2jDQ9HEFQa67f7/GiVobeJbXWfL1eTgiJrr5XXraOYQn5sXmwIwVT
 8RnSfvAWyRRqvkXLjZ2XOEvHq/XEBC/bJHNFrV1faT2h8lzfz3/8snv3ZuAnl/yhsLeO
 R6CM7x/xHbPEiunelipMdXGjZ9BBXwrbiCnQ6yhhBbXsmqJ6uBTehTpQt2WaHa2ZAoPM
 W12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ahMfhUWBygrWQkkQpYsd+T4fN+DB5fjp3H5hd9T4S7o=;
 b=efRd7RWtKrVK64VpFH/cWpzR9igvxJ0t7qngNE2CsbCZK4YyGp4KqFtmXmxMep8DPO
 +WQz0w0/15uK2VNWpLsGCiGBPfg+0jjLt7Rs6UDVrTrQFRadkHA2pF3vzo26Dtg7LYu9
 nRl1SIB1zM4xrFxeL+gWWGLM6+bIrSVkXYXgINqR43LDp1kozU7jsfRox1rhK7aKtsDU
 uSpia8K/UVmIW76yecAxhNNjCk52DZJSVY+EhMx+5kV7CMuokSLPpu4JsvX5nLofz8P0
 mBrv62/3VNnjnKRiMI+GINyu8U4PENQIb0dNYp6vEj+i42exycmBSL1wCzyoW/+Mpe6T
 skaA==
X-Gm-Message-State: APjAAAWBsjE1kPr+gOSmcsLJPAQvxDyhiG20JtSmfyfN4XmgYiIHCgkN
 gHCMAiDcacmMA/I3CyaFbHj80gFI6hZjA+xtVzLkgw==
X-Google-Smtp-Source: APXvYqwNF+71Ptw4Qd9dMHYjrJMP1kovvFMnYKy/po235MdFySNmBX2izkBQGzZpvt0B8L3vxEueGN0m3WmBK6T1Bfw=
X-Received: by 2002:a2e:3a17:: with SMTP id h23mr2453398lja.105.1556810915093; 
 Thu, 02 May 2019 08:28:35 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdZiK+CVwMjE9Vh70Pn_FNMbVpd95sj7CWxj9FNVDGWbvw@mail.gmail.com>
 <BN7PR08MB6003771629BC366B9F3D8FFAAE3B0@BN7PR08MB6003.namprd08.prod.outlook.com>
In-Reply-To: <BN7PR08MB6003771629BC366B9F3D8FFAAE3B0@BN7PR08MB6003.namprd08.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 May 2019 17:28:22 +0200
Message-ID: <CACRpkdYjcXVymuZDmTjf9vvQnfpUX8d5Cx032MeFf+r8kxOzRg@mail.gmail.com>
To: Boris Krasnovskiy <borkra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_082836_882451_E3C6C3FD 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Commit 8dcc1087602e breaks FA526 (Gemini)
 compile
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, May 2, 2019 at 12:30 AM Boris Krasnovskiy <borkra@gmail.com> wrote:

> Crash during init that you can see, is pretty far along in the boot process, so toolchain likely correct.

I found the problem, actually the toolchain was incorrect, but that was
a sideffect of the build system. After applying
this patch a mere make menuconfig && make clean && make will not
do it, you have to rm -rf build_dir.

After I did this and rebuilt the whole universe overnight it works
again, so I am happy now! :D

Thanks for your help anyway!

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
