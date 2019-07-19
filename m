Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B09E6E055
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 06:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOFN5ut0kNIwYt82ZddvKh+4R2cha/Sru3Txqoxzdl8=; b=MU/jzSM1ArjIpL
	YRPwm/GwONOx3Pyl5Sc6fkPqeIXaOtrK0bERGVv/LpMjZ51u7u5dcks4cKG7Z4/X/OHoDurBVvPJK
	U1yxbN1ryMKWGJC8icWplSCAP3FBYyHMKYrFmpSIsrq2KbEpFrhjj6LuCscb/4yD57Y81KdCbcjZ+
	nw+onevH/XikX8HoFjk+FB2rNUDlkvAeOWSP093ULiN2DVY7YxyFP+wfsV1pxYcbp/WhoIYEvB2ge
	AwKBh+HUYpLyRBMeM+BYrl9dZeCzhYtVcBH6o3urqjOLAleS+hvtu3xYcx0yPHCYfF21FiKYOadxo
	3kre0R9MoiTYDjD0TcJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKqE-0002gB-OL; Fri, 19 Jul 2019 04:49:58 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKpq-0002Zm-K9
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jul 2019 04:49:37 +0000
Received: by mail-io1-xd44.google.com with SMTP id k20so55764109ios.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jul 2019 21:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HqfN/6/kbVYfBslFNBlC42feK4JOBhJSPMHrAFp2PyY=;
 b=s6KFy0uVc7kgRu6uGCIo/gB47bM9+m7Tfv65UtwXDO7SGVFLGH/btQDis1lzQgRfYb
 xyvO88NaEbn7/xMNp8W9kdLQzSvfko1n9hJQoQvhq+DKSjZ6S5jGw1WJiYVWOUanqK74
 CAxqSu1hWsuW+qorUHVhuHE5UqKESNvBZupwUO+vQ2kvl4LjdHtpefivBe3kByyoGpGV
 tqTvwpOMyiimhG4titqL11xXWegL7Nk7ZxypeZ62OYUhul9MTK2jSqF13wyuS+CmQuDn
 /LaL4sjJkwMhQod51Vb85aFjJ1M6g/KG/IcYHKX5KdrAaHTyQR4zM9qmHBGiwrSL3Un0
 oWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HqfN/6/kbVYfBslFNBlC42feK4JOBhJSPMHrAFp2PyY=;
 b=N12cBT+jnrwGrwYYdAzkTIC+CFAg+StVIcMesNbeX/C7gach5lZTsNU0ssfK4g6Yso
 gwB/ERjLLDlXiOKyLcytgJOikhKN4m3p+0FsTIBUViVY48azrP9Mmpo7vewa6NZJiIU1
 V6T+2hHull5CJqVCZ6GUcUzI59X1xrJMt1Uf3LaLUzC5u3/VxB24Hd4I25lFHRVdnt6n
 fuXjLNiB8LurP0Iol5RMMSj7WlSqm4jz39QbsiW/3BcFD/fhXUUu+L4YMzmg0mkRzl1A
 XDB8qRKCp/L+yzl9moYjt8cNUBeb/RTKI6t0I8C70KkzBUVovUzNEdML5H5rChsVV/ZO
 cQsQ==
X-Gm-Message-State: APjAAAVAoOx26HJwBGpBJFg9jMb4DGgIt3EzhHQ8pwPuCRh1HaITU631
 sgXhmta4Q814b7LxK6CJogHAerbNw3bkIlTwy3k=
X-Google-Smtp-Source: APXvYqwxL2xHyj80+4k3hVxDQoh7XGS42qHubTvfK9/JI4FxGdvrIkw5X9KIPgKiEMSH7aF4TfDnkKgjwPf3eDnQhuY=
X-Received: by 2002:a02:5ec9:: with SMTP id h192mr51448020jab.25.1563511771950; 
 Thu, 18 Jul 2019 21:49:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190714135037.18471-1-linus.walleij@linaro.org>
 <79ce4232-ea93-e9ee-a59d-b9b828b73be8@gmail.com>
 <CACRpkdazsAQ9guJUtqYdxnB-HjCY0jStZM=e5vGkfFVZbbLgjg@mail.gmail.com>
 <CACRpkdZTtpP5bxnpGOQPvLUwVYT69bp_-_E9dZLCoV3wKsu6ow@mail.gmail.com>
In-Reply-To: <CACRpkdZTtpP5bxnpGOQPvLUwVYT69bp_-_E9dZLCoV3wKsu6ow@mail.gmail.com>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Fri, 19 Jul 2019 06:49:18 +0200
Message-ID: <CAJN1KkyEE8NTBWY_+SVQg9sH60ZNxNKFDsZaQ7Mt88PQ+1H3Ow@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_214934_929513_F347F01C 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (paweldembicki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Jul 14, 2019 at 23:12 Linus Walleij <linus.walleij@linaro.org> wrote:
>
>
> I don't know if there is any better way to fix it?
>

I think, that the best approach is vlan filtering. I started some work:
https://github.com/CHKDSK88/linux/commit/38b62482d9f828b5720db11145fa474e368b248c

At this moment it works (I used ip-full and ip-bridge packets). But I
have no idea how to integrate dsa vlan filtering with OpenWRT
configuration.
This is first dsa switch with DSA_TAG_PROTO_NONE in OpenWRT.

Best regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
