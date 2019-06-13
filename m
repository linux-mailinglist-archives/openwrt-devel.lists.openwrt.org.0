Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E269A442AE
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 18:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5i1xGwqjnqzZNEcfxLPLMi537fywUcuaoljdiH2tL9M=; b=OzefefYcGOJDWB
	VdHz/mQ/zdxHh3YnpaHr01g6J3uoootFm1rjOOYmjOB0czxlUm2RTENnmkh+ceUCwEbcR0ooWc4SG
	tW0Lqy/oNd6KUcYRD7MZ3i/v33n5BR+p5+APvZ2xjspH2+1Ab9Ed0pNcRQAh5K90Q28vORAja8nPc
	9zPcR6kmhM/tQmuj8ss2bFcf0IIdMMM2CkdahBejwG8R45Tgc0ZQT+ke7axW03sh9mvPJ51Z3pxNf
	Uy/+Yfb3+kbogDMLn/zEkR0h+YR0sRgoRz9ulEIBk11bWHaTVNj71VsUk2PEYUBmCfpVxw8Z2NV/L
	OwtokBHP51n6a+Ekdwkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSX5-0000gZ-Ii; Thu, 13 Jun 2019 16:24:59 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSWu-0000fc-Fs
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 16:24:49 +0000
Received: by mail-lj1-x241.google.com with SMTP id 16so19124607ljv.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Jun 2019 09:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vpGADHILDaMtXsypwAABqaAjiuIsSLvUTBULCc+Gg/s=;
 b=VFSHG42ODDOVk+Yqz8MvdP645SU+u4BUxkkuVmnPNustZoNSLd4NilEQM/DjaxJb9H
 9VpgK+QXI2T/opvgmz+H50HDlDnq4gmlSOEycQh9zfvLBw24vO+cbhcK4WmJK2lQV23H
 7kxMIzJLiHbvGoNo93ZeT4yaIghvfoX6/6gAdXFCoVBVCeAb8Rhd9tz2EmWbs8ZHfyLk
 LFXTM4co0LrcK2zhOQfmqpHXNlH0JennmVuv1wwJlrA85+6E3X308xKvbCLX+sf3cp6y
 /uKZlCpDIsKYaiqhw7u9ISPuk/tipARHBjH106ucQq3tB5iQGYhTb3YHo36S0Qb8IfFl
 bAYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vpGADHILDaMtXsypwAABqaAjiuIsSLvUTBULCc+Gg/s=;
 b=G2bRno2W7ZZAIdPVroZjtCjD1t62Sc+L9uCd96ysxty4uG6xCyG+5Gp4kFWuAr1Pyf
 LLmrfGEKu+CO+j/AIx9MRVb7525pflP8byT7rbNu8VSjwxTV1kT3VpZGLJpHQ1oDQP/J
 M6uzlhrZ7vcHocMH//La4hpWjCHW6oHC1CeLjVorTGti7ZE2RHdXDnflnmVPVUTQn+9u
 Dw8lspTe4xEBc9q6cvtdfs96fb6pDp7dn7WruQ9hs1kyJP5F08VBAfBTZbM6vXHm4Ihw
 v1vXU3GV6XomNYeg3PtzU3nBQ/+zBlWZ6fLfr/E9t3zJbd4ZsY8L6w6KFUBNXfqsxYPz
 bqGQ==
X-Gm-Message-State: APjAAAWjKUZPyitkIQ5Cyg/A8cBCD1A9CRxgSKD/6nb9GS493grKBOpp
 gGu5+d73bCYgVDmdPDxpevo0/CKH0yIwXvdAbyLf26Y5
X-Google-Smtp-Source: APXvYqxOChiH84ssYSjXsL+F6hkjZBI0kn8SmBc2Ttw8MCnNr5Gp21Pg220PfoDaRLjxXpwAl1YCc9el3+pGg6PeJwE=
X-Received: by 2002:a2e:95d5:: with SMTP id y21mr30956706ljh.84.1560443081105; 
 Thu, 13 Jun 2019 09:24:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190612061825.123283-1-zhouyousong@yunionyun.com>
 <f3d219b2-63f1-050b-ac82-3b8cb8aa1b74@wwsnet.net>
In-Reply-To: <f3d219b2-63f1-050b-ac82-3b8cb8aa1b74@wwsnet.net>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Fri, 14 Jun 2019 00:24:29 +0800
Message-ID: <CAECwjAjX=QRyJE0-RxB_qbFqxYGLW14JmZAhZCUn--9dSupTzQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092448_556223_E520BE74 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH opkg] alternatives: special-case busybox
 as alternatives provider
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

On Thu, 13 Jun 2019 at 20:45, Jo-Philipp Wich <jo@mein.io> wrote:
>
> Hi,
>
> ACK on the patch. I was thinking about whether it makes sense to move out
> the hardcoded package "busybox" -> "/bin/busybox" path facts into some kind
> of external pkgname => multicall-executable-path mapping configuration but
> there's probably not that many other relevant packages where this would apply.
>
> Still I'd like to see the code somewhat generalized... rename the
> "pkg_alternatives_check_busybox()" procedure to something like
> "pkg_alternatives_find_fallback()" and have it iterate an array of
> "struct { char *pkgname; char *multicallpath; }" which may initially contain
> just { { "busybox", "/bin/busybox" }, }.

I also thought about this but refrained from going that path ;)   Will
send v2 for review.

Regards,
                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
