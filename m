Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A8ABEF17
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 11:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZF3on3/uMJb7urS80hCXiya3/QYsyf/DPd9hIrv1ue0=; b=BF0Nnv2LpdqKZw
	XAh4Qb/F+lAcSxeAI9si+Hh/ua/UVqoZRV5nOJYa0IlLjiKje42mfNQlASTlOmN7SPZV5qtLEt/fA
	smafNW2g4IVTu6DUGb8GdlBEhBcFs12CsC9bKaH2lvtaSEkuoZYp+Jqg1aVaYmYU7P6yf3CFmcrN3
	TdxvCEO6El4pZD0uTt/tz/eV1aj1Bhwa/cy2Bzwn2A93TFmf10a5a9pubAaLmQTGV8RkAC+XSZTWZ
	sY4sFH2JgUan+nEKv5S3UUb3PmKQvW92CrDrQurQatj5M+6QiaotjP+POAioBabj1oe46/ifyJWXz
	Ku+mX9RoYPz+tEDH+sbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQVD-0003Go-0T; Thu, 26 Sep 2019 09:55:59 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQV3-0003GS-5N
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 09:55:50 +0000
Received: by mail-lf1-x144.google.com with SMTP id 72so1213632lfh.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Sep 2019 02:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8WigjI6L6AQ5U8Ur01Mqvq6QFxnt8Eo4Hujdo7MIRWY=;
 b=EMwbKDe9xMSIsWQulIhQYv1hNRPH7x5vq2C6d3MZes6MW+2y1sMerNJMX6BRhyQHpq
 x7bCX13ED8kv8dDEOFhHdtptPKIOAym87sccqCvXhTNtdp/p8A+DkLEwj8I92hU22dne
 9ql/W9dSZKJqd6CnrDc8aDoDYQeeTfuESvjPQAIW307z3RXo3mBK+FatxsBsiOrcJBOf
 r/cp+ikGQljnwgOpX4aiiVtjkIuyGhulAtNrj/M6oYXuEmqc4ONpveh5bWQjLvmn3SAc
 SSNVtldW2JyOlhrowSliztlUwfbTel2M0gg9XInba6nyNnWTCH23ivCZmSgsLFCoeaVC
 VCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8WigjI6L6AQ5U8Ur01Mqvq6QFxnt8Eo4Hujdo7MIRWY=;
 b=Mn529m/G5nKmN+OcTAWdb0nX5S9RFMcsWX2YRlUpwHv5vHsvbGkQsUXwJqmnf7OOk+
 +EF8g4kN3we6TaaBNTWd0PSfr1nrbdBOI6lBTjlQx81kTfr3e3AuIBj1JOnwONsTMJRG
 MIdwdgQibDYbCf4lU1RBgxjLm0hegSxw8luIoICTAq93QeGpxCkjM/mT41S9ZATGUhIV
 s4CIlB/DguDG8mnePw+cywwvRAi/dzxklZzk0XECd+EBoHcbORPPVk67sz4Ym9ZNlnnK
 pGq2K3/HRPXLdZMmROYxouLNqQmpKn1dWoL3WAXg/+B+1L1rxAMt5ttTLBhr8gNZA45Y
 Dz4g==
X-Gm-Message-State: APjAAAWnhM7JSnTJV9IytjzUs9KlHrVklO10Yekvv9m0vccpY+q7PufO
 n6pwOJTc8NTMjBLWsaUAtmTOb64uP/C6XKfPeqQ=
X-Google-Smtp-Source: APXvYqyO61KQKz+85LUKbE6QGF6ys2JV7wpCvmW0hh0FAq+mhRW9SX1/4mgRn/sby7jL4Ky/RlrjhWi/kMfbM2EkrKs=
X-Received: by 2002:ac2:554c:: with SMTP id l12mr1664041lfk.10.1569491746899; 
 Thu, 26 Sep 2019 02:55:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190923140053.14738-1-a.heider@gmail.com>
 <20190923140053.14738-2-a.heider@gmail.com>
In-Reply-To: <20190923140053.14738-2-a.heider@gmail.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Thu, 26 Sep 2019 17:55:34 +0800
Message-ID: <CAECwjAhNMJi1g6EtE7Ndfe+F+Ys8wm5FOSAymqDb9Bz09G_=rQ@mail.gmail.com>
To: Andre Heider <a.heider@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_025549_206660_82BE2A27 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] sunxi: enable audio for sun4i
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Zoltan HERPAI <wigyori@uid0.hu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 23 Sep 2019 at 22:01, Andre Heider <a.heider@gmail.com> wrote:
>
> Enable SND_SUN4I_CODEC and SND_SUN4I_SPDIF.
>
> Tested on cubieboard2.
>
> Signed-off-by: Andre Heider <a.heider@gmail.com>

The module should be available as package kmod-sound-soc-sunxi.  See
target/linux/sunxi/modules.mk .  Does this work for you?

                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
