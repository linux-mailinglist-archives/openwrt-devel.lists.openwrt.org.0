Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56863158A3B
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 08:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBMOha0r/E8O1HIQOqsrFGA/BGht2PCGwCZzPugLZSI=; b=XQLB228/Roo1FZ
	sE62TSgDTmOXSvNkSWRVkkGXL28I9KMThq4NwgcKCWm8NdVTf6Y9JEaQ/lf2+07u1ZfTTeBB96aO7
	Bbo2UtORWjPQEuC5hJKZBKw7egE5jmBfn9nlD25B90Zt4M/ieHPMaGc2gzXUqqwRbc2gRcannxjtt
	Xusu76spUE9KgKoTgeWYEJpx5q4G407QdI3GR0BpJ4FBV1ghPavttC1PY8rgLSAhyoZ1SITYZH/hG
	NKl3poItcxCgPVNnbK1QckGdkX4yEETM89pFZIrDzh9pfLGFVVW9ycgf9AqlABm8olE4efNT+kk5W
	8Ni0xoBGjUwOeCLhXDBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Phz-00040f-87; Tue, 11 Feb 2020 07:11:47 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Phs-00040D-PD
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 07:11:42 +0000
Received: by mail-oi1-x22e.google.com with SMTP id a142so11866025oii.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 23:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HAA3xrh8sZgb8H3VY/DNDj/Lbqx1ZrrP8ADQvwf55Aw=;
 b=Z9qveBwBbL/sKZNFNbORK0Jynqx17rVBsODcJo1xnzE9Ub3byQQzvLTf7yfeQUowxb
 a/nHjP6xBHbWqUOZOhlYsEIGEJE21+esRUSDjqOHEHghd4D3bj4P1spW+1n5qfO3LL7i
 5hWCjRSrVDXDlxXaSOJNOju2BnLYTf0hJGFn1TuADUs5uTMe9VVqvPZaUGwLn81sdjIw
 WW9S/w1PjTvcIBj1T0szSYgQMGZ3cQfVcmnZGhBixJ34iko/AbS8Q4XANE8J6SzSPDnw
 G7/lmG+d+/mQEArC7g70L6BS6IQHSdyowfYHsSU/MY9RCwpi5YyNQgQ+ETi+w9IuFmx/
 o9mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HAA3xrh8sZgb8H3VY/DNDj/Lbqx1ZrrP8ADQvwf55Aw=;
 b=rgDboh+rg+oBJm4xGyFtlI1iMN4MkMdoWcE3efdgiVLLdvdRu7IslaoRZFwKdocMXu
 8uVYDk+AZl9Feql9UuwxhCfZM4whuanWfWeTZOuD01nt4qJQaEFGY7x+H95A9Gfx9/3V
 xjGZCxGp65seYQc13nYuGnwvhvDpoDe4//tkl0CP44d6IiCYGBc4JO3SbiTuUyXmsVaw
 +NsfvKWLI/6HWHrd+GXcce7b/BIC+FmXoxntSB0ox3sBMOF1MHJL6aQO72U3jWPV/pLn
 8yCVSUEyXyvMSD80+Yxwc+kwptQcPCEBoHWdqdYk8Qp2f2JC4n02VNOt6wcGxQTi5/MJ
 3/Nw==
X-Gm-Message-State: APjAAAULe+zjezJTdoj0jR58cAY7EaNhACEIn34cWX/ACV3pNcIBMa1i
 dj1gTxu5hTFmm7CmVtYMeqle/rK91NClYMUmI88=
X-Google-Smtp-Source: APXvYqy8DWZe+B7v1A6eeaZXO3ygj2PXqROH6aH55YmbZVRmhVLZp5UwALw2NrsRU2DgnfwVd5DR0DNsUtE3C95T1xs=
X-Received: by 2002:a54:4396:: with SMTP id u22mr2055715oiv.128.1581405099725; 
 Mon, 10 Feb 2020 23:11:39 -0800 (PST)
MIME-Version: 1.0
References: <CAJq09z63-O6xaxpBDLMdHF54Zivc8tmh1Y_AR_em5xtC+T9YCw@mail.gmail.com>
 <CAJq09z6y3GsSi3Efs817kuHkpp_M9C9gZt+GPg-hr3Ju7TfQzg@mail.gmail.com>
 <CAJsYDVLvPR8BRe=WGh0Op3a4dE+4CBkyC7_HeEyBcHiwOo=wBA@mail.gmail.com>
 <CAJq09z4GP8RJkusx9HtVNdgguiU_Mupbus=Ts12boro25uFVRQ@mail.gmail.com>
 <CAJsYDVLzCzer=ya-CeN3rLQuXxGUhuZb8umkxZeg14K110CE0Q@mail.gmail.com>
 <CAJq09z4D0DHZ8Ne-h1Tb-obAzJ1fKdYRQ1vhvnFytcQom+ynjA@mail.gmail.com>
In-Reply-To: <CAJq09z4D0DHZ8Ne-h1Tb-obAzJ1fKdYRQ1vhvnFytcQom+ynjA@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 11 Feb 2020 15:11:28 +0800
Message-ID: <CAJsYDVK=ukZbfCQO-+uHA6fpmMCsx+rFKueJcyRcU-LMipPDjQ@mail.gmail.com>
To: Luiz Angelo Daros de Luca <luizluca@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_231140_816627_4A1A83D8 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Random data on rootfs_data for tp-wr2543nd-v1
 only with ath79
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

Hi!

On Tue, Feb 11, 2020 at 1:44 AM Luiz Angelo Daros de Luca
<luizluca@gmail.com> wrote:
> I guess it is simply safer to reimplement the old interface using
> spi-mem. It worked in the past
> and it might work again. I'll give it a try. I'm thinking about
> introducing a new DTS prop to optionally use it.

There's no need for this. If it's implemented we could simply
use it on all chips and gain the increased flash reading speed.

On memory-mapped flash reading, spi controller issues 0x0b
fast-read instruction. for the sake of correctness in spi-mem
we should check whether spi-mem-op matches 0x0b + 3-byte
address + 1-byte dummy before executing the operation.
You'll need to set m25p,fast-read for spi-nor code to generate
this matching operation.

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
